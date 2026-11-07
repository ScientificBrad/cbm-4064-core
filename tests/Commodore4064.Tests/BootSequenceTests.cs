using System;
using Xunit;
using Commodore4064;

namespace Commodore4064.Tests
{
    public class BootSequenceTests
    {
        [Fact]
        public void Reset_InitializesCpuToResetVector()
        {
            var bus = new CbmBus();
            var cpu = new Cpu6502(bus);

            Assert.Equal(0xFCE2, cpu.PC);
            Assert.Equal(0xFF, cpu.SP);
            Assert.True(cpu.I); // Interrupts disabled on reset
        }

        [Fact]
        public void BootSequence_ExecutesUntilReadyPrompt()
        {
            var bus = new CbmBus();
            var cpu = new Cpu6502(bus);

            // Run until BASIC READY prompt loop ($A480 / $A483)
            long limit = cpu.TotalCycles + 2_500_000;
            while (cpu.TotalCycles < limit)
            {
                if ((cpu.PC == 0xA480 || cpu.PC == 0xA483) && bus.Ram[0x00C6] == 0)
                {
                    break;
                }
                cpu.Step();
            }

            // Verify CPU halted at BASIC warm start / prompt loop
            Assert.True(cpu.PC == 0xA480 || cpu.PC == 0xA483, $"CPU halted at unexpected PC: ${cpu.PC:X4}");

            // Verify authentic Educator 64 startup banner in screen memory
            string screen = bus.GetScreenText();
            Assert.Contains("COMMODORE 4064", screen);
            Assert.Contains("BASIC V2.0", screen);
            Assert.Contains("READY.", screen);
        }

        [Fact]
        public void Educator64_OmitsStandardBytesFreeMessage()
        {
            var bus = new CbmBus();
            var cpu = new Cpu6502(bus);

            long limit = cpu.TotalCycles + 2_500_000;
            while (cpu.TotalCycles < limit)
            {
                if ((cpu.PC == 0xA480 || cpu.PC == 0xA483) && bus.Ram[0x00C6] == 0)
                {
                    break;
                }
                cpu.Step();
            }

            string screen = bus.GetScreenText();
            // Distinctive Educator 64 KERNAL feature: skips "38911 BASIC BYTES FREE"
            Assert.DoesNotContain("38911 BASIC BYTES FREE", screen);
        }
    }
}
