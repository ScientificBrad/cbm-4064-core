using System;
using Xunit;
using Commodore4064;

namespace Commodore4064.Tests
{
    public class BasicExecutionTests
    {
        private (CbmBus bus, Cpu6502 cpu) BootToReady()
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
            return (bus, cpu);
        }

        private void ExecuteCommand(CbmBus bus, Cpu6502 cpu, string command)
        {
            string line = command.ToUpperInvariant() + "\r";
            foreach (char ch in line)
            {
                byte petscii = (byte)ch;
                if (ch == '\r') petscii = 13;

                while (bus.Ram[0x00C6] >= 10)
                {
                    cpu.Step();
                }

                byte count = bus.Ram[0x00C6];
                bus.Ram[0x0277 + count] = petscii;
                bus.Ram[0x00C6] = (byte)(count + 1);

                for (int i = 0; i < 2000; i++)
                {
                    cpu.Step();
                }
            }

            long waitLimit = cpu.TotalCycles + 3_000_000;
            while (cpu.TotalCycles < waitLimit)
            {
                if ((cpu.PC == 0xA480 || cpu.PC == 0xA483) && bus.Ram[0x00C6] == 0)
                {
                    break;
                }
                cpu.Step();
            }
        }

        [Fact]
        public void Basic_PrintHelloWorld_EvaluatesAndOutputsText()
        {
            var (bus, cpu) = BootToReady();
            ExecuteCommand(bus, cpu, "PRINT \"HELLO WORLD\"");

            string screen = bus.GetScreenText();
            Assert.Contains("HELLO WORLD", screen);
            Assert.Contains("READY.", screen);
        }

        [Fact]
        public void Basic_PrintMath_EvaluatesArithmetic()
        {
            var (bus, cpu) = BootToReady();
            ExecuteCommand(bus, cpu, "PRINT 2+2");

            string screen = bus.GetScreenText();
            Assert.Contains("4", screen);
            Assert.Contains("READY.", screen);
        }

        [Fact]
        public void Basic_ForLoop_ExecutesAndOutputsSequence()
        {
            var (bus, cpu) = BootToReady();
            ExecuteCommand(bus, cpu, "10 FOR I=1 TO 3");
            ExecuteCommand(bus, cpu, "20 PRINT I");
            ExecuteCommand(bus, cpu, "30 NEXT I");
            ExecuteCommand(bus, cpu, "RUN");

            string screen = bus.GetScreenText();
            Assert.Contains("1", screen);
            Assert.Contains("2", screen);
            Assert.Contains("3", screen);
            Assert.Contains("READY.", screen);
        }

        [Fact]
        public void Basic_DirectScreenPoke_ModifiesScreenMemory()
        {
            var (bus, cpu) = BootToReady();
            // Poking screen memory cell (1024 + 10) with character 81 ('Q' or graphic circle)
            ExecuteCommand(bus, cpu, "POKE 1034, 81");

            Assert.Equal(81, bus.Ram[1034]);
        }
    }
}
