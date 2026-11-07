#!/usr/bin/env python3
"""
Commodore 4064 (Educator 64) KERNAL ROM Reconstruction & Assembler Tool
Part Number: 901246-01 (8,192 bytes, mapped at $E000-$FFFF)

Supports both:
  1. Full independent 6502 mnemonic assembly (default)
  2. Disassembly listing byte extraction (reference mode)

Expected Cryptographic Checksums:
  CRC-32:  789C8CC5
  SHA-256: b2b430a134514af11f3ed64c0929fc5241d8436ba7b12514ec02d1b2cb2fd533
"""

import argparse
import binascii
import hashlib
import os
import re
import sys
import time

EXPECTED_SIZE = 8192
EXPECTED_CRC32 = 0x789C8CC5
EXPECTED_SHA256 = "b2b430a134514af11f3ed64c0929fc5241d8436ba7b12514ec02d1b2cb2fd533"

# Standard NMOS 6502 Opcode Matrix: (mnemonic, mode) -> opcode
OPCODES = {
    # ADC
    ('ADC', 'IMM'): 0x69, ('ADC', 'ZP'): 0x65, ('ADC', 'ZPX'): 0x75,
    ('ADC', 'ABS'): 0x6D, ('ADC', 'ABSX'): 0x7D, ('ADC', 'ABSY'): 0x79,
    ('ADC', 'INDX'): 0x61, ('ADC', 'INDY'): 0x71,
    # AND
    ('AND', 'IMM'): 0x29, ('AND', 'ZP'): 0x25, ('AND', 'ZPX'): 0x35,
    ('AND', 'ABS'): 0x2D, ('AND', 'ABSX'): 0x3D, ('AND', 'ABSY'): 0x39,
    ('AND', 'INDX'): 0x21, ('AND', 'INDY'): 0x31,
    # ASL
    ('ASL', 'IMP'): 0x0A, ('ASL', 'ACC'): 0x0A, ('ASL', 'ZP'): 0x06,
    ('ASL', 'ZPX'): 0x16, ('ASL', 'ABS'): 0x0E, ('ASL', 'ABSX'): 0x1E,
    # Branches
    ('BCC', 'REL'): 0x90, ('BCS', 'REL'): 0xB0, ('BEQ', 'REL'): 0xF0,
    ('BMI', 'REL'): 0x30, ('BNE', 'REL'): 0xD0, ('BPL', 'REL'): 0x10,
    ('BVC', 'REL'): 0x50, ('BVS', 'REL'): 0x70,
    # BIT
    ('BIT', 'ZP'): 0x24, ('BIT', 'ABS'): 0x2C,
    # BRK
    ('BRK', 'IMP'): 0x00,
    # CLC, CLD, CLI, CLV
    ('CLC', 'IMP'): 0x18, ('CLD', 'IMP'): 0xD8, ('CLI', 'IMP'): 0x58, ('CLV', 'IMP'): 0xB8,
    # CMP
    ('CMP', 'IMM'): 0xC9, ('CMP', 'ZP'): 0xC5, ('CMP', 'ZPX'): 0xD5,
    ('CMP', 'ABS'): 0xCD, ('CMP', 'ABSX'): 0xDD, ('CMP', 'ABSY'): 0xD9,
    ('CMP', 'INDX'): 0xC1, ('CMP', 'INDY'): 0xD1,
    # CPX
    ('CPX', 'IMM'): 0xE0, ('CPX', 'ZP'): 0xE4, ('CPX', 'ABS'): 0xEC,
    # CPY
    ('CPY', 'IMM'): 0xC0, ('CPY', 'ZP'): 0xC4, ('CPY', 'ABS'): 0xCC,
    # DEC
    ('DEC', 'ZP'): 0xC6, ('DEC', 'ZPX'): 0xD6, ('DEC', 'ABS'): 0xCE, ('DEC', 'ABSX'): 0xDE,
    # DEX, DEY
    ('DEX', 'IMP'): 0xCA, ('DEY', 'IMP'): 0x88,
    # EOR
    ('EOR', 'IMM'): 0x49, ('EOR', 'ZP'): 0x45, ('EOR', 'ZPX'): 0x55,
    ('EOR', 'ABS'): 0x4D, ('EOR', 'ABSX'): 0x5D, ('EOR', 'ABSY'): 0x59,
    ('EOR', 'INDX'): 0x41, ('EOR', 'INDY'): 0x51,
    # INC
    ('INC', 'ZP'): 0xE6, ('INC', 'ZPX'): 0xF6, ('INC', 'ABS'): 0xEE, ('INC', 'ABSX'): 0xFE,
    # INX, INY
    ('INX', 'IMP'): 0xE8, ('INY', 'IMP'): 0xC8,
    # JMP
    ('JMP', 'ABS'): 0x4C, ('JMP', 'IND'): 0x6C,
    # JSR
    ('JSR', 'ABS'): 0x20,
    # LDA
    ('LDA', 'IMM'): 0xA9, ('LDA', 'ZP'): 0xA5, ('LDA', 'ZPX'): 0xB5,
    ('LDA', 'ABS'): 0xAD, ('LDA', 'ABSX'): 0xBD, ('LDA', 'ABSY'): 0xB9,
    ('LDA', 'INDX'): 0xA1, ('LDA', 'INDY'): 0xB1,
    # LDX
    ('LDX', 'IMM'): 0xA2, ('LDX', 'ZP'): 0xA6, ('LDX', 'ZPY'): 0xB6,
    ('LDX', 'ABS'): 0xAE, ('LDX', 'ABSY'): 0xBE,
    # LDY
    ('LDY', 'IMM'): 0xA0, ('LDY', 'ZP'): 0xA4, ('LDY', 'ZPX'): 0xB4,
    ('LDY', 'ABS'): 0xAC, ('LDY', 'ABSX'): 0xBC,
    # LSR
    ('LSR', 'IMP'): 0x4A, ('LSR', 'ACC'): 0x4A, ('LSR', 'ZP'): 0x46,
    ('LSR', 'ZPX'): 0x56, ('LSR', 'ABS'): 0x4E, ('LSR', 'ABSX'): 0x5E,
    # NOP
    ('NOP', 'IMP'): 0xEA,
    # ORA
    ('ORA', 'IMM'): 0x09, ('ORA', 'ZP'): 0x05, ('ORA', 'ZPX'): 0x15,
    ('ORA', 'ABS'): 0x0D, ('ORA', 'ABSX'): 0x1D, ('ORA', 'ABSY'): 0x19,
    ('ORA', 'INDX'): 0x01, ('ORA', 'INDY'): 0x11,
    # PHA, PHP, PLA, PLP
    ('PHA', 'IMP'): 0x48, ('PHP', 'IMP'): 0x08, ('PLA', 'IMP'): 0x68, ('PLP', 'IMP'): 0x28,
    # ROL
    ('ROL', 'IMP'): 0x2A, ('ROL', 'ACC'): 0x2A, ('ROL', 'ZP'): 0x26,
    ('ROL', 'ZPX'): 0x36, ('ROL', 'ABS'): 0x2E, ('ROL', 'ABSX'): 0x3E,
    # ROR
    ('ROR', 'IMP'): 0x6A, ('ROR', 'ACC'): 0x6A, ('ROR', 'ZP'): 0x66,
    ('ROR', 'ZPX'): 0x76, ('ROR', 'ABS'): 0x6E, ('ROR', 'ABSX'): 0x7E,
    # RTI, RTS
    ('RTI', 'IMP'): 0x40, ('RTS', 'IMP'): 0x60,
    # SBC
    ('SBC', 'IMM'): 0xE9, ('SBC', 'ZP'): 0xE5, ('SBC', 'ZPX'): 0xF5,
    ('SBC', 'ABS'): 0xED, ('SBC', 'ABSX'): 0xFD, ('SBC', 'ABSY'): 0xF9,
    ('SBC', 'INDX'): 0xE1, ('SBC', 'INDY'): 0xF1,
    # SEC, SED, SEI
    ('SEC', 'IMP'): 0x38, ('SED', 'IMP'): 0xF8, ('SEI', 'IMP'): 0x78,
    # STA
    ('STA', 'ZP'): 0x85, ('STA', 'ZPX'): 0x95,
    ('STA', 'ABS'): 0x8D, ('STA', 'ABSX'): 0x9D, ('STA', 'ABSY'): 0x99,
    ('STA', 'INDX'): 0x81, ('STA', 'INDY'): 0x91,
    # STX
    ('STX', 'ZP'): 0x86, ('STX', 'ZPY'): 0x96, ('STX', 'ABS'): 0x8E,
    # STY
    ('STY', 'ZP'): 0x84, ('STY', 'ZPX'): 0x94, ('STY', 'ABS'): 0x8C,
    # TAX, TAY, TSX, TXA, TXS, TYA
    ('TAX', 'IMP'): 0xAA, ('TAY', 'IMP'): 0xA8, ('TSX', 'IMP'): 0xBA,
    ('TXA', 'IMP'): 0x8A, ('TXS', 'IMP'): 0x9A, ('TYA', 'IMP'): 0x98,
}

BRANCHES = {'BCC', 'BCS', 'BEQ', 'BMI', 'BNE', 'BPL', 'BVC', 'BVS'}

def get_repo_root():
    script_dir = os.path.dirname(os.path.abspath(__file__))
    return os.path.abspath(os.path.join(script_dir, ".."))

def parse_val(s):
    s = s.strip()
    if s.startswith('$'):
        return int(s[1:], 16)
    return int(s)

def parse_instruction(mnemonic, operand_str, pc):
    mnemonic = mnemonic.upper()
    operand_str = operand_str.strip() if operand_str else ""

    if mnemonic == '.BYTE':
        val = parse_val(operand_str)
        return bytes([val])

    if mnemonic in BRANCHES:
        target = parse_val(operand_str)
        offset = target - (pc + 2)
        if offset < -128 or offset > 127:
            raise ValueError(f"Branch out of range at ${pc:04X}: target ${target:04X}, offset {offset}")
        op = OPCODES[(mnemonic, 'REL')]
        return bytes([op, offset & 0xFF])

    if not operand_str or operand_str == 'A':
        mode = 'ACC' if operand_str == 'A' else 'IMP'
        if (mnemonic, mode) in OPCODES:
            return bytes([OPCODES[(mnemonic, mode)]])
        raise ValueError(f"Unknown implied/accumulator opcode: {mnemonic}")

    # Immediate: #$xx
    if operand_str.startswith('#'):
        val = parse_val(operand_str[1:])
        op = OPCODES[(mnemonic, 'IMM')]
        return bytes([op, val & 0xFF])

    # Indirect: ($xxxx) or ($xx,X) or ($xx),Y
    if operand_str.startswith('('):
        if ',X)' in operand_str.upper():
            inner = operand_str[1:operand_str.upper().index(',X)')]
            val = parse_val(inner)
            op = OPCODES[(mnemonic, 'INDX')]
            return bytes([op, val & 0xFF])
        elif '),Y' in operand_str.upper():
            inner = operand_str[1:operand_str.upper().index('),Y')]
            val = parse_val(inner)
            op = OPCODES[(mnemonic, 'INDY')]
            return bytes([op, val & 0xFF])
        elif operand_str.endswith(')'):
            val = parse_val(operand_str[1:-1])
            op = OPCODES[(mnemonic, 'IND')]
            return bytes([op, val & 0xFF, (val >> 8) & 0xFF])

    # Indexed with ,X or ,Y
    if ',' in operand_str:
        base, idx = operand_str.split(',')
        idx = idx.strip().upper()
        val = parse_val(base)
        is_zp = (val <= 0xFF) and (mnemonic not in {'JMP', 'JSR'})

        if idx == 'Y':
            if is_zp and (mnemonic, 'ZPY') in OPCODES:
                return bytes([OPCODES[(mnemonic, 'ZPY')], val & 0xFF])
            return bytes([OPCODES[(mnemonic, 'ABSY')], val & 0xFF, (val >> 8) & 0xFF])
        elif idx == 'X':
            if is_zp and (mnemonic, 'ZPX') in OPCODES:
                return bytes([OPCODES[(mnemonic, 'ZPX')], val & 0xFF])
            return bytes([OPCODES[(mnemonic, 'ABSX')], val & 0xFF, (val >> 8) & 0xFF])

    # Plain operand: Zero page or Absolute
    val = parse_val(operand_str)
    is_explicit_abs = operand_str.startswith('$') and len(operand_str) >= 5
    if val <= 0xFF and not is_explicit_abs and (mnemonic, 'ZP') in OPCODES and mnemonic not in {'JMP', 'JSR'}:
        return bytes([OPCODES[(mnemonic, 'ZP')], val & 0xFF])
    else:
        return bytes([OPCODES[(mnemonic, 'ABS')], val & 0xFF, (val >> 8) & 0xFF])

def assemble_from_mnemonics(asm_path):
    print(f"Assembling 6502 mnemonics independently from: {asm_path}")
    with open(asm_path, 'r', encoding='utf-8') as f:
        lines = f.readlines()

    pc = 0xE000
    assembled = bytearray()

    for lineno, line in enumerate(lines, 1):
        line = line.strip()
        if not line or line.startswith(';') or line.startswith('*'):
            continue

        # Strip comment completely - we do NOT use comments
        code_part = line.split(';')[0].strip()
        if not code_part:
            continue

        # Strip label if present
        if ':' in code_part:
            code_part = code_part.split(':', 1)[1].strip()

        if not code_part:
            continue

        parts = code_part.split(None, 1)
        mnemonic = parts[0].upper()
        operand = parts[1].strip() if len(parts) > 1 else ""

        encoded = parse_instruction(mnemonic, operand, pc)
        assembled.extend(encoded)
        pc += len(encoded)

    return bytes(assembled)

def extract_from_comments(asm_path):
    print(f"Extracting binary bytes from disassembly comments in: {asm_path}")
    with open(asm_path, "r", encoding="utf-8") as f:
        lines = f.readlines()

    assembled_bytes = bytearray()
    byte_re = re.compile(r'\.byte\s+\$([0-9A-Fa-f]{2})')
    instr_re = re.compile(r';\s+\$([0-9A-Fa-f]{4}):\s+([0-9A-Fa-f]{2}(?:\s+[0-9A-Fa-f]{2})*)')

    for lineno, line in enumerate(lines, 1):
        line = line.strip()
        if not line or line.startswith(";") or line.startswith("*"):
            continue

        m_byte = byte_re.search(line)
        if m_byte:
            b = int(m_byte.group(1), 16)
            assembled_bytes.append(b)
            continue

        m_instr = instr_re.search(line)
        if m_instr:
            raw_hex_parts = m_instr.group(2).split()
            for h in raw_hex_parts:
                assembled_bytes.append(int(h, 16))
            continue

        print(f"[WARNING] Line {lineno} could not be parsed: {line}", file=sys.stderr)

    return bytes(assembled_bytes)

def parse_args():
    repo_root = get_repo_root()
    default_asm = os.path.join(repo_root, "asm", "cbm4064_kernal.asm")
    default_output = os.path.join(repo_root, "roms", "cbm4064_rebuilt.rom")
    default_orig = os.path.join(repo_root, "roms", "cbm4064_kernal_901246-01.rom")

    parser = argparse.ArgumentParser(
        description="Reconstruct and verify Commodore 4064 KERNAL ROM (901246-01)."
    )
    parser.add_argument(
        "--source", "-s",
        default=default_asm,
        help=f"Path to input assembly listing (default: {default_asm})"
    )
    parser.add_argument(
        "--output", "-o",
        default=default_output,
        help=f"Path to output rebuilt ROM binary (default: {default_output})"
    )
    parser.add_argument(
        "--original", "-r",
        default=default_orig if os.path.exists(default_orig) else None,
        help="Path to original ROM binary for bit-for-bit comparison (optional)"
    )
    parser.add_argument(
        "--report",
        default=None,
        help="Path to write a Markdown verification report file (optional)"
    )
    parser.add_argument(
        "--method", "-m",
        choices=["assemble", "extract"],
        default="assemble",
        help="Reconstruction method: 'assemble' (independent 6502 mnemonic assembler) or 'extract' (from listing comments)"
    )
    return parser.parse_args()

def main():
    args = parse_args()
    if not os.path.isfile(args.source):
        print(f"[ERROR] Source file not found: {args.source}", file=sys.stderr)
        sys.exit(1)

    if args.method == "assemble":
        rebuilt_bytes = assemble_from_mnemonics(args.source)
    else:
        rebuilt_bytes = extract_from_comments(args.source)

    size = len(rebuilt_bytes)
    print(f"Reconstructed size: {size} bytes")
    if size != EXPECTED_SIZE:
        print(f"[ERROR] Size mismatch: expected {EXPECTED_SIZE} bytes, got {size}", file=sys.stderr)
        sys.exit(1)

    rebuilt_crc32 = binascii.crc32(rebuilt_bytes) & 0xFFFFFFFF
    rebuilt_sha256 = hashlib.sha256(rebuilt_bytes).hexdigest()

    print(f"Reconstructed CRC-32:  {rebuilt_crc32:08X} (Expected: {EXPECTED_CRC32:08X})")
    print(f"Reconstructed SHA-256: {rebuilt_sha256}")
    print(f"Expected      SHA-256: {EXPECTED_SHA256}")

    if rebuilt_crc32 != EXPECTED_CRC32 or rebuilt_sha256 != EXPECTED_SHA256:
        print("[ERROR] Reconstructed ROM does not match expected cryptographic checksums!", file=sys.stderr)
        sys.exit(1)

    output_dir = os.path.dirname(os.path.abspath(args.output))
    if output_dir and not os.path.exists(output_dir):
        os.makedirs(output_dir, exist_ok=True)

    with open(args.output, "wb") as f:
        f.write(rebuilt_bytes)
    print(f"Wrote verified rebuilt ROM to: {args.output}")

    if args.original:
        if not os.path.isfile(args.original):
            print(f"[ERROR] Original ROM specified but file not found: {args.original}", file=sys.stderr)
            sys.exit(1)

        with open(args.original, "rb") as f:
            orig_bytes = f.read()

        orig_crc32 = binascii.crc32(orig_bytes) & 0xFFFFFFFF
        orig_sha256 = hashlib.sha256(orig_bytes).hexdigest()

        print("\n--- Byte-for-Byte Comparison with Original ROM ---")
        print(f"Original Path:    {args.original}")
        print(f"Original CRC-32:  {orig_crc32:08X}")
        print(f"Original SHA-256: {orig_sha256}")

        if orig_bytes == rebuilt_bytes:
            print("[SUCCESS] Rebuilt ROM is bit-for-bit IDENTICAL to original ROM! (0 differing bytes)")
        else:
            diffs = sum(1 for a, b in zip(orig_bytes, rebuilt_bytes) if a != b)
            print(f"[ERROR] Binary mismatch! Differing bytes: {diffs}", file=sys.stderr)
            sys.exit(1)
    else:
        print("\n[SUCCESS] Checksum verification passed against Commodore 901246-01 reference.")

    if args.report:
        report_dir = os.path.dirname(os.path.abspath(args.report))
        if report_dir and not os.path.exists(report_dir):
            os.makedirs(report_dir, exist_ok=True)
        with open(args.report, "w", encoding="utf-8") as rf:
            rf.write("# Commodore 4064 KERNAL ROM Verification Report\n\n")
            rf.write(f"- **Part Number**: 901246-01\n")
            method_desc = "Independent 6502 Mnemonic Assembly" if args.method == "assemble" else "Listing Byte Extraction"
            rf.write(f"- **Reconstruction Method**: {args.method} ({method_desc})\n")
            rf.write(f"- **Size**: {len(rebuilt_bytes)} bytes (Expected: {EXPECTED_SIZE})\n")
            rf.write(f"- **CRC-32**: `{rebuilt_crc32:08X}` (Expected: `{EXPECTED_CRC32:08X}`)\n")
            rf.write(f"- **SHA-256**: `{rebuilt_sha256}`\n")
            rf.write(f"- **Expected SHA-256**: `{EXPECTED_SHA256}`\n")
            rf.write(f"- **Cryptographic Integrity**: VERIFIED\n")
            if args.original and os.path.isfile(args.original):
                rf.write("- **Bit-for-Bit Identity with Original**: IDENTICAL (0 differing bytes)\n")
            rf.write(f"- **Generated At**: {time.strftime('%Y-%m-%d %H:%M:%SZ', time.gmtime())}\n")
        print(f"Wrote verification report to: {args.report}")

    sys.exit(0)

if __name__ == "__main__":
    main()
