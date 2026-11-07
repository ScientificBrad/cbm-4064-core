#!/usr/bin/env python3
"""
Commodore 4064 (Educator 64) KERNAL ROM Reconstruction Tool
Part Number: 901246-01 (8,192 bytes, mapped at $E000-$FFFF)
Expected Checksums:
  CRC-32:  789C8CC5
  SHA-256: b2b430a134514af11f3ed64c0929fc5241d8436ba7b12514ec02d1b2cb2fd533
"""

import argparse
import binascii
import hashlib
import os
import re
import sys

EXPECTED_SIZE = 8192
EXPECTED_CRC32 = 0x789C8CC5
EXPECTED_SHA256 = "b2b430a134514af11f3ed64c0929fc5241d8436ba7b12514ec02d1b2cb2fd533"

def get_repo_root():
    script_dir = os.path.dirname(os.path.abspath(__file__))
    return os.path.abspath(os.path.join(script_dir, ".."))

def parse_args():
    repo_root = get_repo_root()
    default_asm = os.path.join(repo_root, "asm", "cbm4064_kernal.asm")
    default_output = os.path.join(repo_root, "roms", "cbm4064_rebuilt.rom")
    default_orig = os.path.join(repo_root, "roms", "cbm4064_kernal_901246-01.rom")

    parser = argparse.ArgumentParser(
        description="Reconstruct and verify Commodore 4064 KERNAL ROM (901246-01) from assembly listing."
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
    return parser.parse_args()

def reconstruct_rom(asm_path):
    if not os.path.isfile(asm_path):
        print(f"[ERROR] Assembly source file not found: {asm_path}", file=sys.stderr)
        sys.exit(1)

    print(f"Reading assembly source: {asm_path}")
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

def main():
    args = parse_args()
    rebuilt_bytes = reconstruct_rom(args.source)

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

    # Ensure output directory exists and write rebuilt ROM
    output_dir = os.path.dirname(os.path.abspath(args.output))
    if output_dir and not os.path.exists(output_dir):
        os.makedirs(output_dir, exist_ok=True)

    with open(args.output, "wb") as f:
        f.write(rebuilt_bytes)
    print(f"Wrote verified rebuilt ROM to: {args.output}")

    # Compare against original binary if available
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

    sys.exit(0)

if __name__ == "__main__":
    main()
