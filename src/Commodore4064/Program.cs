using System;
using System.IO;
using System.Threading;

namespace Commodore4064
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Title = "Commodore 4064 (Educator 64 / PET 64) - 901246-01";
            Console.OutputEncoding = System.Text.Encoding.UTF8;

            bool testMode = false;
            string? execCommand = null;
            string? customRomPath = null;

            for (int i = 0; i < args.Length; i++)
            {
                if (args[i] == "--test" || args[i] == "--headless")
                {
                    testMode = true;
                }
                else if (args[i] == "--exec" && i + 1 < args.Length)
                {
                    execCommand = args[++i];
                }
                else if (args[i] == "--rom" && i + 1 < args.Length)
                {
                    customRomPath = args[++i];
                }
            }

            Console.WriteLine("====================================================================");
            Console.WriteLine(" COMMODORE 4064 / EDUCATOR 64 STANDALONE KERNAL EXECUTABLE");
            Console.WriteLine(" ROM: 901246-01 (CRC32: 789C8CC5, SHA256: b2b430a13451...)");
            Console.WriteLine("====================================================================\n");

            byte[]? customRom = null;
            if (customRomPath != null && File.Exists(customRomPath))
            {
                Console.WriteLine($"Loading custom KERNAL ROM from: {customRomPath}");
                customRom = File.ReadAllBytes(customRomPath);
            }

            var bus = new CbmBus(customRom);
            var cpu = new Cpu6502(bus);

            Console.WriteLine($"CPU initialized. Reset Vector: ${cpu.PC:X4}");
            Console.WriteLine("Booting Commodore 4064 KERNAL...\n");

            // Boot until READY prompt
            RunUntilReady(bus, cpu, 2_500_000);

            // Display initial green screen
            RenderScreen(bus);

            Console.WriteLine($"\nBoot completed in {cpu.TotalCycles:N0} cycles.");
            Console.WriteLine($"CPU State: PC=${cpu.PC:X4}, A=${cpu.A:X2}, X=${cpu.X:X2}, Y=${cpu.Y:X2}, SP=${cpu.SP:X2}, Status={cpu.Status:X2}\n");

            // If an exec command was provided, execute it
            if (execCommand != null)
            {
                Console.WriteLine($"Executing command: {execCommand}\n");
                ExecuteCommand(bus, cpu, execCommand, false);
                RenderScreen(bus);
            }
            else if (!testMode)
            {
                Console.ForegroundColor = ConsoleColor.Green;
                Console.WriteLine("Commodore 4064 Interactive Console.");
                Console.WriteLine("Type any BASIC command or 'exit' to quit. While a program is running, press ANY KEY to stop.\n");
                Console.ResetColor();

                while (true)
                {
                    Console.ForegroundColor = ConsoleColor.Green;
                    Console.Write("4064> ");
                    Console.ResetColor();

                    string? input = Console.ReadLine();
                    if (input == null || input.Equals("exit", StringComparison.OrdinalIgnoreCase) || input.Equals("quit", StringComparison.OrdinalIgnoreCase))
                    {
                        break;
                    }

                    if (string.IsNullOrWhiteSpace(input)) continue;

                    ExecuteCommand(bus, cpu, input, true);
                }
            }

            if (testMode)
            {
                string screen = bus.GetScreenText();
                if (screen.Contains("COMMODORE 4064") && screen.Contains("BASIC"))
                {
                    Console.ForegroundColor = ConsoleColor.Cyan;
                    Console.WriteLine("\n[SUCCESS] Self-test verified.");
                    Console.ResetColor();
                    Environment.Exit(0);
                }
                else
                {
                    Console.WriteLine("\n[ERROR] Self-test failed: banner not found.");
                    Environment.Exit(1);
                }
            }
        }

        static void RunUntilReady(CbmBus bus, Cpu6502 cpu, long maxCycles)
        {
            long limit = cpu.TotalCycles + maxCycles;
            while (cpu.TotalCycles < limit)
            {
                if ((cpu.PC == 0xA480 || cpu.PC == 0xA483) && bus.Ram[0x00C6] == 0)
                {
                    break;
                }
                cpu.Step();
            }
        }

        static void ExecuteCommand(CbmBus bus, Cpu6502 cpu, string command, bool interactive)
        {
            string line = command.ToUpperInvariant() + "\r";
            foreach (char ch in line)
            {
                byte petscii = (byte)ch;
                if (ch == '\r') petscii = 13;

                // Wait until keyboard buffer has space
                while (bus.Ram[0x00C6] >= 10)
                {
                    cpu.Step();
                }

                // Add char to keyboard buffer
                byte count = bus.Ram[0x00C6];
                bus.Ram[0x0277 + count] = petscii;
                bus.Ram[0x00C6] = (byte)(count + 1);

                // Run a bit to let KERNAL process the key
                for (int i = 0; i < 2000; i++)
                {
                    cpu.Step();
                }
            }

            // Phase 1: Run up to 250,000 cycles to see if command completes quickly
            long quickLimit = cpu.TotalCycles + 250_000;
            bool finished = false;
            while (cpu.TotalCycles < quickLimit)
            {
                if ((cpu.PC == 0xA480 || cpu.PC == 0xA483) && bus.Ram[0x00C6] == 0)
                {
                    finished = true;
                    break;
                }
                cpu.Step();
            }

            if (finished || !interactive || Console.IsInputRedirected || Console.IsOutputRedirected)
            {
                if (!finished)
                {
                    RunUntilReady(bus, cpu, 3_000_000);
                }
                RenderScreen(bus);
                return;
            }

            // Phase 2: Continuous Real-Time Animation (Matrix rain, loops, animations)
            // Renders live at ~35 fps in-place until user hits any key!
            int boxTop = Console.CursorTop;
            int boxLeft = Console.CursorLeft;
            Console.CursorVisible = false;

            try
            {
                while (true)
                {
                    // Run ~25,000 CPU cycles per frame
                    for (int s = 0; s < 6000; s++)
                    {
                        cpu.Step();
                        if ((cpu.PC == 0xA480 || cpu.PC == 0xA483) && bus.Ram[0x00C6] == 0)
                        {
                            finished = true;
                            break;
                        }
                    }

                    // Redraw screen in-place
                    Console.SetCursorPosition(boxLeft, boxTop);
                    RenderScreen(bus, fullHeight: true);

                    if (finished) break;

                    // User pressed a key to stop
                    if (Console.KeyAvailable)
                    {
                        Console.ReadKey(true); // consume key
                        // Emulate RUN/STOP by jumping to BASIC ready
                        cpu.PC = 0xA474;
                        RunUntilReady(bus, cpu, 150_000);
                        Console.SetCursorPosition(boxLeft, boxTop);
                        RenderScreen(bus, fullHeight: true);
                        break;
                    }

                    Thread.Sleep(25);
                }
            }
            finally
            {
                Console.CursorVisible = true;
            }
        }

        static void RenderScreen(CbmBus bus, bool fullHeight = false)
        {
            var lines = bus.GetScreenLines();

            int lastRow = fullHeight ? 24 : 0;
            if (!fullHeight)
            {
                for (int r = 24; r >= 0; r--)
                {
                    if (!string.IsNullOrWhiteSpace(lines[r]))
                    {
                        lastRow = r;
                        break;
                    }
                }
            }

            Console.ForegroundColor = ConsoleColor.Green;
            Console.BackgroundColor = ConsoleColor.Black;
            Console.WriteLine("┌" + new string('─', 40) + "┐");
            for (int r = 0; r <= lastRow; r++)
            {
                Console.WriteLine("│" + lines[r] + "│");
            }
            Console.WriteLine("└" + new string('─', 40) + "┘");
            Console.ResetColor();
        }
    }
}
