# Changelog

All notable changes to the Commodore 4064 (Educator 64) Rebuild project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [1.0.0] - 2026-11-07

### Added
- **Reverse Engineering & ROM Decompilation**:
  - Full Ghidra 12.1.4 and REA analysis of the 8 KB Commodore 4064 KERNAL ROM (Part # `901246-01`).
  - Documented 4,113-line MOS 6502 assembly source in `asm/cbm4064_kernal.asm`.
  - Identification and documentation of Educator 64 hardware modifications (monochrome color lock `$E4C8`, custom startup banner `$E477`, RAM sizing bypass `$E444`, and PAL/NTSC raster synchronization `$FF5B`).
- **Independent ROM Assembler & Reconstruction Tool**:
  - `asm/build_rom.py` supporting both independent 6502 mnemonic assembly (`--method assemble`) and disassembly byte extraction (`--method extract`).
  - Bit-for-bit cryptographic verification against authentic Commodore 901246-01 ROM (CRC32: `789C8CC5`, SHA256: `b2b430a134514af11f3ed64c0929fc5241d8436ba7b12514ec02d1b2cb2fd533`).
- **Standalone Native Windows Emulator**:
  - High-performance C# .NET 8 emulator implementing MOS 6502/6510 CPU core, 64 KB banked memory bus, VIC-II raster line counter, and CIA1 timer registers.
  - In-place 35 FPS terminal CRT display with full PETSCII Unicode character synthesis (alphanumerics, inverse video blocks, line drawing, and card suit runes).
  - Interactive REPL console, batch command evaluation (`--exec`), and headless verification (`--test`).
  - Self-contained single-file Windows x64 release packaging requiring zero external .NET runtimes.
- **Automated Test Suite (`tests/Commodore4064.Tests`)**:
  - 24 automated unit and integration tests covering CPU instruction set, memory banking, KERNAL boot sequence, and BASIC command execution.
- **Continuous Integration Pipeline**:
  - GitHub Actions workflow (`.github/workflows/build.yml`) running multi-stage build, automated test suite, ROM bit-for-bit verification, and artifact packaging.
- **Documentation & Whitepaper**:
  - Technical architecture guide (`docs/ARCHITECTURE.md`), build instructions (`docs/BUILDING.md`), and testing guide (`docs/TESTING.md`).
  - 6-page comprehensive research report (`Commodore_4064_Decompilation_Report.pdf`).
  - Third-party notices and legal framework documentation (`THIRD_PARTY_NOTICES.md`).
- **Demonstration Showcase**:
  - 3 progressive Matrix Digital Rain demonstration programs demonstrating direct screen RAM manipulation and real-time CRT phosphor decay.
