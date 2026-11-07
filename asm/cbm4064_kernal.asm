; ==========================================================================
; COMMODORE 4064 (EDUCATOR 64 / PET 64) KERNAL ROM (901246-01)
; Reconstructed and Re-assemblable Source Code
; SHA-256: b2b430a134514af11f3ed64c0929fc5241d8436ba7b12514ec02d1b2cb2fd533
; CRC-32:  789C8CC5
; Mapped at $E000 - $FFFF (8192 bytes)
; ==========================================================================

        * = $E000

L_E000:   STA   $56          ; $E000: 85 56
L_E002:   JSR   $BC0F        ; $E002: 20 0F BC
L_E005:   LDA   $61          ; $E005: A5 61
L_E007:   CMP   #$88         ; $E007: C9 88
L_E009:   BCC   $E00E        ; $E009: 90 03
L_E00B:   JSR   $BAD4        ; $E00B: 20 D4 BA
L_E00E:   JSR   $BCCC        ; $E00E: 20 CC BC
L_E011:   LDA   $07          ; $E011: A5 07
L_E013:   CLC                ; $E013: 18
L_E014:   ADC   #$81         ; $E014: 69 81
L_E016:   BEQ   $E00B        ; $E016: F0 F3
L_E018:   SEC                ; $E018: 38
L_E019:   SBC   #$01         ; $E019: E9 01
L_E01B:   PHA                ; $E01B: 48
L_E01C:   LDX   #$05         ; $E01C: A2 05
L_E01E:   LDA   $69,X        ; $E01E: B5 69
L_E020:   LDY   $61,X        ; $E020: B4 61
L_E022:   STA   $61,X        ; $E022: 95 61
L_E024:   STY   $69,X        ; $E024: 94 69
L_E026:   DEX                ; $E026: CA
L_E027:   BPL   $E01E        ; $E027: 10 F5
L_E029:   LDA   $56          ; $E029: A5 56
L_E02B:   STA   $70          ; $E02B: 85 70
L_E02D:   JSR   $B853        ; $E02D: 20 53 B8
L_E030:   JSR   $BFB4        ; $E030: 20 B4 BF
L_E033:   LDA   #$C4         ; $E033: A9 C4
L_E035:   LDY   #$BF         ; $E035: A0 BF
L_E037:   JSR   $E059        ; $E037: 20 59 E0
L_E03A:   LDA   #$00         ; $E03A: A9 00
L_E03C:   STA   $6F          ; $E03C: 85 6F
L_E03E:   PLA                ; $E03E: 68
L_E03F:   JSR   $BAB9        ; $E03F: 20 B9 BA
L_E042:   RTS                ; $E042: 60
L_E043:   STA   $71          ; $E043: 85 71
L_E045:   STY   $72          ; $E045: 84 72
L_E047:   JSR   $BBCA        ; $E047: 20 CA BB
L_E04A:   LDA   #$57         ; $E04A: A9 57
L_E04C:   JSR   $BA28        ; $E04C: 20 28 BA
L_E04F:   JSR   $E05D        ; $E04F: 20 5D E0
L_E052:   LDA   #$57         ; $E052: A9 57
L_E054:   LDY   #$00         ; $E054: A0 00
L_E056:   JMP   $BA28        ; $E056: 4C 28 BA
L_E059:   STA   $71          ; $E059: 85 71
L_E05B:   STY   $72          ; $E05B: 84 72
L_E05D:   JSR   $BBC7        ; $E05D: 20 C7 BB
L_E060:   LDA   ($71),Y      ; $E060: B1 71
L_E062:   STA   $67          ; $E062: 85 67
L_E064:   LDY   $71          ; $E064: A4 71
L_E066:   INY                ; $E066: C8
L_E067:   TYA                ; $E067: 98
L_E068:   BNE   $E06C        ; $E068: D0 02
L_E06A:   INC   $72          ; $E06A: E6 72
L_E06C:   STA   $71          ; $E06C: 85 71
L_E06E:   LDY   $72          ; $E06E: A4 72
L_E070:   JSR   $BA28        ; $E070: 20 28 BA
L_E073:   LDA   $71          ; $E073: A5 71
L_E075:   LDY   $72          ; $E075: A4 72
L_E077:   CLC                ; $E077: 18
L_E078:   ADC   #$05         ; $E078: 69 05
L_E07A:   BCC   $E07D        ; $E07A: 90 01
L_E07C:   INY                ; $E07C: C8
L_E07D:   STA   $71          ; $E07D: 85 71
L_E07F:   STY   $72          ; $E07F: 84 72
L_E081:   JSR   $B867        ; $E081: 20 67 B8
L_E084:   LDA   #$5C         ; $E084: A9 5C
L_E086:   LDY   #$00         ; $E086: A0 00
L_E088:   DEC   $67          ; $E088: C6 67
L_E08A:   BNE   $E070        ; $E08A: D0 E4
L_E08C:   RTS                ; $E08C: 60
L_E08D:   TYA                ; $E08D: 98
L_E08E:   AND   $44,X        ; $E08E: 35 44
L_E090:   .byte $7A       ; $E090
L_E091:   BRK                ; $E091: 00
L_E092:   PLA                ; $E092: 68
L_E093:   PLP                ; $E093: 28
L_E094:   LDA   ($46),Y      ; $E094: B1 46
L_E096:   BRK                ; $E096: 00
L_E097:   JSR   $BC2B        ; $E097: 20 2B BC
L_E09A:   BMI   $E0D3        ; $E09A: 30 37
L_E09C:   BNE   $E0BE        ; $E09C: D0 20
L_E09E:   JSR   $FFF3        ; $E09E: 20 F3 FF
L_E0A1:   STX   $22          ; $E0A1: 86 22
L_E0A3:   STY   $23          ; $E0A3: 84 23
L_E0A5:   LDY   #$04         ; $E0A5: A0 04
L_E0A7:   LDA   ($22),Y      ; $E0A7: B1 22
L_E0A9:   STA   $62          ; $E0A9: 85 62
L_E0AB:   INY                ; $E0AB: C8
L_E0AC:   LDA   ($22),Y      ; $E0AC: B1 22
L_E0AE:   STA   $64          ; $E0AE: 85 64
L_E0B0:   LDY   #$08         ; $E0B0: A0 08
L_E0B2:   LDA   ($22),Y      ; $E0B2: B1 22
L_E0B4:   STA   $63          ; $E0B4: 85 63
L_E0B6:   INY                ; $E0B6: C8
L_E0B7:   LDA   ($22),Y      ; $E0B7: B1 22
L_E0B9:   STA   $65          ; $E0B9: 85 65
L_E0BB:   JMP   $E0E3        ; $E0BB: 4C E3 E0
L_E0BE:   LDA   #$8B         ; $E0BE: A9 8B
L_E0C0:   LDY   #$00         ; $E0C0: A0 00
L_E0C2:   JSR   $BBA2        ; $E0C2: 20 A2 BB
L_E0C5:   LDA   #$8D         ; $E0C5: A9 8D
L_E0C7:   LDY   #$E0         ; $E0C7: A0 E0
L_E0C9:   JSR   $BA28        ; $E0C9: 20 28 BA
L_E0CC:   LDA   #$92         ; $E0CC: A9 92
L_E0CE:   LDY   #$E0         ; $E0CE: A0 E0
L_E0D0:   JSR   $B867        ; $E0D0: 20 67 B8
L_E0D3:   LDX   $65          ; $E0D3: A6 65
L_E0D5:   LDA   $62          ; $E0D5: A5 62
L_E0D7:   STA   $65          ; $E0D7: 85 65
L_E0D9:   STX   $62          ; $E0D9: 86 62
L_E0DB:   LDX   $63          ; $E0DB: A6 63
L_E0DD:   LDA   $64          ; $E0DD: A5 64
L_E0DF:   STA   $63          ; $E0DF: 85 63
L_E0E1:   STX   $64          ; $E0E1: 86 64
L_E0E3:   LDA   #$00         ; $E0E3: A9 00
L_E0E5:   STA   $66          ; $E0E5: 85 66
L_E0E7:   LDA   $61          ; $E0E7: A5 61
L_E0E9:   STA   $70          ; $E0E9: 85 70
L_E0EB:   LDA   #$80         ; $E0EB: A9 80
L_E0ED:   STA   $61          ; $E0ED: 85 61
L_E0EF:   JSR   $B8D7        ; $E0EF: 20 D7 B8
L_E0F2:   LDX   #$8B         ; $E0F2: A2 8B
L_E0F4:   LDY   #$00         ; $E0F4: A0 00
L_E0F6:   JMP   $BBD4        ; $E0F6: 4C D4 BB
L_E0F9:   CMP   #$F0         ; $E0F9: C9 F0
L_E0FB:   BNE   $E104        ; $E0FB: D0 07
L_E0FD:   STY   $38          ; $E0FD: 84 38
L_E0FF:   STX   $37          ; $E0FF: 86 37
L_E101:   JMP   $A663        ; $E101: 4C 63 A6
L_E104:   TAX                ; $E104: AA
L_E105:   BNE   $E109        ; $E105: D0 02
L_E107:   LDX   #$1E         ; $E107: A2 1E
L_E109:   JMP   $A437        ; $E109: 4C 37 A4
L_E10C:   JSR   $FFD2        ; $E10C: 20 D2 FF
L_E10F:   BCS   $E0F9        ; $E10F: B0 E8
L_E111:   RTS                ; $E111: 60
L_E112:   JSR   $FFCF        ; $E112: 20 CF FF
L_E115:   BCS   $E0F9        ; $E115: B0 E2
L_E117:   RTS                ; $E117: 60
L_E118:   JSR   $E4AD        ; $E118: 20 AD E4
L_E11B:   BCS   $E0F9        ; $E11B: B0 DC
L_E11D:   RTS                ; $E11D: 60
L_E11E:   JSR   $FFC6        ; $E11E: 20 C6 FF
L_E121:   BCS   $E0F9        ; $E121: B0 D6
L_E123:   RTS                ; $E123: 60
L_E124:   JSR   $FFE4        ; $E124: 20 E4 FF
L_E127:   BCS   $E0F9        ; $E127: B0 D0
L_E129:   RTS                ; $E129: 60
L_E12A:   JSR   $AD8A        ; $E12A: 20 8A AD
L_E12D:   JSR   $B7F7        ; $E12D: 20 F7 B7
L_E130:   LDA   #$E1         ; $E130: A9 E1
L_E132:   PHA                ; $E132: 48
L_E133:   LDA   #$46         ; $E133: A9 46
L_E135:   PHA                ; $E135: 48
L_E136:   LDA   $030F        ; $E136: AD 0F 03
L_E139:   PHA                ; $E139: 48
L_E13A:   LDA   $030C        ; $E13A: AD 0C 03
L_E13D:   LDX   $030D        ; $E13D: AE 0D 03
L_E140:   LDY   $030E        ; $E140: AC 0E 03
L_E143:   PLP                ; $E143: 28
L_E144:   JMP   ($0014)      ; $E144: 6C 14 00
L_E147:   PHP                ; $E147: 08
L_E148:   STA   $030C        ; $E148: 8D 0C 03
L_E14B:   STX   $030D        ; $E14B: 8E 0D 03
L_E14E:   STY   $030E        ; $E14E: 8C 0E 03
L_E151:   PLA                ; $E151: 68
L_E152:   STA   $030F        ; $E152: 8D 0F 03
L_E155:   RTS                ; $E155: 60
L_E156:   JSR   $E1D4        ; $E156: 20 D4 E1
L_E159:   LDX   $2D          ; $E159: A6 2D
L_E15B:   LDY   $2E          ; $E15B: A4 2E
L_E15D:   LDA   #$2B         ; $E15D: A9 2B
L_E15F:   JSR   $FFD8        ; $E15F: 20 D8 FF
L_E162:   BCS   $E0F9        ; $E162: B0 95
L_E164:   RTS                ; $E164: 60
L_E165:   LDA   #$01         ; $E165: A9 01
L_E167:   BIT   $00A9        ; $E167: 2C A9 00
L_E16A:   STA   $0A          ; $E16A: 85 0A
L_E16C:   JSR   $E1D4        ; $E16C: 20 D4 E1
L_E16F:   LDA   $0A          ; $E16F: A5 0A
L_E171:   LDX   $2B          ; $E171: A6 2B
L_E173:   LDY   $2C          ; $E173: A4 2C
L_E175:   JSR   $FFD5        ; $E175: 20 D5 FF
L_E178:   BCS   $E1D1        ; $E178: B0 57
L_E17A:   LDA   $0A          ; $E17A: A5 0A
L_E17C:   BEQ   $E195        ; $E17C: F0 17
L_E17E:   LDX   #$1C         ; $E17E: A2 1C
L_E180:   JSR   $FFB7        ; $E180: 20 B7 FF
L_E183:   AND   #$10         ; $E183: 29 10
L_E185:   BNE   $E19E        ; $E185: D0 17
L_E187:   LDA   $7A          ; $E187: A5 7A
L_E189:   CMP   #$02         ; $E189: C9 02
L_E18B:   BEQ   $E194        ; $E18B: F0 07
L_E18D:   LDA   #$64         ; $E18D: A9 64
L_E18F:   LDY   #$A3         ; $E18F: A0 A3
L_E191:   JMP   $AB1E        ; $E191: 4C 1E AB
L_E194:   RTS                ; $E194: 60
L_E195:   JSR   $FFB7        ; $E195: 20 B7 FF
L_E198:   AND   #$BF         ; $E198: 29 BF
L_E19A:   BEQ   $E1A1        ; $E19A: F0 05
L_E19C:   LDX   #$1D         ; $E19C: A2 1D
L_E19E:   JMP   $A437        ; $E19E: 4C 37 A4
L_E1A1:   LDA   $7B          ; $E1A1: A5 7B
L_E1A3:   CMP   #$02         ; $E1A3: C9 02
L_E1A5:   BNE   $E1B5        ; $E1A5: D0 0E
L_E1A7:   STX   $2D          ; $E1A7: 86 2D
L_E1A9:   STY   $2E          ; $E1A9: 84 2E
L_E1AB:   LDA   #$76         ; $E1AB: A9 76
L_E1AD:   LDY   #$A3         ; $E1AD: A0 A3
L_E1AF:   JSR   $AB1E        ; $E1AF: 20 1E AB
L_E1B2:   JMP   $A52A        ; $E1B2: 4C 2A A5
L_E1B5:   JSR   $A68E        ; $E1B5: 20 8E A6
L_E1B8:   JSR   $A533        ; $E1B8: 20 33 A5
L_E1BB:   JMP   $A677        ; $E1BB: 4C 77 A6
L_E1BE:   JSR   $E219        ; $E1BE: 20 19 E2
L_E1C1:   JSR   $FFC0        ; $E1C1: 20 C0 FF
L_E1C4:   BCS   $E1D1        ; $E1C4: B0 0B
L_E1C6:   RTS                ; $E1C6: 60
L_E1C7:   JSR   $E219        ; $E1C7: 20 19 E2
L_E1CA:   LDA   $49          ; $E1CA: A5 49
L_E1CC:   JSR   $FFC3        ; $E1CC: 20 C3 FF
L_E1CF:   BCC   $E194        ; $E1CF: 90 C3
L_E1D1:   JMP   $E0F9        ; $E1D1: 4C F9 E0
L_E1D4:   LDA   #$00         ; $E1D4: A9 00
L_E1D6:   JSR   $FFBD        ; $E1D6: 20 BD FF
L_E1D9:   LDX   #$01         ; $E1D9: A2 01
L_E1DB:   LDY   #$00         ; $E1DB: A0 00
L_E1DD:   JSR   $FFBA        ; $E1DD: 20 BA FF
L_E1E0:   JSR   $E206        ; $E1E0: 20 06 E2
L_E1E3:   JSR   $E257        ; $E1E3: 20 57 E2
L_E1E6:   JSR   $E206        ; $E1E6: 20 06 E2
L_E1E9:   JSR   $E200        ; $E1E9: 20 00 E2
L_E1EC:   LDY   #$00         ; $E1EC: A0 00
L_E1EE:   STX   $49          ; $E1EE: 86 49
L_E1F0:   JSR   $FFBA        ; $E1F0: 20 BA FF
L_E1F3:   JSR   $E206        ; $E1F3: 20 06 E2
L_E1F6:   JSR   $E200        ; $E1F6: 20 00 E2
L_E1F9:   TXA                ; $E1F9: 8A
L_E1FA:   TAY                ; $E1FA: A8
L_E1FB:   LDX   $49          ; $E1FB: A6 49
L_E1FD:   JMP   $FFBA        ; $E1FD: 4C BA FF
L_E200:   JSR   $E20E        ; $E200: 20 0E E2
L_E203:   JMP   $B79E        ; $E203: 4C 9E B7
L_E206:   JSR   $0079        ; $E206: 20 79 00
L_E209:   BNE   $E20D        ; $E209: D0 02
L_E20B:   PLA                ; $E20B: 68
L_E20C:   PLA                ; $E20C: 68
L_E20D:   RTS                ; $E20D: 60
L_E20E:   JSR   $AEFD        ; $E20E: 20 FD AE
L_E211:   JSR   $0079        ; $E211: 20 79 00
L_E214:   BNE   $E20D        ; $E214: D0 F7
L_E216:   JMP   $AF08        ; $E216: 4C 08 AF
L_E219:   LDA   #$00         ; $E219: A9 00
L_E21B:   JSR   $FFBD        ; $E21B: 20 BD FF
L_E21E:   JSR   $E211        ; $E21E: 20 11 E2
L_E221:   JSR   $B79E        ; $E221: 20 9E B7
L_E224:   STX   $49          ; $E224: 86 49
L_E226:   TXA                ; $E226: 8A
L_E227:   LDX   #$01         ; $E227: A2 01
L_E229:   LDY   #$00         ; $E229: A0 00
L_E22B:   JSR   $FFBA        ; $E22B: 20 BA FF
L_E22E:   JSR   $E206        ; $E22E: 20 06 E2
L_E231:   JSR   $E200        ; $E231: 20 00 E2
L_E234:   STX   $4A          ; $E234: 86 4A
L_E236:   LDY   #$00         ; $E236: A0 00
L_E238:   LDA   $49          ; $E238: A5 49
L_E23A:   CPX   #$03         ; $E23A: E0 03
L_E23C:   BCC   $E23F        ; $E23C: 90 01
L_E23E:   DEY                ; $E23E: 88
L_E23F:   JSR   $FFBA        ; $E23F: 20 BA FF
L_E242:   JSR   $E206        ; $E242: 20 06 E2
L_E245:   JSR   $E200        ; $E245: 20 00 E2
L_E248:   TXA                ; $E248: 8A
L_E249:   TAY                ; $E249: A8
L_E24A:   LDX   $4A          ; $E24A: A6 4A
L_E24C:   LDA   $49          ; $E24C: A5 49
L_E24E:   JSR   $FFBA        ; $E24E: 20 BA FF
L_E251:   JSR   $E206        ; $E251: 20 06 E2
L_E254:   JSR   $E20E        ; $E254: 20 0E E2
L_E257:   JSR   $AD9E        ; $E257: 20 9E AD
L_E25A:   JSR   $B6A3        ; $E25A: 20 A3 B6
L_E25D:   LDX   $22          ; $E25D: A6 22
L_E25F:   LDY   $23          ; $E25F: A4 23
L_E261:   JMP   $FFBD        ; $E261: 4C BD FF
L_E264:   LDA   #$E0         ; $E264: A9 E0
L_E266:   LDY   #$E2         ; $E266: A0 E2
L_E268:   JSR   $B867        ; $E268: 20 67 B8
L_E26B:   JSR   $BC0C        ; $E26B: 20 0C BC
L_E26E:   LDA   #$E5         ; $E26E: A9 E5
L_E270:   LDY   #$E2         ; $E270: A0 E2
L_E272:   LDX   $6E          ; $E272: A6 6E
L_E274:   JSR   $BB07        ; $E274: 20 07 BB
L_E277:   JSR   $BC0C        ; $E277: 20 0C BC
L_E27A:   JSR   $BCCC        ; $E27A: 20 CC BC
L_E27D:   LDA   #$00         ; $E27D: A9 00
L_E27F:   STA   $6F          ; $E27F: 85 6F
L_E281:   JSR   $B853        ; $E281: 20 53 B8
L_E284:   LDA   #$EA         ; $E284: A9 EA
L_E286:   LDY   #$E2         ; $E286: A0 E2
L_E288:   JSR   $B850        ; $E288: 20 50 B8
L_E28B:   LDA   $66          ; $E28B: A5 66
L_E28D:   PHA                ; $E28D: 48
L_E28E:   BPL   $E29D        ; $E28E: 10 0D
L_E290:   JSR   $B849        ; $E290: 20 49 B8
L_E293:   LDA   $66          ; $E293: A5 66
L_E295:   BMI   $E2A0        ; $E295: 30 09
L_E297:   LDA   $12          ; $E297: A5 12
L_E299:   EOR   #$FF         ; $E299: 49 FF
L_E29B:   STA   $12          ; $E29B: 85 12
L_E29D:   JSR   $BFB4        ; $E29D: 20 B4 BF
L_E2A0:   LDA   #$EA         ; $E2A0: A9 EA
L_E2A2:   LDY   #$E2         ; $E2A2: A0 E2
L_E2A4:   JSR   $B867        ; $E2A4: 20 67 B8
L_E2A7:   PLA                ; $E2A7: 68
L_E2A8:   BPL   $E2AD        ; $E2A8: 10 03
L_E2AA:   JSR   $BFB4        ; $E2AA: 20 B4 BF
L_E2AD:   LDA   #$EF         ; $E2AD: A9 EF
L_E2AF:   LDY   #$E2         ; $E2AF: A0 E2
L_E2B1:   JMP   $E043        ; $E2B1: 4C 43 E0
L_E2B4:   JSR   $BBCA        ; $E2B4: 20 CA BB
L_E2B7:   LDA   #$00         ; $E2B7: A9 00
L_E2B9:   STA   $12          ; $E2B9: 85 12
L_E2BB:   JSR   $E26B        ; $E2BB: 20 6B E2
L_E2BE:   LDX   #$4E         ; $E2BE: A2 4E
L_E2C0:   LDY   #$00         ; $E2C0: A0 00
L_E2C2:   JSR   $E0F6        ; $E2C2: 20 F6 E0
L_E2C5:   LDA   #$57         ; $E2C5: A9 57
L_E2C7:   LDY   #$00         ; $E2C7: A0 00
L_E2C9:   JSR   $BBA2        ; $E2C9: 20 A2 BB
L_E2CC:   LDA   #$00         ; $E2CC: A9 00
L_E2CE:   STA   $66          ; $E2CE: 85 66
L_E2D0:   LDA   $12          ; $E2D0: A5 12
L_E2D2:   JSR   $E2DC        ; $E2D2: 20 DC E2
L_E2D5:   LDA   #$4E         ; $E2D5: A9 4E
L_E2D7:   LDY   #$00         ; $E2D7: A0 00
L_E2D9:   JMP   $BB0F        ; $E2D9: 4C 0F BB
L_E2DC:   PHA                ; $E2DC: 48
L_E2DD:   JMP   $E29D        ; $E2DD: 4C 9D E2
L_E2E0:   STA   ($49,X)      ; $E2E0: 81 49
L_E2E2:   .byte $0F       ; $E2E2
L_E2E3:   .byte $DA       ; $E2E3
L_E2E4:   LDX   #$83         ; $E2E4: A2 83
L_E2E6:   EOR   #$0F         ; $E2E6: 49 0F
L_E2E8:   .byte $DA       ; $E2E8
L_E2E9:   LDX   #$7F         ; $E2E9: A2 7F
L_E2EB:   BRK                ; $E2EB: 00
L_E2EC:   BRK                ; $E2EC: 00
L_E2ED:   BRK                ; $E2ED: 00
L_E2EE:   BRK                ; $E2EE: 00
L_E2EF:   ORA   $84          ; $E2EF: 05 84
L_E2F1:   INC   $1A          ; $E2F1: E6 1A
L_E2F3:   AND   $861B        ; $E2F3: 2D 1B 86
L_E2F6:   PLP                ; $E2F6: 28
L_E2F7:   .byte $07       ; $E2F7
L_E2F8:   .byte $FB       ; $E2F8
L_E2F9:   SED                ; $E2F9: F8
L_E2FA:   .byte $87       ; $E2FA
L_E2FB:   STA   $8968,Y      ; $E2FB: 99 68 89
L_E2FE:   ORA   ($87,X)      ; $E2FE: 01 87
L_E300:   .byte $23       ; $E300
L_E301:   AND   $DF,X        ; $E301: 35 DF
L_E303:   SBC   ($86,X)      ; $E303: E1 86
L_E305:   LDA   $5D          ; $E305: A5 5D
L_E307:   .byte $E7       ; $E307
L_E308:   PLP                ; $E308: 28
L_E309:   .byte $83       ; $E309
L_E30A:   EOR   #$0F         ; $E30A: 49 0F
L_E30C:   .byte $DA       ; $E30C
L_E30D:   LDX   #$A5         ; $E30D: A2 A5
L_E30F:   ROR   $48          ; $E30F: 66 48
L_E311:   BPL   $E316        ; $E311: 10 03
L_E313:   JSR   $BFB4        ; $E313: 20 B4 BF
L_E316:   LDA   $61          ; $E316: A5 61
L_E318:   PHA                ; $E318: 48
L_E319:   CMP   #$81         ; $E319: C9 81
L_E31B:   BCC   $E324        ; $E31B: 90 07
L_E31D:   LDA   #$BC         ; $E31D: A9 BC
L_E31F:   LDY   #$B9         ; $E31F: A0 B9
L_E321:   JSR   $BB0F        ; $E321: 20 0F BB
L_E324:   LDA   #$3E         ; $E324: A9 3E
L_E326:   LDY   #$E3         ; $E326: A0 E3
L_E328:   JSR   $E043        ; $E328: 20 43 E0
L_E32B:   PLA                ; $E32B: 68
L_E32C:   CMP   #$81         ; $E32C: C9 81
L_E32E:   BCC   $E337        ; $E32E: 90 07
L_E330:   LDA   #$E0         ; $E330: A9 E0
L_E332:   LDY   #$E2         ; $E332: A0 E2
L_E334:   JSR   $B850        ; $E334: 20 50 B8
L_E337:   PLA                ; $E337: 68
L_E338:   BPL   $E33D        ; $E338: 10 03
L_E33A:   JMP   $BFB4        ; $E33A: 4C B4 BF
L_E33D:   RTS                ; $E33D: 60
L_E33E:   .byte $0B       ; $E33E
L_E33F:   ROR   $B3,X        ; $E33F: 76 B3
L_E341:   .byte $83       ; $E341
L_E342:   LDA   $79D3,X      ; $E342: BD D3 79
L_E345:   ASL   $A6F4,X      ; $E345: 1E F4 A6
L_E348:   SBC   $7B,X        ; $E348: F5 7B
L_E34A:   .byte $83       ; $E34A
L_E34B:   .byte $FC       ; $E34B
L_E34C:   BCS   $E35E        ; $E34C: B0 10
L_E34E:   .byte $7C       ; $E34E
L_E34F:   .byte $0C       ; $E34F
L_E350:   .byte $1F       ; $E350
L_E351:   .byte $67       ; $E351
L_E352:   DEX                ; $E352: CA
L_E353:   .byte $7C       ; $E353
L_E354:   DEC   $CB53,X      ; $E354: DE 53 CB
L_E357:   CMP   ($7D,X)      ; $E357: C1 7D
L_E359:   .byte $14       ; $E359
L_E35A:   .byte $64       ; $E35A
L_E35B:   BVS   $E3A9        ; $E35B: 70 4C
L_E35D:   ADC   $EAB7,X      ; $E35D: 7D B7 EA
L_E360:   EOR   ($7A),Y      ; $E360: 51 7A
L_E362:   ADC   $3063,X      ; $E362: 7D 63 30
L_E365:   DEY                ; $E365: 88
L_E366:   ROR   $927E,X      ; $E366: 7E 7E 92
L_E369:   .byte $44       ; $E369
L_E36A:   STA   $7E3A,Y      ; $E36A: 99 3A 7E
L_E36D:   JMP   $91CC        ; $E36D: 4C CC 91
L_E370:   .byte $C7       ; $E370
L_E371:   .byte $7F       ; $E371
L_E372:   TAX                ; $E372: AA
L_E373:   TAX                ; $E373: AA
L_E374:   TAX                ; $E374: AA
L_E375:   .byte $13       ; $E375
L_E376:   STA   ($00,X)      ; $E376: 81 00
L_E378:   BRK                ; $E378: 00
L_E379:   BRK                ; $E379: 00
L_E37A:   BRK                ; $E37A: 00
L_E37B:   JSR   $FFCC        ; $E37B: 20 CC FF
L_E37E:   LDA   #$00         ; $E37E: A9 00
L_E380:   STA   $13          ; $E380: 85 13
L_E382:   JSR   $A67A        ; $E382: 20 7A A6
L_E385:   CLI                ; $E385: 58
L_E386:   LDX   #$80         ; $E386: A2 80
L_E388:   JMP   ($0300)      ; $E388: 6C 00 03
L_E38B:   TXA                ; $E38B: 8A
L_E38C:   BMI   $E391        ; $E38C: 30 03
L_E38E:   JMP   $A43A        ; $E38E: 4C 3A A4
L_E391:   JMP   $A474        ; $E391: 4C 74 A4
L_E394:   JSR   $E453        ; $E394: 20 53 E4
L_E397:   JSR   $E3BF        ; $E397: 20 BF E3
L_E39A:   JSR   $E422        ; $E39A: 20 22 E4
L_E39D:   LDX   #$FB         ; $E39D: A2 FB
L_E39F:   TXS                ; $E39F: 9A
L_E3A0:   BNE   $E386        ; $E3A0: D0 E4
L_E3A2:   INC   $7A          ; $E3A2: E6 7A
L_E3A4:   BNE   $E3A8        ; $E3A4: D0 02
L_E3A6:   INC   $7B          ; $E3A6: E6 7B
L_E3A8:   LDA   $EA60        ; $E3A8: AD 60 EA
L_E3AB:   CMP   #$3A         ; $E3AB: C9 3A
L_E3AD:   BCS   $E3B9        ; $E3AD: B0 0A
L_E3AF:   CMP   #$20         ; $E3AF: C9 20
L_E3B1:   BEQ   $E3A2        ; $E3B1: F0 EF
L_E3B3:   SEC                ; $E3B3: 38
L_E3B4:   SBC   #$30         ; $E3B4: E9 30
L_E3B6:   SEC                ; $E3B6: 38
L_E3B7:   SBC   #$D0         ; $E3B7: E9 D0
L_E3B9:   RTS                ; $E3B9: 60
L_E3BA:   .byte $80       ; $E3BA
L_E3BB:   .byte $4F       ; $E3BB
L_E3BC:   .byte $C7       ; $E3BC
L_E3BD:   .byte $52       ; $E3BD
L_E3BE:   CLI                ; $E3BE: 58
L_E3BF:   LDA   #$4C         ; $E3BF: A9 4C
L_E3C1:   STA   $54          ; $E3C1: 85 54
L_E3C3:   STA   $0310        ; $E3C3: 8D 10 03
L_E3C6:   LDA   #$48         ; $E3C6: A9 48
L_E3C8:   LDY   #$B2         ; $E3C8: A0 B2
L_E3CA:   STA   $0311        ; $E3CA: 8D 11 03
L_E3CD:   STY   $0312        ; $E3CD: 8C 12 03
L_E3D0:   LDA   #$91         ; $E3D0: A9 91
L_E3D2:   LDY   #$B3         ; $E3D2: A0 B3
L_E3D4:   STA   $05          ; $E3D4: 85 05
L_E3D6:   STY   $06          ; $E3D6: 84 06
L_E3D8:   LDA   #$AA         ; $E3D8: A9 AA
L_E3DA:   LDY   #$B1         ; $E3DA: A0 B1
L_E3DC:   STA   $03          ; $E3DC: 85 03
L_E3DE:   STY   $04          ; $E3DE: 84 04
L_E3E0:   LDX   #$1C         ; $E3E0: A2 1C
L_E3E2:   LDA   $E3A2,X      ; $E3E2: BD A2 E3
L_E3E5:   STA   $73,X        ; $E3E5: 95 73
L_E3E7:   DEX                ; $E3E7: CA
L_E3E8:   BPL   $E3E2        ; $E3E8: 10 F8
L_E3EA:   LDA   #$03         ; $E3EA: A9 03
L_E3EC:   STA   $53          ; $E3EC: 85 53
L_E3EE:   LDA   #$00         ; $E3EE: A9 00
L_E3F0:   STA   $68          ; $E3F0: 85 68
L_E3F2:   STA   $13          ; $E3F2: 85 13
L_E3F4:   STA   $18          ; $E3F4: 85 18
L_E3F6:   LDX   #$01         ; $E3F6: A2 01
L_E3F8:   STX   $01FD        ; $E3F8: 8E FD 01
L_E3FB:   STX   $01FC        ; $E3FB: 8E FC 01
L_E3FE:   LDX   #$19         ; $E3FE: A2 19
L_E400:   STX   $16          ; $E400: 86 16
L_E402:   SEC                ; $E402: 38
L_E403:   JSR   $FF9C        ; $E403: 20 9C FF
L_E406:   STX   $2B          ; $E406: 86 2B
L_E408:   STY   $2C          ; $E408: 84 2C
L_E40A:   SEC                ; $E40A: 38
L_E40B:   JSR   $FF99        ; $E40B: 20 99 FF
L_E40E:   STX   $37          ; $E40E: 86 37
L_E410:   STY   $38          ; $E410: 84 38
L_E412:   STX   $33          ; $E412: 86 33
L_E414:   STY   $34          ; $E414: 84 34
L_E416:   LDY   #$00         ; $E416: A0 00
L_E418:   TYA                ; $E418: 98
L_E419:   STA   ($2B),Y      ; $E419: 91 2B
L_E41B:   INC   $2B          ; $E41B: E6 2B
L_E41D:   BNE   $E421        ; $E41D: D0 02
L_E41F:   INC   $2C          ; $E41F: E6 2C
L_E421:   RTS                ; $E421: 60
L_E422:   LDA   $2B          ; $E422: A5 2B
L_E424:   LDY   $2C          ; $E424: A4 2C
L_E426:   JSR   $A408        ; $E426: 20 08 A4
L_E429:   LDA   #$73         ; $E429: A9 73
L_E42B:   LDY   #$E4         ; $E42B: A0 E4
L_E42D:   JMP   $E441        ; $E42D: 4C 41 E4
L_E430:   LDA   $37          ; $E430: A5 37
L_E432:   SEC                ; $E432: 38
L_E433:   SBC   $2B          ; $E433: E5 2B
L_E435:   TAX                ; $E435: AA
L_E436:   LDA   $38          ; $E436: A5 38
L_E438:   SBC   $2C          ; $E438: E5 2C
L_E43A:   JSR   $BDCD        ; $E43A: 20 CD BD
L_E43D:   LDA   #$60         ; $E43D: A9 60
L_E43F:   LDY   #$E4         ; $E43F: A0 E4
L_E441:   JSR   $AB1E        ; $E441: 20 1E AB
L_E444:   JMP   $A644        ; $E444: 4C 44 A6
L_E447:   .byte $8B       ; $E447
L_E448:   .byte $E3       ; $E448
L_E449:   .byte $83       ; $E449
L_E44A:   .byte $A4       ; $E44A
L_E44B:   .byte $7C       ; $E44B
L_E44C:   .byte $A5       ; $E44C
L_E44D:   .byte $1A       ; $E44D
L_E44E:   .byte $A7       ; $E44E
L_E44F:   .byte $E4       ; $E44F
L_E450:   .byte $A7       ; $E450
L_E451:   .byte $86       ; $E451
L_E452:   .byte $AE       ; $E452
L_E453:   LDX   #$0B         ; $E453: A2 0B
L_E455:   LDA   $E447,X      ; $E455: BD 47 E4
L_E458:   STA   $0300,X      ; $E458: 9D 00 03
L_E45B:   DEX                ; $E45B: CA
L_E45C:   BPL   $E455        ; $E45C: 10 F7
L_E45E:   RTS                ; $E45E: 60
L_E45F:   BRK                ; $E45F: 00
; --- Startup banner strings ---
L_E460:   .byte $20       ; $E460
L_E461:   .byte $42       ; $E461
L_E462:   .byte $41       ; $E462
L_E463:   .byte $53       ; $E463
L_E464:   .byte $49       ; $E464
L_E465:   .byte $43       ; $E465
L_E466:   .byte $20       ; $E466
L_E467:   .byte $42       ; $E467
L_E468:   .byte $59       ; $E468
L_E469:   .byte $54       ; $E469
L_E46A:   .byte $45       ; $E46A
L_E46B:   .byte $53       ; $E46B
L_E46C:   .byte $20       ; $E46C
L_E46D:   .byte $46       ; $E46D
L_E46E:   .byte $52       ; $E46E
L_E46F:   .byte $45       ; $E46F
L_E470:   .byte $45       ; $E470
L_E471:   .byte $0D       ; $E471
L_E472:   .byte $00       ; $E472
L_E473:   .byte $93       ; $E473
L_E474:   .byte $0D       ; $E474
L_E475:   .byte $20       ; $E475
L_E476:   .byte $20       ; $E476
L_E477:   .byte $2A       ; $E477
L_E478:   .byte $2A       ; $E478
L_E479:   .byte $2A       ; $E479
L_E47A:   .byte $2A       ; $E47A
L_E47B:   .byte $20       ; $E47B
L_E47C:   .byte $43       ; $E47C
L_E47D:   .byte $4F       ; $E47D
L_E47E:   .byte $4D       ; $E47E
L_E47F:   .byte $4D       ; $E47F
L_E480:   .byte $4F       ; $E480
L_E481:   .byte $44       ; $E481
L_E482:   .byte $4F       ; $E482
L_E483:   .byte $52       ; $E483
L_E484:   .byte $45       ; $E484
L_E485:   .byte $20       ; $E485
L_E486:   .byte $34       ; $E486
L_E487:   .byte $30       ; $E487
L_E488:   .byte $36       ; $E488
L_E489:   .byte $34       ; $E489
L_E48A:   .byte $20       ; $E48A
L_E48B:   .byte $20       ; $E48B
L_E48C:   .byte $42       ; $E48C
L_E48D:   .byte $41       ; $E48D
L_E48E:   .byte $53       ; $E48E
L_E48F:   .byte $49       ; $E48F
L_E490:   .byte $43       ; $E490
L_E491:   .byte $20       ; $E491
L_E492:   .byte $56       ; $E492
L_E493:   .byte $32       ; $E493
L_E494:   .byte $2E       ; $E494
L_E495:   .byte $30       ; $E495
L_E496:   .byte $20       ; $E496
L_E497:   .byte $2A       ; $E497
L_E498:   .byte $2A       ; $E498
L_E499:   .byte $2A       ; $E499
L_E49A:   .byte $2A       ; $E49A
L_E49B:   .byte $0D       ; $E49B
L_E49C:   .byte $0D       ; $E49C
L_E49D:   .byte $00       ; $E49D
L_E49E:   .byte $20       ; $E49E
L_E49F:   .byte $20       ; $E49F
L_E4A0:   .byte $20       ; $E4A0
L_E4A1:   .byte $20       ; $E4A1
L_E4A2:   .byte $20       ; $E4A2
L_E4A3:   .byte $20       ; $E4A3
L_E4A4:   .byte $20       ; $E4A4
L_E4A5:   .byte $20       ; $E4A5
L_E4A6:   .byte $20       ; $E4A6
L_E4A7:   .byte $20       ; $E4A7
L_E4A8:   .byte $20       ; $E4A8
L_E4A9:   .byte $20       ; $E4A9
L_E4AA:   .byte $20       ; $E4AA
L_E4AB:   .byte $20       ; $E4AB
L_E4AC:   .byte $63       ; $E4AC
L_E4AD:   .byte $48       ; $E4AD
L_E4AE:   .byte $20       ; $E4AE
L_E4AF:   .byte $C9       ; $E4AF
L_E4B0:   .byte $FF       ; $E4B0
L_E4B1:   .byte $AA       ; $E4B1
L_E4B2:   .byte $68       ; $E4B2
L_E4B3:   .byte $90       ; $E4B3
L_E4B4:   .byte $01       ; $E4B4
L_E4B5:   .byte $8A       ; $E4B5
L_E4B6:   .byte $60       ; $E4B6
L_E4B7:   .byte $AA       ; $E4B7
L_E4B8:   .byte $AA       ; $E4B8
L_E4B9:   .byte $AA       ; $E4B9
L_E4BA:   .byte $AA       ; $E4BA
L_E4BB:   .byte $AA       ; $E4BB
L_E4BC:   .byte $AA       ; $E4BC
L_E4BD:   .byte $AA       ; $E4BD
L_E4BE:   .byte $AA       ; $E4BE
L_E4BF:   .byte $AA       ; $E4BF
L_E4C0:   .byte $AA       ; $E4C0
L_E4C1:   .byte $AA       ; $E4C1
L_E4C2:   .byte $AA       ; $E4C2
L_E4C3:   .byte $AA       ; $E4C3
L_E4C4:   .byte $AA       ; $E4C4
L_E4C5:   .byte $AA       ; $E4C5
L_E4C6:   .byte $AA       ; $E4C6
L_E4C7:   .byte $AA       ; $E4C7
L_E4C8:   BIT   $0286        ; $E4C8: 2C 86 02
L_E4CB:   BMI   $E4D7        ; $E4CB: 30 0A
L_E4CD:   LDA   #$00         ; $E4CD: A9 00
L_E4CF:   LDX   #$0E         ; $E4CF: A2 0E
L_E4D1:   STA   $D020,X      ; $E4D1: 9D 20 D0
L_E4D4:   DEX                ; $E4D4: CA
L_E4D5:   BPL   $E4D1        ; $E4D5: 10 FA
L_E4D7:   JMP   $EA87        ; $E4D7: 4C 87 EA
L_E4DA:   LDA   $D021        ; $E4DA: AD 21 D0
L_E4DD:   STA   ($F3),Y      ; $E4DD: 91 F3
L_E4DF:   RTS                ; $E4DF: 60
L_E4E0:   ADC   #$02         ; $E4E0: 69 02
L_E4E2:   LDY   $91          ; $E4E2: A4 91
L_E4E4:   INY                ; $E4E4: C8
L_E4E5:   BNE   $E4EB        ; $E4E5: D0 04
L_E4E7:   CMP   $A1          ; $E4E7: C5 A1
L_E4E9:   BNE   $E4E2        ; $E4E9: D0 F7
L_E4EB:   RTS                ; $E4EB: 60
L_E4EC:   ORA   $4426,Y      ; $E4EC: 19 26 44
L_E4EF:   ORA   $111A,Y      ; $E4EF: 19 1A 11
L_E4F2:   INX                ; $E4F2: E8
L_E4F3:   ORA   $0C70        ; $E4F3: 0D 70 0C
L_E4F6:   ASL   $06          ; $E4F6: 06 06
L_E4F8:   CMP   ($02),Y      ; $E4F8: D1 02
L_E4FA:   .byte $37       ; $E4FA
L_E4FB:   ORA   ($AE,X)      ; $E4FB: 01 AE
L_E4FD:   BRK                ; $E4FD: 00
L_E4FE:   ADC   #$00         ; $E4FE: 69 00
L_E500:   LDX   #$00         ; $E500: A2 00
L_E502:   LDY   #$DC         ; $E502: A0 DC
L_E504:   RTS                ; $E504: 60
L_E505:   LDX   #$28         ; $E505: A2 28
L_E507:   LDY   #$19         ; $E507: A0 19
L_E509:   RTS                ; $E509: 60
L_E50A:   BCS   $E513        ; $E50A: B0 07
L_E50C:   STX   $D6          ; $E50C: 86 D6
L_E50E:   STY   $D3          ; $E50E: 84 D3
L_E510:   JSR   $E56C        ; $E510: 20 6C E5
L_E513:   LDX   $D6          ; $E513: A6 D6
L_E515:   LDY   $D3          ; $E515: A4 D3
L_E517:   RTS                ; $E517: 60
L_E518:   JSR   $E5A0        ; $E518: 20 A0 E5
L_E51B:   LDA   #$00         ; $E51B: A9 00
L_E51D:   STA   $0291        ; $E51D: 8D 91 02
L_E520:   STA   $CF          ; $E520: 85 CF
L_E522:   LDA   #$48         ; $E522: A9 48
L_E524:   STA   $028F        ; $E524: 8D 8F 02
L_E527:   LDA   #$EB         ; $E527: A9 EB
L_E529:   STA   $0290        ; $E529: 8D 90 02
L_E52C:   LDA   #$0A         ; $E52C: A9 0A
L_E52E:   STA   $0289        ; $E52E: 8D 89 02
L_E531:   STA   $028C        ; $E531: 8D 8C 02
L_E534:   LDA   #$01         ; $E534: A9 01
L_E536:   STA   $0286        ; $E536: 8D 86 02
L_E539:   LDA   #$04         ; $E539: A9 04
L_E53B:   STA   $028B        ; $E53B: 8D 8B 02
L_E53E:   LDA   #$0C         ; $E53E: A9 0C
L_E540:   STA   $CD          ; $E540: 85 CD
L_E542:   STA   $CC          ; $E542: 85 CC
L_E544:   LDA   $0288        ; $E544: AD 88 02
L_E547:   ORA   #$80         ; $E547: 09 80
L_E549:   TAY                ; $E549: A8
L_E54A:   LDA   #$00         ; $E54A: A9 00
L_E54C:   TAX                ; $E54C: AA
L_E54D:   STY   $D9,X        ; $E54D: 94 D9
L_E54F:   CLC                ; $E54F: 18
L_E550:   ADC   #$28         ; $E550: 69 28
L_E552:   BCC   $E555        ; $E552: 90 01
L_E554:   INY                ; $E554: C8
L_E555:   INX                ; $E555: E8
L_E556:   CPX   #$1A         ; $E556: E0 1A
L_E558:   BNE   $E54D        ; $E558: D0 F3
L_E55A:   LDA   #$FF         ; $E55A: A9 FF
L_E55C:   STA   $D9,X        ; $E55C: 95 D9
L_E55E:   LDX   #$18         ; $E55E: A2 18
L_E560:   JSR   $E9FF        ; $E560: 20 FF E9
L_E563:   DEX                ; $E563: CA
L_E564:   BPL   $E560        ; $E564: 10 FA
L_E566:   LDY   #$00         ; $E566: A0 00
L_E568:   STY   $D3          ; $E568: 84 D3
L_E56A:   STY   $D6          ; $E56A: 84 D6
L_E56C:   LDX   $D6          ; $E56C: A6 D6
L_E56E:   LDA   $D3          ; $E56E: A5 D3
L_E570:   LDY   $D9,X        ; $E570: B4 D9
L_E572:   BMI   $E57C        ; $E572: 30 08
L_E574:   CLC                ; $E574: 18
L_E575:   ADC   #$28         ; $E575: 69 28
L_E577:   STA   $D3          ; $E577: 85 D3
L_E579:   DEX                ; $E579: CA
L_E57A:   BPL   $E570        ; $E57A: 10 F4
L_E57C:   JSR   $E9F0        ; $E57C: 20 F0 E9
L_E57F:   LDA   #$27         ; $E57F: A9 27
L_E581:   INX                ; $E581: E8
L_E582:   LDY   $D9,X        ; $E582: B4 D9
L_E584:   BMI   $E58C        ; $E584: 30 06
L_E586:   CLC                ; $E586: 18
L_E587:   ADC   #$28         ; $E587: 69 28
L_E589:   INX                ; $E589: E8
L_E58A:   BPL   $E582        ; $E58A: 10 F6
L_E58C:   STA   $D5          ; $E58C: 85 D5
L_E58E:   JMP   $EA24        ; $E58E: 4C 24 EA
L_E591:   CPX   $C9          ; $E591: E4 C9
L_E593:   BEQ   $E598        ; $E593: F0 03
L_E595:   JMP   $E6ED        ; $E595: 4C ED E6
L_E598:   RTS                ; $E598: 60
L_E599:   NOP                ; $E599: EA
L_E59A:   JSR   $E5A0        ; $E59A: 20 A0 E5
L_E59D:   JMP   $E566        ; $E59D: 4C 66 E5
L_E5A0:   LDA   #$03         ; $E5A0: A9 03
L_E5A2:   STA   $9A          ; $E5A2: 85 9A
L_E5A4:   LDA   #$00         ; $E5A4: A9 00
L_E5A6:   STA   $99          ; $E5A6: 85 99
L_E5A8:   LDX   #$2F         ; $E5A8: A2 2F
L_E5AA:   LDA   $ECB8,X      ; $E5AA: BD B8 EC
L_E5AD:   STA   $CFFF,X      ; $E5AD: 9D FF CF
L_E5B0:   DEX                ; $E5B0: CA
L_E5B1:   BNE   $E5AA        ; $E5B1: D0 F7
L_E5B3:   RTS                ; $E5B3: 60
L_E5B4:   LDY   $0277        ; $E5B4: AC 77 02
L_E5B7:   LDX   #$00         ; $E5B7: A2 00
L_E5B9:   LDA   $0278,X      ; $E5B9: BD 78 02
L_E5BC:   STA   $0277,X      ; $E5BC: 9D 77 02
L_E5BF:   INX                ; $E5BF: E8
L_E5C0:   CPX   $C6          ; $E5C0: E4 C6
L_E5C2:   BNE   $E5B9        ; $E5C2: D0 F5
L_E5C4:   DEC   $C6          ; $E5C4: C6 C6
L_E5C6:   TYA                ; $E5C6: 98
L_E5C7:   CLI                ; $E5C7: 58
L_E5C8:   CLC                ; $E5C8: 18
L_E5C9:   RTS                ; $E5C9: 60
L_E5CA:   JSR   $E716        ; $E5CA: 20 16 E7
L_E5CD:   LDA   $C6          ; $E5CD: A5 C6
L_E5CF:   STA   $CC          ; $E5CF: 85 CC
L_E5D1:   STA   $0292        ; $E5D1: 8D 92 02
L_E5D4:   BEQ   $E5CD        ; $E5D4: F0 F7
L_E5D6:   SEI                ; $E5D6: 78
L_E5D7:   LDA   $CF          ; $E5D7: A5 CF
L_E5D9:   BEQ   $E5E7        ; $E5D9: F0 0C
L_E5DB:   LDA   $CE          ; $E5DB: A5 CE
L_E5DD:   LDX   $0287        ; $E5DD: AE 87 02
L_E5E0:   LDY   #$00         ; $E5E0: A0 00
L_E5E2:   STY   $CF          ; $E5E2: 84 CF
L_E5E4:   JSR   $EA13        ; $E5E4: 20 13 EA
L_E5E7:   JSR   $E5B4        ; $E5E7: 20 B4 E5
L_E5EA:   CMP   #$83         ; $E5EA: C9 83
L_E5EC:   BNE   $E5FE        ; $E5EC: D0 10
L_E5EE:   LDX   #$09         ; $E5EE: A2 09
L_E5F0:   SEI                ; $E5F0: 78
L_E5F1:   STX   $C6          ; $E5F1: 86 C6
L_E5F3:   LDA   $ECE6,X      ; $E5F3: BD E6 EC
L_E5F6:   STA   $0276,X      ; $E5F6: 9D 76 02
L_E5F9:   DEX                ; $E5F9: CA
L_E5FA:   BNE   $E5F3        ; $E5FA: D0 F7
L_E5FC:   BEQ   $E5CD        ; $E5FC: F0 CF
L_E5FE:   CMP   #$0D         ; $E5FE: C9 0D
L_E600:   BNE   $E5CA        ; $E600: D0 C8
L_E602:   LDY   $D5          ; $E602: A4 D5
L_E604:   STY   $D0          ; $E604: 84 D0
L_E606:   LDA   ($D1),Y      ; $E606: B1 D1
L_E608:   CMP   #$20         ; $E608: C9 20
L_E60A:   BNE   $E60F        ; $E60A: D0 03
L_E60C:   DEY                ; $E60C: 88
L_E60D:   BNE   $E606        ; $E60D: D0 F7
L_E60F:   INY                ; $E60F: C8
L_E610:   STY   $C8          ; $E610: 84 C8
L_E612:   LDY   #$00         ; $E612: A0 00
L_E614:   STY   $0292        ; $E614: 8C 92 02
L_E617:   STY   $D3          ; $E617: 84 D3
L_E619:   STY   $D4          ; $E619: 84 D4
L_E61B:   LDA   $C9          ; $E61B: A5 C9
L_E61D:   BMI   $E63A        ; $E61D: 30 1B
L_E61F:   LDX   $D6          ; $E61F: A6 D6
L_E621:   JSR   $E591        ; $E621: 20 91 E5
L_E624:   CPX   $C9          ; $E624: E4 C9
L_E626:   BNE   $E63A        ; $E626: D0 12
L_E628:   LDA   $CA          ; $E628: A5 CA
L_E62A:   STA   $D3          ; $E62A: 85 D3
L_E62C:   CMP   $C8          ; $E62C: C5 C8
L_E62E:   BCC   $E63A        ; $E62E: 90 0A
L_E630:   BCS   $E65D        ; $E630: B0 2B
L_E632:   TYA                ; $E632: 98
L_E633:   PHA                ; $E633: 48
L_E634:   TXA                ; $E634: 8A
L_E635:   PHA                ; $E635: 48
L_E636:   LDA   $D0          ; $E636: A5 D0
L_E638:   BEQ   $E5CD        ; $E638: F0 93
L_E63A:   LDY   $D3          ; $E63A: A4 D3
L_E63C:   LDA   ($D1),Y      ; $E63C: B1 D1
L_E63E:   STA   $D7          ; $E63E: 85 D7
L_E640:   AND   #$3F         ; $E640: 29 3F
L_E642:   ASL   $D7          ; $E642: 06 D7
L_E644:   BIT   $D7          ; $E644: 24 D7
L_E646:   BPL   $E64A        ; $E646: 10 02
L_E648:   ORA   #$80         ; $E648: 09 80
L_E64A:   BCC   $E650        ; $E64A: 90 04
L_E64C:   LDX   $D4          ; $E64C: A6 D4
L_E64E:   BNE   $E654        ; $E64E: D0 04
L_E650:   BVS   $E654        ; $E650: 70 02
L_E652:   ORA   #$40         ; $E652: 09 40
L_E654:   INC   $D3          ; $E654: E6 D3
L_E656:   JSR   $E684        ; $E656: 20 84 E6
L_E659:   CPY   $C8          ; $E659: C4 C8
L_E65B:   BNE   $E674        ; $E65B: D0 17
L_E65D:   LDA   #$00         ; $E65D: A9 00
L_E65F:   STA   $D0          ; $E65F: 85 D0
L_E661:   LDA   #$0D         ; $E661: A9 0D
L_E663:   LDX   $99          ; $E663: A6 99
L_E665:   CPX   #$03         ; $E665: E0 03
L_E667:   BEQ   $E66F        ; $E667: F0 06
L_E669:   LDX   $9A          ; $E669: A6 9A
L_E66B:   CPX   #$03         ; $E66B: E0 03
L_E66D:   BEQ   $E672        ; $E66D: F0 03
L_E66F:   JSR   $E716        ; $E66F: 20 16 E7
L_E672:   LDA   #$0D         ; $E672: A9 0D
L_E674:   STA   $D7          ; $E674: 85 D7
L_E676:   PLA                ; $E676: 68
L_E677:   TAX                ; $E677: AA
L_E678:   PLA                ; $E678: 68
L_E679:   TAY                ; $E679: A8
L_E67A:   LDA   $D7          ; $E67A: A5 D7
L_E67C:   CMP   #$DE         ; $E67C: C9 DE
L_E67E:   BNE   $E682        ; $E67E: D0 02
L_E680:   LDA   #$FF         ; $E680: A9 FF
L_E682:   CLC                ; $E682: 18
L_E683:   RTS                ; $E683: 60
L_E684:   CMP   #$22         ; $E684: C9 22
L_E686:   BNE   $E690        ; $E686: D0 08
L_E688:   LDA   $D4          ; $E688: A5 D4
L_E68A:   EOR   #$01         ; $E68A: 49 01
L_E68C:   STA   $D4          ; $E68C: 85 D4
L_E68E:   LDA   #$22         ; $E68E: A9 22
L_E690:   RTS                ; $E690: 60
L_E691:   ORA   #$40         ; $E691: 09 40
L_E693:   LDX   $C7          ; $E693: A6 C7
L_E695:   BEQ   $E699        ; $E695: F0 02
L_E697:   ORA   #$80         ; $E697: 09 80
L_E699:   LDX   $D8          ; $E699: A6 D8
L_E69B:   BEQ   $E69F        ; $E69B: F0 02
L_E69D:   DEC   $D8          ; $E69D: C6 D8
L_E69F:   LDX   $0286        ; $E69F: AE 86 02
L_E6A2:   JSR   $EA13        ; $E6A2: 20 13 EA
L_E6A5:   JSR   $E6B6        ; $E6A5: 20 B6 E6
L_E6A8:   PLA                ; $E6A8: 68
L_E6A9:   TAY                ; $E6A9: A8
L_E6AA:   LDA   $D8          ; $E6AA: A5 D8
L_E6AC:   BEQ   $E6B0        ; $E6AC: F0 02
L_E6AE:   LSR   $D4          ; $E6AE: 46 D4
L_E6B0:   PLA                ; $E6B0: 68
L_E6B1:   TAX                ; $E6B1: AA
L_E6B2:   PLA                ; $E6B2: 68
L_E6B3:   CLC                ; $E6B3: 18
L_E6B4:   CLI                ; $E6B4: 58
L_E6B5:   RTS                ; $E6B5: 60
L_E6B6:   JSR   $E8B3        ; $E6B6: 20 B3 E8
L_E6B9:   INC   $D3          ; $E6B9: E6 D3
L_E6BB:   LDA   $D5          ; $E6BB: A5 D5
L_E6BD:   CMP   $D3          ; $E6BD: C5 D3
L_E6BF:   BCS   $E700        ; $E6BF: B0 3F
L_E6C1:   CMP   #$4F         ; $E6C1: C9 4F
L_E6C3:   BEQ   $E6F7        ; $E6C3: F0 32
L_E6C5:   LDA   $0292        ; $E6C5: AD 92 02
L_E6C8:   BEQ   $E6CD        ; $E6C8: F0 03
L_E6CA:   JMP   $E967        ; $E6CA: 4C 67 E9
L_E6CD:   LDX   $D6          ; $E6CD: A6 D6
L_E6CF:   CPX   #$19         ; $E6CF: E0 19
L_E6D1:   BCC   $E6DA        ; $E6D1: 90 07
L_E6D3:   JSR   $E8EA        ; $E6D3: 20 EA E8
L_E6D6:   DEC   $D6          ; $E6D6: C6 D6
L_E6D8:   LDX   $D6          ; $E6D8: A6 D6
L_E6DA:   ASL   $D9,X        ; $E6DA: 16 D9
L_E6DC:   LSR   $D9,X        ; $E6DC: 56 D9
L_E6DE:   INX                ; $E6DE: E8
L_E6DF:   LDA   $D9,X        ; $E6DF: B5 D9
L_E6E1:   ORA   #$80         ; $E6E1: 09 80
L_E6E3:   STA   $D9,X        ; $E6E3: 95 D9
L_E6E5:   DEX                ; $E6E5: CA
L_E6E6:   LDA   $D5          ; $E6E6: A5 D5
L_E6E8:   CLC                ; $E6E8: 18
L_E6E9:   ADC   #$28         ; $E6E9: 69 28
L_E6EB:   STA   $D5          ; $E6EB: 85 D5
L_E6ED:   LDA   $D9,X        ; $E6ED: B5 D9
L_E6EF:   BMI   $E6F4        ; $E6EF: 30 03
L_E6F1:   DEX                ; $E6F1: CA
L_E6F2:   BNE   $E6ED        ; $E6F2: D0 F9
L_E6F4:   JMP   $E9F0        ; $E6F4: 4C F0 E9
L_E6F7:   DEC   $D6          ; $E6F7: C6 D6
L_E6F9:   JSR   $E87C        ; $E6F9: 20 7C E8
L_E6FC:   LDA   #$00         ; $E6FC: A9 00
L_E6FE:   STA   $D3          ; $E6FE: 85 D3
L_E700:   RTS                ; $E700: 60
L_E701:   LDX   $D6          ; $E701: A6 D6
L_E703:   BNE   $E70B        ; $E703: D0 06
L_E705:   STX   $D3          ; $E705: 86 D3
L_E707:   PLA                ; $E707: 68
L_E708:   PLA                ; $E708: 68
L_E709:   BNE   $E6A8        ; $E709: D0 9D
L_E70B:   DEX                ; $E70B: CA
L_E70C:   STX   $D6          ; $E70C: 86 D6
L_E70E:   JSR   $E56C        ; $E70E: 20 6C E5
L_E711:   LDY   $D5          ; $E711: A4 D5
L_E713:   STY   $D3          ; $E713: 84 D3
L_E715:   RTS                ; $E715: 60
L_E716:   PHA                ; $E716: 48
L_E717:   STA   $D7          ; $E717: 85 D7
L_E719:   TXA                ; $E719: 8A
L_E71A:   PHA                ; $E71A: 48
L_E71B:   TYA                ; $E71B: 98
L_E71C:   PHA                ; $E71C: 48
L_E71D:   LDA   #$00         ; $E71D: A9 00
L_E71F:   STA   $D0          ; $E71F: 85 D0
L_E721:   LDY   $D3          ; $E721: A4 D3
L_E723:   LDA   $D7          ; $E723: A5 D7
L_E725:   BPL   $E72A        ; $E725: 10 03
L_E727:   JMP   $E7D4        ; $E727: 4C D4 E7
L_E72A:   CMP   #$0D         ; $E72A: C9 0D
L_E72C:   BNE   $E731        ; $E72C: D0 03
L_E72E:   JMP   $E891        ; $E72E: 4C 91 E8
L_E731:   CMP   #$20         ; $E731: C9 20
L_E733:   BCC   $E745        ; $E733: 90 10
L_E735:   CMP   #$60         ; $E735: C9 60
L_E737:   BCC   $E73D        ; $E737: 90 04
L_E739:   AND   #$DF         ; $E739: 29 DF
L_E73B:   BNE   $E73F        ; $E73B: D0 02
L_E73D:   AND   #$3F         ; $E73D: 29 3F
L_E73F:   JSR   $E684        ; $E73F: 20 84 E6
L_E742:   JMP   $E693        ; $E742: 4C 93 E6
L_E745:   LDX   $D8          ; $E745: A6 D8
L_E747:   BEQ   $E74C        ; $E747: F0 03
L_E749:   JMP   $E697        ; $E749: 4C 97 E6
L_E74C:   CMP   #$14         ; $E74C: C9 14
L_E74E:   BNE   $E77E        ; $E74E: D0 2E
L_E750:   TYA                ; $E750: 98
L_E751:   BNE   $E759        ; $E751: D0 06
L_E753:   JSR   $E701        ; $E753: 20 01 E7
L_E756:   JMP   $E773        ; $E756: 4C 73 E7
L_E759:   JSR   $E8A1        ; $E759: 20 A1 E8
L_E75C:   DEY                ; $E75C: 88
L_E75D:   STY   $D3          ; $E75D: 84 D3
L_E75F:   JSR   $EA24        ; $E75F: 20 24 EA
L_E762:   INY                ; $E762: C8
L_E763:   LDA   ($D1),Y      ; $E763: B1 D1
L_E765:   DEY                ; $E765: 88
L_E766:   STA   ($D1),Y      ; $E766: 91 D1
L_E768:   INY                ; $E768: C8
L_E769:   LDA   ($F3),Y      ; $E769: B1 F3
L_E76B:   DEY                ; $E76B: 88
L_E76C:   STA   ($F3),Y      ; $E76C: 91 F3
L_E76E:   INY                ; $E76E: C8
L_E76F:   CPY   $D5          ; $E76F: C4 D5
L_E771:   BNE   $E762        ; $E771: D0 EF
L_E773:   LDA   #$20         ; $E773: A9 20
L_E775:   STA   ($D1),Y      ; $E775: 91 D1
L_E777:   LDA   $0286        ; $E777: AD 86 02
L_E77A:   STA   ($F3),Y      ; $E77A: 91 F3
L_E77C:   BPL   $E7CB        ; $E77C: 10 4D
L_E77E:   LDX   $D4          ; $E77E: A6 D4
L_E780:   BEQ   $E785        ; $E780: F0 03
L_E782:   JMP   $E697        ; $E782: 4C 97 E6
L_E785:   CMP   #$12         ; $E785: C9 12
L_E787:   BNE   $E78B        ; $E787: D0 02
L_E789:   STA   $C7          ; $E789: 85 C7
L_E78B:   CMP   #$13         ; $E78B: C9 13
L_E78D:   BNE   $E792        ; $E78D: D0 03
L_E78F:   JSR   $E566        ; $E78F: 20 66 E5
L_E792:   CMP   #$1D         ; $E792: C9 1D
L_E794:   BNE   $E7AD        ; $E794: D0 17
L_E796:   INY                ; $E796: C8
L_E797:   JSR   $E8B3        ; $E797: 20 B3 E8
L_E79A:   STY   $D3          ; $E79A: 84 D3
L_E79C:   DEY                ; $E79C: 88
L_E79D:   CPY   $D5          ; $E79D: C4 D5
L_E79F:   BCC   $E7AA        ; $E79F: 90 09
L_E7A1:   DEC   $D6          ; $E7A1: C6 D6
L_E7A3:   JSR   $E87C        ; $E7A3: 20 7C E8
L_E7A6:   LDY   #$00         ; $E7A6: A0 00
L_E7A8:   STY   $D3          ; $E7A8: 84 D3
L_E7AA:   JMP   $E6A8        ; $E7AA: 4C A8 E6
L_E7AD:   CMP   #$11         ; $E7AD: C9 11
L_E7AF:   BNE   $E7CE        ; $E7AF: D0 1D
L_E7B1:   CLC                ; $E7B1: 18
L_E7B2:   TYA                ; $E7B2: 98
L_E7B3:   ADC   #$28         ; $E7B3: 69 28
L_E7B5:   TAY                ; $E7B5: A8
L_E7B6:   INC   $D6          ; $E7B6: E6 D6
L_E7B8:   CMP   $D5          ; $E7B8: C5 D5
L_E7BA:   BCC   $E7A8        ; $E7BA: 90 EC
L_E7BC:   BEQ   $E7A8        ; $E7BC: F0 EA
L_E7BE:   DEC   $D6          ; $E7BE: C6 D6
L_E7C0:   SBC   #$28         ; $E7C0: E9 28
L_E7C2:   BCC   $E7C8        ; $E7C2: 90 04
L_E7C4:   STA   $D3          ; $E7C4: 85 D3
L_E7C6:   BNE   $E7C0        ; $E7C6: D0 F8
L_E7C8:   JSR   $E87C        ; $E7C8: 20 7C E8
L_E7CB:   JMP   $E6A8        ; $E7CB: 4C A8 E6
L_E7CE:   JSR   $E8CB        ; $E7CE: 20 CB E8
L_E7D1:   JMP   $EC44        ; $E7D1: 4C 44 EC
L_E7D4:   AND   #$7F         ; $E7D4: 29 7F
L_E7D6:   CMP   #$7F         ; $E7D6: C9 7F
L_E7D8:   BNE   $E7DC        ; $E7D8: D0 02
L_E7DA:   LDA   #$5E         ; $E7DA: A9 5E
L_E7DC:   CMP   #$20         ; $E7DC: C9 20
L_E7DE:   BCC   $E7E3        ; $E7DE: 90 03
L_E7E0:   JMP   $E691        ; $E7E0: 4C 91 E6
L_E7E3:   CMP   #$0D         ; $E7E3: C9 0D
L_E7E5:   BNE   $E7EA        ; $E7E5: D0 03
L_E7E7:   JMP   $E891        ; $E7E7: 4C 91 E8
L_E7EA:   LDX   $D4          ; $E7EA: A6 D4
L_E7EC:   BNE   $E82D        ; $E7EC: D0 3F
L_E7EE:   CMP   #$14         ; $E7EE: C9 14
L_E7F0:   BNE   $E829        ; $E7F0: D0 37
L_E7F2:   LDY   $D5          ; $E7F2: A4 D5
L_E7F4:   LDA   ($D1),Y      ; $E7F4: B1 D1
L_E7F6:   CMP   #$20         ; $E7F6: C9 20
L_E7F8:   BNE   $E7FE        ; $E7F8: D0 04
L_E7FA:   CPY   $D3          ; $E7FA: C4 D3
L_E7FC:   BNE   $E805        ; $E7FC: D0 07
L_E7FE:   CPY   #$4F         ; $E7FE: C0 4F
L_E800:   BEQ   $E826        ; $E800: F0 24
L_E802:   JSR   $E965        ; $E802: 20 65 E9
L_E805:   LDY   $D5          ; $E805: A4 D5
L_E807:   JSR   $EA24        ; $E807: 20 24 EA
L_E80A:   DEY                ; $E80A: 88
L_E80B:   LDA   ($D1),Y      ; $E80B: B1 D1
L_E80D:   INY                ; $E80D: C8
L_E80E:   STA   ($D1),Y      ; $E80E: 91 D1
L_E810:   DEY                ; $E810: 88
L_E811:   LDA   ($F3),Y      ; $E811: B1 F3
L_E813:   INY                ; $E813: C8
L_E814:   STA   ($F3),Y      ; $E814: 91 F3
L_E816:   DEY                ; $E816: 88
L_E817:   CPY   $D3          ; $E817: C4 D3
L_E819:   BNE   $E80A        ; $E819: D0 EF
L_E81B:   LDA   #$20         ; $E81B: A9 20
L_E81D:   STA   ($D1),Y      ; $E81D: 91 D1
L_E81F:   LDA   $0286        ; $E81F: AD 86 02
L_E822:   STA   ($F3),Y      ; $E822: 91 F3
L_E824:   INC   $D8          ; $E824: E6 D8
L_E826:   JMP   $E6A8        ; $E826: 4C A8 E6
L_E829:   LDX   $D8          ; $E829: A6 D8
L_E82B:   BEQ   $E832        ; $E82B: F0 05
L_E82D:   ORA   #$40         ; $E82D: 09 40
L_E82F:   JMP   $E697        ; $E82F: 4C 97 E6
L_E832:   CMP   #$11         ; $E832: C9 11
L_E834:   BNE   $E84C        ; $E834: D0 16
L_E836:   LDX   $D6          ; $E836: A6 D6
L_E838:   BEQ   $E871        ; $E838: F0 37
L_E83A:   DEC   $D6          ; $E83A: C6 D6
L_E83C:   LDA   $D3          ; $E83C: A5 D3
L_E83E:   SEC                ; $E83E: 38
L_E83F:   SBC   #$28         ; $E83F: E9 28
L_E841:   BCC   $E847        ; $E841: 90 04
L_E843:   STA   $D3          ; $E843: 85 D3
L_E845:   BPL   $E871        ; $E845: 10 2A
L_E847:   JSR   $E56C        ; $E847: 20 6C E5
L_E84A:   BNE   $E871        ; $E84A: D0 25
L_E84C:   CMP   #$12         ; $E84C: C9 12
L_E84E:   BNE   $E854        ; $E84E: D0 04
L_E850:   LDA   #$00         ; $E850: A9 00
L_E852:   STA   $C7          ; $E852: 85 C7
L_E854:   CMP   #$1D         ; $E854: C9 1D
L_E856:   BNE   $E86A        ; $E856: D0 12
L_E858:   TYA                ; $E858: 98
L_E859:   BEQ   $E864        ; $E859: F0 09
L_E85B:   JSR   $E8A1        ; $E85B: 20 A1 E8
L_E85E:   DEY                ; $E85E: 88
L_E85F:   STY   $D3          ; $E85F: 84 D3
L_E861:   JMP   $E6A8        ; $E861: 4C A8 E6
L_E864:   JSR   $E701        ; $E864: 20 01 E7
L_E867:   JMP   $E6A8        ; $E867: 4C A8 E6
L_E86A:   CMP   #$13         ; $E86A: C9 13
L_E86C:   BNE   $E874        ; $E86C: D0 06
L_E86E:   JSR   $E544        ; $E86E: 20 44 E5
L_E871:   JMP   $E6A8        ; $E871: 4C A8 E6
L_E874:   ORA   #$80         ; $E874: 09 80
L_E876:   JSR   $E8CB        ; $E876: 20 CB E8
L_E879:   JMP   $EC4F        ; $E879: 4C 4F EC
L_E87C:   LSR   $C9          ; $E87C: 46 C9
L_E87E:   LDX   $D6          ; $E87E: A6 D6
L_E880:   INX                ; $E880: E8
L_E881:   CPX   #$19         ; $E881: E0 19
L_E883:   BNE   $E888        ; $E883: D0 03
L_E885:   JSR   $E8EA        ; $E885: 20 EA E8
L_E888:   LDA   $D9,X        ; $E888: B5 D9
L_E88A:   BPL   $E880        ; $E88A: 10 F4
L_E88C:   STX   $D6          ; $E88C: 86 D6
L_E88E:   JMP   $E56C        ; $E88E: 4C 6C E5
L_E891:   LDX   #$00         ; $E891: A2 00
L_E893:   STX   $D8          ; $E893: 86 D8
L_E895:   STX   $C7          ; $E895: 86 C7
L_E897:   STX   $D4          ; $E897: 86 D4
L_E899:   STX   $D3          ; $E899: 86 D3
L_E89B:   JSR   $E87C        ; $E89B: 20 7C E8
L_E89E:   JMP   $E6A8        ; $E89E: 4C A8 E6
L_E8A1:   LDX   #$02         ; $E8A1: A2 02
L_E8A3:   LDA   #$00         ; $E8A3: A9 00
L_E8A5:   CMP   $D3          ; $E8A5: C5 D3
L_E8A7:   BEQ   $E8B0        ; $E8A7: F0 07
L_E8A9:   CLC                ; $E8A9: 18
L_E8AA:   ADC   #$28         ; $E8AA: 69 28
L_E8AC:   DEX                ; $E8AC: CA
L_E8AD:   BNE   $E8A5        ; $E8AD: D0 F6
L_E8AF:   RTS                ; $E8AF: 60
L_E8B0:   DEC   $D6          ; $E8B0: C6 D6
L_E8B2:   RTS                ; $E8B2: 60
L_E8B3:   LDX   #$02         ; $E8B3: A2 02
L_E8B5:   LDA   #$27         ; $E8B5: A9 27
L_E8B7:   CMP   $D3          ; $E8B7: C5 D3
L_E8B9:   BEQ   $E8C2        ; $E8B9: F0 07
L_E8BB:   CLC                ; $E8BB: 18
L_E8BC:   ADC   #$28         ; $E8BC: 69 28
L_E8BE:   DEX                ; $E8BE: CA
L_E8BF:   BNE   $E8B7        ; $E8BF: D0 F6
L_E8C1:   RTS                ; $E8C1: 60
L_E8C2:   LDX   $D6          ; $E8C2: A6 D6
L_E8C4:   CPX   #$19         ; $E8C4: E0 19
L_E8C6:   BEQ   $E8CA        ; $E8C6: F0 02
L_E8C8:   INC   $D6          ; $E8C8: E6 D6
L_E8CA:   RTS                ; $E8CA: 60
L_E8CB:   LDX   #$0F         ; $E8CB: A2 0F
L_E8CD:   CMP   $E8DA,X      ; $E8CD: DD DA E8
L_E8D0:   BEQ   $E8D6        ; $E8D0: F0 04
L_E8D2:   DEX                ; $E8D2: CA
L_E8D3:   BPL   $E8CD        ; $E8D3: 10 F8
L_E8D5:   RTS                ; $E8D5: 60
L_E8D6:   STX   $0286        ; $E8D6: 8E 86 02
L_E8D9:   RTS                ; $E8D9: 60
L_E8DA:   BCC   $E8E1        ; $E8DA: 90 05
L_E8DC:   .byte $1C       ; $E8DC
L_E8DD:   .byte $9F       ; $E8DD
L_E8DE:   .byte $9C       ; $E8DE
L_E8DF:   ASL   $9E1F,X      ; $E8DF: 1E 1F 9E
L_E8E2:   STA   ($95,X)      ; $E8E2: 81 95
L_E8E4:   STX   $97,Y        ; $E8E4: 96 97
L_E8E6:   TYA                ; $E8E6: 98
L_E8E7:   STA   $9B9A,Y      ; $E8E7: 99 9A 9B
L_E8EA:   LDA   $AC          ; $E8EA: A5 AC
L_E8EC:   PHA                ; $E8EC: 48
L_E8ED:   LDA   $AD          ; $E8ED: A5 AD
L_E8EF:   PHA                ; $E8EF: 48
L_E8F0:   LDA   $AE          ; $E8F0: A5 AE
L_E8F2:   PHA                ; $E8F2: 48
L_E8F3:   LDA   $AF          ; $E8F3: A5 AF
L_E8F5:   PHA                ; $E8F5: 48
L_E8F6:   LDX   #$FF         ; $E8F6: A2 FF
L_E8F8:   DEC   $D6          ; $E8F8: C6 D6
L_E8FA:   DEC   $C9          ; $E8FA: C6 C9
L_E8FC:   DEC   $02A5        ; $E8FC: CE A5 02
L_E8FF:   INX                ; $E8FF: E8
L_E900:   JSR   $E9F0        ; $E900: 20 F0 E9
L_E903:   CPX   #$18         ; $E903: E0 18
L_E905:   BCS   $E913        ; $E905: B0 0C
L_E907:   LDA   $ECF1,X      ; $E907: BD F1 EC
L_E90A:   STA   $AC          ; $E90A: 85 AC
L_E90C:   LDA   $DA,X        ; $E90C: B5 DA
L_E90E:   JSR   $E9C8        ; $E90E: 20 C8 E9
L_E911:   BMI   $E8FF        ; $E911: 30 EC
L_E913:   JSR   $E9FF        ; $E913: 20 FF E9
L_E916:   LDX   #$00         ; $E916: A2 00
L_E918:   LDA   $D9,X        ; $E918: B5 D9
L_E91A:   AND   #$7F         ; $E91A: 29 7F
L_E91C:   LDY   $DA,X        ; $E91C: B4 DA
L_E91E:   BPL   $E922        ; $E91E: 10 02
L_E920:   ORA   #$80         ; $E920: 09 80
L_E922:   STA   $D9,X        ; $E922: 95 D9
L_E924:   INX                ; $E924: E8
L_E925:   CPX   #$18         ; $E925: E0 18
L_E927:   BNE   $E918        ; $E927: D0 EF
L_E929:   LDA   $F1          ; $E929: A5 F1
L_E92B:   ORA   #$80         ; $E92B: 09 80
L_E92D:   STA   $F1          ; $E92D: 85 F1
L_E92F:   LDA   $D9          ; $E92F: A5 D9
L_E931:   BPL   $E8F6        ; $E931: 10 C3
L_E933:   INC   $D6          ; $E933: E6 D6
L_E935:   INC   $02A5        ; $E935: EE A5 02
L_E938:   LDA   #$7F         ; $E938: A9 7F
L_E93A:   STA   $DC00        ; $E93A: 8D 00 DC
L_E93D:   LDA   $DC01        ; $E93D: AD 01 DC
L_E940:   CMP   #$FB         ; $E940: C9 FB
L_E942:   PHP                ; $E942: 08
L_E943:   LDA   #$7F         ; $E943: A9 7F
L_E945:   STA   $DC00        ; $E945: 8D 00 DC
L_E948:   PLP                ; $E948: 28
L_E949:   BNE   $E956        ; $E949: D0 0B
L_E94B:   LDY   #$00         ; $E94B: A0 00
L_E94D:   NOP                ; $E94D: EA
L_E94E:   DEX                ; $E94E: CA
L_E94F:   BNE   $E94D        ; $E94F: D0 FC
L_E951:   DEY                ; $E951: 88
L_E952:   BNE   $E94D        ; $E952: D0 F9
L_E954:   STY   $C6          ; $E954: 84 C6
L_E956:   LDX   $D6          ; $E956: A6 D6
L_E958:   PLA                ; $E958: 68
L_E959:   STA   $AF          ; $E959: 85 AF
L_E95B:   PLA                ; $E95B: 68
L_E95C:   STA   $AE          ; $E95C: 85 AE
L_E95E:   PLA                ; $E95E: 68
L_E95F:   STA   $AD          ; $E95F: 85 AD
L_E961:   PLA                ; $E961: 68
L_E962:   STA   $AC          ; $E962: 85 AC
L_E964:   RTS                ; $E964: 60
L_E965:   LDX   $D6          ; $E965: A6 D6
L_E967:   INX                ; $E967: E8
L_E968:   LDA   $D9,X        ; $E968: B5 D9
L_E96A:   BPL   $E967        ; $E96A: 10 FB
L_E96C:   STX   $02A5        ; $E96C: 8E A5 02
L_E96F:   CPX   #$18         ; $E96F: E0 18
L_E971:   BEQ   $E981        ; $E971: F0 0E
L_E973:   BCC   $E981        ; $E973: 90 0C
L_E975:   JSR   $E8EA        ; $E975: 20 EA E8
L_E978:   LDX   $02A5        ; $E978: AE A5 02
L_E97B:   DEX                ; $E97B: CA
L_E97C:   DEC   $D6          ; $E97C: C6 D6
L_E97E:   JMP   $E6DA        ; $E97E: 4C DA E6
L_E981:   LDA   $AC          ; $E981: A5 AC
L_E983:   PHA                ; $E983: 48
L_E984:   LDA   $AD          ; $E984: A5 AD
L_E986:   PHA                ; $E986: 48
L_E987:   LDA   $AE          ; $E987: A5 AE
L_E989:   PHA                ; $E989: 48
L_E98A:   LDA   $AF          ; $E98A: A5 AF
L_E98C:   PHA                ; $E98C: 48
L_E98D:   LDX   #$19         ; $E98D: A2 19
L_E98F:   DEX                ; $E98F: CA
L_E990:   JSR   $E9F0        ; $E990: 20 F0 E9
L_E993:   CPX   $02A5        ; $E993: EC A5 02
L_E996:   BCC   $E9A6        ; $E996: 90 0E
L_E998:   BEQ   $E9A6        ; $E998: F0 0C
L_E99A:   LDA   $ECEF,X      ; $E99A: BD EF EC
L_E99D:   STA   $AC          ; $E99D: 85 AC
L_E99F:   LDA   $D8,X        ; $E99F: B5 D8
L_E9A1:   JSR   $E9C8        ; $E9A1: 20 C8 E9
L_E9A4:   BMI   $E98F        ; $E9A4: 30 E9
L_E9A6:   JSR   $E9FF        ; $E9A6: 20 FF E9
L_E9A9:   LDX   #$17         ; $E9A9: A2 17
L_E9AB:   CPX   $02A5        ; $E9AB: EC A5 02
L_E9AE:   BCC   $E9BF        ; $E9AE: 90 0F
L_E9B0:   LDA   $DA,X        ; $E9B0: B5 DA
L_E9B2:   AND   #$7F         ; $E9B2: 29 7F
L_E9B4:   LDY   $D9,X        ; $E9B4: B4 D9
L_E9B6:   BPL   $E9BA        ; $E9B6: 10 02
L_E9B8:   ORA   #$80         ; $E9B8: 09 80
L_E9BA:   STA   $DA,X        ; $E9BA: 95 DA
L_E9BC:   DEX                ; $E9BC: CA
L_E9BD:   BNE   $E9AB        ; $E9BD: D0 EC
L_E9BF:   LDX   $02A5        ; $E9BF: AE A5 02
L_E9C2:   JSR   $E6DA        ; $E9C2: 20 DA E6
L_E9C5:   JMP   $E958        ; $E9C5: 4C 58 E9
L_E9C8:   AND   #$03         ; $E9C8: 29 03
L_E9CA:   ORA   $0288        ; $E9CA: 0D 88 02
L_E9CD:   STA   $AD          ; $E9CD: 85 AD
L_E9CF:   JSR   $E9E0        ; $E9CF: 20 E0 E9
L_E9D2:   LDY   #$27         ; $E9D2: A0 27
L_E9D4:   LDA   ($AC),Y      ; $E9D4: B1 AC
L_E9D6:   STA   ($D1),Y      ; $E9D6: 91 D1
L_E9D8:   LDA   ($AE),Y      ; $E9D8: B1 AE
L_E9DA:   STA   ($F3),Y      ; $E9DA: 91 F3
L_E9DC:   DEY                ; $E9DC: 88
L_E9DD:   BPL   $E9D4        ; $E9DD: 10 F5
L_E9DF:   RTS                ; $E9DF: 60
L_E9E0:   JSR   $EA24        ; $E9E0: 20 24 EA
L_E9E3:   LDA   $AC          ; $E9E3: A5 AC
L_E9E5:   STA   $AE          ; $E9E5: 85 AE
L_E9E7:   LDA   $AD          ; $E9E7: A5 AD
L_E9E9:   AND   #$03         ; $E9E9: 29 03
L_E9EB:   ORA   #$D8         ; $E9EB: 09 D8
L_E9ED:   STA   $AF          ; $E9ED: 85 AF
L_E9EF:   RTS                ; $E9EF: 60
L_E9F0:   LDA   $ECF0,X      ; $E9F0: BD F0 EC
L_E9F3:   STA   $D1          ; $E9F3: 85 D1
L_E9F5:   LDA   $D9,X        ; $E9F5: B5 D9
L_E9F7:   AND   #$03         ; $E9F7: 29 03
L_E9F9:   ORA   $0288        ; $E9F9: 0D 88 02
L_E9FC:   STA   $D2          ; $E9FC: 85 D2
L_E9FE:   RTS                ; $E9FE: 60
L_E9FF:   LDY   #$27         ; $E9FF: A0 27
L_EA01:   JSR   $E9F0        ; $EA01: 20 F0 E9
L_EA04:   JSR   $EA24        ; $EA04: 20 24 EA
L_EA07:   LDA   #$20         ; $EA07: A9 20
L_EA09:   STA   ($D1),Y      ; $EA09: 91 D1
L_EA0B:   JSR   $E4DA        ; $EA0B: 20 DA E4
L_EA0E:   NOP                ; $EA0E: EA
L_EA0F:   DEY                ; $EA0F: 88
L_EA10:   BPL   $EA07        ; $EA10: 10 F5
L_EA12:   RTS                ; $EA12: 60
L_EA13:   TAY                ; $EA13: A8
L_EA14:   LDA   #$02         ; $EA14: A9 02
L_EA16:   STA   $CD          ; $EA16: 85 CD
L_EA18:   JSR   $EA24        ; $EA18: 20 24 EA
L_EA1B:   TYA                ; $EA1B: 98
L_EA1C:   LDY   $D3          ; $EA1C: A4 D3
L_EA1E:   STA   ($D1),Y      ; $EA1E: 91 D1
L_EA20:   TXA                ; $EA20: 8A
L_EA21:   STA   ($F3),Y      ; $EA21: 91 F3
L_EA23:   RTS                ; $EA23: 60
L_EA24:   LDA   $D1          ; $EA24: A5 D1
L_EA26:   STA   $F3          ; $EA26: 85 F3
L_EA28:   LDA   $D2          ; $EA28: A5 D2
L_EA2A:   AND   #$03         ; $EA2A: 29 03
L_EA2C:   ORA   #$D8         ; $EA2C: 09 D8
L_EA2E:   STA   $F4          ; $EA2E: 85 F4
L_EA30:   RTS                ; $EA30: 60
L_EA31:   JSR   $FFEA        ; $EA31: 20 EA FF
L_EA34:   LDA   $CC          ; $EA34: A5 CC
L_EA36:   BNE   $EA61        ; $EA36: D0 29
L_EA38:   DEC   $CD          ; $EA38: C6 CD
L_EA3A:   BNE   $EA61        ; $EA3A: D0 25
L_EA3C:   LDA   #$14         ; $EA3C: A9 14
L_EA3E:   STA   $CD          ; $EA3E: 85 CD
L_EA40:   LDY   $D3          ; $EA40: A4 D3
L_EA42:   LSR   $CF          ; $EA42: 46 CF
L_EA44:   LDX   $0287        ; $EA44: AE 87 02
L_EA47:   LDA   ($D1),Y      ; $EA47: B1 D1
L_EA49:   BCS   $EA5C        ; $EA49: B0 11
L_EA4B:   INC   $CF          ; $EA4B: E6 CF
L_EA4D:   STA   $CE          ; $EA4D: 85 CE
L_EA4F:   JSR   $EA24        ; $EA4F: 20 24 EA
L_EA52:   LDA   ($F3),Y      ; $EA52: B1 F3
L_EA54:   STA   $0287        ; $EA54: 8D 87 02
L_EA57:   LDX   $0286        ; $EA57: AE 86 02
L_EA5A:   LDA   $CE          ; $EA5A: A5 CE
L_EA5C:   EOR   #$80         ; $EA5C: 49 80
L_EA5E:   JSR   $EA1C        ; $EA5E: 20 1C EA
L_EA61:   LDA   $01          ; $EA61: A5 01
L_EA63:   AND   #$10         ; $EA63: 29 10
L_EA65:   BEQ   $EA71        ; $EA65: F0 0A
L_EA67:   LDY   #$00         ; $EA67: A0 00
L_EA69:   STY   $C0          ; $EA69: 84 C0
L_EA6B:   LDA   $01          ; $EA6B: A5 01
L_EA6D:   ORA   #$20         ; $EA6D: 09 20
L_EA6F:   BNE   $EA79        ; $EA6F: D0 08
L_EA71:   LDA   $C0          ; $EA71: A5 C0
L_EA73:   BNE   $EA7B        ; $EA73: D0 06
L_EA75:   LDA   $01          ; $EA75: A5 01
L_EA77:   AND   #$1F         ; $EA77: 29 1F
L_EA79:   STA   $01          ; $EA79: 85 01
L_EA7B:   JSR   $E4C8        ; $EA7B: 20 C8 E4
L_EA7E:   LDA   $DC0D        ; $EA7E: AD 0D DC
L_EA81:   PLA                ; $EA81: 68
L_EA82:   TAY                ; $EA82: A8
L_EA83:   PLA                ; $EA83: 68
L_EA84:   TAX                ; $EA84: AA
L_EA85:   PLA                ; $EA85: 68
L_EA86:   RTI                ; $EA86: 40
L_EA87:   LDA   #$00         ; $EA87: A9 00
L_EA89:   STA   $028D        ; $EA89: 8D 8D 02
L_EA8C:   LDY   #$40         ; $EA8C: A0 40
L_EA8E:   STY   $CB          ; $EA8E: 84 CB
L_EA90:   STA   $DC00        ; $EA90: 8D 00 DC
L_EA93:   LDX   $DC01        ; $EA93: AE 01 DC
L_EA96:   CPX   #$FF         ; $EA96: E0 FF
L_EA98:   BEQ   $EAFB        ; $EA98: F0 61
L_EA9A:   TAY                ; $EA9A: A8
L_EA9B:   LDA   #$81         ; $EA9B: A9 81
L_EA9D:   STA   $F5          ; $EA9D: 85 F5
L_EA9F:   LDA   #$EB         ; $EA9F: A9 EB
L_EAA1:   STA   $F6          ; $EAA1: 85 F6
L_EAA3:   LDA   #$FE         ; $EAA3: A9 FE
L_EAA5:   STA   $DC00        ; $EAA5: 8D 00 DC
L_EAA8:   LDX   #$08         ; $EAA8: A2 08
L_EAAA:   PHA                ; $EAAA: 48
L_EAAB:   LDA   $DC01        ; $EAAB: AD 01 DC
L_EAAE:   CMP   $DC01        ; $EAAE: CD 01 DC
L_EAB1:   BNE   $EAAB        ; $EAB1: D0 F8
L_EAB3:   LSR   A            ; $EAB3: 4A
L_EAB4:   BCS   $EACC        ; $EAB4: B0 16
L_EAB6:   PHA                ; $EAB6: 48
L_EAB7:   LDA   ($F5),Y      ; $EAB7: B1 F5
L_EAB9:   CMP   #$05         ; $EAB9: C9 05
L_EABB:   BCS   $EAC9        ; $EABB: B0 0C
L_EABD:   CMP   #$03         ; $EABD: C9 03
L_EABF:   BEQ   $EAC9        ; $EABF: F0 08
L_EAC1:   ORA   $028D        ; $EAC1: 0D 8D 02
L_EAC4:   STA   $028D        ; $EAC4: 8D 8D 02
L_EAC7:   BPL   $EACB        ; $EAC7: 10 02
L_EAC9:   STY   $CB          ; $EAC9: 84 CB
L_EACB:   PLA                ; $EACB: 68
L_EACC:   INY                ; $EACC: C8
L_EACD:   CPY   #$41         ; $EACD: C0 41
L_EACF:   BCS   $EADC        ; $EACF: B0 0B
L_EAD1:   DEX                ; $EAD1: CA
L_EAD2:   BNE   $EAB3        ; $EAD2: D0 DF
L_EAD4:   SEC                ; $EAD4: 38
L_EAD5:   PLA                ; $EAD5: 68
L_EAD6:   ROL   A            ; $EAD6: 2A
L_EAD7:   STA   $DC00        ; $EAD7: 8D 00 DC
L_EADA:   BNE   $EAA8        ; $EADA: D0 CC
L_EADC:   PLA                ; $EADC: 68
L_EADD:   JMP   ($028F)      ; $EADD: 6C 8F 02
L_EAE0:   LDY   $CB          ; $EAE0: A4 CB
L_EAE2:   LDA   ($F5),Y      ; $EAE2: B1 F5
L_EAE4:   TAX                ; $EAE4: AA
L_EAE5:   CPY   $C5          ; $EAE5: C4 C5
L_EAE7:   BEQ   $EAF0        ; $EAE7: F0 07
L_EAE9:   LDY   #$10         ; $EAE9: A0 10
L_EAEB:   STY   $028C        ; $EAEB: 8C 8C 02
L_EAEE:   BNE   $EB26        ; $EAEE: D0 36
L_EAF0:   AND   #$7F         ; $EAF0: 29 7F
L_EAF2:   BIT   $028A        ; $EAF2: 2C 8A 02
L_EAF5:   BMI   $EB0D        ; $EAF5: 30 16
L_EAF7:   BVS   $EB42        ; $EAF7: 70 49
L_EAF9:   CMP   #$7F         ; $EAF9: C9 7F
L_EAFB:   BEQ   $EB26        ; $EAFB: F0 29
L_EAFD:   CMP   #$14         ; $EAFD: C9 14
L_EAFF:   BEQ   $EB0D        ; $EAFF: F0 0C
L_EB01:   CMP   #$20         ; $EB01: C9 20
L_EB03:   BEQ   $EB0D        ; $EB03: F0 08
L_EB05:   CMP   #$1D         ; $EB05: C9 1D
L_EB07:   BEQ   $EB0D        ; $EB07: F0 04
L_EB09:   CMP   #$11         ; $EB09: C9 11
L_EB0B:   BNE   $EB42        ; $EB0B: D0 35
L_EB0D:   LDY   $028C        ; $EB0D: AC 8C 02
L_EB10:   BEQ   $EB17        ; $EB10: F0 05
L_EB12:   DEC   $028C        ; $EB12: CE 8C 02
L_EB15:   BNE   $EB42        ; $EB15: D0 2B
L_EB17:   DEC   $028B        ; $EB17: CE 8B 02
L_EB1A:   BNE   $EB42        ; $EB1A: D0 26
L_EB1C:   LDY   #$04         ; $EB1C: A0 04
L_EB1E:   STY   $028B        ; $EB1E: 8C 8B 02
L_EB21:   LDY   $C6          ; $EB21: A4 C6
L_EB23:   DEY                ; $EB23: 88
L_EB24:   BPL   $EB42        ; $EB24: 10 1C
L_EB26:   LDY   $CB          ; $EB26: A4 CB
L_EB28:   STY   $C5          ; $EB28: 84 C5
L_EB2A:   LDY   $028D        ; $EB2A: AC 8D 02
L_EB2D:   STY   $028E        ; $EB2D: 8C 8E 02
L_EB30:   CPX   #$FF         ; $EB30: E0 FF
L_EB32:   BEQ   $EB42        ; $EB32: F0 0E
L_EB34:   TXA                ; $EB34: 8A
L_EB35:   LDX   $C6          ; $EB35: A6 C6
L_EB37:   CPX   $0289        ; $EB37: EC 89 02
L_EB3A:   BCS   $EB42        ; $EB3A: B0 06
L_EB3C:   STA   $0277,X      ; $EB3C: 9D 77 02
L_EB3F:   INX                ; $EB3F: E8
L_EB40:   STX   $C6          ; $EB40: 86 C6
L_EB42:   LDA   #$7F         ; $EB42: A9 7F
L_EB44:   STA   $DC00        ; $EB44: 8D 00 DC
L_EB47:   RTS                ; $EB47: 60
L_EB48:   LDA   $028D        ; $EB48: AD 8D 02
L_EB4B:   CMP   #$03         ; $EB4B: C9 03
L_EB4D:   BNE   $EB64        ; $EB4D: D0 15
L_EB4F:   CMP   $028E        ; $EB4F: CD 8E 02
L_EB52:   BEQ   $EB42        ; $EB52: F0 EE
L_EB54:   LDA   $0291        ; $EB54: AD 91 02
L_EB57:   BMI   $EB76        ; $EB57: 30 1D
L_EB59:   LDA   $D018        ; $EB59: AD 18 D0
L_EB5C:   EOR   #$02         ; $EB5C: 49 02
L_EB5E:   STA   $D018        ; $EB5E: 8D 18 D0
L_EB61:   JMP   $EB76        ; $EB61: 4C 76 EB
L_EB64:   ASL   A            ; $EB64: 0A
L_EB65:   CMP   #$08         ; $EB65: C9 08
L_EB67:   BCC   $EB6B        ; $EB67: 90 02
L_EB69:   LDA   #$06         ; $EB69: A9 06
L_EB6B:   TAX                ; $EB6B: AA
L_EB6C:   LDA   $EB79,X      ; $EB6C: BD 79 EB
L_EB6F:   STA   $F5          ; $EB6F: 85 F5
L_EB71:   LDA   $EB7A,X      ; $EB71: BD 7A EB
L_EB74:   STA   $F6          ; $EB74: 85 F6
L_EB76:   JMP   $EAE0        ; $EB76: 4C E0 EA
L_EB79:   STA   ($EB,X)      ; $EB79: 81 EB
L_EB7B:   .byte $C2       ; $EB7B
L_EB7C:   .byte $EB       ; $EB7C
L_EB7D:   .byte $03       ; $EB7D
L_EB7E:   CPX   $EC78        ; $EB7E: EC 78 EC
L_EB81:   .byte $14       ; $EB81
L_EB82:   ORA   $881D        ; $EB82: 0D 1D 88
L_EB85:   STA   $86          ; $EB85: 85 86
L_EB87:   .byte $87       ; $EB87
L_EB88:   ORA   ($33),Y      ; $EB88: 11 33
L_EB8A:   .byte $57       ; $EB8A
L_EB8B:   EOR   ($34,X)      ; $EB8B: 41 34
L_EB8D:   .byte $5A       ; $EB8D
L_EB8E:   .byte $53       ; $EB8E
L_EB8F:   EOR   $01          ; $EB8F: 45 01
L_EB91:   AND   $52,X        ; $EB91: 35 52
L_EB93:   .byte $44       ; $EB93
L_EB94:   ROL   $43,X        ; $EB94: 36 43
L_EB96:   LSR   $54          ; $EB96: 46 54
L_EB98:   CLI                ; $EB98: 58
L_EB99:   .byte $37       ; $EB99
L_EB9A:   EOR   $3847,Y      ; $EB9A: 59 47 38
L_EB9D:   .byte $42       ; $EB9D
L_EB9E:   PHA                ; $EB9E: 48
L_EB9F:   EOR   $56,X        ; $EB9F: 55 56
L_EBA1:   AND   $4A49,Y      ; $EBA1: 39 49 4A
L_EBA4:   BMI   $EBF3        ; $EBA4: 30 4D
L_EBA6:   .byte $4B       ; $EBA6
L_EBA7:   .byte $4F       ; $EBA7
L_EBA8:   LSR   $502B        ; $EBA8: 4E 2B 50
L_EBAB:   JMP   $2E2D        ; $EBAB: 4C 2D 2E
L_EBAE:   .byte $3A       ; $EBAE
L_EBAF:   RTI                ; $EBAF: 40
L_EBB0:   BIT   $2A5C        ; $EBB0: 2C 5C 2A
L_EBB3:   .byte $3B       ; $EBB3
L_EBB4:   .byte $13       ; $EBB4
L_EBB5:   ORA   ($3D,X)      ; $EBB5: 01 3D
L_EBB7:   LSR   $312F,X      ; $EBB7: 5E 2F 31
L_EBBA:   .byte $5F       ; $EBBA
L_EBBB:   .byte $04       ; $EBBB
L_EBBC:   .byte $32       ; $EBBC
L_EBBD:   JSR   $5102        ; $EBBD: 20 02 51
L_EBC0:   .byte $03       ; $EBC0
L_EBC1:   .byte $FF       ; $EBC1
L_EBC2:   STY   $8D,X        ; $EBC2: 94 8D
L_EBC4:   STA   $898C,X      ; $EBC4: 9D 8C 89
L_EBC7:   TXA                ; $EBC7: 8A
L_EBC8:   .byte $8B       ; $EBC8
L_EBC9:   STA   ($23),Y      ; $EBC9: 91 23
L_EBCB:   .byte $D7       ; $EBCB
L_EBCC:   CMP   ($24,X)      ; $EBCC: C1 24
L_EBCE:   .byte $DA       ; $EBCE
L_EBCF:   .byte $D3       ; $EBCF
L_EBD0:   CMP   $01          ; $EBD0: C5 01
L_EBD2:   AND   $D2          ; $EBD2: 25 D2
L_EBD4:   CPY   $26          ; $EBD4: C4 26
L_EBD6:   .byte $C3       ; $EBD6
L_EBD7:   DEC   $D4          ; $EBD7: C6 D4
L_EBD9:   CLD                ; $EBD9: D8
L_EBDA:   .byte $27       ; $EBDA
L_EBDB:   CMP   $28C7,Y      ; $EBDB: D9 C7 28
L_EBDE:   .byte $C2       ; $EBDE
L_EBDF:   INY                ; $EBDF: C8
L_EBE0:   CMP   $D6,X        ; $EBE0: D5 D6
L_EBE2:   AND   #$C9         ; $EBE2: 29 C9
L_EBE4:   DEX                ; $EBE4: CA
L_EBE5:   BMI   $EBB4        ; $EBE5: 30 CD
L_EBE7:   .byte $CB       ; $EBE7
L_EBE8:   .byte $CF       ; $EBE8
L_EBE9:   DEC   $D0DB        ; $EBE9: CE DB D0
L_EBEC:   CPY   $3EDD        ; $EBEC: CC DD 3E
L_EBEF:   .byte $5B       ; $EBEF
L_EBF0:   TSX                ; $EBF0: BA
L_EBF1:   .byte $3C       ; $EBF1
L_EBF2:   LDA   #$C0         ; $EBF2: A9 C0
L_EBF4:   EOR   $0193,X      ; $EBF4: 5D 93 01
L_EBF7:   AND   $3FDE,X      ; $EBF7: 3D DE 3F
L_EBFA:   AND   ($5F,X)      ; $EBFA: 21 5F
L_EBFC:   .byte $04       ; $EBFC
L_EBFD:   .byte $22       ; $EBFD
L_EBFE:   LDY   #$02         ; $EBFE: A0 02
L_EC00:   CMP   ($83),Y      ; $EC00: D1 83
L_EC02:   .byte $FF       ; $EC02
L_EC03:   STY   $8D,X        ; $EC03: 94 8D
L_EC05:   STA   $898C,X      ; $EC05: 9D 8C 89
L_EC08:   TXA                ; $EC08: 8A
L_EC09:   .byte $8B       ; $EC09
L_EC0A:   STA   ($96),Y      ; $EC0A: 91 96
L_EC0C:   .byte $B3       ; $EC0C
L_EC0D:   BCS   $EBA6        ; $EC0D: B0 97
L_EC0F:   LDA   $B1AE        ; $EC0F: AD AE B1
L_EC12:   ORA   ($98,X)      ; $EC12: 01 98
L_EC14:   .byte $B2       ; $EC14
L_EC15:   LDY   $BC99        ; $EC15: AC 99 BC
L_EC18:   .byte $BB       ; $EC18
L_EC19:   .byte $A3       ; $EC19
L_EC1A:   LDA   $B79A,X      ; $EC1A: BD 9A B7
L_EC1D:   LDA   $9B          ; $EC1D: A5 9B
L_EC1F:   .byte $BF       ; $EC1F
L_EC20:   LDY   $B8,X        ; $EC20: B4 B8
L_EC22:   LDX   $A229,Y      ; $EC22: BE 29 A2
L_EC25:   LDA   $30,X        ; $EC25: B5 30
L_EC27:   .byte $A7       ; $EC27
L_EC28:   LDA   ($B9,X)      ; $EC28: A1 B9
L_EC2A:   TAX                ; $EC2A: AA
L_EC2B:   LDX   $AF          ; $EC2B: A6 AF
L_EC2D:   LDX   $DC,Y        ; $EC2D: B6 DC
L_EC2F:   ROL   $A45B,X      ; $EC2F: 3E 5B A4
L_EC32:   .byte $3C       ; $EC32
L_EC33:   TAY                ; $EC33: A8
L_EC34:   .byte $DF       ; $EC34
L_EC35:   EOR   $0193,X      ; $EC35: 5D 93 01
L_EC38:   AND   $3FDE,X      ; $EC38: 3D DE 3F
L_EC3B:   STA   ($5F,X)      ; $EC3B: 81 5F
L_EC3D:   .byte $04       ; $EC3D
L_EC3E:   STA   $A0,X        ; $EC3E: 95 A0
L_EC40:   .byte $02       ; $EC40
L_EC41:   .byte $AB       ; $EC41
L_EC42:   .byte $83       ; $EC42
L_EC43:   .byte $FF       ; $EC43
L_EC44:   CMP   #$0E         ; $EC44: C9 0E
L_EC46:   BNE   $EC4F        ; $EC46: D0 07
L_EC48:   LDA   $D018        ; $EC48: AD 18 D0
L_EC4B:   ORA   #$02         ; $EC4B: 09 02
L_EC4D:   BNE   $EC58        ; $EC4D: D0 09
L_EC4F:   CMP   #$8E         ; $EC4F: C9 8E
L_EC51:   BNE   $EC5E        ; $EC51: D0 0B
L_EC53:   LDA   $D018        ; $EC53: AD 18 D0
L_EC56:   AND   #$FD         ; $EC56: 29 FD
L_EC58:   STA   $D018        ; $EC58: 8D 18 D0
L_EC5B:   JMP   $E6A8        ; $EC5B: 4C A8 E6
L_EC5E:   CMP   #$08         ; $EC5E: C9 08
L_EC60:   BNE   $EC69        ; $EC60: D0 07
L_EC62:   LDA   #$80         ; $EC62: A9 80
L_EC64:   ORA   $0291        ; $EC64: 0D 91 02
L_EC67:   BMI   $EC72        ; $EC67: 30 09
L_EC69:   CMP   #$09         ; $EC69: C9 09
L_EC6B:   BNE   $EC5B        ; $EC6B: D0 EE
L_EC6D:   LDA   #$7F         ; $EC6D: A9 7F
L_EC6F:   AND   $0291        ; $EC6F: 2D 91 02
L_EC72:   STA   $0291        ; $EC72: 8D 91 02
L_EC75:   JMP   $E6A8        ; $EC75: 4C A8 E6
L_EC78:   .byte $FF       ; $EC78
L_EC79:   .byte $FF       ; $EC79
L_EC7A:   .byte $FF       ; $EC7A
L_EC7B:   .byte $FF       ; $EC7B
L_EC7C:   .byte $FF       ; $EC7C
L_EC7D:   .byte $FF       ; $EC7D
L_EC7E:   .byte $FF       ; $EC7E
L_EC7F:   .byte $FF       ; $EC7F
L_EC80:   .byte $1C       ; $EC80
L_EC81:   .byte $17       ; $EC81
L_EC82:   ORA   ($9F,X)      ; $EC82: 01 9F
L_EC84:   .byte $1A       ; $EC84
L_EC85:   .byte $13       ; $EC85
L_EC86:   ORA   $FF          ; $EC86: 05 FF
L_EC88:   .byte $9C       ; $EC88
L_EC89:   .byte $12       ; $EC89
L_EC8A:   .byte $04       ; $EC8A
L_EC8B:   ASL   $0603,X      ; $EC8B: 1E 03 06
L_EC8E:   .byte $14       ; $EC8E
L_EC8F:   CLC                ; $EC8F: 18
L_EC90:   .byte $1F       ; $EC90
L_EC91:   ORA   $9E07,Y      ; $EC91: 19 07 9E
L_EC94:   .byte $02       ; $EC94
L_EC95:   PHP                ; $EC95: 08
L_EC96:   ORA   $16,X        ; $EC96: 15 16
L_EC98:   .byte $12       ; $EC98
L_EC99:   ORA   #$0A         ; $EC99: 09 0A
L_EC9B:   .byte $92       ; $EC9B
L_EC9C:   ORA   $0F0B        ; $EC9C: 0D 0B 0F
L_EC9F:   ASL   $10FF        ; $EC9F: 0E FF 10
L_ECA2:   .byte $0C       ; $ECA2
L_ECA3:   .byte $FF       ; $ECA3
L_ECA4:   .byte $FF       ; $ECA4
L_ECA5:   .byte $1B       ; $ECA5
L_ECA6:   BRK                ; $ECA6: 00
L_ECA7:   .byte $FF       ; $ECA7
L_ECA8:   .byte $1C       ; $ECA8
L_ECA9:   .byte $FF       ; $ECA9
L_ECAA:   ORA   $FFFF,X      ; $ECAA: 1D FF FF
L_ECAD:   .byte $1F       ; $ECAD
L_ECAE:   ASL   $90FF,X      ; $ECAE: 1E FF 90
L_ECB1:   ASL   $FF          ; $ECB1: 06 FF
L_ECB3:   ORA   $FF          ; $ECB3: 05 FF
L_ECB5:   .byte $FF       ; $ECB5
L_ECB6:   ORA   ($FF),Y      ; $ECB6: 11 FF
L_ECB8:   .byte $FF       ; $ECB8
L_ECB9:   .byte $00       ; $ECB9
L_ECBA:   .byte $00       ; $ECBA
L_ECBB:   .byte $00       ; $ECBB
L_ECBC:   .byte $00       ; $ECBC
L_ECBD:   .byte $00       ; $ECBD
L_ECBE:   .byte $00       ; $ECBE
L_ECBF:   .byte $00       ; $ECBF
L_ECC0:   .byte $00       ; $ECC0
L_ECC1:   .byte $00       ; $ECC1
L_ECC2:   .byte $00       ; $ECC2
L_ECC3:   .byte $00       ; $ECC3
L_ECC4:   .byte $00       ; $ECC4
L_ECC5:   .byte $00       ; $ECC5
L_ECC6:   .byte $00       ; $ECC6
L_ECC7:   .byte $00       ; $ECC7
L_ECC8:   .byte $00       ; $ECC8
L_ECC9:   .byte $00       ; $ECC9
L_ECCA:   .byte $9B       ; $ECCA
L_ECCB:   .byte $37       ; $ECCB
L_ECCC:   .byte $00       ; $ECCC
L_ECCD:   .byte $00       ; $ECCD
L_ECCE:   .byte $00       ; $ECCE
L_ECCF:   .byte $08       ; $ECCF
L_ECD0:   .byte $00       ; $ECD0
L_ECD1:   .byte $14       ; $ECD1
L_ECD2:   .byte $0F       ; $ECD2
L_ECD3:   .byte $00       ; $ECD3
L_ECD4:   .byte $00       ; $ECD4
L_ECD5:   .byte $00       ; $ECD5
L_ECD6:   .byte $00       ; $ECD6
L_ECD7:   .byte $00       ; $ECD7
L_ECD8:   .byte $00       ; $ECD8
L_ECD9:   .byte $00       ; $ECD9
L_ECDA:   .byte $00       ; $ECDA
L_ECDB:   .byte $00       ; $ECDB
L_ECDC:   .byte $00       ; $ECDC
L_ECDD:   .byte $00       ; $ECDD
L_ECDE:   .byte $00       ; $ECDE
L_ECDF:   .byte $00       ; $ECDF
L_ECE0:   .byte $00       ; $ECE0
L_ECE1:   .byte $00       ; $ECE1
L_ECE2:   .byte $00       ; $ECE2
L_ECE3:   .byte $00       ; $ECE3
L_ECE4:   .byte $00       ; $ECE4
L_ECE5:   .byte $00       ; $ECE5
L_ECE6:   .byte $00       ; $ECE6
L_ECE7:   .byte $4C       ; $ECE7
L_ECE8:   .byte $4F       ; $ECE8
L_ECE9:   .byte $41       ; $ECE9
L_ECEA:   .byte $44       ; $ECEA
L_ECEB:   .byte $0D       ; $ECEB
L_ECEC:   .byte $52       ; $ECEC
L_ECED:   .byte $55       ; $ECED
L_ECEE:   .byte $4E       ; $ECEE
L_ECEF:   .byte $0D       ; $ECEF
L_ECF0:   .byte $00       ; $ECF0
L_ECF1:   .byte $28       ; $ECF1
L_ECF2:   .byte $50       ; $ECF2
L_ECF3:   .byte $78       ; $ECF3
L_ECF4:   .byte $A0       ; $ECF4
L_ECF5:   .byte $C8       ; $ECF5
L_ECF6:   .byte $F0       ; $ECF6
L_ECF7:   .byte $18       ; $ECF7
L_ECF8:   .byte $40       ; $ECF8
L_ECF9:   .byte $68       ; $ECF9
L_ECFA:   .byte $90       ; $ECFA
L_ECFB:   .byte $B8       ; $ECFB
L_ECFC:   .byte $E0       ; $ECFC
L_ECFD:   .byte $08       ; $ECFD
L_ECFE:   .byte $30       ; $ECFE
L_ECFF:   .byte $58       ; $ECFF
L_ED00:   .byte $80       ; $ED00
L_ED01:   .byte $A8       ; $ED01
L_ED02:   .byte $D0       ; $ED02
L_ED03:   .byte $F8       ; $ED03
L_ED04:   .byte $20       ; $ED04
L_ED05:   .byte $48       ; $ED05
L_ED06:   .byte $70       ; $ED06
L_ED07:   .byte $98       ; $ED07
L_ED08:   .byte $C0       ; $ED08
L_ED09:   ORA   #$40         ; $ED09: 09 40
L_ED0B:   BIT   $2009        ; $ED0B: 2C 09 20
L_ED0E:   JSR   $F0A4        ; $ED0E: 20 A4 F0
L_ED11:   PHA                ; $ED11: 48
L_ED12:   BIT   $94          ; $ED12: 24 94
L_ED14:   BPL   $ED20        ; $ED14: 10 0A
L_ED16:   SEC                ; $ED16: 38
L_ED17:   ROR   $A3          ; $ED17: 66 A3
L_ED19:   JSR   $ED40        ; $ED19: 20 40 ED
L_ED1C:   LSR   $94          ; $ED1C: 46 94
L_ED1E:   LSR   $A3          ; $ED1E: 46 A3
L_ED20:   PLA                ; $ED20: 68
L_ED21:   STA   $95          ; $ED21: 85 95
L_ED23:   SEI                ; $ED23: 78
L_ED24:   JSR   $EE97        ; $ED24: 20 97 EE
L_ED27:   CMP   #$3F         ; $ED27: C9 3F
L_ED29:   BNE   $ED2E        ; $ED29: D0 03
L_ED2B:   JSR   $EE85        ; $ED2B: 20 85 EE
L_ED2E:   LDA   $DD00        ; $ED2E: AD 00 DD
L_ED31:   ORA   #$08         ; $ED31: 09 08
L_ED33:   STA   $DD00        ; $ED33: 8D 00 DD
L_ED36:   SEI                ; $ED36: 78
L_ED37:   JSR   $EE8E        ; $ED37: 20 8E EE
L_ED3A:   JSR   $EE97        ; $ED3A: 20 97 EE
L_ED3D:   JSR   $EEB3        ; $ED3D: 20 B3 EE
L_ED40:   SEI                ; $ED40: 78
L_ED41:   JSR   $EE97        ; $ED41: 20 97 EE
L_ED44:   JSR   $EEA9        ; $ED44: 20 A9 EE
L_ED47:   BCS   $EDAD        ; $ED47: B0 64
L_ED49:   JSR   $EE85        ; $ED49: 20 85 EE
L_ED4C:   BIT   $A3          ; $ED4C: 24 A3
L_ED4E:   BPL   $ED5A        ; $ED4E: 10 0A
L_ED50:   JSR   $EEA9        ; $ED50: 20 A9 EE
L_ED53:   BCC   $ED50        ; $ED53: 90 FB
L_ED55:   JSR   $EEA9        ; $ED55: 20 A9 EE
L_ED58:   BCS   $ED55        ; $ED58: B0 FB
L_ED5A:   JSR   $EEA9        ; $ED5A: 20 A9 EE
L_ED5D:   BCC   $ED5A        ; $ED5D: 90 FB
L_ED5F:   JSR   $EE8E        ; $ED5F: 20 8E EE
L_ED62:   LDA   #$08         ; $ED62: A9 08
L_ED64:   STA   $A5          ; $ED64: 85 A5
L_ED66:   LDA   $DD00        ; $ED66: AD 00 DD
L_ED69:   CMP   $DD00        ; $ED69: CD 00 DD
L_ED6C:   BNE   $ED66        ; $ED6C: D0 F8
L_ED6E:   ASL   A            ; $ED6E: 0A
L_ED6F:   BCC   $EDB0        ; $ED6F: 90 3F
L_ED71:   ROR   $95          ; $ED71: 66 95
L_ED73:   BCS   $ED7A        ; $ED73: B0 05
L_ED75:   JSR   $EEA0        ; $ED75: 20 A0 EE
L_ED78:   BNE   $ED7D        ; $ED78: D0 03
L_ED7A:   JSR   $EE97        ; $ED7A: 20 97 EE
L_ED7D:   JSR   $EE85        ; $ED7D: 20 85 EE
L_ED80:   NOP                ; $ED80: EA
L_ED81:   NOP                ; $ED81: EA
L_ED82:   NOP                ; $ED82: EA
L_ED83:   NOP                ; $ED83: EA
L_ED84:   LDA   $DD00        ; $ED84: AD 00 DD
L_ED87:   AND   #$DF         ; $ED87: 29 DF
L_ED89:   ORA   #$10         ; $ED89: 09 10
L_ED8B:   STA   $DD00        ; $ED8B: 8D 00 DD
L_ED8E:   DEC   $A5          ; $ED8E: C6 A5
L_ED90:   BNE   $ED66        ; $ED90: D0 D4
L_ED92:   LDA   #$04         ; $ED92: A9 04
L_ED94:   STA   $DC07        ; $ED94: 8D 07 DC
L_ED97:   LDA   #$19         ; $ED97: A9 19
L_ED99:   STA   $DC0F        ; $ED99: 8D 0F DC
L_ED9C:   LDA   $DC0D        ; $ED9C: AD 0D DC
L_ED9F:   LDA   $DC0D        ; $ED9F: AD 0D DC
L_EDA2:   AND   #$02         ; $EDA2: 29 02
L_EDA4:   BNE   $EDB0        ; $EDA4: D0 0A
L_EDA6:   JSR   $EEA9        ; $EDA6: 20 A9 EE
L_EDA9:   BCS   $ED9F        ; $EDA9: B0 F4
L_EDAB:   CLI                ; $EDAB: 58
L_EDAC:   RTS                ; $EDAC: 60
L_EDAD:   LDA   #$80         ; $EDAD: A9 80
L_EDAF:   BIT   $03A9        ; $EDAF: 2C A9 03
L_EDB2:   JSR   $FE1C        ; $EDB2: 20 1C FE
L_EDB5:   CLI                ; $EDB5: 58
L_EDB6:   CLC                ; $EDB6: 18
L_EDB7:   BCC   $EE03        ; $EDB7: 90 4A
L_EDB9:   STA   $95          ; $EDB9: 85 95
L_EDBB:   JSR   $ED36        ; $EDBB: 20 36 ED
L_EDBE:   LDA   $DD00        ; $EDBE: AD 00 DD
L_EDC1:   AND   #$F7         ; $EDC1: 29 F7
L_EDC3:   STA   $DD00        ; $EDC3: 8D 00 DD
L_EDC6:   RTS                ; $EDC6: 60
L_EDC7:   STA   $95          ; $EDC7: 85 95
L_EDC9:   JSR   $ED36        ; $EDC9: 20 36 ED
L_EDCC:   SEI                ; $EDCC: 78
L_EDCD:   JSR   $EEA0        ; $EDCD: 20 A0 EE
L_EDD0:   JSR   $EDBE        ; $EDD0: 20 BE ED
L_EDD3:   JSR   $EE85        ; $EDD3: 20 85 EE
L_EDD6:   JSR   $EEA9        ; $EDD6: 20 A9 EE
L_EDD9:   BMI   $EDD6        ; $EDD9: 30 FB
L_EDDB:   CLI                ; $EDDB: 58
L_EDDC:   RTS                ; $EDDC: 60
L_EDDD:   BIT   $94          ; $EDDD: 24 94
L_EDDF:   BMI   $EDE6        ; $EDDF: 30 05
L_EDE1:   SEC                ; $EDE1: 38
L_EDE2:   ROR   $94          ; $EDE2: 66 94
L_EDE4:   BNE   $EDEB        ; $EDE4: D0 05
L_EDE6:   PHA                ; $EDE6: 48
L_EDE7:   JSR   $ED40        ; $EDE7: 20 40 ED
L_EDEA:   PLA                ; $EDEA: 68
L_EDEB:   STA   $95          ; $EDEB: 85 95
L_EDED:   CLC                ; $EDED: 18
L_EDEE:   RTS                ; $EDEE: 60
L_EDEF:   SEI                ; $EDEF: 78
L_EDF0:   JSR   $EE8E        ; $EDF0: 20 8E EE
L_EDF3:   LDA   $DD00        ; $EDF3: AD 00 DD
L_EDF6:   ORA   #$08         ; $EDF6: 09 08
L_EDF8:   STA   $DD00        ; $EDF8: 8D 00 DD
L_EDFB:   LDA   #$5F         ; $EDFB: A9 5F
L_EDFD:   BIT   $3FA9        ; $EDFD: 2C A9 3F
L_EE00:   JSR   $ED11        ; $EE00: 20 11 ED
L_EE03:   JSR   $EDBE        ; $EE03: 20 BE ED
L_EE06:   TXA                ; $EE06: 8A
L_EE07:   LDX   #$0A         ; $EE07: A2 0A
L_EE09:   DEX                ; $EE09: CA
L_EE0A:   BNE   $EE09        ; $EE0A: D0 FD
L_EE0C:   TAX                ; $EE0C: AA
L_EE0D:   JSR   $EE85        ; $EE0D: 20 85 EE
L_EE10:   JMP   $EE97        ; $EE10: 4C 97 EE
L_EE13:   SEI                ; $EE13: 78
L_EE14:   LDA   #$00         ; $EE14: A9 00
L_EE16:   STA   $A5          ; $EE16: 85 A5
L_EE18:   JSR   $EE85        ; $EE18: 20 85 EE
L_EE1B:   JSR   $EEA9        ; $EE1B: 20 A9 EE
L_EE1E:   BPL   $EE1B        ; $EE1E: 10 FB
L_EE20:   LDA   #$01         ; $EE20: A9 01
L_EE22:   STA   $DC07        ; $EE22: 8D 07 DC
L_EE25:   LDA   #$19         ; $EE25: A9 19
L_EE27:   STA   $DC0F        ; $EE27: 8D 0F DC
L_EE2A:   JSR   $EE97        ; $EE2A: 20 97 EE
L_EE2D:   LDA   $DC0D        ; $EE2D: AD 0D DC
L_EE30:   LDA   $DC0D        ; $EE30: AD 0D DC
L_EE33:   AND   #$02         ; $EE33: 29 02
L_EE35:   BNE   $EE3E        ; $EE35: D0 07
L_EE37:   JSR   $EEA9        ; $EE37: 20 A9 EE
L_EE3A:   BMI   $EE30        ; $EE3A: 30 F4
L_EE3C:   BPL   $EE56        ; $EE3C: 10 18
L_EE3E:   LDA   $A5          ; $EE3E: A5 A5
L_EE40:   BEQ   $EE47        ; $EE40: F0 05
L_EE42:   LDA   #$02         ; $EE42: A9 02
L_EE44:   JMP   $EDB2        ; $EE44: 4C B2 ED
L_EE47:   JSR   $EEA0        ; $EE47: 20 A0 EE
L_EE4A:   JSR   $EE85        ; $EE4A: 20 85 EE
L_EE4D:   LDA   #$40         ; $EE4D: A9 40
L_EE4F:   JSR   $FE1C        ; $EE4F: 20 1C FE
L_EE52:   INC   $A5          ; $EE52: E6 A5
L_EE54:   BNE   $EE20        ; $EE54: D0 CA
L_EE56:   LDA   #$08         ; $EE56: A9 08
L_EE58:   STA   $A5          ; $EE58: 85 A5
L_EE5A:   LDA   $DD00        ; $EE5A: AD 00 DD
L_EE5D:   CMP   $DD00        ; $EE5D: CD 00 DD
L_EE60:   BNE   $EE5A        ; $EE60: D0 F8
L_EE62:   ASL   A            ; $EE62: 0A
L_EE63:   BPL   $EE5A        ; $EE63: 10 F5
L_EE65:   ROR   $A4          ; $EE65: 66 A4
L_EE67:   LDA   $DD00        ; $EE67: AD 00 DD
L_EE6A:   CMP   $DD00        ; $EE6A: CD 00 DD
L_EE6D:   BNE   $EE67        ; $EE6D: D0 F8
L_EE6F:   ASL   A            ; $EE6F: 0A
L_EE70:   BMI   $EE67        ; $EE70: 30 F5
L_EE72:   DEC   $A5          ; $EE72: C6 A5
L_EE74:   BNE   $EE5A        ; $EE74: D0 E4
L_EE76:   JSR   $EEA0        ; $EE76: 20 A0 EE
L_EE79:   BIT   $90          ; $EE79: 24 90
L_EE7B:   BVC   $EE80        ; $EE7B: 50 03
L_EE7D:   JSR   $EE06        ; $EE7D: 20 06 EE
L_EE80:   LDA   $A4          ; $EE80: A5 A4
L_EE82:   CLI                ; $EE82: 58
L_EE83:   CLC                ; $EE83: 18
L_EE84:   RTS                ; $EE84: 60
L_EE85:   LDA   $DD00        ; $EE85: AD 00 DD
L_EE88:   AND   #$EF         ; $EE88: 29 EF
L_EE8A:   STA   $DD00        ; $EE8A: 8D 00 DD
L_EE8D:   RTS                ; $EE8D: 60
L_EE8E:   LDA   $DD00        ; $EE8E: AD 00 DD
L_EE91:   ORA   #$10         ; $EE91: 09 10
L_EE93:   STA   $DD00        ; $EE93: 8D 00 DD
L_EE96:   RTS                ; $EE96: 60
L_EE97:   LDA   $DD00        ; $EE97: AD 00 DD
L_EE9A:   AND   #$DF         ; $EE9A: 29 DF
L_EE9C:   STA   $DD00        ; $EE9C: 8D 00 DD
L_EE9F:   RTS                ; $EE9F: 60
L_EEA0:   LDA   $DD00        ; $EEA0: AD 00 DD
L_EEA3:   ORA   #$20         ; $EEA3: 09 20
L_EEA5:   STA   $DD00        ; $EEA5: 8D 00 DD
L_EEA8:   RTS                ; $EEA8: 60
L_EEA9:   LDA   $DD00        ; $EEA9: AD 00 DD
L_EEAC:   CMP   $DD00        ; $EEAC: CD 00 DD
L_EEAF:   BNE   $EEA9        ; $EEAF: D0 F8
L_EEB1:   ASL   A            ; $EEB1: 0A
L_EEB2:   RTS                ; $EEB2: 60
L_EEB3:   TXA                ; $EEB3: 8A
L_EEB4:   LDX   #$B8         ; $EEB4: A2 B8
L_EEB6:   DEX                ; $EEB6: CA
L_EEB7:   BNE   $EEB6        ; $EEB7: D0 FD
L_EEB9:   TAX                ; $EEB9: AA
L_EEBA:   RTS                ; $EEBA: 60
L_EEBB:   LDA   $B4          ; $EEBB: A5 B4
L_EEBD:   BEQ   $EF06        ; $EEBD: F0 47
L_EEBF:   BMI   $EF00        ; $EEBF: 30 3F
L_EEC1:   LSR   $B6          ; $EEC1: 46 B6
L_EEC3:   LDX   #$00         ; $EEC3: A2 00
L_EEC5:   BCC   $EEC8        ; $EEC5: 90 01
L_EEC7:   DEX                ; $EEC7: CA
L_EEC8:   TXA                ; $EEC8: 8A
L_EEC9:   EOR   $BD          ; $EEC9: 45 BD
L_EECB:   STA   $BD          ; $EECB: 85 BD
L_EECD:   DEC   $B4          ; $EECD: C6 B4
L_EECF:   BEQ   $EED7        ; $EECF: F0 06
L_EED1:   TXA                ; $EED1: 8A
L_EED2:   AND   #$04         ; $EED2: 29 04
L_EED4:   STA   $B5          ; $EED4: 85 B5
L_EED6:   RTS                ; $EED6: 60
L_EED7:   LDA   #$20         ; $EED7: A9 20
L_EED9:   BIT   $0294        ; $EED9: 2C 94 02
L_EEDC:   BEQ   $EEF2        ; $EEDC: F0 14
L_EEDE:   BMI   $EEFC        ; $EEDE: 30 1C
L_EEE0:   BVS   $EEF6        ; $EEE0: 70 14
L_EEE2:   LDA   $BD          ; $EEE2: A5 BD
L_EEE4:   BNE   $EEE7        ; $EEE4: D0 01
L_EEE6:   DEX                ; $EEE6: CA
L_EEE7:   DEC   $B4          ; $EEE7: C6 B4
L_EEE9:   LDA   $0293        ; $EEE9: AD 93 02
L_EEEC:   BPL   $EED1        ; $EEEC: 10 E3
L_EEEE:   DEC   $B4          ; $EEEE: C6 B4
L_EEF0:   BNE   $EED1        ; $EEF0: D0 DF
L_EEF2:   INC   $B4          ; $EEF2: E6 B4
L_EEF4:   BNE   $EEE6        ; $EEF4: D0 F0
L_EEF6:   LDA   $BD          ; $EEF6: A5 BD
L_EEF8:   BEQ   $EEE7        ; $EEF8: F0 ED
L_EEFA:   BNE   $EEE6        ; $EEFA: D0 EA
L_EEFC:   BVS   $EEE7        ; $EEFC: 70 E9
L_EEFE:   BVC   $EEE6        ; $EEFE: 50 E6
L_EF00:   INC   $B4          ; $EF00: E6 B4
L_EF02:   LDX   #$FF         ; $EF02: A2 FF
L_EF04:   BNE   $EED1        ; $EF04: D0 CB
L_EF06:   LDA   $0294        ; $EF06: AD 94 02
L_EF09:   LSR   A            ; $EF09: 4A
L_EF0A:   BCC   $EF13        ; $EF0A: 90 07
L_EF0C:   BIT   $DD01        ; $EF0C: 2C 01 DD
L_EF0F:   BPL   $EF2E        ; $EF0F: 10 1D
L_EF11:   BVC   $EF31        ; $EF11: 50 1E
L_EF13:   LDA   #$00         ; $EF13: A9 00
L_EF15:   STA   $BD          ; $EF15: 85 BD
L_EF17:   STA   $B5          ; $EF17: 85 B5
L_EF19:   LDX   $0298        ; $EF19: AE 98 02
L_EF1C:   STX   $B4          ; $EF1C: 86 B4
L_EF1E:   LDY   $029D        ; $EF1E: AC 9D 02
L_EF21:   CPY   $029E        ; $EF21: CC 9E 02
L_EF24:   BEQ   $EF39        ; $EF24: F0 13
L_EF26:   LDA   ($F9),Y      ; $EF26: B1 F9
L_EF28:   STA   $B6          ; $EF28: 85 B6
L_EF2A:   INC   $029D        ; $EF2A: EE 9D 02
L_EF2D:   RTS                ; $EF2D: 60
L_EF2E:   LDA   #$40         ; $EF2E: A9 40
L_EF30:   BIT   $10A9        ; $EF30: 2C A9 10
L_EF33:   ORA   $0297        ; $EF33: 0D 97 02
L_EF36:   STA   $0297        ; $EF36: 8D 97 02
L_EF39:   LDA   #$01         ; $EF39: A9 01
L_EF3B:   STA   $DD0D        ; $EF3B: 8D 0D DD
L_EF3E:   EOR   $02A1        ; $EF3E: 4D A1 02
L_EF41:   ORA   #$80         ; $EF41: 09 80
L_EF43:   STA   $02A1        ; $EF43: 8D A1 02
L_EF46:   STA   $DD0D        ; $EF46: 8D 0D DD
L_EF49:   RTS                ; $EF49: 60
L_EF4A:   LDX   #$09         ; $EF4A: A2 09
L_EF4C:   LDA   #$20         ; $EF4C: A9 20
L_EF4E:   BIT   $0293        ; $EF4E: 2C 93 02
L_EF51:   BEQ   $EF54        ; $EF51: F0 01
L_EF53:   DEX                ; $EF53: CA
L_EF54:   BVC   $EF58        ; $EF54: 50 02
L_EF56:   DEX                ; $EF56: CA
L_EF57:   DEX                ; $EF57: CA
L_EF58:   RTS                ; $EF58: 60
L_EF59:   LDX   $A9          ; $EF59: A6 A9
L_EF5B:   BNE   $EF90        ; $EF5B: D0 33
L_EF5D:   DEC   $A8          ; $EF5D: C6 A8
L_EF5F:   BEQ   $EF97        ; $EF5F: F0 36
L_EF61:   BMI   $EF70        ; $EF61: 30 0D
L_EF63:   LDA   $A7          ; $EF63: A5 A7
L_EF65:   EOR   $AB          ; $EF65: 45 AB
L_EF67:   STA   $AB          ; $EF67: 85 AB
L_EF69:   LSR   $A7          ; $EF69: 46 A7
L_EF6B:   ROR   $AA          ; $EF6B: 66 AA
L_EF6D:   RTS                ; $EF6D: 60
L_EF6E:   DEC   $A8          ; $EF6E: C6 A8
L_EF70:   LDA   $A7          ; $EF70: A5 A7
L_EF72:   BEQ   $EFDB        ; $EF72: F0 67
L_EF74:   LDA   $0293        ; $EF74: AD 93 02
L_EF77:   ASL   A            ; $EF77: 0A
L_EF78:   LDA   #$01         ; $EF78: A9 01
L_EF7A:   ADC   $A8          ; $EF7A: 65 A8
L_EF7C:   BNE   $EF6D        ; $EF7C: D0 EF
L_EF7E:   LDA   #$90         ; $EF7E: A9 90
L_EF80:   STA   $DD0D        ; $EF80: 8D 0D DD
L_EF83:   ORA   $02A1        ; $EF83: 0D A1 02
L_EF86:   STA   $02A1        ; $EF86: 8D A1 02
L_EF89:   STA   $A9          ; $EF89: 85 A9
L_EF8B:   LDA   #$02         ; $EF8B: A9 02
L_EF8D:   JMP   $EF3B        ; $EF8D: 4C 3B EF
L_EF90:   LDA   $A7          ; $EF90: A5 A7
L_EF92:   BNE   $EF7E        ; $EF92: D0 EA
L_EF94:   STA   $A9          ; $EF94: 85 A9
L_EF96:   RTS                ; $EF96: 60
L_EF97:   LDY   $029B        ; $EF97: AC 9B 02
L_EF9A:   INY                ; $EF9A: C8
L_EF9B:   CPY   $029C        ; $EF9B: CC 9C 02
L_EF9E:   BEQ   $EFCA        ; $EF9E: F0 2A
L_EFA0:   STY   $029B        ; $EFA0: 8C 9B 02
L_EFA3:   DEY                ; $EFA3: 88
L_EFA4:   LDA   $AA          ; $EFA4: A5 AA
L_EFA6:   LDX   $0298        ; $EFA6: AE 98 02
L_EFA9:   CPX   #$09         ; $EFA9: E0 09
L_EFAB:   BEQ   $EFB1        ; $EFAB: F0 04
L_EFAD:   LSR   A            ; $EFAD: 4A
L_EFAE:   INX                ; $EFAE: E8
L_EFAF:   BNE   $EFA9        ; $EFAF: D0 F8
L_EFB1:   STA   ($F7),Y      ; $EFB1: 91 F7
L_EFB3:   LDA   #$20         ; $EFB3: A9 20
L_EFB5:   BIT   $0294        ; $EFB5: 2C 94 02
L_EFB8:   BEQ   $EF6E        ; $EFB8: F0 B4
L_EFBA:   BMI   $EF6D        ; $EFBA: 30 B1
L_EFBC:   LDA   $A7          ; $EFBC: A5 A7
L_EFBE:   EOR   $AB          ; $EFBE: 45 AB
L_EFC0:   BEQ   $EFC5        ; $EFC0: F0 03
L_EFC2:   BVS   $EF6D        ; $EFC2: 70 A9
L_EFC4:   BIT   $A650        ; $EFC4: 2C 50 A6
L_EFC7:   LDA   #$01         ; $EFC7: A9 01
L_EFC9:   BIT   $04A9        ; $EFC9: 2C A9 04
L_EFCC:   BIT   $80A9        ; $EFCC: 2C A9 80
L_EFCF:   BIT   $02A9        ; $EFCF: 2C A9 02
L_EFD2:   ORA   $0297        ; $EFD2: 0D 97 02
L_EFD5:   STA   $0297        ; $EFD5: 8D 97 02
L_EFD8:   JMP   $EF7E        ; $EFD8: 4C 7E EF
L_EFDB:   LDA   $AA          ; $EFDB: A5 AA
L_EFDD:   BNE   $EFD0        ; $EFDD: D0 F1
L_EFDF:   BEQ   $EFCD        ; $EFDF: F0 EC
L_EFE1:   STA   $9A          ; $EFE1: 85 9A
L_EFE3:   LDA   $0294        ; $EFE3: AD 94 02
L_EFE6:   LSR   A            ; $EFE6: 4A
L_EFE7:   BCC   $F012        ; $EFE7: 90 29
L_EFE9:   LDA   #$02         ; $EFE9: A9 02
L_EFEB:   BIT   $DD01        ; $EFEB: 2C 01 DD
L_EFEE:   BPL   $F00D        ; $EFEE: 10 1D
L_EFF0:   BNE   $F012        ; $EFF0: D0 20
L_EFF2:   LDA   $02A1        ; $EFF2: AD A1 02
L_EFF5:   AND   #$02         ; $EFF5: 29 02
L_EFF7:   BNE   $EFF2        ; $EFF7: D0 F9
L_EFF9:   BIT   $DD01        ; $EFF9: 2C 01 DD
L_EFFC:   BVS   $EFF9        ; $EFFC: 70 FB
L_EFFE:   LDA   $DD01        ; $EFFE: AD 01 DD
L_F001:   ORA   #$02         ; $F001: 09 02
L_F003:   STA   $DD01        ; $F003: 8D 01 DD
L_F006:   BIT   $DD01        ; $F006: 2C 01 DD
L_F009:   BVS   $F012        ; $F009: 70 07
L_F00B:   BMI   $F006        ; $F00B: 30 F9
L_F00D:   LDA   #$40         ; $F00D: A9 40
L_F00F:   STA   $0297        ; $F00F: 8D 97 02
L_F012:   CLC                ; $F012: 18
L_F013:   RTS                ; $F013: 60
L_F014:   JSR   $F028        ; $F014: 20 28 F0
L_F017:   LDY   $029E        ; $F017: AC 9E 02
L_F01A:   INY                ; $F01A: C8
L_F01B:   CPY   $029D        ; $F01B: CC 9D 02
L_F01E:   BEQ   $F014        ; $F01E: F0 F4
L_F020:   STY   $029E        ; $F020: 8C 9E 02
L_F023:   DEY                ; $F023: 88
L_F024:   LDA   $9E          ; $F024: A5 9E
L_F026:   STA   ($F9),Y      ; $F026: 91 F9
L_F028:   LDA   $02A1        ; $F028: AD A1 02
L_F02B:   LSR   A            ; $F02B: 4A
L_F02C:   BCS   $F04C        ; $F02C: B0 1E
L_F02E:   LDA   #$10         ; $F02E: A9 10
L_F030:   STA   $DD0E        ; $F030: 8D 0E DD
L_F033:   LDA   $0299        ; $F033: AD 99 02
L_F036:   STA   $DD04        ; $F036: 8D 04 DD
L_F039:   LDA   $029A        ; $F039: AD 9A 02
L_F03C:   STA   $DD05        ; $F03C: 8D 05 DD
L_F03F:   LDA   #$81         ; $F03F: A9 81
L_F041:   JSR   $EF3B        ; $F041: 20 3B EF
L_F044:   JSR   $EF06        ; $F044: 20 06 EF
L_F047:   LDA   #$11         ; $F047: A9 11
L_F049:   STA   $DD0E        ; $F049: 8D 0E DD
L_F04C:   RTS                ; $F04C: 60
L_F04D:   STA   $99          ; $F04D: 85 99
L_F04F:   LDA   $0294        ; $F04F: AD 94 02
L_F052:   LSR   A            ; $F052: 4A
L_F053:   BCC   $F07D        ; $F053: 90 28
L_F055:   AND   #$08         ; $F055: 29 08
L_F057:   BEQ   $F07D        ; $F057: F0 24
L_F059:   LDA   #$02         ; $F059: A9 02
L_F05B:   BIT   $DD01        ; $F05B: 2C 01 DD
L_F05E:   BPL   $F00D        ; $F05E: 10 AD
L_F060:   BEQ   $F084        ; $F060: F0 22
L_F062:   LDA   $02A1        ; $F062: AD A1 02
L_F065:   LSR   A            ; $F065: 4A
L_F066:   BCS   $F062        ; $F066: B0 FA
L_F068:   LDA   $DD01        ; $F068: AD 01 DD
L_F06B:   AND   #$FD         ; $F06B: 29 FD
L_F06D:   STA   $DD01        ; $F06D: 8D 01 DD
L_F070:   LDA   $DD01        ; $F070: AD 01 DD
L_F073:   AND   #$04         ; $F073: 29 04
L_F075:   BEQ   $F070        ; $F075: F0 F9
L_F077:   LDA   #$90         ; $F077: A9 90
L_F079:   CLC                ; $F079: 18
L_F07A:   JMP   $EF3B        ; $F07A: 4C 3B EF
L_F07D:   LDA   $02A1        ; $F07D: AD A1 02
L_F080:   AND   #$12         ; $F080: 29 12
L_F082:   BEQ   $F077        ; $F082: F0 F3
L_F084:   CLC                ; $F084: 18
L_F085:   RTS                ; $F085: 60
L_F086:   LDA   $0297        ; $F086: AD 97 02
L_F089:   LDY   $029C        ; $F089: AC 9C 02
L_F08C:   CPY   $029B        ; $F08C: CC 9B 02
L_F08F:   BEQ   $F09C        ; $F08F: F0 0B
L_F091:   AND   #$F7         ; $F091: 29 F7
L_F093:   STA   $0297        ; $F093: 8D 97 02
L_F096:   LDA   ($F7),Y      ; $F096: B1 F7
L_F098:   INC   $029C        ; $F098: EE 9C 02
L_F09B:   RTS                ; $F09B: 60
L_F09C:   ORA   #$08         ; $F09C: 09 08
L_F09E:   STA   $0297        ; $F09E: 8D 97 02
L_F0A1:   LDA   #$00         ; $F0A1: A9 00
L_F0A3:   RTS                ; $F0A3: 60
L_F0A4:   PHA                ; $F0A4: 48
L_F0A5:   LDA   $02A1        ; $F0A5: AD A1 02
L_F0A8:   BEQ   $F0BB        ; $F0A8: F0 11
L_F0AA:   LDA   $02A1        ; $F0AA: AD A1 02
L_F0AD:   AND   #$03         ; $F0AD: 29 03
L_F0AF:   BNE   $F0AA        ; $F0AF: D0 F9
L_F0B1:   LDA   #$10         ; $F0B1: A9 10
L_F0B3:   STA   $DD0D        ; $F0B3: 8D 0D DD
L_F0B6:   LDA   #$00         ; $F0B6: A9 00
L_F0B8:   STA   $02A1        ; $F0B8: 8D A1 02
L_F0BB:   PLA                ; $F0BB: 68
L_F0BC:   RTS                ; $F0BC: 60
L_F0BD:   ORA   $2F49        ; $F0BD: 0D 49 2F
L_F0C0:   .byte $4F       ; $F0C0
L_F0C1:   JSR   $5245        ; $F0C1: 20 45 52
L_F0C4:   .byte $52       ; $F0C4
L_F0C5:   .byte $4F       ; $F0C5
L_F0C6:   .byte $52       ; $F0C6
L_F0C7:   JSR   $0DA3        ; $F0C7: 20 A3 0D
L_F0CA:   .byte $53       ; $F0CA
L_F0CB:   EOR   $41          ; $F0CB: 45 41
L_F0CD:   .byte $52       ; $F0CD
L_F0CE:   .byte $43       ; $F0CE
L_F0CF:   PHA                ; $F0CF: 48
L_F0D0:   EOR   #$4E         ; $F0D0: 49 4E
L_F0D2:   .byte $47       ; $F0D2
L_F0D3:   LDY   #$46         ; $F0D3: A0 46
L_F0D5:   .byte $4F       ; $F0D5
L_F0D6:   .byte $52       ; $F0D6
L_F0D7:   LDY   #$0D         ; $F0D7: A0 0D
L_F0D9:   BVC   $F12D        ; $F0D9: 50 52
L_F0DB:   EOR   $53          ; $F0DB: 45 53
L_F0DD:   .byte $53       ; $F0DD
L_F0DE:   JSR   $4C50        ; $F0DE: 20 50 4C
L_F0E1:   EOR   ($59,X)      ; $F0E1: 41 59
L_F0E3:   JSR   $4E4F        ; $F0E3: 20 4F 4E
L_F0E6:   JSR   $4154        ; $F0E6: 20 54 41
L_F0E9:   BVC   $F0B0        ; $F0E9: 50 C5
L_F0EB:   BVC   $F13F        ; $F0EB: 50 52
L_F0ED:   EOR   $53          ; $F0ED: 45 53
L_F0EF:   .byte $53       ; $F0EF
L_F0F0:   JSR   $4552        ; $F0F0: 20 52 45
L_F0F3:   .byte $43       ; $F0F3
L_F0F4:   .byte $4F       ; $F0F4
L_F0F5:   .byte $52       ; $F0F5
L_F0F6:   .byte $44       ; $F0F6
L_F0F7:   JSR   $2026        ; $F0F7: 20 26 20
L_F0FA:   BVC   $F148        ; $F0FA: 50 4C
L_F0FC:   EOR   ($59,X)      ; $F0FC: 41 59
L_F0FE:   JSR   $4E4F        ; $F0FE: 20 4F 4E
L_F101:   JSR   $4154        ; $F101: 20 54 41
L_F104:   BVC   $F0CB        ; $F104: 50 C5
L_F106:   ORA   $4F4C        ; $F106: 0D 4C 4F
L_F109:   EOR   ($44,X)      ; $F109: 41 44
L_F10B:   EOR   #$4E         ; $F10B: 49 4E
L_F10D:   .byte $C7       ; $F10D
L_F10E:   ORA   $4153        ; $F10E: 0D 53 41
L_F111:   LSR   $49,X        ; $F111: 56 49
L_F113:   LSR   $A047        ; $F113: 4E 47 A0
L_F116:   ORA   $4556        ; $F116: 0D 56 45
L_F119:   .byte $52       ; $F119
L_F11A:   EOR   #$46         ; $F11A: 49 46
L_F11C:   EOR   $4E49,Y      ; $F11C: 59 49 4E
L_F11F:   .byte $C7       ; $F11F
L_F120:   ORA   $4F46        ; $F120: 0D 46 4F
L_F123:   EOR   $4E,X        ; $F123: 55 4E
L_F125:   .byte $44       ; $F125
L_F126:   LDY   #$0D         ; $F126: A0 0D
L_F128:   .byte $4F       ; $F128
L_F129:   .byte $4B       ; $F129
L_F12A:   STA   $9D24        ; $F12A: 8D 24 9D
L_F12D:   BPL   $F13C        ; $F12D: 10 0D
L_F12F:   LDA   $F0BD,Y      ; $F12F: B9 BD F0
L_F132:   PHP                ; $F132: 08
L_F133:   AND   #$7F         ; $F133: 29 7F
L_F135:   JSR   $FFD2        ; $F135: 20 D2 FF
L_F138:   INY                ; $F138: C8
L_F139:   PLP                ; $F139: 28
L_F13A:   BPL   $F12F        ; $F13A: 10 F3
L_F13C:   CLC                ; $F13C: 18
L_F13D:   RTS                ; $F13D: 60
L_F13E:   LDA   $99          ; $F13E: A5 99
L_F140:   BNE   $F14A        ; $F140: D0 08
L_F142:   LDA   $C6          ; $F142: A5 C6
L_F144:   BEQ   $F155        ; $F144: F0 0F
L_F146:   SEI                ; $F146: 78
L_F147:   JMP   $E5B4        ; $F147: 4C B4 E5
L_F14A:   CMP   #$02         ; $F14A: C9 02
L_F14C:   BNE   $F166        ; $F14C: D0 18
L_F14E:   STY   $97          ; $F14E: 84 97
L_F150:   JSR   $F086        ; $F150: 20 86 F0
L_F153:   LDY   $97          ; $F153: A4 97
L_F155:   CLC                ; $F155: 18
L_F156:   RTS                ; $F156: 60
L_F157:   LDA   $99          ; $F157: A5 99
L_F159:   BNE   $F166        ; $F159: D0 0B
L_F15B:   LDA   $D3          ; $F15B: A5 D3
L_F15D:   STA   $CA          ; $F15D: 85 CA
L_F15F:   LDA   $D6          ; $F15F: A5 D6
L_F161:   STA   $C9          ; $F161: 85 C9
L_F163:   JMP   $E632        ; $F163: 4C 32 E6
L_F166:   CMP   #$03         ; $F166: C9 03
L_F168:   BNE   $F173        ; $F168: D0 09
L_F16A:   STA   $D0          ; $F16A: 85 D0
L_F16C:   LDA   $D5          ; $F16C: A5 D5
L_F16E:   STA   $C8          ; $F16E: 85 C8
L_F170:   JMP   $E632        ; $F170: 4C 32 E6
L_F173:   BCS   $F1AD        ; $F173: B0 38
L_F175:   CMP   #$02         ; $F175: C9 02
L_F177:   BEQ   $F1B8        ; $F177: F0 3F
L_F179:   STX   $97          ; $F179: 86 97
L_F17B:   JSR   $F199        ; $F17B: 20 99 F1
L_F17E:   BCS   $F196        ; $F17E: B0 16
L_F180:   PHA                ; $F180: 48
L_F181:   JSR   $F199        ; $F181: 20 99 F1
L_F184:   BCS   $F193        ; $F184: B0 0D
L_F186:   BNE   $F18D        ; $F186: D0 05
L_F188:   LDA   #$40         ; $F188: A9 40
L_F18A:   JSR   $FE1C        ; $F18A: 20 1C FE
L_F18D:   DEC   $A6          ; $F18D: C6 A6
L_F18F:   LDX   $97          ; $F18F: A6 97
L_F191:   PLA                ; $F191: 68
L_F192:   RTS                ; $F192: 60
L_F193:   TAX                ; $F193: AA
L_F194:   PLA                ; $F194: 68
L_F195:   TXA                ; $F195: 8A
L_F196:   LDX   $97          ; $F196: A6 97
L_F198:   RTS                ; $F198: 60
L_F199:   JSR   $F80D        ; $F199: 20 0D F8
L_F19C:   BNE   $F1A9        ; $F19C: D0 0B
L_F19E:   JSR   $F841        ; $F19E: 20 41 F8
L_F1A1:   BCS   $F1B4        ; $F1A1: B0 11
L_F1A3:   LDA   #$00         ; $F1A3: A9 00
L_F1A5:   STA   $A6          ; $F1A5: 85 A6
L_F1A7:   BEQ   $F199        ; $F1A7: F0 F0
L_F1A9:   LDA   ($B2),Y      ; $F1A9: B1 B2
L_F1AB:   CLC                ; $F1AB: 18
L_F1AC:   RTS                ; $F1AC: 60
L_F1AD:   LDA   $90          ; $F1AD: A5 90
L_F1AF:   BEQ   $F1B5        ; $F1AF: F0 04
L_F1B1:   LDA   #$0D         ; $F1B1: A9 0D
L_F1B3:   CLC                ; $F1B3: 18
L_F1B4:   RTS                ; $F1B4: 60
L_F1B5:   JMP   $EE13        ; $F1B5: 4C 13 EE
L_F1B8:   JSR   $F14E        ; $F1B8: 20 4E F1
L_F1BB:   BCS   $F1B4        ; $F1BB: B0 F7
L_F1BD:   CMP   #$00         ; $F1BD: C9 00
L_F1BF:   BNE   $F1B3        ; $F1BF: D0 F2
L_F1C1:   LDA   $0297        ; $F1C1: AD 97 02
L_F1C4:   AND   #$60         ; $F1C4: 29 60
L_F1C6:   BNE   $F1B1        ; $F1C6: D0 E9
L_F1C8:   BEQ   $F1B8        ; $F1C8: F0 EE
L_F1CA:   PHA                ; $F1CA: 48
L_F1CB:   LDA   $9A          ; $F1CB: A5 9A
L_F1CD:   CMP   #$03         ; $F1CD: C9 03
L_F1CF:   BNE   $F1D5        ; $F1CF: D0 04
L_F1D1:   PLA                ; $F1D1: 68
L_F1D2:   JMP   $E716        ; $F1D2: 4C 16 E7
L_F1D5:   BCC   $F1DB        ; $F1D5: 90 04
L_F1D7:   PLA                ; $F1D7: 68
L_F1D8:   JMP   $EDDD        ; $F1D8: 4C DD ED
L_F1DB:   LSR   A            ; $F1DB: 4A
L_F1DC:   PLA                ; $F1DC: 68
L_F1DD:   STA   $9E          ; $F1DD: 85 9E
L_F1DF:   TXA                ; $F1DF: 8A
L_F1E0:   PHA                ; $F1E0: 48
L_F1E1:   TYA                ; $F1E1: 98
L_F1E2:   PHA                ; $F1E2: 48
L_F1E3:   BCC   $F208        ; $F1E3: 90 23
L_F1E5:   JSR   $F80D        ; $F1E5: 20 0D F8
L_F1E8:   BNE   $F1F8        ; $F1E8: D0 0E
L_F1EA:   JSR   $F864        ; $F1EA: 20 64 F8
L_F1ED:   BCS   $F1FD        ; $F1ED: B0 0E
L_F1EF:   LDA   #$02         ; $F1EF: A9 02
L_F1F1:   LDY   #$00         ; $F1F1: A0 00
L_F1F3:   STA   ($B2),Y      ; $F1F3: 91 B2
L_F1F5:   INY                ; $F1F5: C8
L_F1F6:   STY   $A6          ; $F1F6: 84 A6
L_F1F8:   LDA   $9E          ; $F1F8: A5 9E
L_F1FA:   STA   ($B2),Y      ; $F1FA: 91 B2
L_F1FC:   CLC                ; $F1FC: 18
L_F1FD:   PLA                ; $F1FD: 68
L_F1FE:   TAY                ; $F1FE: A8
L_F1FF:   PLA                ; $F1FF: 68
L_F200:   TAX                ; $F200: AA
L_F201:   LDA   $9E          ; $F201: A5 9E
L_F203:   BCC   $F207        ; $F203: 90 02
L_F205:   LDA   #$00         ; $F205: A9 00
L_F207:   RTS                ; $F207: 60
L_F208:   JSR   $F017        ; $F208: 20 17 F0
L_F20B:   JMP   $F1FC        ; $F20B: 4C FC F1
L_F20E:   JSR   $F30F        ; $F20E: 20 0F F3
L_F211:   BEQ   $F216        ; $F211: F0 03
L_F213:   JMP   $F701        ; $F213: 4C 01 F7
L_F216:   JSR   $F31F        ; $F216: 20 1F F3
L_F219:   LDA   $BA          ; $F219: A5 BA
L_F21B:   BEQ   $F233        ; $F21B: F0 16
L_F21D:   CMP   #$03         ; $F21D: C9 03
L_F21F:   BEQ   $F233        ; $F21F: F0 12
L_F221:   BCS   $F237        ; $F221: B0 14
L_F223:   CMP   #$02         ; $F223: C9 02
L_F225:   BNE   $F22A        ; $F225: D0 03
L_F227:   JMP   $F04D        ; $F227: 4C 4D F0
L_F22A:   LDX   $B9          ; $F22A: A6 B9
L_F22C:   CPX   #$60         ; $F22C: E0 60
L_F22E:   BEQ   $F233        ; $F22E: F0 03
L_F230:   JMP   $F70A        ; $F230: 4C 0A F7
L_F233:   STA   $99          ; $F233: 85 99
L_F235:   CLC                ; $F235: 18
L_F236:   RTS                ; $F236: 60
L_F237:   TAX                ; $F237: AA
L_F238:   JSR   $ED09        ; $F238: 20 09 ED
L_F23B:   LDA   $B9          ; $F23B: A5 B9
L_F23D:   BPL   $F245        ; $F23D: 10 06
L_F23F:   JSR   $EDCC        ; $F23F: 20 CC ED
L_F242:   JMP   $F248        ; $F242: 4C 48 F2
L_F245:   JSR   $EDC7        ; $F245: 20 C7 ED
L_F248:   TXA                ; $F248: 8A
L_F249:   BIT   $90          ; $F249: 24 90
L_F24B:   BPL   $F233        ; $F24B: 10 E6
L_F24D:   JMP   $F707        ; $F24D: 4C 07 F7
L_F250:   JSR   $F30F        ; $F250: 20 0F F3
L_F253:   BEQ   $F258        ; $F253: F0 03
L_F255:   JMP   $F701        ; $F255: 4C 01 F7
L_F258:   JSR   $F31F        ; $F258: 20 1F F3
L_F25B:   LDA   $BA          ; $F25B: A5 BA
L_F25D:   BNE   $F262        ; $F25D: D0 03
L_F25F:   JMP   $F70D        ; $F25F: 4C 0D F7
L_F262:   CMP   #$03         ; $F262: C9 03
L_F264:   BEQ   $F275        ; $F264: F0 0F
L_F266:   BCS   $F279        ; $F266: B0 11
L_F268:   CMP   #$02         ; $F268: C9 02
L_F26A:   BNE   $F26F        ; $F26A: D0 03
L_F26C:   JMP   $EFE1        ; $F26C: 4C E1 EF
L_F26F:   LDX   $B9          ; $F26F: A6 B9
L_F271:   CPX   #$60         ; $F271: E0 60
L_F273:   BEQ   $F25F        ; $F273: F0 EA
L_F275:   STA   $9A          ; $F275: 85 9A
L_F277:   CLC                ; $F277: 18
L_F278:   RTS                ; $F278: 60
L_F279:   TAX                ; $F279: AA
L_F27A:   JSR   $ED0C        ; $F27A: 20 0C ED
L_F27D:   LDA   $B9          ; $F27D: A5 B9
L_F27F:   BPL   $F286        ; $F27F: 10 05
L_F281:   JSR   $EDBE        ; $F281: 20 BE ED
L_F284:   BNE   $F289        ; $F284: D0 03
L_F286:   JSR   $EDB9        ; $F286: 20 B9 ED
L_F289:   TXA                ; $F289: 8A
L_F28A:   BIT   $90          ; $F28A: 24 90
L_F28C:   BPL   $F275        ; $F28C: 10 E7
L_F28E:   JMP   $F707        ; $F28E: 4C 07 F7
L_F291:   JSR   $F314        ; $F291: 20 14 F3
L_F294:   BEQ   $F298        ; $F294: F0 02
L_F296:   CLC                ; $F296: 18
L_F297:   RTS                ; $F297: 60
L_F298:   JSR   $F31F        ; $F298: 20 1F F3
L_F29B:   TXA                ; $F29B: 8A
L_F29C:   PHA                ; $F29C: 48
L_F29D:   LDA   $BA          ; $F29D: A5 BA
L_F29F:   BEQ   $F2F1        ; $F29F: F0 50
L_F2A1:   CMP   #$03         ; $F2A1: C9 03
L_F2A3:   BEQ   $F2F1        ; $F2A3: F0 4C
L_F2A5:   BCS   $F2EE        ; $F2A5: B0 47
L_F2A7:   CMP   #$02         ; $F2A7: C9 02
L_F2A9:   BNE   $F2C8        ; $F2A9: D0 1D
L_F2AB:   PLA                ; $F2AB: 68
L_F2AC:   JSR   $F2F2        ; $F2AC: 20 F2 F2
L_F2AF:   JSR   $F483        ; $F2AF: 20 83 F4
L_F2B2:   JSR   $FE27        ; $F2B2: 20 27 FE
L_F2B5:   LDA   $F8          ; $F2B5: A5 F8
L_F2B7:   BEQ   $F2BA        ; $F2B7: F0 01
L_F2B9:   INY                ; $F2B9: C8
L_F2BA:   LDA   $FA          ; $F2BA: A5 FA
L_F2BC:   BEQ   $F2BF        ; $F2BC: F0 01
L_F2BE:   INY                ; $F2BE: C8
L_F2BF:   LDA   #$00         ; $F2BF: A9 00
L_F2C1:   STA   $F8          ; $F2C1: 85 F8
L_F2C3:   STA   $FA          ; $F2C3: 85 FA
L_F2C5:   JMP   $F47D        ; $F2C5: 4C 7D F4
L_F2C8:   LDA   $B9          ; $F2C8: A5 B9
L_F2CA:   AND   #$0F         ; $F2CA: 29 0F
L_F2CC:   BEQ   $F2F1        ; $F2CC: F0 23
L_F2CE:   JSR   $F7D0        ; $F2CE: 20 D0 F7
L_F2D1:   LDA   #$00         ; $F2D1: A9 00
L_F2D3:   SEC                ; $F2D3: 38
L_F2D4:   JSR   $F1DD        ; $F2D4: 20 DD F1
L_F2D7:   JSR   $F864        ; $F2D7: 20 64 F8
L_F2DA:   BCC   $F2E0        ; $F2DA: 90 04
L_F2DC:   PLA                ; $F2DC: 68
L_F2DD:   LDA   #$00         ; $F2DD: A9 00
L_F2DF:   RTS                ; $F2DF: 60
L_F2E0:   LDA   $B9          ; $F2E0: A5 B9
L_F2E2:   CMP   #$62         ; $F2E2: C9 62
L_F2E4:   BNE   $F2F1        ; $F2E4: D0 0B
L_F2E6:   LDA   #$05         ; $F2E6: A9 05
L_F2E8:   JSR   $F76A        ; $F2E8: 20 6A F7
L_F2EB:   JMP   $F2F1        ; $F2EB: 4C F1 F2
L_F2EE:   JSR   $F642        ; $F2EE: 20 42 F6
L_F2F1:   PLA                ; $F2F1: 68
L_F2F2:   TAX                ; $F2F2: AA
L_F2F3:   DEC   $98          ; $F2F3: C6 98
L_F2F5:   CPX   $98          ; $F2F5: E4 98
L_F2F7:   BEQ   $F30D        ; $F2F7: F0 14
L_F2F9:   LDY   $98          ; $F2F9: A4 98
L_F2FB:   LDA   $0259,Y      ; $F2FB: B9 59 02
L_F2FE:   STA   $0259,X      ; $F2FE: 9D 59 02
L_F301:   LDA   $0263,Y      ; $F301: B9 63 02
L_F304:   STA   $0263,X      ; $F304: 9D 63 02
L_F307:   LDA   $026D,Y      ; $F307: B9 6D 02
L_F30A:   STA   $026D,X      ; $F30A: 9D 6D 02
L_F30D:   CLC                ; $F30D: 18
L_F30E:   RTS                ; $F30E: 60
L_F30F:   LDA   #$00         ; $F30F: A9 00
L_F311:   STA   $90          ; $F311: 85 90
L_F313:   TXA                ; $F313: 8A
L_F314:   LDX   $98          ; $F314: A6 98
L_F316:   DEX                ; $F316: CA
L_F317:   BMI   $F32E        ; $F317: 30 15
L_F319:   CMP   $0259,X      ; $F319: DD 59 02
L_F31C:   BNE   $F316        ; $F31C: D0 F8
L_F31E:   RTS                ; $F31E: 60
L_F31F:   LDA   $0259,X      ; $F31F: BD 59 02
L_F322:   STA   $B8          ; $F322: 85 B8
L_F324:   LDA   $0263,X      ; $F324: BD 63 02
L_F327:   STA   $BA          ; $F327: 85 BA
L_F329:   LDA   $026D,X      ; $F329: BD 6D 02
L_F32C:   STA   $B9          ; $F32C: 85 B9
L_F32E:   RTS                ; $F32E: 60
L_F32F:   LDA   #$00         ; $F32F: A9 00
L_F331:   STA   $98          ; $F331: 85 98
L_F333:   LDX   #$03         ; $F333: A2 03
L_F335:   CPX   $9A          ; $F335: E4 9A
L_F337:   BCS   $F33C        ; $F337: B0 03
L_F339:   JSR   $EDFE        ; $F339: 20 FE ED
L_F33C:   CPX   $99          ; $F33C: E4 99
L_F33E:   BCS   $F343        ; $F33E: B0 03
L_F340:   JSR   $EDEF        ; $F340: 20 EF ED
L_F343:   STX   $9A          ; $F343: 86 9A
L_F345:   LDA   #$00         ; $F345: A9 00
L_F347:   STA   $99          ; $F347: 85 99
L_F349:   RTS                ; $F349: 60
L_F34A:   LDX   $B8          ; $F34A: A6 B8
L_F34C:   BNE   $F351        ; $F34C: D0 03
L_F34E:   JMP   $F70A        ; $F34E: 4C 0A F7
L_F351:   JSR   $F30F        ; $F351: 20 0F F3
L_F354:   BNE   $F359        ; $F354: D0 03
L_F356:   JMP   $F6FE        ; $F356: 4C FE F6
L_F359:   LDX   $98          ; $F359: A6 98
L_F35B:   CPX   #$0A         ; $F35B: E0 0A
L_F35D:   BCC   $F362        ; $F35D: 90 03
L_F35F:   JMP   $F6FB        ; $F35F: 4C FB F6
L_F362:   INC   $98          ; $F362: E6 98
L_F364:   LDA   $B8          ; $F364: A5 B8
L_F366:   STA   $0259,X      ; $F366: 9D 59 02
L_F369:   LDA   $B9          ; $F369: A5 B9
L_F36B:   ORA   #$60         ; $F36B: 09 60
L_F36D:   STA   $B9          ; $F36D: 85 B9
L_F36F:   STA   $026D,X      ; $F36F: 9D 6D 02
L_F372:   LDA   $BA          ; $F372: A5 BA
L_F374:   STA   $0263,X      ; $F374: 9D 63 02
L_F377:   BEQ   $F3D3        ; $F377: F0 5A
L_F379:   CMP   #$03         ; $F379: C9 03
L_F37B:   BEQ   $F3D3        ; $F37B: F0 56
L_F37D:   BCC   $F384        ; $F37D: 90 05
L_F37F:   JSR   $F3D5        ; $F37F: 20 D5 F3
L_F382:   BCC   $F3D3        ; $F382: 90 4F
L_F384:   CMP   #$02         ; $F384: C9 02
L_F386:   BNE   $F38B        ; $F386: D0 03
L_F388:   JMP   $F409        ; $F388: 4C 09 F4
L_F38B:   JSR   $F7D0        ; $F38B: 20 D0 F7
L_F38E:   BCS   $F393        ; $F38E: B0 03
L_F390:   JMP   $F713        ; $F390: 4C 13 F7
L_F393:   LDA   $B9          ; $F393: A5 B9
L_F395:   AND   #$0F         ; $F395: 29 0F
L_F397:   BNE   $F3B8        ; $F397: D0 1F
L_F399:   JSR   $F817        ; $F399: 20 17 F8
L_F39C:   BCS   $F3D4        ; $F39C: B0 36
L_F39E:   JSR   $F5AF        ; $F39E: 20 AF F5
L_F3A1:   LDA   $B7          ; $F3A1: A5 B7
L_F3A3:   BEQ   $F3AF        ; $F3A3: F0 0A
L_F3A5:   JSR   $F7EA        ; $F3A5: 20 EA F7
L_F3A8:   BCC   $F3C2        ; $F3A8: 90 18
L_F3AA:   BEQ   $F3D4        ; $F3AA: F0 28
L_F3AC:   JMP   $F704        ; $F3AC: 4C 04 F7
L_F3AF:   JSR   $F72C        ; $F3AF: 20 2C F7
L_F3B2:   BEQ   $F3D4        ; $F3B2: F0 20
L_F3B4:   BCC   $F3C2        ; $F3B4: 90 0C
L_F3B6:   BCS   $F3AC        ; $F3B6: B0 F4
L_F3B8:   JSR   $F838        ; $F3B8: 20 38 F8
L_F3BB:   BCS   $F3D4        ; $F3BB: B0 17
L_F3BD:   LDA   #$04         ; $F3BD: A9 04
L_F3BF:   JSR   $F76A        ; $F3BF: 20 6A F7
L_F3C2:   LDA   #$BF         ; $F3C2: A9 BF
L_F3C4:   LDY   $B9          ; $F3C4: A4 B9
L_F3C6:   CPY   #$60         ; $F3C6: C0 60
L_F3C8:   BEQ   $F3D1        ; $F3C8: F0 07
L_F3CA:   LDY   #$00         ; $F3CA: A0 00
L_F3CC:   LDA   #$02         ; $F3CC: A9 02
L_F3CE:   STA   ($B2),Y      ; $F3CE: 91 B2
L_F3D0:   TYA                ; $F3D0: 98
L_F3D1:   STA   $A6          ; $F3D1: 85 A6
L_F3D3:   CLC                ; $F3D3: 18
L_F3D4:   RTS                ; $F3D4: 60
L_F3D5:   LDA   $B9          ; $F3D5: A5 B9
L_F3D7:   BMI   $F3D3        ; $F3D7: 30 FA
L_F3D9:   LDY   $B7          ; $F3D9: A4 B7
L_F3DB:   BEQ   $F3D3        ; $F3DB: F0 F6
L_F3DD:   LDA   #$00         ; $F3DD: A9 00
L_F3DF:   STA   $90          ; $F3DF: 85 90
L_F3E1:   LDA   $BA          ; $F3E1: A5 BA
L_F3E3:   JSR   $ED0C        ; $F3E3: 20 0C ED
L_F3E6:   LDA   $B9          ; $F3E6: A5 B9
L_F3E8:   ORA   #$F0         ; $F3E8: 09 F0
L_F3EA:   JSR   $EDB9        ; $F3EA: 20 B9 ED
L_F3ED:   LDA   $90          ; $F3ED: A5 90
L_F3EF:   BPL   $F3F6        ; $F3EF: 10 05
L_F3F1:   PLA                ; $F3F1: 68
L_F3F2:   PLA                ; $F3F2: 68
L_F3F3:   JMP   $F707        ; $F3F3: 4C 07 F7
L_F3F6:   LDA   $B7          ; $F3F6: A5 B7
L_F3F8:   BEQ   $F406        ; $F3F8: F0 0C
L_F3FA:   LDY   #$00         ; $F3FA: A0 00
L_F3FC:   LDA   ($BB),Y      ; $F3FC: B1 BB
L_F3FE:   JSR   $EDDD        ; $F3FE: 20 DD ED
L_F401:   INY                ; $F401: C8
L_F402:   CPY   $B7          ; $F402: C4 B7
L_F404:   BNE   $F3FC        ; $F404: D0 F6
L_F406:   JMP   $F654        ; $F406: 4C 54 F6
L_F409:   JSR   $F483        ; $F409: 20 83 F4
L_F40C:   STY   $0297        ; $F40C: 8C 97 02
L_F40F:   CPY   $B7          ; $F40F: C4 B7
L_F411:   BEQ   $F41D        ; $F411: F0 0A
L_F413:   LDA   ($BB),Y      ; $F413: B1 BB
L_F415:   STA   $0293,Y      ; $F415: 99 93 02
L_F418:   INY                ; $F418: C8
L_F419:   CPY   #$04         ; $F419: C0 04
L_F41B:   BNE   $F40F        ; $F41B: D0 F2
L_F41D:   JSR   $EF4A        ; $F41D: 20 4A EF
L_F420:   STX   $0298        ; $F420: 8E 98 02
L_F423:   LDA   $0293        ; $F423: AD 93 02
L_F426:   AND   #$0F         ; $F426: 29 0F
L_F428:   BEQ   $F446        ; $F428: F0 1C
L_F42A:   ASL   A            ; $F42A: 0A
L_F42B:   TAX                ; $F42B: AA
L_F42C:   LDA   $02A6        ; $F42C: AD A6 02
L_F42F:   BNE   $F43A        ; $F42F: D0 09
L_F431:   LDY   $FEC1,X      ; $F431: BC C1 FE
L_F434:   LDA   $FEC0,X      ; $F434: BD C0 FE
L_F437:   JMP   $F440        ; $F437: 4C 40 F4
L_F43A:   LDY   $E4EB,X      ; $F43A: BC EB E4
L_F43D:   LDA   $E4EA,X      ; $F43D: BD EA E4
L_F440:   STY   $0296        ; $F440: 8C 96 02
L_F443:   STA   $0295        ; $F443: 8D 95 02
L_F446:   LDA   $0295        ; $F446: AD 95 02
L_F449:   ASL   A            ; $F449: 0A
L_F44A:   JSR   $FF2E        ; $F44A: 20 2E FF
L_F44D:   LDA   $0294        ; $F44D: AD 94 02
L_F450:   LSR   A            ; $F450: 4A
L_F451:   BCC   $F45C        ; $F451: 90 09
L_F453:   LDA   $DD01        ; $F453: AD 01 DD
L_F456:   ASL   A            ; $F456: 0A
L_F457:   BCS   $F45C        ; $F457: B0 03
L_F459:   JSR   $F00D        ; $F459: 20 0D F0
L_F45C:   LDA   $029B        ; $F45C: AD 9B 02
L_F45F:   STA   $029C        ; $F45F: 8D 9C 02
L_F462:   LDA   $029E        ; $F462: AD 9E 02
L_F465:   STA   $029D        ; $F465: 8D 9D 02
L_F468:   JSR   $FE27        ; $F468: 20 27 FE
L_F46B:   LDA   $F8          ; $F46B: A5 F8
L_F46D:   BNE   $F474        ; $F46D: D0 05
L_F46F:   DEY                ; $F46F: 88
L_F470:   STY   $F8          ; $F470: 84 F8
L_F472:   STX   $F7          ; $F472: 86 F7
L_F474:   LDA   $FA          ; $F474: A5 FA
L_F476:   BNE   $F47D        ; $F476: D0 05
L_F478:   DEY                ; $F478: 88
L_F479:   STY   $FA          ; $F479: 84 FA
L_F47B:   STX   $F9          ; $F47B: 86 F9
L_F47D:   SEC                ; $F47D: 38
L_F47E:   LDA   #$F0         ; $F47E: A9 F0
L_F480:   JMP   $FE2D        ; $F480: 4C 2D FE
L_F483:   LDA   #$7F         ; $F483: A9 7F
L_F485:   STA   $DD0D        ; $F485: 8D 0D DD
L_F488:   LDA   #$06         ; $F488: A9 06
L_F48A:   STA   $DD03        ; $F48A: 8D 03 DD
L_F48D:   STA   $DD01        ; $F48D: 8D 01 DD
L_F490:   LDA   #$04         ; $F490: A9 04
L_F492:   ORA   $DD00        ; $F492: 0D 00 DD
L_F495:   STA   $DD00        ; $F495: 8D 00 DD
L_F498:   LDY   #$00         ; $F498: A0 00
L_F49A:   STY   $02A1        ; $F49A: 8C A1 02
L_F49D:   RTS                ; $F49D: 60
L_F49E:   STX   $C3          ; $F49E: 86 C3
L_F4A0:   STY   $C4          ; $F4A0: 84 C4
L_F4A2:   JMP   ($0330)      ; $F4A2: 6C 30 03
L_F4A5:   STA   $93          ; $F4A5: 85 93
L_F4A7:   LDA   #$00         ; $F4A7: A9 00
L_F4A9:   STA   $90          ; $F4A9: 85 90
L_F4AB:   LDA   $BA          ; $F4AB: A5 BA
L_F4AD:   BNE   $F4B2        ; $F4AD: D0 03
L_F4AF:   JMP   $F713        ; $F4AF: 4C 13 F7
L_F4B2:   CMP   #$03         ; $F4B2: C9 03
L_F4B4:   BEQ   $F4AF        ; $F4B4: F0 F9
L_F4B6:   BCC   $F533        ; $F4B6: 90 7B
L_F4B8:   LDY   $B7          ; $F4B8: A4 B7
L_F4BA:   BNE   $F4BF        ; $F4BA: D0 03
L_F4BC:   JMP   $F710        ; $F4BC: 4C 10 F7
L_F4BF:   LDX   $B9          ; $F4BF: A6 B9
L_F4C1:   JSR   $F5AF        ; $F4C1: 20 AF F5
L_F4C4:   LDA   #$60         ; $F4C4: A9 60
L_F4C6:   STA   $B9          ; $F4C6: 85 B9
L_F4C8:   JSR   $F3D5        ; $F4C8: 20 D5 F3
L_F4CB:   LDA   $BA          ; $F4CB: A5 BA
L_F4CD:   JSR   $ED09        ; $F4CD: 20 09 ED
L_F4D0:   LDA   $B9          ; $F4D0: A5 B9
L_F4D2:   JSR   $EDC7        ; $F4D2: 20 C7 ED
L_F4D5:   JSR   $EE13        ; $F4D5: 20 13 EE
L_F4D8:   STA   $AE          ; $F4D8: 85 AE
L_F4DA:   LDA   $90          ; $F4DA: A5 90
L_F4DC:   LSR   A            ; $F4DC: 4A
L_F4DD:   LSR   A            ; $F4DD: 4A
L_F4DE:   BCS   $F530        ; $F4DE: B0 50
L_F4E0:   JSR   $EE13        ; $F4E0: 20 13 EE
L_F4E3:   STA   $AF          ; $F4E3: 85 AF
L_F4E5:   TXA                ; $F4E5: 8A
L_F4E6:   BNE   $F4F0        ; $F4E6: D0 08
L_F4E8:   LDA   $C3          ; $F4E8: A5 C3
L_F4EA:   STA   $AE          ; $F4EA: 85 AE
L_F4EC:   LDA   $C4          ; $F4EC: A5 C4
L_F4EE:   STA   $AF          ; $F4EE: 85 AF
L_F4F0:   JSR   $F5D2        ; $F4F0: 20 D2 F5
L_F4F3:   LDA   #$FD         ; $F4F3: A9 FD
L_F4F5:   AND   $90          ; $F4F5: 25 90
L_F4F7:   STA   $90          ; $F4F7: 85 90
L_F4F9:   JSR   $FFE1        ; $F4F9: 20 E1 FF
L_F4FC:   BNE   $F501        ; $F4FC: D0 03
L_F4FE:   JMP   $F633        ; $F4FE: 4C 33 F6
L_F501:   JSR   $EE13        ; $F501: 20 13 EE
L_F504:   TAX                ; $F504: AA
L_F505:   LDA   $90          ; $F505: A5 90
L_F507:   LSR   A            ; $F507: 4A
L_F508:   LSR   A            ; $F508: 4A
L_F509:   BCS   $F4F3        ; $F509: B0 E8
L_F50B:   TXA                ; $F50B: 8A
L_F50C:   LDY   $93          ; $F50C: A4 93
L_F50E:   BEQ   $F51C        ; $F50E: F0 0C
L_F510:   LDY   #$00         ; $F510: A0 00
L_F512:   CMP   ($AE),Y      ; $F512: D1 AE
L_F514:   BEQ   $F51E        ; $F514: F0 08
L_F516:   LDA   #$10         ; $F516: A9 10
L_F518:   JSR   $FE1C        ; $F518: 20 1C FE
L_F51B:   BIT   $AE91        ; $F51B: 2C 91 AE
L_F51E:   INC   $AE          ; $F51E: E6 AE
L_F520:   BNE   $F524        ; $F520: D0 02
L_F522:   INC   $AF          ; $F522: E6 AF
L_F524:   BIT   $90          ; $F524: 24 90
L_F526:   BVC   $F4F3        ; $F526: 50 CB
L_F528:   JSR   $EDEF        ; $F528: 20 EF ED
L_F52B:   JSR   $F642        ; $F52B: 20 42 F6
L_F52E:   BCC   $F5A9        ; $F52E: 90 79
L_F530:   JMP   $F704        ; $F530: 4C 04 F7
L_F533:   LSR   A            ; $F533: 4A
L_F534:   BCS   $F539        ; $F534: B0 03
L_F536:   JMP   $F713        ; $F536: 4C 13 F7
L_F539:   JSR   $F7D0        ; $F539: 20 D0 F7
L_F53C:   BCS   $F541        ; $F53C: B0 03
L_F53E:   JMP   $F713        ; $F53E: 4C 13 F7
L_F541:   JSR   $F817        ; $F541: 20 17 F8
L_F544:   BCS   $F5AE        ; $F544: B0 68
L_F546:   JSR   $F5AF        ; $F546: 20 AF F5
L_F549:   LDA   $B7          ; $F549: A5 B7
L_F54B:   BEQ   $F556        ; $F54B: F0 09
L_F54D:   JSR   $F7EA        ; $F54D: 20 EA F7
L_F550:   BCC   $F55D        ; $F550: 90 0B
L_F552:   BEQ   $F5AE        ; $F552: F0 5A
L_F554:   BCS   $F530        ; $F554: B0 DA
L_F556:   JSR   $F72C        ; $F556: 20 2C F7
L_F559:   BEQ   $F5AE        ; $F559: F0 53
L_F55B:   BCS   $F530        ; $F55B: B0 D3
L_F55D:   LDA   $90          ; $F55D: A5 90
L_F55F:   AND   #$10         ; $F55F: 29 10
L_F561:   SEC                ; $F561: 38
L_F562:   BNE   $F5AE        ; $F562: D0 4A
L_F564:   CPX   #$01         ; $F564: E0 01
L_F566:   BEQ   $F579        ; $F566: F0 11
L_F568:   CPX   #$03         ; $F568: E0 03
L_F56A:   BNE   $F549        ; $F56A: D0 DD
L_F56C:   LDY   #$01         ; $F56C: A0 01
L_F56E:   LDA   ($B2),Y      ; $F56E: B1 B2
L_F570:   STA   $C3          ; $F570: 85 C3
L_F572:   INY                ; $F572: C8
L_F573:   LDA   ($B2),Y      ; $F573: B1 B2
L_F575:   STA   $C4          ; $F575: 85 C4
L_F577:   BCS   $F57D        ; $F577: B0 04
L_F579:   LDA   $B9          ; $F579: A5 B9
L_F57B:   BNE   $F56C        ; $F57B: D0 EF
L_F57D:   LDY   #$03         ; $F57D: A0 03
L_F57F:   LDA   ($B2),Y      ; $F57F: B1 B2
L_F581:   LDY   #$01         ; $F581: A0 01
L_F583:   SBC   ($B2),Y      ; $F583: F1 B2
L_F585:   TAX                ; $F585: AA
L_F586:   LDY   #$04         ; $F586: A0 04
L_F588:   LDA   ($B2),Y      ; $F588: B1 B2
L_F58A:   LDY   #$02         ; $F58A: A0 02
L_F58C:   SBC   ($B2),Y      ; $F58C: F1 B2
L_F58E:   TAY                ; $F58E: A8
L_F58F:   CLC                ; $F58F: 18
L_F590:   TXA                ; $F590: 8A
L_F591:   ADC   $C3          ; $F591: 65 C3
L_F593:   STA   $AE          ; $F593: 85 AE
L_F595:   TYA                ; $F595: 98
L_F596:   ADC   $C4          ; $F596: 65 C4
L_F598:   STA   $AF          ; $F598: 85 AF
L_F59A:   LDA   $C3          ; $F59A: A5 C3
L_F59C:   STA   $C1          ; $F59C: 85 C1
L_F59E:   LDA   $C4          ; $F59E: A5 C4
L_F5A0:   STA   $C2          ; $F5A0: 85 C2
L_F5A2:   JSR   $F5D2        ; $F5A2: 20 D2 F5
L_F5A5:   JSR   $F84A        ; $F5A5: 20 4A F8
L_F5A8:   BIT   $18          ; $F5A8: 24 18
L_F5AA:   LDX   $AE          ; $F5AA: A6 AE
L_F5AC:   LDY   $AF          ; $F5AC: A4 AF
L_F5AE:   RTS                ; $F5AE: 60
L_F5AF:   LDA   $9D          ; $F5AF: A5 9D
L_F5B1:   BPL   $F5D1        ; $F5B1: 10 1E
L_F5B3:   LDY   #$0C         ; $F5B3: A0 0C
L_F5B5:   JSR   $F12F        ; $F5B5: 20 2F F1
L_F5B8:   LDA   $B7          ; $F5B8: A5 B7
L_F5BA:   BEQ   $F5D1        ; $F5BA: F0 15
L_F5BC:   LDY   #$17         ; $F5BC: A0 17
L_F5BE:   JSR   $F12F        ; $F5BE: 20 2F F1
L_F5C1:   LDY   $B7          ; $F5C1: A4 B7
L_F5C3:   BEQ   $F5D1        ; $F5C3: F0 0C
L_F5C5:   LDY   #$00         ; $F5C5: A0 00
L_F5C7:   LDA   ($BB),Y      ; $F5C7: B1 BB
L_F5C9:   JSR   $FFD2        ; $F5C9: 20 D2 FF
L_F5CC:   INY                ; $F5CC: C8
L_F5CD:   CPY   $B7          ; $F5CD: C4 B7
L_F5CF:   BNE   $F5C7        ; $F5CF: D0 F6
L_F5D1:   RTS                ; $F5D1: 60
L_F5D2:   LDY   #$49         ; $F5D2: A0 49
L_F5D4:   LDA   $93          ; $F5D4: A5 93
L_F5D6:   BEQ   $F5DA        ; $F5D6: F0 02
L_F5D8:   LDY   #$59         ; $F5D8: A0 59
L_F5DA:   JMP   $F12B        ; $F5DA: 4C 2B F1
L_F5DD:   STX   $AE          ; $F5DD: 86 AE
L_F5DF:   STY   $AF          ; $F5DF: 84 AF
L_F5E1:   TAX                ; $F5E1: AA
L_F5E2:   LDA   $00,X        ; $F5E2: B5 00
L_F5E4:   STA   $C1          ; $F5E4: 85 C1
L_F5E6:   LDA   $01,X        ; $F5E6: B5 01
L_F5E8:   STA   $C2          ; $F5E8: 85 C2
L_F5EA:   JMP   ($0332)      ; $F5EA: 6C 32 03
L_F5ED:   LDA   $BA          ; $F5ED: A5 BA
L_F5EF:   BNE   $F5F4        ; $F5EF: D0 03
L_F5F1:   JMP   $F713        ; $F5F1: 4C 13 F7
L_F5F4:   CMP   #$03         ; $F5F4: C9 03
L_F5F6:   BEQ   $F5F1        ; $F5F6: F0 F9
L_F5F8:   BCC   $F659        ; $F5F8: 90 5F
L_F5FA:   LDA   #$61         ; $F5FA: A9 61
L_F5FC:   STA   $B9          ; $F5FC: 85 B9
L_F5FE:   LDY   $B7          ; $F5FE: A4 B7
L_F600:   BNE   $F605        ; $F600: D0 03
L_F602:   JMP   $F710        ; $F602: 4C 10 F7
L_F605:   JSR   $F3D5        ; $F605: 20 D5 F3
L_F608:   JSR   $F68F        ; $F608: 20 8F F6
L_F60B:   LDA   $BA          ; $F60B: A5 BA
L_F60D:   JSR   $ED0C        ; $F60D: 20 0C ED
L_F610:   LDA   $B9          ; $F610: A5 B9
L_F612:   JSR   $EDB9        ; $F612: 20 B9 ED
L_F615:   LDY   #$00         ; $F615: A0 00
L_F617:   JSR   $FB8E        ; $F617: 20 8E FB
L_F61A:   LDA   $AC          ; $F61A: A5 AC
L_F61C:   JSR   $EDDD        ; $F61C: 20 DD ED
L_F61F:   LDA   $AD          ; $F61F: A5 AD
L_F621:   JSR   $EDDD        ; $F621: 20 DD ED
L_F624:   JSR   $FCD1        ; $F624: 20 D1 FC
L_F627:   BCS   $F63F        ; $F627: B0 16
L_F629:   LDA   ($AC),Y      ; $F629: B1 AC
L_F62B:   JSR   $EDDD        ; $F62B: 20 DD ED
L_F62E:   JSR   $FFE1        ; $F62E: 20 E1 FF
L_F631:   BNE   $F63A        ; $F631: D0 07
L_F633:   JSR   $F642        ; $F633: 20 42 F6
L_F636:   LDA   #$00         ; $F636: A9 00
L_F638:   SEC                ; $F638: 38
L_F639:   RTS                ; $F639: 60
L_F63A:   JSR   $FCDB        ; $F63A: 20 DB FC
L_F63D:   BNE   $F624        ; $F63D: D0 E5
L_F63F:   JSR   $EDFE        ; $F63F: 20 FE ED
L_F642:   BIT   $B9          ; $F642: 24 B9
L_F644:   BMI   $F657        ; $F644: 30 11
L_F646:   LDA   $BA          ; $F646: A5 BA
L_F648:   JSR   $ED0C        ; $F648: 20 0C ED
L_F64B:   LDA   $B9          ; $F64B: A5 B9
L_F64D:   AND   #$EF         ; $F64D: 29 EF
L_F64F:   ORA   #$E0         ; $F64F: 09 E0
L_F651:   JSR   $EDB9        ; $F651: 20 B9 ED
L_F654:   JSR   $EDFE        ; $F654: 20 FE ED
L_F657:   CLC                ; $F657: 18
L_F658:   RTS                ; $F658: 60
L_F659:   LSR   A            ; $F659: 4A
L_F65A:   BCS   $F65F        ; $F65A: B0 03
L_F65C:   JMP   $F713        ; $F65C: 4C 13 F7
L_F65F:   JSR   $F7D0        ; $F65F: 20 D0 F7
L_F662:   BCC   $F5F1        ; $F662: 90 8D
L_F664:   JSR   $F838        ; $F664: 20 38 F8
L_F667:   BCS   $F68E        ; $F667: B0 25
L_F669:   JSR   $F68F        ; $F669: 20 8F F6
L_F66C:   LDX   #$03         ; $F66C: A2 03
L_F66E:   LDA   $B9          ; $F66E: A5 B9
L_F670:   AND   #$01         ; $F670: 29 01
L_F672:   BNE   $F676        ; $F672: D0 02
L_F674:   LDX   #$01         ; $F674: A2 01
L_F676:   TXA                ; $F676: 8A
L_F677:   JSR   $F76A        ; $F677: 20 6A F7
L_F67A:   BCS   $F68E        ; $F67A: B0 12
L_F67C:   JSR   $F867        ; $F67C: 20 67 F8
L_F67F:   BCS   $F68E        ; $F67F: B0 0D
L_F681:   LDA   $B9          ; $F681: A5 B9
L_F683:   AND   #$02         ; $F683: 29 02
L_F685:   BEQ   $F68D        ; $F685: F0 06
L_F687:   LDA   #$05         ; $F687: A9 05
L_F689:   JSR   $F76A        ; $F689: 20 6A F7
L_F68C:   BIT   $18          ; $F68C: 24 18
L_F68E:   RTS                ; $F68E: 60
L_F68F:   LDA   $9D          ; $F68F: A5 9D
L_F691:   BPL   $F68E        ; $F691: 10 FB
L_F693:   LDY   #$51         ; $F693: A0 51
L_F695:   JSR   $F12F        ; $F695: 20 2F F1
L_F698:   JMP   $F5C1        ; $F698: 4C C1 F5
L_F69B:   LDX   #$00         ; $F69B: A2 00
L_F69D:   INC   $A2          ; $F69D: E6 A2
L_F69F:   BNE   $F6A7        ; $F69F: D0 06
L_F6A1:   INC   $A1          ; $F6A1: E6 A1
L_F6A3:   BNE   $F6A7        ; $F6A3: D0 02
L_F6A5:   INC   $A0          ; $F6A5: E6 A0
L_F6A7:   SEC                ; $F6A7: 38
L_F6A8:   LDA   $A2          ; $F6A8: A5 A2
L_F6AA:   SBC   #$01         ; $F6AA: E9 01
L_F6AC:   LDA   $A1          ; $F6AC: A5 A1
L_F6AE:   SBC   #$1A         ; $F6AE: E9 1A
L_F6B0:   LDA   $A0          ; $F6B0: A5 A0
L_F6B2:   SBC   #$4F         ; $F6B2: E9 4F
L_F6B4:   BCC   $F6BC        ; $F6B4: 90 06
L_F6B6:   STX   $A0          ; $F6B6: 86 A0
L_F6B8:   STX   $A1          ; $F6B8: 86 A1
L_F6BA:   STX   $A2          ; $F6BA: 86 A2
L_F6BC:   LDA   $DC01        ; $F6BC: AD 01 DC
L_F6BF:   CMP   $DC01        ; $F6BF: CD 01 DC
L_F6C2:   BNE   $F6BC        ; $F6C2: D0 F8
L_F6C4:   TAX                ; $F6C4: AA
L_F6C5:   BMI   $F6DA        ; $F6C5: 30 13
L_F6C7:   LDX   #$BD         ; $F6C7: A2 BD
L_F6C9:   STX   $DC00        ; $F6C9: 8E 00 DC
L_F6CC:   LDX   $DC01        ; $F6CC: AE 01 DC
L_F6CF:   CPX   $DC01        ; $F6CF: EC 01 DC
L_F6D2:   BNE   $F6CC        ; $F6D2: D0 F8
L_F6D4:   STA   $DC00        ; $F6D4: 8D 00 DC
L_F6D7:   INX                ; $F6D7: E8
L_F6D8:   BNE   $F6DC        ; $F6D8: D0 02
L_F6DA:   STA   $91          ; $F6DA: 85 91
L_F6DC:   RTS                ; $F6DC: 60
L_F6DD:   SEI                ; $F6DD: 78
L_F6DE:   LDA   $A2          ; $F6DE: A5 A2
L_F6E0:   LDX   $A1          ; $F6E0: A6 A1
L_F6E2:   LDY   $A0          ; $F6E2: A4 A0
L_F6E4:   SEI                ; $F6E4: 78
L_F6E5:   STA   $A2          ; $F6E5: 85 A2
L_F6E7:   STX   $A1          ; $F6E7: 86 A1
L_F6E9:   STY   $A0          ; $F6E9: 84 A0
L_F6EB:   CLI                ; $F6EB: 58
L_F6EC:   RTS                ; $F6EC: 60
L_F6ED:   LDA   $91          ; $F6ED: A5 91
L_F6EF:   CMP   #$7F         ; $F6EF: C9 7F
L_F6F1:   BNE   $F6FA        ; $F6F1: D0 07
L_F6F3:   PHP                ; $F6F3: 08
L_F6F4:   JSR   $FFCC        ; $F6F4: 20 CC FF
L_F6F7:   STA   $C6          ; $F6F7: 85 C6
L_F6F9:   PLP                ; $F6F9: 28
L_F6FA:   RTS                ; $F6FA: 60
L_F6FB:   LDA   #$01         ; $F6FB: A9 01
L_F6FD:   BIT   $02A9        ; $F6FD: 2C A9 02
L_F700:   BIT   $03A9        ; $F700: 2C A9 03
L_F703:   BIT   $04A9        ; $F703: 2C A9 04
L_F706:   BIT   $05A9        ; $F706: 2C A9 05
L_F709:   BIT   $06A9        ; $F709: 2C A9 06
L_F70C:   BIT   $07A9        ; $F70C: 2C A9 07
L_F70F:   BIT   $08A9        ; $F70F: 2C A9 08
L_F712:   BIT   $09A9        ; $F712: 2C A9 09
L_F715:   PHA                ; $F715: 48
L_F716:   JSR   $FFCC        ; $F716: 20 CC FF
L_F719:   LDY   #$00         ; $F719: A0 00
L_F71B:   BIT   $9D          ; $F71B: 24 9D
L_F71D:   BVC   $F729        ; $F71D: 50 0A
L_F71F:   JSR   $F12F        ; $F71F: 20 2F F1
L_F722:   PLA                ; $F722: 68
L_F723:   PHA                ; $F723: 48
L_F724:   ORA   #$30         ; $F724: 09 30
L_F726:   JSR   $FFD2        ; $F726: 20 D2 FF
L_F729:   PLA                ; $F729: 68
L_F72A:   SEC                ; $F72A: 38
L_F72B:   RTS                ; $F72B: 60
L_F72C:   LDA   $93          ; $F72C: A5 93
L_F72E:   PHA                ; $F72E: 48
L_F72F:   JSR   $F841        ; $F72F: 20 41 F8
L_F732:   PLA                ; $F732: 68
L_F733:   STA   $93          ; $F733: 85 93
L_F735:   BCS   $F769        ; $F735: B0 32
L_F737:   LDY   #$00         ; $F737: A0 00
L_F739:   LDA   ($B2),Y      ; $F739: B1 B2
L_F73B:   CMP   #$05         ; $F73B: C9 05
L_F73D:   BEQ   $F769        ; $F73D: F0 2A
L_F73F:   CMP   #$01         ; $F73F: C9 01
L_F741:   BEQ   $F74B        ; $F741: F0 08
L_F743:   CMP   #$03         ; $F743: C9 03
L_F745:   BEQ   $F74B        ; $F745: F0 04
L_F747:   CMP   #$04         ; $F747: C9 04
L_F749:   BNE   $F72C        ; $F749: D0 E1
L_F74B:   TAX                ; $F74B: AA
L_F74C:   BIT   $9D          ; $F74C: 24 9D
L_F74E:   BPL   $F767        ; $F74E: 10 17
L_F750:   LDY   #$63         ; $F750: A0 63
L_F752:   JSR   $F12F        ; $F752: 20 2F F1
L_F755:   LDY   #$05         ; $F755: A0 05
L_F757:   LDA   ($B2),Y      ; $F757: B1 B2
L_F759:   JSR   $FFD2        ; $F759: 20 D2 FF
L_F75C:   INY                ; $F75C: C8
L_F75D:   CPY   #$15         ; $F75D: C0 15
L_F75F:   BNE   $F757        ; $F75F: D0 F6
L_F761:   LDA   $A1          ; $F761: A5 A1
L_F763:   JSR   $E4E0        ; $F763: 20 E0 E4
L_F766:   NOP                ; $F766: EA
L_F767:   CLC                ; $F767: 18
L_F768:   DEY                ; $F768: 88
L_F769:   RTS                ; $F769: 60
L_F76A:   STA   $9E          ; $F76A: 85 9E
L_F76C:   JSR   $F7D0        ; $F76C: 20 D0 F7
L_F76F:   BCC   $F7CF        ; $F76F: 90 5E
L_F771:   LDA   $C2          ; $F771: A5 C2
L_F773:   PHA                ; $F773: 48
L_F774:   LDA   $C1          ; $F774: A5 C1
L_F776:   PHA                ; $F776: 48
L_F777:   LDA   $AF          ; $F777: A5 AF
L_F779:   PHA                ; $F779: 48
L_F77A:   LDA   $AE          ; $F77A: A5 AE
L_F77C:   PHA                ; $F77C: 48
L_F77D:   LDY   #$BF         ; $F77D: A0 BF
L_F77F:   LDA   #$20         ; $F77F: A9 20
L_F781:   STA   ($B2),Y      ; $F781: 91 B2
L_F783:   DEY                ; $F783: 88
L_F784:   BNE   $F781        ; $F784: D0 FB
L_F786:   LDA   $9E          ; $F786: A5 9E
L_F788:   STA   ($B2),Y      ; $F788: 91 B2
L_F78A:   INY                ; $F78A: C8
L_F78B:   LDA   $C1          ; $F78B: A5 C1
L_F78D:   STA   ($B2),Y      ; $F78D: 91 B2
L_F78F:   INY                ; $F78F: C8
L_F790:   LDA   $C2          ; $F790: A5 C2
L_F792:   STA   ($B2),Y      ; $F792: 91 B2
L_F794:   INY                ; $F794: C8
L_F795:   LDA   $AE          ; $F795: A5 AE
L_F797:   STA   ($B2),Y      ; $F797: 91 B2
L_F799:   INY                ; $F799: C8
L_F79A:   LDA   $AF          ; $F79A: A5 AF
L_F79C:   STA   ($B2),Y      ; $F79C: 91 B2
L_F79E:   INY                ; $F79E: C8
L_F79F:   STY   $9F          ; $F79F: 84 9F
L_F7A1:   LDY   #$00         ; $F7A1: A0 00
L_F7A3:   STY   $9E          ; $F7A3: 84 9E
L_F7A5:   LDY   $9E          ; $F7A5: A4 9E
L_F7A7:   CPY   $B7          ; $F7A7: C4 B7
L_F7A9:   BEQ   $F7B7        ; $F7A9: F0 0C
L_F7AB:   LDA   ($BB),Y      ; $F7AB: B1 BB
L_F7AD:   LDY   $9F          ; $F7AD: A4 9F
L_F7AF:   STA   ($B2),Y      ; $F7AF: 91 B2
L_F7B1:   INC   $9E          ; $F7B1: E6 9E
L_F7B3:   INC   $9F          ; $F7B3: E6 9F
L_F7B5:   BNE   $F7A5        ; $F7B5: D0 EE
L_F7B7:   JSR   $F7D7        ; $F7B7: 20 D7 F7
L_F7BA:   LDA   #$69         ; $F7BA: A9 69
L_F7BC:   STA   $AB          ; $F7BC: 85 AB
L_F7BE:   JSR   $F86B        ; $F7BE: 20 6B F8
L_F7C1:   TAY                ; $F7C1: A8
L_F7C2:   PLA                ; $F7C2: 68
L_F7C3:   STA   $AE          ; $F7C3: 85 AE
L_F7C5:   PLA                ; $F7C5: 68
L_F7C6:   STA   $AF          ; $F7C6: 85 AF
L_F7C8:   PLA                ; $F7C8: 68
L_F7C9:   STA   $C1          ; $F7C9: 85 C1
L_F7CB:   PLA                ; $F7CB: 68
L_F7CC:   STA   $C2          ; $F7CC: 85 C2
L_F7CE:   TYA                ; $F7CE: 98
L_F7CF:   RTS                ; $F7CF: 60
L_F7D0:   LDX   $B2          ; $F7D0: A6 B2
L_F7D2:   LDY   $B3          ; $F7D2: A4 B3
L_F7D4:   CPY   #$02         ; $F7D4: C0 02
L_F7D6:   RTS                ; $F7D6: 60
L_F7D7:   JSR   $F7D0        ; $F7D7: 20 D0 F7
L_F7DA:   TXA                ; $F7DA: 8A
L_F7DB:   STA   $C1          ; $F7DB: 85 C1
L_F7DD:   CLC                ; $F7DD: 18
L_F7DE:   ADC   #$C0         ; $F7DE: 69 C0
L_F7E0:   STA   $AE          ; $F7E0: 85 AE
L_F7E2:   TYA                ; $F7E2: 98
L_F7E3:   STA   $C2          ; $F7E3: 85 C2
L_F7E5:   ADC   #$00         ; $F7E5: 69 00
L_F7E7:   STA   $AF          ; $F7E7: 85 AF
L_F7E9:   RTS                ; $F7E9: 60
L_F7EA:   JSR   $F72C        ; $F7EA: 20 2C F7
L_F7ED:   BCS   $F80C        ; $F7ED: B0 1D
L_F7EF:   LDY   #$05         ; $F7EF: A0 05
L_F7F1:   STY   $9F          ; $F7F1: 84 9F
L_F7F3:   LDY   #$00         ; $F7F3: A0 00
L_F7F5:   STY   $9E          ; $F7F5: 84 9E
L_F7F7:   CPY   $B7          ; $F7F7: C4 B7
L_F7F9:   BEQ   $F80B        ; $F7F9: F0 10
L_F7FB:   LDA   ($BB),Y      ; $F7FB: B1 BB
L_F7FD:   LDY   $9F          ; $F7FD: A4 9F
L_F7FF:   CMP   ($B2),Y      ; $F7FF: D1 B2
L_F801:   BNE   $F7EA        ; $F801: D0 E7
L_F803:   INC   $9E          ; $F803: E6 9E
L_F805:   INC   $9F          ; $F805: E6 9F
L_F807:   LDY   $9E          ; $F807: A4 9E
L_F809:   BNE   $F7F7        ; $F809: D0 EC
L_F80B:   CLC                ; $F80B: 18
L_F80C:   RTS                ; $F80C: 60
L_F80D:   JSR   $F7D0        ; $F80D: 20 D0 F7
L_F810:   INC   $A6          ; $F810: E6 A6
L_F812:   LDY   $A6          ; $F812: A4 A6
L_F814:   CPY   #$C0         ; $F814: C0 C0
L_F816:   RTS                ; $F816: 60
L_F817:   JSR   $F82E        ; $F817: 20 2E F8
L_F81A:   BEQ   $F836        ; $F81A: F0 1A
L_F81C:   LDY   #$1B         ; $F81C: A0 1B
L_F81E:   JSR   $F12B        ; $F81E: 20 2B F1
L_F821:   JSR   $F8D0        ; $F821: 20 D0 F8
L_F824:   JSR   $F82E        ; $F824: 20 2E F8
L_F827:   BNE   $F821        ; $F827: D0 F8
L_F829:   LDY   #$6A         ; $F829: A0 6A
L_F82B:   JMP   $F12B        ; $F82B: 4C 2B F1
L_F82E:   LDA   #$10         ; $F82E: A9 10
L_F830:   BIT   $01          ; $F830: 24 01
L_F832:   BNE   $F836        ; $F832: D0 02
L_F834:   BIT   $01          ; $F834: 24 01
L_F836:   CLC                ; $F836: 18
L_F837:   RTS                ; $F837: 60
L_F838:   JSR   $F82E        ; $F838: 20 2E F8
L_F83B:   BEQ   $F836        ; $F83B: F0 F9
L_F83D:   LDY   #$2E         ; $F83D: A0 2E
L_F83F:   BNE   $F81E        ; $F83F: D0 DD
L_F841:   LDA   #$00         ; $F841: A9 00
L_F843:   STA   $90          ; $F843: 85 90
L_F845:   STA   $93          ; $F845: 85 93
L_F847:   JSR   $F7D7        ; $F847: 20 D7 F7
L_F84A:   JSR   $F817        ; $F84A: 20 17 F8
L_F84D:   BCS   $F86E        ; $F84D: B0 1F
L_F84F:   SEI                ; $F84F: 78
L_F850:   LDA   #$00         ; $F850: A9 00
L_F852:   STA   $AA          ; $F852: 85 AA
L_F854:   STA   $B4          ; $F854: 85 B4
L_F856:   STA   $B0          ; $F856: 85 B0
L_F858:   STA   $9E          ; $F858: 85 9E
L_F85A:   STA   $9F          ; $F85A: 85 9F
L_F85C:   STA   $9C          ; $F85C: 85 9C
L_F85E:   LDA   #$90         ; $F85E: A9 90
L_F860:   LDX   #$0E         ; $F860: A2 0E
L_F862:   BNE   $F875        ; $F862: D0 11
L_F864:   JSR   $F7D7        ; $F864: 20 D7 F7
L_F867:   LDA   #$14         ; $F867: A9 14
L_F869:   STA   $AB          ; $F869: 85 AB
L_F86B:   JSR   $F838        ; $F86B: 20 38 F8
L_F86E:   BCS   $F8DC        ; $F86E: B0 6C
L_F870:   SEI                ; $F870: 78
L_F871:   LDA   #$82         ; $F871: A9 82
L_F873:   LDX   #$08         ; $F873: A2 08
L_F875:   LDY   #$7F         ; $F875: A0 7F
L_F877:   STY   $DC0D        ; $F877: 8C 0D DC
L_F87A:   STA   $DC0D        ; $F87A: 8D 0D DC
L_F87D:   LDA   $DC0E        ; $F87D: AD 0E DC
L_F880:   ORA   #$19         ; $F880: 09 19
L_F882:   STA   $DC0F        ; $F882: 8D 0F DC
L_F885:   AND   #$91         ; $F885: 29 91
L_F887:   STA   $02A2        ; $F887: 8D A2 02
L_F88A:   JSR   $F0A4        ; $F88A: 20 A4 F0
L_F88D:   LDA   $D011        ; $F88D: AD 11 D0
L_F890:   AND   #$EF         ; $F890: 29 EF
L_F892:   STA   $D011        ; $F892: 8D 11 D0
L_F895:   LDA   $0314        ; $F895: AD 14 03
L_F898:   STA   $029F        ; $F898: 8D 9F 02
L_F89B:   LDA   $0315        ; $F89B: AD 15 03
L_F89E:   STA   $02A0        ; $F89E: 8D A0 02
L_F8A1:   JSR   $FCBD        ; $F8A1: 20 BD FC
L_F8A4:   LDA   #$02         ; $F8A4: A9 02
L_F8A6:   STA   $BE          ; $F8A6: 85 BE
L_F8A8:   JSR   $FB97        ; $F8A8: 20 97 FB
L_F8AB:   LDA   $01          ; $F8AB: A5 01
L_F8AD:   AND   #$1F         ; $F8AD: 29 1F
L_F8AF:   STA   $01          ; $F8AF: 85 01
L_F8B1:   STA   $C0          ; $F8B1: 85 C0
L_F8B3:   LDX   #$FF         ; $F8B3: A2 FF
L_F8B5:   LDY   #$FF         ; $F8B5: A0 FF
L_F8B7:   DEY                ; $F8B7: 88
L_F8B8:   BNE   $F8B7        ; $F8B8: D0 FD
L_F8BA:   DEX                ; $F8BA: CA
L_F8BB:   BNE   $F8B5        ; $F8BB: D0 F8
L_F8BD:   CLI                ; $F8BD: 58
L_F8BE:   LDA   $02A0        ; $F8BE: AD A0 02
L_F8C1:   CMP   $0315        ; $F8C1: CD 15 03
L_F8C4:   CLC                ; $F8C4: 18
L_F8C5:   BEQ   $F8DC        ; $F8C5: F0 15
L_F8C7:   JSR   $F8D0        ; $F8C7: 20 D0 F8
L_F8CA:   JSR   $F6BC        ; $F8CA: 20 BC F6
L_F8CD:   JMP   $F8BE        ; $F8CD: 4C BE F8
L_F8D0:   JSR   $FFE1        ; $F8D0: 20 E1 FF
L_F8D3:   CLC                ; $F8D3: 18
L_F8D4:   BNE   $F8E1        ; $F8D4: D0 0B
L_F8D6:   JSR   $FC93        ; $F8D6: 20 93 FC
L_F8D9:   SEC                ; $F8D9: 38
L_F8DA:   PLA                ; $F8DA: 68
L_F8DB:   PLA                ; $F8DB: 68
L_F8DC:   LDA   #$00         ; $F8DC: A9 00
L_F8DE:   STA   $02A0        ; $F8DE: 8D A0 02
L_F8E1:   RTS                ; $F8E1: 60
L_F8E2:   STX   $B1          ; $F8E2: 86 B1
L_F8E4:   LDA   $B0          ; $F8E4: A5 B0
L_F8E6:   ASL   A            ; $F8E6: 0A
L_F8E7:   ASL   A            ; $F8E7: 0A
L_F8E8:   CLC                ; $F8E8: 18
L_F8E9:   ADC   $B0          ; $F8E9: 65 B0
L_F8EB:   CLC                ; $F8EB: 18
L_F8EC:   ADC   $B1          ; $F8EC: 65 B1
L_F8EE:   STA   $B1          ; $F8EE: 85 B1
L_F8F0:   LDA   #$00         ; $F8F0: A9 00
L_F8F2:   BIT   $B0          ; $F8F2: 24 B0
L_F8F4:   BMI   $F8F7        ; $F8F4: 30 01
L_F8F6:   ROL   A            ; $F8F6: 2A
L_F8F7:   ASL   $B1          ; $F8F7: 06 B1
L_F8F9:   ROL   A            ; $F8F9: 2A
L_F8FA:   ASL   $B1          ; $F8FA: 06 B1
L_F8FC:   ROL   A            ; $F8FC: 2A
L_F8FD:   TAX                ; $F8FD: AA
L_F8FE:   LDA   $DC06        ; $F8FE: AD 06 DC
L_F901:   CMP   #$16         ; $F901: C9 16
L_F903:   BCC   $F8FE        ; $F903: 90 F9
L_F905:   ADC   $B1          ; $F905: 65 B1
L_F907:   STA   $DC04        ; $F907: 8D 04 DC
L_F90A:   TXA                ; $F90A: 8A
L_F90B:   ADC   $DC07        ; $F90B: 6D 07 DC
L_F90E:   STA   $DC05        ; $F90E: 8D 05 DC
L_F911:   LDA   $02A2        ; $F911: AD A2 02
L_F914:   STA   $DC0E        ; $F914: 8D 0E DC
L_F917:   STA   $02A4        ; $F917: 8D A4 02
L_F91A:   LDA   $DC0D        ; $F91A: AD 0D DC
L_F91D:   AND   #$10         ; $F91D: 29 10
L_F91F:   BEQ   $F92A        ; $F91F: F0 09
L_F921:   LDA   #$F9         ; $F921: A9 F9
L_F923:   PHA                ; $F923: 48
L_F924:   LDA   #$2A         ; $F924: A9 2A
L_F926:   PHA                ; $F926: 48
L_F927:   JMP   $FF43        ; $F927: 4C 43 FF
L_F92A:   CLI                ; $F92A: 58
L_F92B:   RTS                ; $F92B: 60
L_F92C:   LDX   $DC07        ; $F92C: AE 07 DC
L_F92F:   LDY   #$FF         ; $F92F: A0 FF
L_F931:   TYA                ; $F931: 98
L_F932:   SBC   $DC06        ; $F932: ED 06 DC
L_F935:   CPX   $DC07        ; $F935: EC 07 DC
L_F938:   BNE   $F92C        ; $F938: D0 F2
L_F93A:   STX   $B1          ; $F93A: 86 B1
L_F93C:   TAX                ; $F93C: AA
L_F93D:   STY   $DC06        ; $F93D: 8C 06 DC
L_F940:   STY   $DC07        ; $F940: 8C 07 DC
L_F943:   LDA   #$19         ; $F943: A9 19
L_F945:   STA   $DC0F        ; $F945: 8D 0F DC
L_F948:   LDA   $DC0D        ; $F948: AD 0D DC
L_F94B:   STA   $02A3        ; $F94B: 8D A3 02
L_F94E:   TYA                ; $F94E: 98
L_F94F:   SBC   $B1          ; $F94F: E5 B1
L_F951:   STX   $B1          ; $F951: 86 B1
L_F953:   LSR   A            ; $F953: 4A
L_F954:   ROR   $B1          ; $F954: 66 B1
L_F956:   LSR   A            ; $F956: 4A
L_F957:   ROR   $B1          ; $F957: 66 B1
L_F959:   LDA   $B0          ; $F959: A5 B0
L_F95B:   CLC                ; $F95B: 18
L_F95C:   ADC   #$3C         ; $F95C: 69 3C
L_F95E:   CMP   $B1          ; $F95E: C5 B1
L_F960:   BCS   $F9AC        ; $F960: B0 4A
L_F962:   LDX   $9C          ; $F962: A6 9C
L_F964:   BEQ   $F969        ; $F964: F0 03
L_F966:   JMP   $FA60        ; $F966: 4C 60 FA
L_F969:   LDX   $A3          ; $F969: A6 A3
L_F96B:   BMI   $F988        ; $F96B: 30 1B
L_F96D:   LDX   #$00         ; $F96D: A2 00
L_F96F:   ADC   #$30         ; $F96F: 69 30
L_F971:   ADC   $B0          ; $F971: 65 B0
L_F973:   CMP   $B1          ; $F973: C5 B1
L_F975:   BCS   $F993        ; $F975: B0 1C
L_F977:   INX                ; $F977: E8
L_F978:   ADC   #$26         ; $F978: 69 26
L_F97A:   ADC   $B0          ; $F97A: 65 B0
L_F97C:   CMP   $B1          ; $F97C: C5 B1
L_F97E:   BCS   $F997        ; $F97E: B0 17
L_F980:   ADC   #$2C         ; $F980: 69 2C
L_F982:   ADC   $B0          ; $F982: 65 B0
L_F984:   CMP   $B1          ; $F984: C5 B1
L_F986:   BCC   $F98B        ; $F986: 90 03
L_F988:   JMP   $FA10        ; $F988: 4C 10 FA
L_F98B:   LDA   $B4          ; $F98B: A5 B4
L_F98D:   BEQ   $F9AC        ; $F98D: F0 1D
L_F98F:   STA   $A8          ; $F98F: 85 A8
L_F991:   BNE   $F9AC        ; $F991: D0 19
L_F993:   INC   $A9          ; $F993: E6 A9
L_F995:   BCS   $F999        ; $F995: B0 02
L_F997:   DEC   $A9          ; $F997: C6 A9
L_F999:   SEC                ; $F999: 38
L_F99A:   SBC   #$13         ; $F99A: E9 13
L_F99C:   SBC   $B1          ; $F99C: E5 B1
L_F99E:   ADC   $92          ; $F99E: 65 92
L_F9A0:   STA   $92          ; $F9A0: 85 92
L_F9A2:   LDA   $A4          ; $F9A2: A5 A4
L_F9A4:   EOR   #$01         ; $F9A4: 49 01
L_F9A6:   STA   $A4          ; $F9A6: 85 A4
L_F9A8:   BEQ   $F9D5        ; $F9A8: F0 2B
L_F9AA:   STX   $D7          ; $F9AA: 86 D7
L_F9AC:   LDA   $B4          ; $F9AC: A5 B4
L_F9AE:   BEQ   $F9D2        ; $F9AE: F0 22
L_F9B0:   LDA   $02A3        ; $F9B0: AD A3 02
L_F9B3:   AND   #$01         ; $F9B3: 29 01
L_F9B5:   BNE   $F9BC        ; $F9B5: D0 05
L_F9B7:   LDA   $02A4        ; $F9B7: AD A4 02
L_F9BA:   BNE   $F9D2        ; $F9BA: D0 16
L_F9BC:   LDA   #$00         ; $F9BC: A9 00
L_F9BE:   STA   $A4          ; $F9BE: 85 A4
L_F9C0:   STA   $02A4        ; $F9C0: 8D A4 02
L_F9C3:   LDA   $A3          ; $F9C3: A5 A3
L_F9C5:   BPL   $F9F7        ; $F9C5: 10 30
L_F9C7:   BMI   $F988        ; $F9C7: 30 BF
L_F9C9:   LDX   #$A6         ; $F9C9: A2 A6
L_F9CB:   JSR   $F8E2        ; $F9CB: 20 E2 F8
L_F9CE:   LDA   $9B          ; $F9CE: A5 9B
L_F9D0:   BNE   $F98B        ; $F9D0: D0 B9
L_F9D2:   JMP   $FEBC        ; $F9D2: 4C BC FE
L_F9D5:   LDA   $92          ; $F9D5: A5 92
L_F9D7:   BEQ   $F9E0        ; $F9D7: F0 07
L_F9D9:   BMI   $F9DE        ; $F9D9: 30 03
L_F9DB:   DEC   $B0          ; $F9DB: C6 B0
L_F9DD:   BIT   $B0E6        ; $F9DD: 2C E6 B0
L_F9E0:   LDA   #$00         ; $F9E0: A9 00
L_F9E2:   STA   $92          ; $F9E2: 85 92
L_F9E4:   CPX   $D7          ; $F9E4: E4 D7
L_F9E6:   BNE   $F9F7        ; $F9E6: D0 0F
L_F9E8:   TXA                ; $F9E8: 8A
L_F9E9:   BNE   $F98B        ; $F9E9: D0 A0
L_F9EB:   LDA   $A9          ; $F9EB: A5 A9
L_F9ED:   BMI   $F9AC        ; $F9ED: 30 BD
L_F9EF:   CMP   #$10         ; $F9EF: C9 10
L_F9F1:   BCC   $F9AC        ; $F9F1: 90 B9
L_F9F3:   STA   $96          ; $F9F3: 85 96
L_F9F5:   BCS   $F9AC        ; $F9F5: B0 B5
L_F9F7:   TXA                ; $F9F7: 8A
L_F9F8:   EOR   $9B          ; $F9F8: 45 9B
L_F9FA:   STA   $9B          ; $F9FA: 85 9B
L_F9FC:   LDA   $B4          ; $F9FC: A5 B4
L_F9FE:   BEQ   $F9D2        ; $F9FE: F0 D2
L_FA00:   DEC   $A3          ; $FA00: C6 A3
L_FA02:   BMI   $F9C9        ; $FA02: 30 C5
L_FA04:   LSR   $D7          ; $FA04: 46 D7
L_FA06:   ROR   $BF          ; $FA06: 66 BF
L_FA08:   LDX   #$DA         ; $FA08: A2 DA
L_FA0A:   JSR   $F8E2        ; $FA0A: 20 E2 F8
L_FA0D:   JMP   $FEBC        ; $FA0D: 4C BC FE
L_FA10:   LDA   $96          ; $FA10: A5 96
L_FA12:   BEQ   $FA18        ; $FA12: F0 04
L_FA14:   LDA   $B4          ; $FA14: A5 B4
L_FA16:   BEQ   $FA1F        ; $FA16: F0 07
L_FA18:   LDA   $A3          ; $FA18: A5 A3
L_FA1A:   BMI   $FA1F        ; $FA1A: 30 03
L_FA1C:   JMP   $F997        ; $FA1C: 4C 97 F9
L_FA1F:   LSR   $B1          ; $FA1F: 46 B1
L_FA21:   LDA   #$93         ; $FA21: A9 93
L_FA23:   SEC                ; $FA23: 38
L_FA24:   SBC   $B1          ; $FA24: E5 B1
L_FA26:   ADC   $B0          ; $FA26: 65 B0
L_FA28:   ASL   A            ; $FA28: 0A
L_FA29:   TAX                ; $FA29: AA
L_FA2A:   JSR   $F8E2        ; $FA2A: 20 E2 F8
L_FA2D:   INC   $9C          ; $FA2D: E6 9C
L_FA2F:   LDA   $B4          ; $FA2F: A5 B4
L_FA31:   BNE   $FA44        ; $FA31: D0 11
L_FA33:   LDA   $96          ; $FA33: A5 96
L_FA35:   BEQ   $FA5D        ; $FA35: F0 26
L_FA37:   STA   $A8          ; $FA37: 85 A8
L_FA39:   LDA   #$00         ; $FA39: A9 00
L_FA3B:   STA   $96          ; $FA3B: 85 96
L_FA3D:   LDA   #$81         ; $FA3D: A9 81
L_FA3F:   STA   $DC0D        ; $FA3F: 8D 0D DC
L_FA42:   STA   $B4          ; $FA42: 85 B4
L_FA44:   LDA   $96          ; $FA44: A5 96
L_FA46:   STA   $B5          ; $FA46: 85 B5
L_FA48:   BEQ   $FA53        ; $FA48: F0 09
L_FA4A:   LDA   #$00         ; $FA4A: A9 00
L_FA4C:   STA   $B4          ; $FA4C: 85 B4
L_FA4E:   LDA   #$01         ; $FA4E: A9 01
L_FA50:   STA   $DC0D        ; $FA50: 8D 0D DC
L_FA53:   LDA   $BF          ; $FA53: A5 BF
L_FA55:   STA   $BD          ; $FA55: 85 BD
L_FA57:   LDA   $A8          ; $FA57: A5 A8
L_FA59:   ORA   $A9          ; $FA59: 05 A9
L_FA5B:   STA   $B6          ; $FA5B: 85 B6
L_FA5D:   JMP   $FEBC        ; $FA5D: 4C BC FE
L_FA60:   JSR   $FB97        ; $FA60: 20 97 FB
L_FA63:   STA   $9C          ; $FA63: 85 9C
L_FA65:   LDX   #$DA         ; $FA65: A2 DA
L_FA67:   JSR   $F8E2        ; $FA67: 20 E2 F8
L_FA6A:   LDA   $BE          ; $FA6A: A5 BE
L_FA6C:   BEQ   $FA70        ; $FA6C: F0 02
L_FA6E:   STA   $A7          ; $FA6E: 85 A7
L_FA70:   LDA   #$0F         ; $FA70: A9 0F
L_FA72:   BIT   $AA          ; $FA72: 24 AA
L_FA74:   BPL   $FA8D        ; $FA74: 10 17
L_FA76:   LDA   $B5          ; $FA76: A5 B5
L_FA78:   BNE   $FA86        ; $FA78: D0 0C
L_FA7A:   LDX   $BE          ; $FA7A: A6 BE
L_FA7C:   DEX                ; $FA7C: CA
L_FA7D:   BNE   $FA8A        ; $FA7D: D0 0B
L_FA7F:   LDA   #$08         ; $FA7F: A9 08
L_FA81:   JSR   $FE1C        ; $FA81: 20 1C FE
L_FA84:   BNE   $FA8A        ; $FA84: D0 04
L_FA86:   LDA   #$00         ; $FA86: A9 00
L_FA88:   STA   $AA          ; $FA88: 85 AA
L_FA8A:   JMP   $FEBC        ; $FA8A: 4C BC FE
L_FA8D:   BVS   $FAC0        ; $FA8D: 70 31
L_FA8F:   BNE   $FAA9        ; $FA8F: D0 18
L_FA91:   LDA   $B5          ; $FA91: A5 B5
L_FA93:   BNE   $FA8A        ; $FA93: D0 F5
L_FA95:   LDA   $B6          ; $FA95: A5 B6
L_FA97:   BNE   $FA8A        ; $FA97: D0 F1
L_FA99:   LDA   $A7          ; $FA99: A5 A7
L_FA9B:   LSR   A            ; $FA9B: 4A
L_FA9C:   LDA   $BD          ; $FA9C: A5 BD
L_FA9E:   BMI   $FAA3        ; $FA9E: 30 03
L_FAA0:   BCC   $FABA        ; $FAA0: 90 18
L_FAA2:   CLC                ; $FAA2: 18
L_FAA3:   BCS   $FABA        ; $FAA3: B0 15
L_FAA5:   AND   #$0F         ; $FAA5: 29 0F
L_FAA7:   STA   $AA          ; $FAA7: 85 AA
L_FAA9:   DEC   $AA          ; $FAA9: C6 AA
L_FAAB:   BNE   $FA8A        ; $FAAB: D0 DD
L_FAAD:   LDA   #$40         ; $FAAD: A9 40
L_FAAF:   STA   $AA          ; $FAAF: 85 AA
L_FAB1:   JSR   $FB8E        ; $FAB1: 20 8E FB
L_FAB4:   LDA   #$00         ; $FAB4: A9 00
L_FAB6:   STA   $AB          ; $FAB6: 85 AB
L_FAB8:   BEQ   $FA8A        ; $FAB8: F0 D0
L_FABA:   LDA   #$80         ; $FABA: A9 80
L_FABC:   STA   $AA          ; $FABC: 85 AA
L_FABE:   BNE   $FA8A        ; $FABE: D0 CA
L_FAC0:   LDA   $B5          ; $FAC0: A5 B5
L_FAC2:   BEQ   $FACE        ; $FAC2: F0 0A
L_FAC4:   LDA   #$04         ; $FAC4: A9 04
L_FAC6:   JSR   $FE1C        ; $FAC6: 20 1C FE
L_FAC9:   LDA   #$00         ; $FAC9: A9 00
L_FACB:   JMP   $FB4A        ; $FACB: 4C 4A FB
L_FACE:   JSR   $FCD1        ; $FACE: 20 D1 FC
L_FAD1:   BCC   $FAD6        ; $FAD1: 90 03
L_FAD3:   JMP   $FB48        ; $FAD3: 4C 48 FB
L_FAD6:   LDX   $A7          ; $FAD6: A6 A7
L_FAD8:   DEX                ; $FAD8: CA
L_FAD9:   BEQ   $FB08        ; $FAD9: F0 2D
L_FADB:   LDA   $93          ; $FADB: A5 93
L_FADD:   BEQ   $FAEB        ; $FADD: F0 0C
L_FADF:   LDY   #$00         ; $FADF: A0 00
L_FAE1:   LDA   $BD          ; $FAE1: A5 BD
L_FAE3:   CMP   ($AC),Y      ; $FAE3: D1 AC
L_FAE5:   BEQ   $FAEB        ; $FAE5: F0 04
L_FAE7:   LDA   #$01         ; $FAE7: A9 01
L_FAE9:   STA   $B6          ; $FAE9: 85 B6
L_FAEB:   LDA   $B6          ; $FAEB: A5 B6
L_FAED:   BEQ   $FB3A        ; $FAED: F0 4B
L_FAEF:   LDX   #$3D         ; $FAEF: A2 3D
L_FAF1:   CPX   $9E          ; $FAF1: E4 9E
L_FAF3:   BCC   $FB33        ; $FAF3: 90 3E
L_FAF5:   LDX   $9E          ; $FAF5: A6 9E
L_FAF7:   LDA   $AD          ; $FAF7: A5 AD
L_FAF9:   STA   $0101,X      ; $FAF9: 9D 01 01
L_FAFC:   LDA   $AC          ; $FAFC: A5 AC
L_FAFE:   STA   $0100,X      ; $FAFE: 9D 00 01
L_FB01:   INX                ; $FB01: E8
L_FB02:   INX                ; $FB02: E8
L_FB03:   STX   $9E          ; $FB03: 86 9E
L_FB05:   JMP   $FB3A        ; $FB05: 4C 3A FB
L_FB08:   LDX   $9F          ; $FB08: A6 9F
L_FB0A:   CPX   $9E          ; $FB0A: E4 9E
L_FB0C:   BEQ   $FB43        ; $FB0C: F0 35
L_FB0E:   LDA   $AC          ; $FB0E: A5 AC
L_FB10:   CMP   $0100,X      ; $FB10: DD 00 01
L_FB13:   BNE   $FB43        ; $FB13: D0 2E
L_FB15:   LDA   $AD          ; $FB15: A5 AD
L_FB17:   CMP   $0101,X      ; $FB17: DD 01 01
L_FB1A:   BNE   $FB43        ; $FB1A: D0 27
L_FB1C:   INC   $9F          ; $FB1C: E6 9F
L_FB1E:   INC   $9F          ; $FB1E: E6 9F
L_FB20:   LDA   $93          ; $FB20: A5 93
L_FB22:   BEQ   $FB2F        ; $FB22: F0 0B
L_FB24:   LDA   $BD          ; $FB24: A5 BD
L_FB26:   LDY   #$00         ; $FB26: A0 00
L_FB28:   CMP   ($AC),Y      ; $FB28: D1 AC
L_FB2A:   BEQ   $FB43        ; $FB2A: F0 17
L_FB2C:   INY                ; $FB2C: C8
L_FB2D:   STY   $B6          ; $FB2D: 84 B6
L_FB2F:   LDA   $B6          ; $FB2F: A5 B6
L_FB31:   BEQ   $FB3A        ; $FB31: F0 07
L_FB33:   LDA   #$10         ; $FB33: A9 10
L_FB35:   JSR   $FE1C        ; $FB35: 20 1C FE
L_FB38:   BNE   $FB43        ; $FB38: D0 09
L_FB3A:   LDA   $93          ; $FB3A: A5 93
L_FB3C:   BNE   $FB43        ; $FB3C: D0 05
L_FB3E:   TAY                ; $FB3E: A8
L_FB3F:   LDA   $BD          ; $FB3F: A5 BD
L_FB41:   STA   ($AC),Y      ; $FB41: 91 AC
L_FB43:   JSR   $FCDB        ; $FB43: 20 DB FC
L_FB46:   BNE   $FB8B        ; $FB46: D0 43
L_FB48:   LDA   #$80         ; $FB48: A9 80
L_FB4A:   STA   $AA          ; $FB4A: 85 AA
L_FB4C:   SEI                ; $FB4C: 78
L_FB4D:   LDX   #$01         ; $FB4D: A2 01
L_FB4F:   STX   $DC0D        ; $FB4F: 8E 0D DC
L_FB52:   LDX   $DC0D        ; $FB52: AE 0D DC
L_FB55:   LDX   $BE          ; $FB55: A6 BE
L_FB57:   DEX                ; $FB57: CA
L_FB58:   BMI   $FB5C        ; $FB58: 30 02
L_FB5A:   STX   $BE          ; $FB5A: 86 BE
L_FB5C:   DEC   $A7          ; $FB5C: C6 A7
L_FB5E:   BEQ   $FB68        ; $FB5E: F0 08
L_FB60:   LDA   $9E          ; $FB60: A5 9E
L_FB62:   BNE   $FB8B        ; $FB62: D0 27
L_FB64:   STA   $BE          ; $FB64: 85 BE
L_FB66:   BEQ   $FB8B        ; $FB66: F0 23
L_FB68:   JSR   $FC93        ; $FB68: 20 93 FC
L_FB6B:   JSR   $FB8E        ; $FB6B: 20 8E FB
L_FB6E:   LDY   #$00         ; $FB6E: A0 00
L_FB70:   STY   $AB          ; $FB70: 84 AB
L_FB72:   LDA   ($AC),Y      ; $FB72: B1 AC
L_FB74:   EOR   $AB          ; $FB74: 45 AB
L_FB76:   STA   $AB          ; $FB76: 85 AB
L_FB78:   JSR   $FCDB        ; $FB78: 20 DB FC
L_FB7B:   JSR   $FCD1        ; $FB7B: 20 D1 FC
L_FB7E:   BCC   $FB72        ; $FB7E: 90 F2
L_FB80:   LDA   $AB          ; $FB80: A5 AB
L_FB82:   EOR   $BD          ; $FB82: 45 BD
L_FB84:   BEQ   $FB8B        ; $FB84: F0 05
L_FB86:   LDA   #$20         ; $FB86: A9 20
L_FB88:   JSR   $FE1C        ; $FB88: 20 1C FE
L_FB8B:   JMP   $FEBC        ; $FB8B: 4C BC FE
L_FB8E:   LDA   $C2          ; $FB8E: A5 C2
L_FB90:   STA   $AD          ; $FB90: 85 AD
L_FB92:   LDA   $C1          ; $FB92: A5 C1
L_FB94:   STA   $AC          ; $FB94: 85 AC
L_FB96:   RTS                ; $FB96: 60
L_FB97:   LDA   #$08         ; $FB97: A9 08
L_FB99:   STA   $A3          ; $FB99: 85 A3
L_FB9B:   LDA   #$00         ; $FB9B: A9 00
L_FB9D:   STA   $A4          ; $FB9D: 85 A4
L_FB9F:   STA   $A8          ; $FB9F: 85 A8
L_FBA1:   STA   $9B          ; $FBA1: 85 9B
L_FBA3:   STA   $A9          ; $FBA3: 85 A9
L_FBA5:   RTS                ; $FBA5: 60
L_FBA6:   LDA   $BD          ; $FBA6: A5 BD
L_FBA8:   LSR   A            ; $FBA8: 4A
L_FBA9:   LDA   #$60         ; $FBA9: A9 60
L_FBAB:   BCC   $FBAF        ; $FBAB: 90 02
L_FBAD:   LDA   #$B0         ; $FBAD: A9 B0
L_FBAF:   LDX   #$00         ; $FBAF: A2 00
L_FBB1:   STA   $DC06        ; $FBB1: 8D 06 DC
L_FBB4:   STX   $DC07        ; $FBB4: 8E 07 DC
L_FBB7:   LDA   $DC0D        ; $FBB7: AD 0D DC
L_FBBA:   LDA   #$19         ; $FBBA: A9 19
L_FBBC:   STA   $DC0F        ; $FBBC: 8D 0F DC
L_FBBF:   LDA   $01          ; $FBBF: A5 01
L_FBC1:   EOR   #$08         ; $FBC1: 49 08
L_FBC3:   STA   $01          ; $FBC3: 85 01
L_FBC5:   AND   #$08         ; $FBC5: 29 08
L_FBC7:   RTS                ; $FBC7: 60
L_FBC8:   SEC                ; $FBC8: 38
L_FBC9:   ROR   $B6          ; $FBC9: 66 B6
L_FBCB:   BMI   $FC09        ; $FBCB: 30 3C
L_FBCD:   LDA   $A8          ; $FBCD: A5 A8
L_FBCF:   BNE   $FBE3        ; $FBCF: D0 12
L_FBD1:   LDA   #$10         ; $FBD1: A9 10
L_FBD3:   LDX   #$01         ; $FBD3: A2 01
L_FBD5:   JSR   $FBB1        ; $FBD5: 20 B1 FB
L_FBD8:   BNE   $FC09        ; $FBD8: D0 2F
L_FBDA:   INC   $A8          ; $FBDA: E6 A8
L_FBDC:   LDA   $B6          ; $FBDC: A5 B6
L_FBDE:   BPL   $FC09        ; $FBDE: 10 29
L_FBE0:   JMP   $FC57        ; $FBE0: 4C 57 FC
L_FBE3:   LDA   $A9          ; $FBE3: A5 A9
L_FBE5:   BNE   $FBF0        ; $FBE5: D0 09
L_FBE7:   JSR   $FBAD        ; $FBE7: 20 AD FB
L_FBEA:   BNE   $FC09        ; $FBEA: D0 1D
L_FBEC:   INC   $A9          ; $FBEC: E6 A9
L_FBEE:   BNE   $FC09        ; $FBEE: D0 19
L_FBF0:   JSR   $FBA6        ; $FBF0: 20 A6 FB
L_FBF3:   BNE   $FC09        ; $FBF3: D0 14
L_FBF5:   LDA   $A4          ; $FBF5: A5 A4
L_FBF7:   EOR   #$01         ; $FBF7: 49 01
L_FBF9:   STA   $A4          ; $FBF9: 85 A4
L_FBFB:   BEQ   $FC0C        ; $FBFB: F0 0F
L_FBFD:   LDA   $BD          ; $FBFD: A5 BD
L_FBFF:   EOR   #$01         ; $FBFF: 49 01
L_FC01:   STA   $BD          ; $FC01: 85 BD
L_FC03:   AND   #$01         ; $FC03: 29 01
L_FC05:   EOR   $9B          ; $FC05: 45 9B
L_FC07:   STA   $9B          ; $FC07: 85 9B
L_FC09:   JMP   $FEBC        ; $FC09: 4C BC FE
L_FC0C:   LSR   $BD          ; $FC0C: 46 BD
L_FC0E:   DEC   $A3          ; $FC0E: C6 A3
L_FC10:   LDA   $A3          ; $FC10: A5 A3
L_FC12:   BEQ   $FC4E        ; $FC12: F0 3A
L_FC14:   BPL   $FC09        ; $FC14: 10 F3
L_FC16:   JSR   $FB97        ; $FC16: 20 97 FB
L_FC19:   CLI                ; $FC19: 58
L_FC1A:   LDA   $A5          ; $FC1A: A5 A5
L_FC1C:   BEQ   $FC30        ; $FC1C: F0 12
L_FC1E:   LDX   #$00         ; $FC1E: A2 00
L_FC20:   STX   $D7          ; $FC20: 86 D7
L_FC22:   DEC   $A5          ; $FC22: C6 A5
L_FC24:   LDX   $BE          ; $FC24: A6 BE
L_FC26:   CPX   #$02         ; $FC26: E0 02
L_FC28:   BNE   $FC2C        ; $FC28: D0 02
L_FC2A:   ORA   #$80         ; $FC2A: 09 80
L_FC2C:   STA   $BD          ; $FC2C: 85 BD
L_FC2E:   BNE   $FC09        ; $FC2E: D0 D9
L_FC30:   JSR   $FCD1        ; $FC30: 20 D1 FC
L_FC33:   BCC   $FC3F        ; $FC33: 90 0A
L_FC35:   BNE   $FBC8        ; $FC35: D0 91
L_FC37:   INC   $AD          ; $FC37: E6 AD
L_FC39:   LDA   $D7          ; $FC39: A5 D7
L_FC3B:   STA   $BD          ; $FC3B: 85 BD
L_FC3D:   BCS   $FC09        ; $FC3D: B0 CA
L_FC3F:   LDY   #$00         ; $FC3F: A0 00
L_FC41:   LDA   ($AC),Y      ; $FC41: B1 AC
L_FC43:   STA   $BD          ; $FC43: 85 BD
L_FC45:   EOR   $D7          ; $FC45: 45 D7
L_FC47:   STA   $D7          ; $FC47: 85 D7
L_FC49:   JSR   $FCDB        ; $FC49: 20 DB FC
L_FC4C:   BNE   $FC09        ; $FC4C: D0 BB
L_FC4E:   LDA   $9B          ; $FC4E: A5 9B
L_FC50:   EOR   #$01         ; $FC50: 49 01
L_FC52:   STA   $BD          ; $FC52: 85 BD
L_FC54:   JMP   $FEBC        ; $FC54: 4C BC FE
L_FC57:   DEC   $BE          ; $FC57: C6 BE
L_FC59:   BNE   $FC5E        ; $FC59: D0 03
L_FC5B:   JSR   $FCCA        ; $FC5B: 20 CA FC
L_FC5E:   LDA   #$50         ; $FC5E: A9 50
L_FC60:   STA   $A7          ; $FC60: 85 A7
L_FC62:   LDX   #$08         ; $FC62: A2 08
L_FC64:   SEI                ; $FC64: 78
L_FC65:   JSR   $FCBD        ; $FC65: 20 BD FC
L_FC68:   BNE   $FC54        ; $FC68: D0 EA
L_FC6A:   LDA   #$78         ; $FC6A: A9 78
L_FC6C:   JSR   $FBAF        ; $FC6C: 20 AF FB
L_FC6F:   BNE   $FC54        ; $FC6F: D0 E3
L_FC71:   DEC   $A7          ; $FC71: C6 A7
L_FC73:   BNE   $FC54        ; $FC73: D0 DF
L_FC75:   JSR   $FB97        ; $FC75: 20 97 FB
L_FC78:   DEC   $AB          ; $FC78: C6 AB
L_FC7A:   BPL   $FC54        ; $FC7A: 10 D8
L_FC7C:   LDX   #$0A         ; $FC7C: A2 0A
L_FC7E:   JSR   $FCBD        ; $FC7E: 20 BD FC
L_FC81:   CLI                ; $FC81: 58
L_FC82:   INC   $AB          ; $FC82: E6 AB
L_FC84:   LDA   $BE          ; $FC84: A5 BE
L_FC86:   BEQ   $FCB8        ; $FC86: F0 30
L_FC88:   JSR   $FB8E        ; $FC88: 20 8E FB
L_FC8B:   LDX   #$09         ; $FC8B: A2 09
L_FC8D:   STX   $A5          ; $FC8D: 86 A5
L_FC8F:   STX   $B6          ; $FC8F: 86 B6
L_FC91:   BNE   $FC16        ; $FC91: D0 83
L_FC93:   PHP                ; $FC93: 08
L_FC94:   SEI                ; $FC94: 78
L_FC95:   LDA   $D011        ; $FC95: AD 11 D0
L_FC98:   ORA   #$10         ; $FC98: 09 10
L_FC9A:   STA   $D011        ; $FC9A: 8D 11 D0
L_FC9D:   JSR   $FCCA        ; $FC9D: 20 CA FC
L_FCA0:   LDA   #$7F         ; $FCA0: A9 7F
L_FCA2:   STA   $DC0D        ; $FCA2: 8D 0D DC
L_FCA5:   JSR   $FDDD        ; $FCA5: 20 DD FD
L_FCA8:   LDA   $02A0        ; $FCA8: AD A0 02
L_FCAB:   BEQ   $FCB6        ; $FCAB: F0 09
L_FCAD:   STA   $0315        ; $FCAD: 8D 15 03
L_FCB0:   LDA   $029F        ; $FCB0: AD 9F 02
L_FCB3:   STA   $0314        ; $FCB3: 8D 14 03
L_FCB6:   PLP                ; $FCB6: 28
L_FCB7:   RTS                ; $FCB7: 60
L_FCB8:   JSR   $FC93        ; $FCB8: 20 93 FC
L_FCBB:   BEQ   $FC54        ; $FCBB: F0 97
L_FCBD:   LDA   $FD93,X      ; $FCBD: BD 93 FD
L_FCC0:   STA   $0314        ; $FCC0: 8D 14 03
L_FCC3:   LDA   $FD94,X      ; $FCC3: BD 94 FD
L_FCC6:   STA   $0315        ; $FCC6: 8D 15 03
L_FCC9:   RTS                ; $FCC9: 60
L_FCCA:   LDA   $01          ; $FCCA: A5 01
L_FCCC:   ORA   #$20         ; $FCCC: 09 20
L_FCCE:   STA   $01          ; $FCCE: 85 01
L_FCD0:   RTS                ; $FCD0: 60
L_FCD1:   SEC                ; $FCD1: 38
L_FCD2:   LDA   $AC          ; $FCD2: A5 AC
L_FCD4:   SBC   $AE          ; $FCD4: E5 AE
L_FCD6:   LDA   $AD          ; $FCD6: A5 AD
L_FCD8:   SBC   $AF          ; $FCD8: E5 AF
L_FCDA:   RTS                ; $FCDA: 60
L_FCDB:   INC   $AC          ; $FCDB: E6 AC
L_FCDD:   BNE   $FCE1        ; $FCDD: D0 02
L_FCDF:   INC   $AD          ; $FCDF: E6 AD
L_FCE1:   RTS                ; $FCE1: 60
L_FCE2:   LDX   #$FF         ; $FCE2: A2 FF
L_FCE4:   SEI                ; $FCE4: 78
L_FCE5:   TXS                ; $FCE5: 9A
L_FCE6:   CLD                ; $FCE6: D8
L_FCE7:   JSR   $FD02        ; $FCE7: 20 02 FD
L_FCEA:   BNE   $FCEF        ; $FCEA: D0 03
L_FCEC:   JMP   ($8000)      ; $FCEC: 6C 00 80
L_FCEF:   STX   $D016        ; $FCEF: 8E 16 D0
L_FCF2:   JSR   $FDA3        ; $FCF2: 20 A3 FD
L_FCF5:   JSR   $FD50        ; $FCF5: 20 50 FD
L_FCF8:   JSR   $FD15        ; $FCF8: 20 15 FD
L_FCFB:   JSR   $FF5B        ; $FCFB: 20 5B FF
L_FCFE:   CLI                ; $FCFE: 58
L_FCFF:   JMP   ($A000)      ; $FCFF: 6C 00 A0
L_FD02:   LDX   #$05         ; $FD02: A2 05
L_FD04:   LDA   $FD0F,X      ; $FD04: BD 0F FD
L_FD07:   CMP   $8003,X      ; $FD07: DD 03 80
L_FD0A:   BNE   $FD0F        ; $FD0A: D0 03
L_FD0C:   DEX                ; $FD0C: CA
L_FD0D:   BNE   $FD04        ; $FD0D: D0 F5
L_FD0F:   .byte $60       ; $FD0F
L_FD10:   .byte $C3       ; $FD10
L_FD11:   .byte $C2       ; $FD11
L_FD12:   .byte $CD       ; $FD12
L_FD13:   .byte $38       ; $FD13
L_FD14:   .byte $30       ; $FD14
L_FD15:   LDX   #$30         ; $FD15: A2 30
L_FD17:   LDY   #$FD         ; $FD17: A0 FD
L_FD19:   CLC                ; $FD19: 18
L_FD1A:   STX   $C3          ; $FD1A: 86 C3
L_FD1C:   STY   $C4          ; $FD1C: 84 C4
L_FD1E:   LDY   #$1F         ; $FD1E: A0 1F
L_FD20:   LDA   $0314,Y      ; $FD20: B9 14 03
L_FD23:   BCS   $FD27        ; $FD23: B0 02
L_FD25:   LDA   ($C3),Y      ; $FD25: B1 C3
L_FD27:   STA   ($C3),Y      ; $FD27: 91 C3
L_FD29:   STA   $0314,Y      ; $FD29: 99 14 03
L_FD2C:   DEY                ; $FD2C: 88
L_FD2D:   BPL   $FD20        ; $FD2D: 10 F1
L_FD2F:   RTS                ; $FD2F: 60
L_FD30:   .byte $31       ; $FD30
L_FD31:   .byte $EA       ; $FD31
L_FD32:   .byte $66       ; $FD32
L_FD33:   .byte $FE       ; $FD33
L_FD34:   .byte $47       ; $FD34
L_FD35:   .byte $FE       ; $FD35
L_FD36:   .byte $4A       ; $FD36
L_FD37:   .byte $F3       ; $FD37
L_FD38:   .byte $91       ; $FD38
L_FD39:   .byte $F2       ; $FD39
L_FD3A:   .byte $0E       ; $FD3A
L_FD3B:   .byte $F2       ; $FD3B
L_FD3C:   .byte $50       ; $FD3C
L_FD3D:   .byte $F2       ; $FD3D
L_FD3E:   .byte $33       ; $FD3E
L_FD3F:   .byte $F3       ; $FD3F
L_FD40:   .byte $57       ; $FD40
L_FD41:   .byte $F1       ; $FD41
L_FD42:   .byte $CA       ; $FD42
L_FD43:   .byte $F1       ; $FD43
L_FD44:   .byte $ED       ; $FD44
L_FD45:   .byte $F6       ; $FD45
L_FD46:   .byte $3E       ; $FD46
L_FD47:   .byte $F1       ; $FD47
L_FD48:   .byte $2F       ; $FD48
L_FD49:   .byte $F3       ; $FD49
L_FD4A:   .byte $66       ; $FD4A
L_FD4B:   .byte $FE       ; $FD4B
L_FD4C:   .byte $A5       ; $FD4C
L_FD4D:   .byte $F4       ; $FD4D
L_FD4E:   .byte $ED       ; $FD4E
L_FD4F:   .byte $F5       ; $FD4F
L_FD50:   LDA   #$00         ; $FD50: A9 00
L_FD52:   TAY                ; $FD52: A8
L_FD53:   STA   $0002,Y      ; $FD53: 99 02 00
L_FD56:   STA   $0200,Y      ; $FD56: 99 00 02
L_FD59:   STA   $0300,Y      ; $FD59: 99 00 03
L_FD5C:   INY                ; $FD5C: C8
L_FD5D:   BNE   $FD53        ; $FD5D: D0 F4
L_FD5F:   LDX   #$3C         ; $FD5F: A2 3C
L_FD61:   LDY   #$03         ; $FD61: A0 03
L_FD63:   STX   $B2          ; $FD63: 86 B2
L_FD65:   STY   $B3          ; $FD65: 84 B3
L_FD67:   TAY                ; $FD67: A8
L_FD68:   LDA   #$03         ; $FD68: A9 03
L_FD6A:   STA   $C2          ; $FD6A: 85 C2
L_FD6C:   INC   $C2          ; $FD6C: E6 C2
L_FD6E:   LDA   ($C1),Y      ; $FD6E: B1 C1
L_FD70:   TAX                ; $FD70: AA
L_FD71:   LDA   #$55         ; $FD71: A9 55
L_FD73:   STA   ($C1),Y      ; $FD73: 91 C1
L_FD75:   CMP   ($C1),Y      ; $FD75: D1 C1
L_FD77:   BNE   $FD88        ; $FD77: D0 0F
L_FD79:   ROL   A            ; $FD79: 2A
L_FD7A:   STA   ($C1),Y      ; $FD7A: 91 C1
L_FD7C:   CMP   ($C1),Y      ; $FD7C: D1 C1
L_FD7E:   BNE   $FD88        ; $FD7E: D0 08
L_FD80:   TXA                ; $FD80: 8A
L_FD81:   STA   ($C1),Y      ; $FD81: 91 C1
L_FD83:   INY                ; $FD83: C8
L_FD84:   BNE   $FD6E        ; $FD84: D0 E8
L_FD86:   BEQ   $FD6C        ; $FD86: F0 E4
L_FD88:   TYA                ; $FD88: 98
L_FD89:   TAX                ; $FD89: AA
L_FD8A:   LDY   $C2          ; $FD8A: A4 C2
L_FD8C:   CLC                ; $FD8C: 18
L_FD8D:   JSR   $FE2D        ; $FD8D: 20 2D FE
L_FD90:   LDA   #$08         ; $FD90: A9 08
L_FD92:   STA   $0282        ; $FD92: 8D 82 02
L_FD95:   LDA   #$04         ; $FD95: A9 04
L_FD97:   STA   $0288        ; $FD97: 8D 88 02
L_FD9A:   RTS                ; $FD9A: 60
L_FD9B:   ROR   A            ; $FD9B: 6A
L_FD9C:   .byte $FC       ; $FD9C
L_FD9D:   CMP   $31FB        ; $FD9D: CD FB 31
L_FDA0:   NOP                ; $FDA0: EA
L_FDA1:   BIT   $A9F9        ; $FDA1: 2C F9 A9
L_FDA4:   .byte $7F       ; $FDA4
L_FDA5:   STA   $DC0D        ; $FDA5: 8D 0D DC
L_FDA8:   STA   $DD0D        ; $FDA8: 8D 0D DD
L_FDAB:   STA   $DC00        ; $FDAB: 8D 00 DC
L_FDAE:   LDA   #$08         ; $FDAE: A9 08
L_FDB0:   STA   $DC0E        ; $FDB0: 8D 0E DC
L_FDB3:   STA   $DD0E        ; $FDB3: 8D 0E DD
L_FDB6:   STA   $DC0F        ; $FDB6: 8D 0F DC
L_FDB9:   STA   $DD0F        ; $FDB9: 8D 0F DD
L_FDBC:   LDX   #$00         ; $FDBC: A2 00
L_FDBE:   STX   $DC03        ; $FDBE: 8E 03 DC
L_FDC1:   STX   $DD03        ; $FDC1: 8E 03 DD
L_FDC4:   STX   $D418        ; $FDC4: 8E 18 D4
L_FDC7:   DEX                ; $FDC7: CA
L_FDC8:   STX   $DC02        ; $FDC8: 8E 02 DC
L_FDCB:   LDA   #$07         ; $FDCB: A9 07
L_FDCD:   STA   $DD00        ; $FDCD: 8D 00 DD
L_FDD0:   LDA   #$3F         ; $FDD0: A9 3F
L_FDD2:   STA   $DD02        ; $FDD2: 8D 02 DD
L_FDD5:   LDA   #$E7         ; $FDD5: A9 E7
L_FDD7:   STA   $01          ; $FDD7: 85 01
L_FDD9:   LDA   #$2F         ; $FDD9: A9 2F
L_FDDB:   STA   $00          ; $FDDB: 85 00
L_FDDD:   LDA   $02A6        ; $FDDD: AD A6 02
L_FDE0:   BEQ   $FDEC        ; $FDE0: F0 0A
L_FDE2:   LDA   #$25         ; $FDE2: A9 25
L_FDE4:   STA   $DC04        ; $FDE4: 8D 04 DC
L_FDE7:   LDA   #$40         ; $FDE7: A9 40
L_FDE9:   JMP   $FDF3        ; $FDE9: 4C F3 FD
L_FDEC:   LDA   #$95         ; $FDEC: A9 95
L_FDEE:   STA   $DC04        ; $FDEE: 8D 04 DC
L_FDF1:   LDA   #$42         ; $FDF1: A9 42
L_FDF3:   STA   $DC05        ; $FDF3: 8D 05 DC
L_FDF6:   JMP   $FF6E        ; $FDF6: 4C 6E FF
L_FDF9:   STA   $B7          ; $FDF9: 85 B7
L_FDFB:   STX   $BB          ; $FDFB: 86 BB
L_FDFD:   STY   $BC          ; $FDFD: 84 BC
L_FDFF:   RTS                ; $FDFF: 60
L_FE00:   STA   $B8          ; $FE00: 85 B8
L_FE02:   STX   $BA          ; $FE02: 86 BA
L_FE04:   STY   $B9          ; $FE04: 84 B9
L_FE06:   RTS                ; $FE06: 60
L_FE07:   LDA   $BA          ; $FE07: A5 BA
L_FE09:   CMP   #$02         ; $FE09: C9 02
L_FE0B:   BNE   $FE1A        ; $FE0B: D0 0D
L_FE0D:   LDA   $0297        ; $FE0D: AD 97 02
L_FE10:   PHA                ; $FE10: 48
L_FE11:   LDA   #$00         ; $FE11: A9 00
L_FE13:   STA   $0297        ; $FE13: 8D 97 02
L_FE16:   PLA                ; $FE16: 68
L_FE17:   RTS                ; $FE17: 60
L_FE18:   STA   $9D          ; $FE18: 85 9D
L_FE1A:   LDA   $90          ; $FE1A: A5 90
L_FE1C:   ORA   $90          ; $FE1C: 05 90
L_FE1E:   STA   $90          ; $FE1E: 85 90
L_FE20:   RTS                ; $FE20: 60
L_FE21:   STA   $0285        ; $FE21: 8D 85 02
L_FE24:   RTS                ; $FE24: 60
L_FE25:   BCC   $FE2D        ; $FE25: 90 06
L_FE27:   LDX   $0283        ; $FE27: AE 83 02
L_FE2A:   LDY   $0284        ; $FE2A: AC 84 02
L_FE2D:   STX   $0283        ; $FE2D: 8E 83 02
L_FE30:   STY   $0284        ; $FE30: 8C 84 02
L_FE33:   RTS                ; $FE33: 60
L_FE34:   BCC   $FE3C        ; $FE34: 90 06
L_FE36:   LDX   $0281        ; $FE36: AE 81 02
L_FE39:   LDY   $0282        ; $FE39: AC 82 02
L_FE3C:   STX   $0281        ; $FE3C: 8E 81 02
L_FE3F:   STY   $0282        ; $FE3F: 8C 82 02
L_FE42:   RTS                ; $FE42: 60
L_FE43:   SEI                ; $FE43: 78
L_FE44:   JMP   ($0318)      ; $FE44: 6C 18 03
L_FE47:   PHA                ; $FE47: 48
L_FE48:   TXA                ; $FE48: 8A
L_FE49:   PHA                ; $FE49: 48
L_FE4A:   TYA                ; $FE4A: 98
L_FE4B:   PHA                ; $FE4B: 48
L_FE4C:   LDA   #$7F         ; $FE4C: A9 7F
L_FE4E:   STA   $DD0D        ; $FE4E: 8D 0D DD
L_FE51:   LDY   $DD0D        ; $FE51: AC 0D DD
L_FE54:   BMI   $FE72        ; $FE54: 30 1C
L_FE56:   JSR   $FD02        ; $FE56: 20 02 FD
L_FE59:   BNE   $FE5E        ; $FE59: D0 03
L_FE5B:   JMP   ($8002)      ; $FE5B: 6C 02 80
L_FE5E:   JSR   $F6BC        ; $FE5E: 20 BC F6
L_FE61:   JSR   $FFE1        ; $FE61: 20 E1 FF
L_FE64:   BNE   $FE72        ; $FE64: D0 0C
L_FE66:   JSR   $FD15        ; $FE66: 20 15 FD
L_FE69:   JSR   $FDA3        ; $FE69: 20 A3 FD
L_FE6C:   JSR   $E518        ; $FE6C: 20 18 E5
L_FE6F:   JMP   ($A002)      ; $FE6F: 6C 02 A0
L_FE72:   TYA                ; $FE72: 98
L_FE73:   AND   $02A1        ; $FE73: 2D A1 02
L_FE76:   TAX                ; $FE76: AA
L_FE77:   AND   #$01         ; $FE77: 29 01
L_FE79:   BEQ   $FEA3        ; $FE79: F0 28
L_FE7B:   LDA   $DD00        ; $FE7B: AD 00 DD
L_FE7E:   AND   #$FB         ; $FE7E: 29 FB
L_FE80:   ORA   $B5          ; $FE80: 05 B5
L_FE82:   STA   $DD00        ; $FE82: 8D 00 DD
L_FE85:   LDA   $02A1        ; $FE85: AD A1 02
L_FE88:   STA   $DD0D        ; $FE88: 8D 0D DD
L_FE8B:   TXA                ; $FE8B: 8A
L_FE8C:   AND   #$12         ; $FE8C: 29 12
L_FE8E:   BEQ   $FE9D        ; $FE8E: F0 0D
L_FE90:   AND   #$02         ; $FE90: 29 02
L_FE92:   BEQ   $FE9A        ; $FE92: F0 06
L_FE94:   JSR   $FED6        ; $FE94: 20 D6 FE
L_FE97:   JMP   $FE9D        ; $FE97: 4C 9D FE
L_FE9A:   JSR   $FF07        ; $FE9A: 20 07 FF
L_FE9D:   JSR   $EEBB        ; $FE9D: 20 BB EE
L_FEA0:   JMP   $FEB6        ; $FEA0: 4C B6 FE
L_FEA3:   TXA                ; $FEA3: 8A
L_FEA4:   AND   #$02         ; $FEA4: 29 02
L_FEA6:   BEQ   $FEAE        ; $FEA6: F0 06
L_FEA8:   JSR   $FED6        ; $FEA8: 20 D6 FE
L_FEAB:   JMP   $FEB6        ; $FEAB: 4C B6 FE
L_FEAE:   TXA                ; $FEAE: 8A
L_FEAF:   AND   #$10         ; $FEAF: 29 10
L_FEB1:   BEQ   $FEB6        ; $FEB1: F0 03
L_FEB3:   JSR   $FF07        ; $FEB3: 20 07 FF
L_FEB6:   LDA   $02A1        ; $FEB6: AD A1 02
L_FEB9:   STA   $DD0D        ; $FEB9: 8D 0D DD
L_FEBC:   PLA                ; $FEBC: 68
L_FEBD:   TAY                ; $FEBD: A8
L_FEBE:   PLA                ; $FEBE: 68
L_FEBF:   TAX                ; $FEBF: AA
L_FEC0:   PLA                ; $FEC0: 68
L_FEC1:   RTI                ; $FEC1: 40
L_FEC2:   CMP   ($27,X)      ; $FEC2: C1 27
L_FEC4:   ROL   $C51A,X      ; $FEC4: 3E 1A C5
L_FEC7:   ORA   ($74),Y      ; $FEC7: 11 74
L_FEC9:   ASL   $0CED        ; $FEC9: 0E ED 0C
L_FECC:   EOR   $06          ; $FECC: 45 06
L_FECE:   BEQ   $FED2        ; $FECE: F0 02
L_FED0:   LSR   $01          ; $FED0: 46 01
L_FED2:   CLV                ; $FED2: B8
L_FED3:   BRK                ; $FED3: 00
L_FED4:   ADC   ($00),Y      ; $FED4: 71 00
L_FED6:   LDA   $DD01        ; $FED6: AD 01 DD
L_FED9:   AND   #$01         ; $FED9: 29 01
L_FEDB:   STA   $A7          ; $FEDB: 85 A7
L_FEDD:   LDA   $DD06        ; $FEDD: AD 06 DD
L_FEE0:   SBC   #$1C         ; $FEE0: E9 1C
L_FEE2:   ADC   $0299        ; $FEE2: 6D 99 02
L_FEE5:   STA   $DD06        ; $FEE5: 8D 06 DD
L_FEE8:   LDA   $DD07        ; $FEE8: AD 07 DD
L_FEEB:   ADC   $029A        ; $FEEB: 6D 9A 02
L_FEEE:   STA   $DD07        ; $FEEE: 8D 07 DD
L_FEF1:   LDA   #$11         ; $FEF1: A9 11
L_FEF3:   STA   $DD0F        ; $FEF3: 8D 0F DD
L_FEF6:   LDA   $02A1        ; $FEF6: AD A1 02
L_FEF9:   STA   $DD0D        ; $FEF9: 8D 0D DD
L_FEFC:   LDA   #$FF         ; $FEFC: A9 FF
L_FEFE:   STA   $DD06        ; $FEFE: 8D 06 DD
L_FF01:   STA   $DD07        ; $FF01: 8D 07 DD
L_FF04:   JMP   $EF59        ; $FF04: 4C 59 EF
L_FF07:   LDA   $0295        ; $FF07: AD 95 02
L_FF0A:   STA   $DD06        ; $FF0A: 8D 06 DD
L_FF0D:   LDA   $0296        ; $FF0D: AD 96 02
L_FF10:   STA   $DD07        ; $FF10: 8D 07 DD
L_FF13:   LDA   #$11         ; $FF13: A9 11
L_FF15:   STA   $DD0F        ; $FF15: 8D 0F DD
L_FF18:   LDA   #$12         ; $FF18: A9 12
L_FF1A:   EOR   $02A1        ; $FF1A: 4D A1 02
L_FF1D:   STA   $02A1        ; $FF1D: 8D A1 02
L_FF20:   LDA   #$FF         ; $FF20: A9 FF
L_FF22:   STA   $DD06        ; $FF22: 8D 06 DD
L_FF25:   STA   $DD07        ; $FF25: 8D 07 DD
L_FF28:   LDX   $0298        ; $FF28: AE 98 02
L_FF2B:   STX   $A8          ; $FF2B: 86 A8
L_FF2D:   RTS                ; $FF2D: 60
L_FF2E:   TAX                ; $FF2E: AA
L_FF2F:   LDA   $0296        ; $FF2F: AD 96 02
L_FF32:   ROL   A            ; $FF32: 2A
L_FF33:   TAY                ; $FF33: A8
L_FF34:   TXA                ; $FF34: 8A
L_FF35:   ADC   #$C8         ; $FF35: 69 C8
L_FF37:   STA   $0299        ; $FF37: 8D 99 02
L_FF3A:   TYA                ; $FF3A: 98
L_FF3B:   ADC   #$00         ; $FF3B: 69 00
L_FF3D:   STA   $029A        ; $FF3D: 8D 9A 02
L_FF40:   RTS                ; $FF40: 60
L_FF41:   NOP                ; $FF41: EA
L_FF42:   NOP                ; $FF42: EA
L_FF43:   PHP                ; $FF43: 08
L_FF44:   PLA                ; $FF44: 68
L_FF45:   AND   #$EF         ; $FF45: 29 EF
L_FF47:   PHA                ; $FF47: 48
L_FF48:   PHA                ; $FF48: 48
L_FF49:   TXA                ; $FF49: 8A
L_FF4A:   PHA                ; $FF4A: 48
L_FF4B:   TYA                ; $FF4B: 98
L_FF4C:   PHA                ; $FF4C: 48
L_FF4D:   TSX                ; $FF4D: BA
L_FF4E:   LDA   $0104,X      ; $FF4E: BD 04 01
L_FF51:   AND   #$10         ; $FF51: 29 10
L_FF53:   BEQ   $FF58        ; $FF53: F0 03
L_FF55:   JMP   ($0316)      ; $FF55: 6C 16 03
L_FF58:   JMP   ($0314)      ; $FF58: 6C 14 03
L_FF5B:   JSR   $E518        ; $FF5B: 20 18 E5
L_FF5E:   LDA   $D012        ; $FF5E: AD 12 D0
L_FF61:   BNE   $FF5E        ; $FF61: D0 FB
L_FF63:   LDA   $D019        ; $FF63: AD 19 D0
L_FF66:   AND   #$01         ; $FF66: 29 01
L_FF68:   STA   $02A6        ; $FF68: 8D A6 02
L_FF6B:   JMP   $FDDD        ; $FF6B: 4C DD FD
L_FF6E:   LDA   #$81         ; $FF6E: A9 81
L_FF70:   STA   $DC0D        ; $FF70: 8D 0D DC
L_FF73:   LDA   $DC0E        ; $FF73: AD 0E DC
L_FF76:   AND   #$80         ; $FF76: 29 80
L_FF78:   ORA   #$11         ; $FF78: 09 11
L_FF7A:   STA   $DC0E        ; $FF7A: 8D 0E DC
L_FF7D:   JMP   $EE8E        ; $FF7D: 4C 8E EE
L_FF80:   .byte $64       ; $FF80
L_FF81:   JMP   $FF5B        ; $FF81: 4C 5B FF
L_FF84:   JMP   $FDA3        ; $FF84: 4C A3 FD
L_FF87:   JMP   $FD50        ; $FF87: 4C 50 FD
L_FF8A:   JMP   $FD15        ; $FF8A: 4C 15 FD
L_FF8D:   JMP   $FD1A        ; $FF8D: 4C 1A FD
L_FF90:   JMP   $FE18        ; $FF90: 4C 18 FE
L_FF93:   JMP   $EDB9        ; $FF93: 4C B9 ED
L_FF96:   JMP   $EDC7        ; $FF96: 4C C7 ED
L_FF99:   JMP   $FE25        ; $FF99: 4C 25 FE
L_FF9C:   JMP   $FE34        ; $FF9C: 4C 34 FE
L_FF9F:   JMP   $EA87        ; $FF9F: 4C 87 EA
L_FFA2:   JMP   $FE21        ; $FFA2: 4C 21 FE
L_FFA5:   JMP   $EE13        ; $FFA5: 4C 13 EE
L_FFA8:   JMP   $EDDD        ; $FFA8: 4C DD ED
L_FFAB:   JMP   $EDEF        ; $FFAB: 4C EF ED
L_FFAE:   JMP   $EDFE        ; $FFAE: 4C FE ED
L_FFB1:   JMP   $ED0C        ; $FFB1: 4C 0C ED
L_FFB4:   JMP   $ED09        ; $FFB4: 4C 09 ED
L_FFB7:   JMP   $FE07        ; $FFB7: 4C 07 FE
L_FFBA:   JMP   $FE00        ; $FFBA: 4C 00 FE
L_FFBD:   JMP   $FDF9        ; $FFBD: 4C F9 FD
L_FFC0:   JMP   ($031A)      ; $FFC0: 6C 1A 03
L_FFC3:   JMP   ($031C)      ; $FFC3: 6C 1C 03
L_FFC6:   JMP   ($031E)      ; $FFC6: 6C 1E 03
L_FFC9:   JMP   ($0320)      ; $FFC9: 6C 20 03
L_FFCC:   JMP   ($0322)      ; $FFCC: 6C 22 03
L_FFCF:   JMP   ($0324)      ; $FFCF: 6C 24 03
L_FFD2:   JMP   ($0326)      ; $FFD2: 6C 26 03
L_FFD5:   JMP   $F49E        ; $FFD5: 4C 9E F4
L_FFD8:   JMP   $F5DD        ; $FFD8: 4C DD F5
L_FFDB:   JMP   $F6E4        ; $FFDB: 4C E4 F6
L_FFDE:   JMP   $F6DD        ; $FFDE: 4C DD F6
L_FFE1:   JMP   ($0328)      ; $FFE1: 6C 28 03
L_FFE4:   JMP   ($032A)      ; $FFE4: 6C 2A 03
L_FFE7:   JMP   ($032C)      ; $FFE7: 6C 2C 03
L_FFEA:   JMP   $F69B        ; $FFEA: 4C 9B F6
L_FFED:   JMP   $E505        ; $FFED: 4C 05 E5
L_FFF0:   JMP   $E50A        ; $FFF0: 4C 0A E5
L_FFF3:   JMP   $E500        ; $FFF3: 4C 00 E5
L_FFF6:   .byte $52       ; $FFF6
L_FFF7:   .byte $52       ; $FFF7
L_FFF8:   .byte $00       ; $FFF8
L_FFF9:   .byte $00       ; $FFF9
L_FFFA:   .byte $43       ; $FFFA
L_FFFB:   .byte $FE       ; $FFFB
L_FFFC:   .byte $E2       ; $FFFC
L_FFFD:   .byte $FC       ; $FFFD
L_FFFE:   .byte $48       ; $FFFE
L_FFFF:   .byte $FF       ; $FFFF