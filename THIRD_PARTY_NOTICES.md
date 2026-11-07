# Third-Party Notices, Provenance and Intellectual Property Statement

## 1. Scope and Purpose
This repository documents a historical preservation, decompilation, and reverse-engineering research project focused on the **Commodore 4064 (Educator 64 / PET 64)** KERNAL ROM (`901246-01`).

The **MIT License** accompanying this project applies solely to:
- The emulator implementation (`src/Commodore4064/`)
- The automated test suite (`tests/Commodore4064.Tests/`)
- The binary reconstruction tools and 6502 mnemonic assembler (`asm/build_rom.py`)
- The documentation, analysis reports, and research whitepapers (`docs/`, `README.md`)

The MIT License does **not** grant or imply licensing rights over historical Commodore proprietary firmware or third-party intellectual property.

---

## 2. Inventory of Historical Firmware Assets

The following historical binary ROM images are analyzed in this research repository:

| Asset Name | Origin / Part Number | Size | Mapped Range | SHA-256 Checksum |
| :--- | :--- | :--- | :--- | :--- |
| **Commodore 4064 KERNAL** | Commodore Part # `901246-01` (1983) | 8,192 bytes | `$E000–$FFFF` | `b2b430a134514af11f3ed64c0929fc5241d8436ba7b12514ec02d1b2cb2fd533` |
| **Commodore BASIC V2.0** | Commodore Part # `901226-01` (1982) | 8,192 bytes | `$A000–$BFFF` | `89878cea0a268734696de11c4bae593eaaa506465d2029d619c0e0cbccdfa62d` |

### Provenance
- **Original Manufacturer**: Commodore Business Machines, Inc. (West Chester, Pennsylvania, USA)
- **Year of Production**: 1982–1983
- **Hardware Association**: MOS 6510 CPU, MOS 6567/6569 (VIC-II), MOS 6526 (CIA), MOS 6581 (SID)

---

## 3. Legal and Regulatory Framework for Reverse Engineering

The reverse-engineering, disassembly, and emulation work in this project was conducted under established interoperability, preservation, and research doctrines:

1. **United States Law (17 U.S.C. § 1201(f) & Fair Use § 107)**:
   - Section 1201(f) recognizes the right to reverse engineer computer programs for the sole purpose of identifying and analyzing elements necessary to achieve interoperability of an independently created computer program with other programs.
   - Section 107 protects non-profit educational and historical preservation analysis.
2. **European Union Directive 2009/24/EC (Articles 5 & 6)**:
   - Article 5(3) authorizes observing, studying, or testing the functioning of a program to determine the ideas and principles which underlie any element of the program.
   - Article 6 authorizes decompilation where reproduction of the code and translation of its form are indispensable to obtain the information necessary to achieve the interoperability of an independently created computer program.

---

## 4. Distribution and Clean-Room ROM Strategy

### Public Releases Strategy
To guarantee compliance across jurisdictions that strictly regulate firmware distribution:
1. **ROM-Free Releases**: Official binary distribution packages (`Commodore4064-v1.0.0-win-x64.zip`) can be compiled without embedding copyrighted firmware blobs.
2. **User-Supplied Firmware**: The emulator natively supports runtime ROM injection:
   ```powershell
   Commodore4064.exe --rom <path-to-kernal.rom>
   ```
   Users may provide legally acquired ROM dumps from their own physical Commodore hardware or licensed disk archives.
3. **Reproducibility**: The `asm/build_rom.py` tool enables researchers to independently verify their own ROM dumps bit-for-bit against published cryptographic checksums (`roms/checksums.sha256`).

---

## 5. Trademarks
- **Commodore**, **Commodore 64**, **C64**, **Educator 64**, and **PET** are historical trademarks of Commodore Business Machines, Inc. and their respective current successors.
- Their use in this repository is strictly descriptive and nominative to identify the historical computing hardware and firmware analyzed.
