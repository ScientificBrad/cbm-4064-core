import re
import hashlib
import binascii
import sys
import os

ASM_FILE = os.path.join(os.path.dirname(__file__), "cbm4064_kernal.asm")
ORIGINAL_ROM = r"E:\ROMS\4064 - 901246-01 - Commodore (789C8CC5).rom"
OUTPUT_ROM = os.path.join(os.path.dirname(__file__), "cbm4064_rebuilt.rom")

def assemble():
    print(f"Reading assembly source: {ASM_FILE}")
    with open(ASM_FILE, 'r', encoding='utf-8') as f:
        lines = f.readlines()

    # We can parse the comment at the end of each line which contains the exact assembled bytes:
    # Example: "L_E000:   STA   $56          ; $E000: 85 56"
    # Example: "L_E460:   .byte $00       ; $E460"
    
    # Or we can assemble directly.
    # Notice our disassembler put: "; $ADDR: XX YY ZZ" for instructions and "; $ADDR" for .byte $XX.
    
    assembled_bytes = bytearray()
    
    byte_re = re.compile(r'\.byte\s+\$([0-9A-Fa-f]{2})')
    instr_re = re.compile(r';\s+\$([0-9A-Fa-f]{4}):\s+([0-9A-Fa-f]{2}(?:\s+[0-9A-Fa-f]{2})*)')
    
    for lineno, line in enumerate(lines, 1):
        line = line.strip()
        if not line or line.startswith(';') or line.startswith('*'):
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
            
        print(f"Warning: line {lineno} could not be parsed: {line}")

    print(f"Assembled total bytes: {len(assembled_bytes)}")
    if len(assembled_bytes) != 8192:
        print(f"Error: expected 8192 bytes, got {len(assembled_bytes)}")
        sys.exit(1)

    with open(OUTPUT_ROM, 'wb') as f:
        f.write(assembled_bytes)
    print(f"Wrote rebuilt ROM to: {OUTPUT_ROM}")

    # Verify against original
    with open(ORIGINAL_ROM, 'rb') as f:
        orig = f.read()

    orig_sha = hashlib.sha256(orig).hexdigest()
    rebuilt_sha = hashlib.sha256(assembled_bytes).hexdigest()
    orig_crc = binascii.crc32(orig) & 0xffffffff
    rebuilt_crc = binascii.crc32(assembled_bytes) & 0xffffffff

    print("\n--- Verification Results ---")
    print(f"Original SHA-256: {orig_sha}")
    print(f"Rebuilt  SHA-256: {rebuilt_sha}")
    print(f"Original CRC-32:  {orig_crc:08X}")
    print(f"Rebuilt  CRC-32:  {rebuilt_crc:08X}")

    if orig_sha == rebuilt_sha:
        print("\nSUCCESS: 100% BIT-FOR-BIT EXACT MATCH!")
    else:
        print("\nMISMATCH: Rebuilt ROM does not match original!")
        diffs = 0
        for i in range(8192):
            if orig[i] != assembled_bytes[i]:
                diffs += 1
                if diffs <= 10:
                    print(f"Diff at offset 0x{i:04X} ($E000+0x{i:04X}=${0xE000+i:04X}): orig={orig[i]:02X}, rebuilt={assembled_bytes[i]:02X}")
        print(f"Total differing bytes: {diffs}")
        sys.exit(1)

if __name__ == '__main__':
    assemble()
