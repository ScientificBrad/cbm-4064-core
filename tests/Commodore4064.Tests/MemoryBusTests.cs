using System;
using Xunit;
using Commodore4064;

namespace Commodore4064.Tests
{
    public class MemoryBusTests
    {
        [Fact]
        public void Ram_ReadWrite_WorksAcrossStandardRange()
        {
            var bus = new CbmBus();
            bus.Write(0x0250, 0xAA);
            bus.Write(0x0800, 0x55);

            Assert.Equal(0xAA, bus.Read(0x0250));
            Assert.Equal(0x55, bus.Read(0x0800));
        }

        [Fact]
        public void ScreenMemory_MappedAt_0400_To_07E7()
        {
            var bus = new CbmBus();
            // Poking first character of screen (top-left)
            bus.Write(0x0400, 1); // Character code 1 = 'A'
            Assert.Equal(1, bus.Ram[0x0400]);

            // Last character of 40x25 screen (bottom-right: 1024 + 1000 - 1 = 2023 = 0x07E7)
            bus.Write(0x07E7, 2); // 'B'
            Assert.Equal(2, bus.Ram[0x07E7]);
        }

        [Fact]
        public void KernalRom_MappedAt_E000_To_FFFF()
        {
            var bus = new CbmBus();
            // Verify reset vector at $FFFC-$FFFD reads correctly from ROM
            byte lo = bus.Read(0xFFFC);
            byte hi = bus.Read(0xFFFD);
            ushort resetVector = (ushort)((hi << 8) | lo);

            Assert.Equal(0xFCE2, resetVector); // Educator 64 Reset vector
        }

        [Fact]
        public void BasicRom_MappedAt_A000_To_BFFF()
        {
            var bus = new CbmBus();
            // Read first bytes of BASIC ROM at $A000
            byte b0 = bus.Read(0xA000);
            byte b1 = bus.Read(0xA001);

            // Cold start vector in BASIC ROM ($A000)
            Assert.True(b0 != 0 || b1 != 0);
        }

        [Fact]
        public void VicRasterPolling_AdvancesCycles()
        {
            var bus = new CbmBus();
            ushort r1 = bus.RasterLine;
            bus.Tick(63 * 5); // advance 5 scanlines
            ushort r2 = bus.RasterLine;
            Assert.Equal((r1 + 5) % 312, r2);
        }
    }
}
