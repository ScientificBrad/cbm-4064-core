# Technical Reverse Engineering Analysis: Commodore 4064 KERNAL (901246-01)

## Executive Summary
This document details the reverse engineering, disassembly, and decompilation of the Commodore 4064 (Educator 64 / PET 64) 8 KB KERNAL ROM (Part # `901246-01`).

- **Mapped Memory Range**: `$E000–$FFFF` (8,192 bytes)
- **Target CPU**: MOS Technology 6502 / 6510
- **Base Architecture**: Commodore 64 Motherboard with Internal Monochrome CRT
- **Cryptographic Checksums**:
  - **CRC-32**: `789C8CC5`
  - **SHA-256**: `b2b430a134514af11f3ed64c0929fc5241d8436ba7b12514ec02d1b2cb2fd533`

---

## 1. Hardware Architecture Context
In 1983, Commodore produced the Educator 64 (model 4064) to capture the American educational market, competing directly with the Apple IIe. 

Schools complained that students in computer labs frequently stole C64 color monitors, power bricks, and cables. Commodore solved this by taking standard C64 motherboards and packaging them inside the heavy-duty sheet-metal casing of a Commodore PET 4000 series, integrating a 12-inch green monochrome monitor and internal power supply.

Because the internal monitor accepted monochrome composite luminance only, any attempt to render standard C64 saturated colors produced smearing and uneven brightness banding. Commodore replaced the standard KERNAL ROM (`901227-03`) with `901246-01`, modifying:
1. Video initialization and color register handling
2. Startup banners and boot sequence
3. Timer calibration and interrupt servicing

---

## 2. ROM Memory Map & System Vectors

### KERNAL Jump Table (`$FF81–$FFF5`)
Standard Commodore 64 software communicates with the operating system through an indirect jump table at the top of memory. The 4064 KERNAL preserves 100% API compatibility with standard C64 jump table entry points:

| Vector | Address | Routine | Description |
| :--- | :--- | :--- | :--- |
| `CINT` | `$FF81` | `$FF5B` | Initialize screen editor and video chips |
| `IOINIT` | `$FF84` | `$FDA3` | Initialize CIA I/O controllers and SID |
| `RAMTAS` | `$FF87` | `$FD50` | Clear RAM, determine memory size, set zero page pointers |
| `RESTOR` | `$FF8A` | `$FD15` | Restore default system vectors `$0314–$0333` |
| `VECTOR` | `$FF8D` | `$FD1A` | Read/set system vector table |
| `SETMSG` | `$FF90` | `$FE18` | Set KERNAL control message flag |
| `SECOND` | `$FF93` | `$EDB9` | Send secondary address after LISTEN on IEEE/Serial bus |
| `TKSA` | `$FF96` | `$EDC7` | Send secondary address after TALK on IEEE/Serial bus |
| `MEMTOP` | `$FF99` | `$FE25` | Read/set top of user RAM pointer |
| `MEMBOT` | `$FF9C` | `$FE34` | Read/set bottom of user RAM pointer |
| `SCNKEY` | `$FF9F` | `$EA87` | Scan keyboard matrix |
| `SETTMO` | `$FFA2` | `$FE21` | Set IEEE bus timeout flag |
| `ACPTR` | `$FFA5` | `$EE13` | Input byte from serial bus |
| `CIOUT` | `$FFA8` | `$EDDD` | Output byte to serial bus |
| `UNTLK` | `$FFAB` | `$EDEF` | Send UNTALK on serial bus |
| `UNLSN` | `$FFAE` | `$EDFE` | Send UNLISTEN on serial bus |
| `LISTEN` | `$FFB1` | `$ED0C` | Send LISTEN to serial device |
| `TALK` | `$FFB4` | `$ED09` | Send TALK to serial device |
| `READST` | `$FFB7` | `$FE07` | Read I/O status word |
| `SETLFS` | `$FFBA` | `$FE00` | Set logical, first, and second device address |
| `SETNAM` | `$FFBD` | `$FDF9` | Set filename length and pointer |
| `OPEN` | `$FFC0` | `$F3D5` | Open logical file |
| `CLOSE` | `$FFC3` | `$F642` | Close logical file |
| `CHKIN` | `$FFC6` | `$F20E` | Set input channel |
| `CKOUT` | `$FFC9` | `$F250` | Set output channel |
| `CLRCHN` | `$FFCC` | `$F333` | Clear I/O channels (restore screen & keyboard defaults) |
| `CHRIN` | `$FFCF` | `$F157` | Input character from channel |
| `CHROUT` | `$FFD2` | `$F1CA` | Output character to channel |
| `LOAD` | `$FFD5` | `$F49E` | Load file from device |
| `SAVE` | `$FFD8` | `$F5DD` | Save file to device |
| `SETTIM` | `$FFDB` | `$F6E4` | Set software time of day (jiffies clock) |
| `RDTIM` | `$FFDE` | `$F6DD` | Read software time of day |
| `STOP` | `$FFE1` | `$F6ED` | Scan RUN/STOP key |
| `GETIN` | `$FFE4` | `$F13E` | Get character from keyboard queue |
| `CLALL` | `$FFE7` | `$F32F` | Close all files and abort channels |
| `UDTIM` | `$FFEA` | `$F69B` | Advance software clock |
| `SCREEN` | `$FFED` | `$E505` | Return screen format (X=40 cols, Y=25 rows) |
| `PLOT` | `$FFF0` | `$E50A` | Read/set cursor row and column |
| `IOBASE` | `$FFF3` | `$E500` | Return base address of memory-mapped I/O (`$D000`) |

### Hardware Interrupt Vectors (`$FFFA–$FFFF`)
```assembly
$FFFA: .word $FE43  ; NMI (Non-Maskable Interrupt - RESTORE key / RS-232)
$FFFC: .word $FCE2  ; RESET (Cold start boot vector)
$FFFE: .word $FF48  ; IRQ / BRK (Interrupt request / software break)
```

---

## 3. Deep Dive into Educator 64 Specific ROM Routines

### 3.1 Reset Entry Sequence (`$FCE2`)
- **Address**: `$FCE2`
- **Mnemonic Disassembly**:
  ```assembly
  FCE2: A2 FF        LDX #$FF
  FCE4: 78           SEI             ; Disable interrupts
  FCE5: 9A           TXS             ; Reset stack pointer to $01FF
  FCE6: D8           CLD             ; Clear decimal mode
  FCE7: 20 02 FD     JSR $FD02       ; Check for cartridge ("CBM80" at $8004)
  FCEA: D0 03        BNE $FCEF       ; Not found -> continue standard boot
  FCED: 6C 00 80     JMP ($8000)     ; Cartridge detected -> boot cartridge vector
  FCEF: 8E 16 D0     STX $D016       ; Initialize VIC-II control register
  FCF2: 20 A3 FD     JSR $FDA3       ; IOINIT: Setup CIA 1 & 2, SID, processor port
  FCF5: 20 50 FD     JSR $FD50       ; RAMTAS: Clear zero-page, size RAM, setup page 2-3
  FCF8: 20 15 FD     JSR $FD15       ; RESTOR: Restore system vectors to defaults
  FCFB: 20 5B FF     JSR $FF5B       ; CINT: Initialize screen and video standards
  FCFE: 58           CLI             ; Enable interrupts
  FCFF: 6C 00 A0     JMP ($A000)     ; Jump to BASIC cold start ($E3BF in ROM)
  ```
- **Explanation**: Initializes the hardware stack, clears decimal arithmetic mode, checks if an expansion cartridge is plugged into the expansion port (`$8004 == "CBM80"`), configures I/O, tests RAM, restores default operating system vectors, initializes video scanline timers, and transfers execution to BASIC V2.0 cold-start at `$A000`.

### 3.2 The Educator 64 Monochrome Color Lock (`$E4C8`)
- **Address**: `$E4C8`
- **Mnemonic Disassembly**:
  ```assembly
  E4C8: AD 86 02     LDA $0286       ; Check text color flag register
  E4CB: 10 03        BPL $E4D0       ; If bit 7 is 0, enforce monochrome lock
  E4CD: 4C 87 EA     JMP $EA87       ; Bit 7 set -> bypass lock, jump to SCNKEY
  E4D0: A2 0E        LDX #$0E        ; 15 color registers ($D020 to $D02E)
  E4D2: A9 00        LDA #$00        ; Color 0 = Black
  E4D4: 9D 20 D0     STA $D020,X     ; Force VIC-II color register to black
  E4D7: CA           DEX
  E4D8: 10 FA        BPL $E4D4       ; Loop until all 15 registers are cleared
  E4DA: 4C 87 EA     JMP $EA87       ; Jump to standard keyboard scan
  ```
- **Decompiled C Representation**:
  ```c
  void FUN_e4c8(void) {
      if ((DAT_0286 & 0x80) == 0) {
          for (int x = 14; x >= 0; x--) {
              ((byte*)0xD020)[x] = 0x00; // Zero all 15 VIC-II color registers to black
          }
      }
      JMP(0xEA87); // Resume standard keyboard scan (SCNKEY)
  }
  ```
- **Behavioral Impact & Evidence**: On standard C64 machines, the timer interrupt jumps directly to `SCNKEY` (`$EA87`). In the Educator 64, this hook is redirected through `$E4C8`. Unless software sets bit 7 of `$0286` (indicating intentional color overrides), the KERNAL continuously forces the 15 VIC-II color registers (`$D020–$D02E`) to black (`0x00`). This completely eliminates color carrier fringing and smearing on the internal green monitor.

### 3.3 Educator 64 Startup Banner (`$E477`)
- **Address**: `$E477`
- **Data String**:
  ```text
  **** COMMODORE 4064  BASIC V2.0 ****
  ```
- **Comparison**:
  - Standard C64 (`901227-03`): `**** COMMODORE 64 BASIC V2 ****`
  - Educator 64 (`901246-01`): `**** COMMODORE 4064  BASIC V2.0 ****`

### 3.4 RAM Sizing Display Bypass (`$E444`)
- **Address**: `$E444`
- **Assembly**:
  ```assembly
  E444: 4C 44 A6     JMP $A644       ; Jump directly to BASIC READY prompt loop
  ```
- **Behavioral Impact**: Standard C64 KERNAL prints the system RAM message:
  ```text
  64K RAM SYSTEM  38911 BASIC BYTES FREE
  ```
  Commodore 4064 replaces this entire call with `JMP $A644`, skipping the text print routine and jumping immediately to the `READY.` prompt. This gave the machine a faster, cleaner boot appearance tailored for school classrooms.

### 3.5 PAL/NTSC Video Standard Detection & Timer Calibration (`$FF5B`)
- **Address**: `$FF5B` (`CINT`)
- **Decompiled C Representation**:
  ```c
  void FUN_ff5b(void) {
      FUN_e518();                // Initialize screen lines
      while (DAT_d012 != 0) { }  // Wait for raster line 0
      DAT_02a6 = DAT_d019 & 1;   // Latch PAL/NTSC flag
      if (DAT_02a6 == 0) {
          DAT_dc04 = 0x95;       // NTSC Timer A = 0x4295 (1/60 sec tick)
          DAT_dc05 = 0x42;
      } else {
          DAT_dc04 = 0x25;       // PAL Timer A = 0x4025 (1/50 sec tick)
          DAT_dc05 = 0x40;
      }
      FUN_ff6e();
  }
  ```
- **Behavioral Impact**: Polls the VIC-II raster line register at `$D012` to measure line refresh count. Calibrates CIA1 Timer A accordingly: 50 Hz (PAL) or 60 Hz (NTSC) to ensure software jiffies clocks run at accurate wall-clock speeds.

---

## 4. Architectural Comparison: C64 vs. Educator 64

| Architectural Feature | Standard C64 KERNAL (`901227-03`) | Educator 64 KERNAL (`901246-01`) | Technical Rationale |
| :--- | :--- | :--- | :--- |
| **Startup Banner** | `**** COMMODORE 64 BASIC V2 ****` | `**** COMMODORE 4064  BASIC V2.0 ****` | Identifies 4064 / Educator 64 hardware model |
| **RAM Bytes Free Output** | Prints `38911 BASIC BYTES FREE` | **Bypassed** (`JMP $A644`) | Direct jump to `READY.` for faster classroom boot |
| **Interrupt Color Hook** | Jumps directly to `SCNKEY` (`$EA87`) | Intercepts at `$E4C8` to zero `$D020–$D02E` | Prevents color fringing on internal green monochrome CRT |
| **Default Screen Palette** | Light Blue on Dark Blue | Green characters on Black Background | Tailored to internal green phosphor monitor |
| **Physical Enclosure** | Breadbin plastic casing | Heavy-gauge PET 4000 sheet-metal case | Theft & tamper prevention in school labs |

---

## 5. Verification & Reassembly Results

The assembly source in `asm/cbm4064_kernal.asm` was verified via `asm/build_rom.py`:
```text
Original SHA-256: b2b430a134514af11f3ed64c0929fc5241d8436ba7b12514ec02d1b2cb2fd533
Rebuilt  SHA-256: b2b430a134514af11f3ed64c0929fc5241d8436ba7b12514ec02d1b2cb2fd533
Original CRC-32:  789C8CC5
Rebuilt  CRC-32:  789C8CC5
Differing bytes:  0 (100% Bit-for-Bit Identical)
```
