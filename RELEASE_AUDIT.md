# Commodore 4064 (Educator 64) Rebuild — Technical Audit & Release Readiness Report

**Project**: Commodore 4064 (Educator 64 / PET 64)  
**Target Hardware**: 1983 Educator 64 (Commodore 64 motherboard with internal 12" green monochrome CRT)  
**Target Firmware**: KERNAL ROM Part # `901246-01` (8,192 bytes, mapped at `$E000–$FFFF`)  
**Workspace Path**: `D:\Emulation\C64`  
**GitHub Repository**: `ScientificBrad/cbm4064-rebuild`  
**Working Branch**: `improvement/v1-release-preparation`  
**Audit Date**: 2026-11-07  
**Auditor**: Antigravity Assistant & ScientificBrad  

---

## 1. Executive Summary

This comprehensive technical audit evaluated, improved, validated, and packaged the Commodore 4064 reverse-engineering project for its official **v1.0.0** release.

### Key Achievements
1. **Preserved Working Functionality**: The C# .NET 8 emulator remains completely operational with zero regression. It boots the authentic 901246-01 KERNAL to `READY.` in 1,187,628 cycles and executes interactive BASIC V2.0 programs.
2. **Independent 6502 Mnemonic Assembly**: Upgraded `asm/build_rom.py` with an independent 6502 mnemonic assembler. The tool compiles `asm/cbm4064_kernal.asm` directly from instructions and addressing modes without reading comments, producing a binary that matches the original ROM **100% bit-for-bit** (`CRC32: 789C8CC5`, `SHA256: b2b430a134514af11f3ed64c0929fc5241d8436ba7b12514ec02d1b2cb2fd533`).
3. **Portable Build Pipeline**: Eliminated developer-specific hardcoded filesystem paths (`E:\ROMS\...`), introducing repository-relative paths and CLI argument flags (`--original`, `--source`, `--output`, `--method`).
4. **Self-Contained Windows Executable**: Re-packaged `releases/Commodore4064.exe` as a single-file, self-contained Windows x64 binary (~35 MB) bundling the .NET 8 runtime and JIT, eliminating external runtime dependencies.
5. **Automated Test Suite**: Created `tests/Commodore4064.Tests/` containing **24 automated unit and integration tests** verifying CPU instruction set execution, memory banking, KERNAL boot sequence, and BASIC command evaluation.
6. **Continuous Integration**: Configured GitHub Actions (`.github/workflows/build.yml`) to automatically compile the core, execute the 24 tests, assemble and verify the ROM, publish the self-contained binary, and archive release artifacts.
7. **Legal & Licensing Segregation**: Clarified licensing boundaries by adding `LICENSE` (MIT for original code/tools) and `THIRD_PARTY_NOTICES.md` (documenting historical Commodore firmware provenance and educational preservation doctrines).
8. **Documentation Suite**: Added `docs/ARCHITECTURE.md`, `docs/BUILDING.md`, `docs/TESTING.md`, `CHANGELOG.md`, and expanded `docs/REVERSE_ENGINEERING.md` and `README.md`.

---

## 2. Original Project Status

Prior to this mission, the repository contained:
- A functional C# emulator in `src/Commodore4064/`.
- A 4,113-line assembly listing in `asm/cbm4064_kernal.asm`.
- A reconstruction script `asm/build_rom.py` containing hardcoded absolute path `E:\ROMS\4064 - 901246-01 - Commodore (789C8CC5).rom`, which only functioned by reading machine-code bytes from comments.
- A framework-dependent Windows executable in `releases/` (requiring a pre-installed .NET 8 runtime).
- A basic `--test` mode without a formal automated unit testing project.
- Unclarified licensing regarding embedded ROMs versus original tooling.
- No automated GitHub Actions CI workflow.

---

## 3. Changes Implemented

| File Path | Nature of Change | Technical Reason |
| :--- | :--- | :--- |
| `asm/build_rom.py` | Complete rewrite & expansion | Removed hardcoded paths; added independent 6502 mnemonic assembler (`--method assemble`) alongside reference extractor (`--method extract`); added CLI argument parsing and error exit codes. |
| `src/Commodore4064/Commodore4064.csproj` | Configuration update | Configured `<SelfContained>true</SelfContained>`, `<RuntimeIdentifier>win-x64</RuntimeIdentifier>`, and `<EnableCompressionInSingleFile>true</EnableCompressionInSingleFile>` for zero-dependency execution. |
| `releases/Commodore4064.exe` | Binary rebuild | Replaced 186 KB framework-dependent executable with 35.1 MB self-contained single-file Windows x64 binary. |
| `.gitignore` | Pattern updates | Added `publish/` and `*.pdb` rules while preserving `releases/Commodore4064.exe`. |
| `tests/Commodore4064.Tests/` | New test project | Created 4 xUnit test suites (`CpuInstructionTests.cs`, `MemoryBusTests.cs`, `BootSequenceTests.cs`, `BasicExecutionTests.cs`) totaling 24 automated tests. |
| `.github/workflows/build.yml` | New CI pipeline | Automated checkout, .NET 8 setup, Python setup, build, test, ROM bit-for-bit verification, and artifact upload. |
| `LICENSE` | New file | Standard MIT License for original source code, tooling, tests, and documentation. |
| `THIRD_PARTY_NOTICES.md` | New file | Documented Commodore firmware provenance, copyright boundaries, 17 U.S.C. § 1201(f) reverse-engineering doctrine, and clean-room user-supplied ROM options. |
| `CHANGELOG.md` | New file | Semantic versioning log documenting v1.0.0 features. |
| `docs/ARCHITECTURE.md` | New file | Architectural specification of CPU, memory bus, VIC-II raster counter, and console rendering. |
| `docs/BUILDING.md` | New file | Compilation, publishing, and ROM building guide. |
| `docs/TESTING.md` | New file | Test coverage documentation and execution guide. |
| `docs/REVERSE_ENGINEERING.md` | Expansion | Added detailed breakdowns of `$FCE2` (Reset), `$E4C8` (Monochrome lock), `$E477` (Banner), `$E444` (RAM sizing bypass), `$FF5B` (PAL/NTSC timing), and architectural comparison table. |
| `README.md` | Expansion | Professional reorganization with historical background, Matrix proof-of-concept commands, architecture, testing, and legal notices. |

---

## 4. ROM Verification Results

### Checksum Verification Table
| ROM Asset | Size (Bytes) | CRC-32 (Hex) | SHA-256 Checksum | Comparison Result |
| :--- | :--- | :--- | :--- | :--- |
| **Original 901246-01** | 8,192 | `789C8CC5` | `b2b430a134514af11f3ed64c0929fc5241d8436ba7b12514ec02d1b2cb2fd533` | Reference |
| **Mnemonic Assembled** | 8,192 | `789C8CC5` | `b2b430a134514af11f3ed64c0929fc5241d8436ba7b12514ec02d1b2cb2fd533` | **0 differing bytes (Bit-for-bit match)** |
| **Comment Extracted** | 8,192 | `789C8CC5` | `b2b430a134514af11f3ed64c0929fc5241d8436ba7b12514ec02d1b2cb2fd533` | **0 differing bytes (Bit-for-bit match)** |
| **BASIC V2.0 ROM** | 8,192 | `C30C7B90` | `89878cea0a268734696de11c4bae593eaaa506465d2029d619c0e0cbccdfa62d` | Reference |

### Verification Command & Output
```powershell
python asm/build_rom.py --method assemble
```
```text
Assembling 6502 mnemonics independently from: D:\Emulation\C64\asm\cbm4064_kernal.asm
Reconstructed size: 8192 bytes
Reconstructed CRC-32:  789C8CC5 (Expected: 789C8CC5)
Reconstructed SHA-256: b2b430a134514af11f3ed64c0929fc5241d8436ba7b12514ec02d1b2cb2fd533
Expected      SHA-256: b2b430a134514af11f3ed64c0929fc5241d8436ba7b12514ec02d1b2cb2fd533
Wrote verified rebuilt ROM to: D:\Emulation\C64\roms\cbm4064_rebuilt.rom

--- Byte-for-Byte Comparison with Original ROM ---
Original Path:    D:\Emulation\C64\roms\cbm4064_kernal_901246-01.rom
Original CRC-32:  789C8CC5
Original SHA-256: b2b430a134514af11f3ed64c0929fc5241d8436ba7b12514ec02d1b2cb2fd533
[SUCCESS] Rebuilt ROM is bit-for-bit IDENTICAL to original ROM! (0 differing bytes)
```

---

## 5. Emulator Verification Results

### Automated Test Suite Execution
```powershell
dotnet test tests/Commodore4064.Tests/Commodore4064.Tests.csproj --verbosity normal
```
```text
Passed!  - Failed:     0, Passed:    24, Skipped:     0, Total:    24, Duration: 254 ms - Commodore4064.Tests.dll (net8.0)
```
- **CPU Tests (12/12 Passed)**: LDA (immediate, zero page), STA (absolute), LDX/LDY, ADC (carry in, signed overflow V flag), SBC (borrow), JMP (absolute), JSR/RTS (stack return address), BEQ/BNE (branch offset & fallthrough), PHA/PLA (stack operations).
- **Memory Bus Tests (5/5 Passed)**: RAM reads/writes across 64 KB, screen memory mapping (`$0400–$07E7`), KERNAL ROM mapping (`$E000–$FFFF`), BASIC ROM mapping (`$A000–$BFFF`), VIC-II raster line counter progression.
- **Boot Sequence Tests (3/3 Passed)**: Reset vector dispatch to `$FCE2`, boot loop termination at `$A480/$A483`, Educator 64 startup banner verification, and suppression of the standard `"38911 BASIC BYTES FREE"` string.
- **BASIC Execution Tests (4/4 Passed)**: Execution of `PRINT "HELLO WORLD"`, floating-point arithmetic `PRINT 2+2`, multi-line `FOR I=1 TO 3: PRINT I: NEXT I` program, and direct screen `POKE 1034, 81`.

### Self-Contained Binary Smoke Test
```powershell
.\releases\Commodore4064.exe --test
```
```text
Boot completed in 1,187,628 cycles.
CPU State: PC=$A480, A=$00, X=$00, Y=$0A, SP=$FB, Status=32
[SUCCESS] Self-test verified.
```

---

## 6. Build Verification

- **Compiler**: Microsoft (R) .NET SDK version 8.0.427
- **Target Framework**: `net8.0`
- **Architecture**: `win-x64`
- **Executable Output**: `releases/Commodore4064.exe`
- **File Size**: 35,122,374 bytes (~33.49 MiB)
- **SHA-256**: `144EECC6845353FF532A69A1C50C3335F3294C6ACEDC805292F0C10BA46BE5C0`
- **Single-File Status**: True (bundled runtime, host, native libraries, and compressed managed assemblies).
- **External Dependencies**: None (executes out-of-the-box on clean Windows x64 installations).

---

## 7. GitHub Status

- **Repository**: `https://github.com/ScientificBrad/cbm4064-rebuild`
- **Main Branch State**: Up-to-date with working baseline.
- **Working Branch**: `improvement/v1-release-preparation`
- **Commits on Working Branch**:
  1. `759a6b6` - `fix: make ROM reconstruction script portable and remove hardcoded paths`
  2. `321aa51` - `fix: add independent 6502 mnemonic assembly to build_rom.py alongside reference extraction`
  3. `b3db577` - `build: configure self-contained Windows x64 single-file publishing`
  4. `59171be` - `test: add comprehensive automated test suite for CPU, memory, boot, and BASIC execution`
  5. `3012aa8` - `ci: add automated GitHub Actions build, test, and verification workflow`
  6. `c022ccc` - `docs: clarify project licensing, ROM provenance, and third-party notices`
  7. `a6b806d` - `docs: expand README, architecture, building, testing, reverse engineering, and changelog`
- **GitHub Workflow Scope**: OAuth device code token requires `workflow` scope to push `.github/workflows/build.yml` (device code authorization initiated).

---

## 8. Licensing Review & Risk Assessment

1. **Original Emulator & Tooling**: Fully licensed under MIT License. No third-party proprietary software licenses violated.
2. **Historical ROM Binaries (`901246-01`, `901226-01`)**:
   - Analyzed under educational preservation and interoperability exceptions (17 U.S.C. § 1201(f) and EU Directive 2009/24/EC).
   - In `THIRD_PARTY_NOTICES.md`, the repository clearly separates project ownership from historical Commodore firmware.
3. **Distribution Recommendation**:
   - Official public release archives (`.zip`) can provide the self-contained binary configured to accept user-supplied ROMs via `--rom <path>`.
   - `build_rom.py` enables end users to independently verify their own ROM dumps.

---

## 9. Remaining Issues

- **GitHub OAuth Scope**: When pushing `.github/workflows/build.yml`, GitHub requires the `workflow` OAuth scope on the `ScientificBrad` token. A device authorization code (`CFDD-4DF3`) was requested to add this scope. Once authorized, the branch will be pushed to the remote repository.

---

## 10. Release Readiness Determination

### **READY WITH CONDITIONS**

**Conditions for Public Tagging (`v1.0.0`)**:
1. Complete device code authorization (`CFDD-4DF3` at `https://github.com/login/device`) to grant `workflow` scope.
2. Push `improvement/v1-release-preparation` to `origin`.
3. Verify that the GitHub Actions workflow runs and finishes with green checks.
4. Merge `improvement/v1-release-preparation` into `main` after user review.
5. Create official release tag `v1.0.0` attaching the self-contained `Commodore4064.exe` binary.

---

## 11. Next Actions

1. User authorizes `CFDD-4DF3` at `https://github.com/login/device`.
2. Push branch and verify CI pipeline passes.
3. Merge branch to `main`.
4. Tag and publish release `v1.0.0`.
