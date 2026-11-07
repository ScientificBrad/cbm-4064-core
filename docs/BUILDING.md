# Building and Packaging Guide

## 1. Prerequisites
- **Operating System**: Windows 10 / 11 (x64), Linux (x64/arm64), or macOS.
- **.NET SDK**: [.NET 8.0 SDK](https://dotnet.microsoft.com/download/dotnet/8.0) or higher.
- **Python**: Python 3.8+ (for ROM assembly and verification tools).

---

## 2. Quick Build

From the repository root:

```powershell
# Restore dependencies and build in Release mode
dotnet build src/Commodore4064/Commodore4064.csproj -c Release
```

To run the emulator directly from source:
```powershell
dotnet run --project src/Commodore4064/Commodore4064.csproj -c Release
```

---

## 3. Running Self-Tests
Verify the emulator startup sequence and KERNAL execution:
```powershell
dotnet run --project src/Commodore4064/Commodore4064.csproj -c Release -- --test
```

---

## 4. Self-Contained Publishing (Zero Dependencies)

To package the emulator into a single standalone executable that requires **no external .NET runtime**:

```powershell
dotnet publish src/Commodore4064/Commodore4064.csproj -c Release -r win-x64 --self-contained true -p:PublishSingleFile=true -p:EnableCompressionInSingleFile=true -o publish/win-x64
```

The resulting binary will be located at:
```
publish/win-x64/Commodore4064.exe
```

---

## 5. Reconstructing and Assembling the ROM

The repository provides two independent ROM build pipelines:

### Method 1: Independent 6502 Mnemonic Assembly (Recommended)
Assembles `asm/cbm4064_kernal.asm` directly from mnemonics, operands, and expressions without reading comments:
```powershell
python asm/build_rom.py --method assemble
```

### Method 2: Disassembly Byte Extraction (Reference Mode)
Extracts the raw opcode bytes recorded in the disassembly comments for verification:
```powershell
python asm/build_rom.py --method extract
```

Both methods verify the resulting binary against the expected SHA-256 (`b2b430a1...`) and CRC-32 (`789C8CC5`).
