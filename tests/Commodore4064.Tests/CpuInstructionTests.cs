using System;
using Xunit;
using Commodore4064;

namespace Commodore4064.Tests
{
    public class CpuInstructionTests
    {
        private (CbmBus bus, Cpu6502 cpu) CreateHarness()
        {
            var bus = new CbmBus();
            var cpu = new Cpu6502(bus);
            // Point PC to test RAM at $0200
            cpu.PC = 0x0200;
            return (bus, cpu);
        }

        [Fact]
        public void Lda_Immediate_SetsAccumulatorAndFlags()
        {
            var (bus, cpu) = CreateHarness();
            bus.Ram[0x0200] = 0xA9; // LDA #$42
            bus.Ram[0x0201] = 0x42;

            cpu.Step();

            Assert.Equal(0x42, cpu.A);
            Assert.False(cpu.Z);
            Assert.False(cpu.N);
            Assert.Equal(0x0202, cpu.PC);
        }

        [Fact]
        public void Lda_ZeroPage_SetsZeroFlag()
        {
            var (bus, cpu) = CreateHarness();
            bus.Ram[0x0200] = 0xA5; // LDA $10
            bus.Ram[0x0201] = 0x10;
            bus.Ram[0x0010] = 0x00;

            cpu.Step();

            Assert.Equal(0, cpu.A);
            Assert.True(cpu.Z);
            Assert.False(cpu.N);
        }

        [Fact]
        public void Sta_Absolute_WritesMemoryCorrectly()
        {
            var (bus, cpu) = CreateHarness();
            cpu.A = 0xFE;
            bus.Ram[0x0200] = 0x8D; // STA $0350
            bus.Ram[0x0201] = 0x50;
            bus.Ram[0x0202] = 0x03;

            cpu.Step();

            Assert.Equal(0xFE, bus.Read(0x0350));
        }

        [Fact]
        public void Ldx_Ldy_Immediate_SetsRegisters()
        {
            var (bus, cpu) = CreateHarness();
            bus.Ram[0x0200] = 0xA2; // LDX #$80 (Negative)
            bus.Ram[0x0201] = 0x80;
            bus.Ram[0x0202] = 0xA0; // LDY #$0F
            bus.Ram[0x0203] = 0x0F;

            cpu.Step();
            Assert.Equal(0x80, cpu.X);
            Assert.True(cpu.N);

            cpu.Step();
            Assert.Equal(0x0F, cpu.Y);
            Assert.False(cpu.N);
        }

        [Fact]
        public void Adc_Immediate_AddsWithCarry()
        {
            var (bus, cpu) = CreateHarness();
            cpu.A = 0x50;
            cpu.C = true; // Carry in = 1
            bus.Ram[0x0200] = 0x69; // ADC #$20
            bus.Ram[0x0201] = 0x20;

            cpu.Step();

            Assert.Equal(0x71, cpu.A); // 0x50 + 0x20 + 1
            Assert.False(cpu.C);
            Assert.False(cpu.V);
        }

        [Fact]
        public void Adc_OverflowFlag_SetOnSignedOverflow()
        {
            var (bus, cpu) = CreateHarness();
            cpu.A = 0x7F; // +127 signed
            cpu.C = false;
            bus.Ram[0x0200] = 0x69; // ADC #$01
            bus.Ram[0x0201] = 0x01;

            cpu.Step();

            Assert.Equal(0x80, cpu.A); // -128 signed
            Assert.True(cpu.V); // Signed overflow from positive to negative
            Assert.True(cpu.N);
        }

        [Fact]
        public void Sbc_Immediate_SubtractsWithBorrow()
        {
            var (bus, cpu) = CreateHarness();
            cpu.A = 0x50;
            cpu.C = true; // No borrow
            bus.Ram[0x0200] = 0xE9; // SBC #$10
            bus.Ram[0x0201] = 0x10;

            cpu.Step();

            Assert.Equal(0x40, cpu.A);
            Assert.True(cpu.C); // No borrow occurred
        }

        [Fact]
        public void Jmp_Absolute_ChangesProgramCounter()
        {
            var (bus, cpu) = CreateHarness();
            bus.Ram[0x0200] = 0x4C; // JMP $0300
            bus.Ram[0x0201] = 0x00;
            bus.Ram[0x0202] = 0x03;

            cpu.Step();

            Assert.Equal(0x0300, cpu.PC);
        }

        [Fact]
        public void Jsr_Rts_SubroutineCallAndReturn()
        {
            var (bus, cpu) = CreateHarness();
            cpu.SP = 0xFF;
            bus.Ram[0x0200] = 0x20; // JSR $0300
            bus.Ram[0x0201] = 0x00;
            bus.Ram[0x0202] = 0x03;

            bus.Ram[0x0300] = 0x60; // RTS

            cpu.Step(); // JSR
            Assert.Equal(0x0300, cpu.PC);
            Assert.Equal(0xFD, cpu.SP); // Pushed 2 bytes of return address

            cpu.Step(); // RTS
            Assert.Equal(0x0203, cpu.PC); // Returns to next instruction
            Assert.Equal(0xFF, cpu.SP);
        }

        [Fact]
        public void Branch_Beq_BranchesWhenZeroSet()
        {
            var (bus, cpu) = CreateHarness();
            cpu.Z = true;
            bus.Ram[0x0200] = 0xF0; // BEQ +$05
            bus.Ram[0x0201] = 0x05;

            cpu.Step();

            Assert.Equal(0x0207, cpu.PC); // 0x0202 + 5 = 0x0207
        }

        [Fact]
        public void Branch_Bne_FallsThroughWhenZeroSet()
        {
            var (bus, cpu) = CreateHarness();
            cpu.Z = true;
            bus.Ram[0x0200] = 0xD0; // BNE +$05
            bus.Ram[0x0201] = 0x05;

            cpu.Step();

            Assert.Equal(0x0202, cpu.PC); // Falls through
        }

        [Fact]
        public void Stack_Pha_Pla_PushesAndPullsAccumulator()
        {
            var (bus, cpu) = CreateHarness();
            cpu.SP = 0xFF;
            cpu.A = 0x99;
            bus.Ram[0x0200] = 0x48; // PHA
            bus.Ram[0x0201] = 0xA9; // LDA #$00
            bus.Ram[0x0202] = 0x00;
            bus.Ram[0x0203] = 0x68; // PLA

            cpu.Step(); // PHA
            Assert.Equal(0xFE, cpu.SP);
            Assert.Equal(0x99, bus.Read(0x01FF));

            cpu.Step(); // LDA #$00
            Assert.Equal(0x00, cpu.A);

            cpu.Step(); // PLA
            Assert.Equal(0x99, cpu.A);
            Assert.Equal(0xFF, cpu.SP);
        }
    }
}
