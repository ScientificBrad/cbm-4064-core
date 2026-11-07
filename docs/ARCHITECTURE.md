# Architecture and Technical Design

## 1. System Overview
The Commodore 4064 standalone execution harness is a high-performance native emulator implemented in C# targeting .NET 8. It simulates the minimum hardware required to execute the Commodore 4064 (Educator 64) KERNAL (`901246-01`) and Commodore BASIC V2.0 (`901226-01`) directly in a modern console terminal.

```
+-------------------------------------------------------------------+
|                        Console Host (35 FPS)                     |
|            - In-place ANSI/Unicode CRT Box Rendering             |
|            - Keyboard event buffer & input redirection           |
+-------------------------------------------------------------------+
                                  ^
                                  | Screen RAM reads ($0400-$07E7)
                                  v
+-------------------------------------------------------------------+
|                     Commodore Bus (CbmBus.cs)                    |
|  +------------------------+  +---------------------------------+  |
|  | 64 KB Addressable RAM  |  | 1 KB Color RAM ($D800-$DBE7)    |  |
|  +------------------------+  +---------------------------------+  |
|  | Memory Banking Logic   |  | VIC-II Raster Counter ($D012)   |  |
|  | (LORAM, HIRAM, CHAREN) |  | CIA 1 & 2 Timer Simulation      |  |
|  +------------------------+  +---------------------------------+  |
|  | 8 KB BASIC V2.0 ROM    |  | 8 KB Educator 64 KERNAL ROM     |  |
|  | ($A000-$BFFF)          |  | ($E000-$FFFF)                   |  |
+-------------------------------------------------------------------+
                                  ^
                                  | Memory Read / Write
                                  v
+-------------------------------------------------------------------+
|                       CPU Core (Cpu6502.cs)                       |
|  - MOS 6502 / 6510 NMOS instruction decoder (56 instructions)     |
|  - All 13 addressing modes supported                              |
|  - Full processor status flags (N, V, -, B, D, I, Z, C)           |
|  - Decimal mode ADC/SBC arithmetic support                        |
+-------------------------------------------------------------------+
```

---

## 2. Component Design

### 2.1 CPU Core (`Cpu6502.cs`)
- **Registers**:
  - `A` (Accumulator, 8-bit)
  - `X`, `Y` (Index registers, 8-bit)
  - `SP` (Stack pointer, 8-bit, mapped to page 1 `$0100–$01FF`)
  - `PC` (Program counter, 16-bit)
  - `Status` (Processor status register with bit 5 always high)
- **Addressing Modes**:
  - Implied, Accumulator
  - Immediate (`#$xx`)
  - Zero Page, Zero Page X, Zero Page Y
  - Absolute, Absolute X, Absolute Y
  - Indirect (`JMP ($xxxx)`), Indexed Indirect `($xx,X)`, Indirect Indexed `($xx),Y`
  - Relative (signed branch offsets with 8-bit sign extension)
- **Interrupts**:
  - `Reset()` sets SP to `$FF`, disables interrupts (`I = 1`), and fetches target address from `$FFFC–$FFFD` (`$FCE2`).

### 2.2 Memory Bus & Banking (`CbmBus.cs`)
- **Address Map**:
  - `$0000–$0001`: 6510 processor port direction and data (controls memory banking).
  - `$0002–$03FF`: Low RAM (zero-page, stack, OS vectors, keyboard queue).
  - `$0400–$07E7`: Screen matrix memory (40 columns × 25 rows = 1,000 bytes).
  - `$07E8–$9FFF`: Free user BASIC RAM.
  - `$A000–$BFFF`: BASIC V2.0 ROM (switched via `HIRAM`/`LORAM` flags).
  - `$C000–$CFFF`: 4 KB RAM.
  - `$D000–$DFFF`: Memory-mapped I/O (VIC-II, SID, Color RAM, CIAs) or Character ROM.
  - `$E000–$FFFF`: Educator 64 KERNAL ROM (switched via `HIRAM`).

### 2.3 VIC-II Simulation
- **Raster Synchronization (`$D012`, `$D011`)**:
  - Advanced by 1 scanline every 63 CPU cycles to accurately satisfy the PAL/NTSC detection loop in `$FF5B`.
  - Wraps around at 312 lines (PAL standard).
- **Color Lock Registers (`$D020–$D02E`)**:
  - Memory-mapped to enforce the Educator 64 monochrome green display.

### 2.4 Terminal Rendering & PETSCII Translation
- Converts 8-bit Commodore screen codes (`$00–$FF`) into corresponding Unicode symbols and block elements:
  - Standard alphanumeric characters (`A–Z`, `0–9`, punctuation).
  - PETSCII line drawing, crossbars, checkers (`█`, `▒`, `─`, `│`, `┌`, `┐`, `└`, `┘`).
  - Card suit runes (`♠`, `♣`, `♥`, `♦`).
  - Inverse video characters (codes 128–255).
- In-place terminal updates use `Console.SetCursorPosition` at 35 FPS, avoiding screen jitter.

---

## 3. Emulation Fidelity & Scope
- **Level of Accuracy**: Cycle-approximate instruction execution with simulated scanline progression.
- **Scope**: Designed specifically for operating system boot, KERNAL API vectors, Commodore BASIC V2.0 interpretation, and screen RAM manipulation. Complex raster-split demos or custom SID synthesis chips are outside the current architectural scope.
