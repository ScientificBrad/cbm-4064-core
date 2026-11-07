using System;
using System.IO;
using System.Reflection;

namespace Commodore4064
{
    public class CbmBus
    {
        public readonly byte[] Ram = new byte[0x10000];
        public readonly byte[] BasicRom = new byte[0x2000];
        public readonly byte[] KernalRom = new byte[0x2000];
        public readonly byte[] ColorRam = new byte[0x0400]; // $D800 - $DBE7

        // 6510 CPU on-chip port
        public byte PortDir = 0x2F;
        public byte PortData = 0x37; // bits: 0=LORAM(1), 1=HIRAM(1), 2=CHAREN(1)

        // VIC-II registers
        public ushort RasterLine = 0;
        public byte VicControl1 = 0x1B;
        public byte VicControl2 = 0x08;
        public byte BorderColor = 0x00;
        public byte BackgroundColor = 0x00;

        // CIA1 registers
        public byte Cia1Pra = 0xFF;
        public byte Cia1Prb = 0xFF;
        public byte Cia1Icr = 0x00;

        public CbmBus(byte[]? customKernal = null, byte[]? customBasic = null)
        {
            if (customKernal != null)
            {
                Array.Copy(customKernal, KernalRom, Math.Min(customKernal.Length, KernalRom.Length));
            }
            else
            {
                LoadEmbeddedRom("kernal.rom", KernalRom);
            }

            if (customBasic != null)
            {
                Array.Copy(customBasic, BasicRom, Math.Min(customBasic.Length, BasicRom.Length));
            }
            else
            {
                LoadEmbeddedRom("basic.rom", BasicRom);
            }

            // Default RAM pattern
            for (int i = 0; i < Ram.Length; i++)
            {
                Ram[i] = 0;
            }
            Ram[0x0000] = PortDir;
            Ram[0x0001] = PortData;
        }

        private void LoadEmbeddedRom(string resourceName, byte[] destination)
        {
            var assembly = Assembly.GetExecutingAssembly();
            // find resource ending with resourceName
            string? fullName = null;
            foreach (var name in assembly.GetManifestResourceNames())
            {
                if (name.EndsWith(resourceName, StringComparison.OrdinalIgnoreCase))
                {
                    fullName = name;
                    break;
                }
            }

            if (fullName != null)
            {
                using var stream = assembly.GetManifestResourceStream(fullName);
                if (stream != null)
                {
                    int read = stream.Read(destination, 0, destination.Length);
                    return;
                }
            }

            // Fallback: check current directory or parent directories
            if (File.Exists(resourceName))
            {
                var bytes = File.ReadAllBytes(resourceName);
                Array.Copy(bytes, destination, Math.Min(bytes.Length, destination.Length));
            }
        }

        public byte Read(ushort addr)
        {
            // 6510 on-chip registers
            if (addr == 0x0000) return PortDir;
            if (addr == 0x0001) return PortData;

            bool hiram = (PortData & 0x02) != 0;
            bool loram = (PortData & 0x01) != 0;
            bool charen = (PortData & 0x04) != 0;

            // KERNAL ROM at $E000-$FFFF
            if (addr >= 0xE000 && hiram)
            {
                return KernalRom[addr - 0xE000];
            }

            // BASIC ROM at $A000-$BFFF
            if (addr >= 0xA000 && addr <= 0xBFFF && hiram && loram)
            {
                return BasicRom[addr - 0xA000];
            }

            // I/O or Character ROM at $D000-$DFFF
            if (addr >= 0xD000 && addr <= 0xDFFF)
            {
                if (charen && (hiram || loram))
                {
                    return ReadIO(addr);
                }
            }

            // Default: RAM
            return Ram[addr];
        }

        public void Write(ushort addr, byte val)
        {
            if (addr == 0x0000)
            {
                PortDir = val;
                Ram[0] = val;
                return;
            }
            if (addr == 0x0001)
            {
                PortData = val;
                Ram[1] = val;
                return;
            }

            bool hiram = (PortData & 0x02) != 0;
            bool loram = (PortData & 0x01) != 0;
            bool charen = (PortData & 0x04) != 0;

            if (addr >= 0xD000 && addr <= 0xDFFF && charen && (hiram || loram))
            {
                WriteIO(addr, val);
                return;
            }

            // All writes go to underlying RAM (even under ROMs)
            Ram[addr] = val;
        }

        private byte ReadIO(ushort addr)
        {
            // VIC-II ($D000 - $D3FF)
            if (addr >= 0xD000 && addr <= 0xD02E)
            {
                byte reg = (byte)(addr & 0x3F);
                if (reg == 0x11) // Control register 1 / raster bit 8
                {
                    byte v = VicControl1;
                    if (RasterLine > 255) v |= 0x80;
                    else v &= 0x7F;
                    return v;
                }
                if (reg == 0x12) return (byte)(RasterLine & 0xFF);
                if (reg == 0x16) return VicControl2;
                if (reg == 0x19) return 0x01; // Interrupt flag (reported for PAL/NTSC)
                if (reg == 0x20) return BorderColor;
                if (reg == 0x21) return BackgroundColor;
                return Ram[addr];
            }

            // Color RAM ($D800 - $DBE7)
            if (addr >= 0xD800 && addr <= 0xDBE7)
            {
                return (byte)(ColorRam[addr - 0xD800] | 0xF0);
            }

            // CIA1 ($DC00 - $DC0F)
            if (addr >= 0xDC00 && addr <= 0xDC0F)
            {
                byte reg = (byte)(addr & 0x0F);
                if (reg == 0x00) return Cia1Pra;
                if (reg == 0x01) return Cia1Prb;
                if (reg == 0x0D)
                {
                    byte v = Cia1Icr;
                    Cia1Icr = 0; // Clear on read
                    return v;
                }
                return Ram[addr];
            }

            // CIA2 ($DD00 - $DD0F)
            if (addr >= 0xDD00 && addr <= 0xDD0F)
            {
                return Ram[addr];
            }

            return Ram[addr];
        }

        private void WriteIO(ushort addr, byte val)
        {
            if (addr >= 0xD000 && addr <= 0xD02E)
            {
                byte reg = (byte)(addr & 0x3F);
                if (reg == 0x11) VicControl1 = val;
                else if (reg == 0x16) VicControl2 = val;
                else if (reg == 0x20) BorderColor = val;
                else if (reg == 0x21) BackgroundColor = val;
                Ram[addr] = val;
                return;
            }

            if (addr >= 0xD800 && addr <= 0xDBE7)
            {
                ColorRam[addr - 0xD800] = (byte)(val & 0x0F);
                return;
            }

            if (addr >= 0xDC00 && addr <= 0xDC0F)
            {
                byte reg = (byte)(addr & 0x0F);
                if (reg == 0x00) Cia1Pra = val;
                else if (reg == 0x01) Cia1Prb = val;
                else if (reg == 0x0D) Cia1Icr = val;
                Ram[addr] = val;
                return;
            }

            Ram[addr] = val;
        }

        private int _cycleAccumulator = 0;

        public void Tick(int cycles)
        {
            // Advance raster line every 63 cycles (~1 line of NTSC/PAL VIC-II)
            _cycleAccumulator += cycles;
            while (_cycleAccumulator >= 63)
            {
                _cycleAccumulator -= 63;
                RasterLine = (ushort)((RasterLine + 1) % 312);
            }
        }

        public string[] GetScreenLines()
        {
            var lines = new string[25];
            for (int row = 0; row < 25; row++)
            {
                var rowChars = new char[40];
                for (int col = 0; col < 40; col++)
                {
                    byte sc = Ram[0x0400 + row * 40 + col];
                    rowChars[col] = ScreenCodeToChar(sc);
                }
                lines[row] = new string(rowChars);
            }
            return lines;
        }

        public string GetScreenText()
        {
            return string.Join("\n", GetScreenLines());
        }

        public static char ScreenCodeToChar(byte sc)
        {
            // C64 Screen Codes to Unicode / ASCII
            if (sc == 0) return '@';
            if (sc >= 1 && sc <= 26) return (char)('A' + sc - 1);
            if (sc == 27) return '[';
            if (sc == 28) return '£';
            if (sc == 29) return ']';
            if (sc == 30) return '^';
            if (sc == 31) return '<';
            if (sc >= 32 && sc <= 63) return (char)sc;

            // PETSCII graphic screen codes
            if (sc == 77) return '\\';
            if (sc == 78) return '/';
            if (sc == 81) return '●';
            if (sc == 83) return '♥';
            if (sc == 88) return '♣';
            if (sc == 89) return '♠';
            if (sc == 90) return '♦';
            if (sc == 101) return '█';
            if (sc == 102) return '▒';

            if (sc >= 64 && sc <= 95) return (char)('a' + sc - 65);
            if (sc >= 128 && sc <= 255) return ScreenCodeToChar((byte)(sc & 0x7F));
            return ' ';
        }
    }
}
