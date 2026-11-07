using System;

namespace Commodore4064
{
    public class Cpu6502
    {
        public byte A, X, Y, SP;
        public ushort PC;
        
        // Flags
        public bool C, Z, I, D, B, V, N;

        private readonly CbmBus _bus;
        public long TotalCycles { get; private set; }

        public Cpu6502(CbmBus bus)
        {
            _bus = bus;
            Reset();
        }

        public byte Status
        {
            get
            {
                byte res = 0x20; // Unused bit 5 is always 1
                if (C) res |= 0x01;
                if (Z) res |= 0x02;
                if (I) res |= 0x04;
                if (D) res |= 0x08;
                if (B) res |= 0x10;
                if (V) res |= 0x40;
                if (N) res |= 0x80;
                return res;
            }
            set
            {
                C = (value & 0x01) != 0;
                Z = (value & 0x02) != 0;
                I = (value & 0x04) != 0;
                D = (value & 0x08) != 0;
                B = (value & 0x10) != 0;
                V = (value & 0x40) != 0;
                N = (value & 0x80) != 0;
            }
        }

        public void Reset()
        {
            SP = 0xFF;
            Status = 0x24; // I set, unused set
            ushort lo = _bus.Read(0xFFFC);
            ushort hi = _bus.Read(0xFFFD);
            PC = (ushort)((hi << 8) | lo);
        }

        private void Push(byte val)
        {
            _bus.Write((ushort)(0x0100 | SP), val);
            SP--;
        }

        private byte Pop()
        {
            SP++;
            return _bus.Read((ushort)(0x0100 | SP));
        }

        private void PushWord(ushort val)
        {
            Push((byte)(val >> 8));
            Push((byte)(val & 0xFF));
        }

        private ushort PopWord()
        {
            byte lo = Pop();
            byte hi = Pop();
            return (ushort)((hi << 8) | lo);
        }

        private void SetZN(byte val)
        {
            Z = (val == 0);
            N = (val & 0x80) != 0;
        }

        public int Step()
        {
            byte op = _bus.Read(PC++);
            int cycles = 2;

            switch (op)
            {
                // NOP
                case 0xEA: break;

                // Load / Store A, X, Y
                case 0xA9: A = Imm(); SetZN(A); break;
                case 0xA5: A = _bus.Read(Zp()); SetZN(A); break;
                case 0xB5: A = _bus.Read(ZpX()); SetZN(A); break;
                case 0xAD: A = _bus.Read(Abs()); SetZN(A); break;
                case 0xBD: A = _bus.Read(AbsX()); SetZN(A); break;
                case 0xB9: A = _bus.Read(AbsY()); SetZN(A); break;
                case 0xA1: A = _bus.Read(IndX()); SetZN(A); break;
                case 0xB1: A = _bus.Read(IndY()); SetZN(A); break;

                case 0xA2: X = Imm(); SetZN(X); break;
                case 0xA6: X = _bus.Read(Zp()); SetZN(X); break;
                case 0xB6: X = _bus.Read(ZpY()); SetZN(X); break;
                case 0xAE: X = _bus.Read(Abs()); SetZN(X); break;
                case 0xBE: X = _bus.Read(AbsY()); SetZN(X); break;

                case 0xA0: Y = Imm(); SetZN(Y); break;
                case 0xA4: Y = _bus.Read(Zp()); SetZN(Y); break;
                case 0xB4: Y = _bus.Read(ZpX()); SetZN(Y); break;
                case 0xAC: Y = _bus.Read(Abs()); SetZN(Y); break;
                case 0xBC: Y = _bus.Read(AbsX()); SetZN(Y); break;

                case 0x85: _bus.Write(Zp(), A); break;
                case 0x95: _bus.Write(ZpX(), A); break;
                case 0x8D: _bus.Write(Abs(), A); break;
                case 0x9D: _bus.Write(AbsX(), A); break;
                case 0x99: _bus.Write(AbsY(), A); break;
                case 0x81: _bus.Write(IndX(), A); break;
                case 0x91: _bus.Write(IndY(), A); break;

                case 0x86: _bus.Write(Zp(), X); break;
                case 0x96: _bus.Write(ZpY(), X); break;
                case 0x8E: _bus.Write(Abs(), X); break;

                case 0x84: _bus.Write(Zp(), Y); break;
                case 0x94: _bus.Write(ZpX(), Y); break;
                case 0x8C: _bus.Write(Abs(), Y); break;

                // Register Transfers
                case 0xAA: X = A; SetZN(X); break;
                case 0x8A: A = X; SetZN(A); break;
                case 0xA8: Y = A; SetZN(Y); break;
                case 0x98: A = Y; SetZN(A); break;
                case 0xBA: X = SP; SetZN(X); break;
                case 0x9A: SP = X; break;

                // Stack operations
                case 0x48: Push(A); break;
                case 0x68: A = Pop(); SetZN(A); break;
                case 0x08: Push((byte)(Status | 0x30)); break; // Break and unused set on push
                case 0x28: Status = Pop(); break;

                // Increment / Decrement
                case 0xE8: X = (byte)(X + 1); SetZN(X); break;
                case 0xCA: X = (byte)(X - 1); SetZN(X); break;
                case 0xC8: Y = (byte)(Y + 1); SetZN(Y); break;
                case 0x88: Y = (byte)(Y - 1); SetZN(Y); break;

                case 0xE6: { ushort a = Zp(); byte v = (byte)(_bus.Read(a) + 1); _bus.Write(a, v); SetZN(v); } break;
                case 0xF6: { ushort a = ZpX(); byte v = (byte)(_bus.Read(a) + 1); _bus.Write(a, v); SetZN(v); } break;
                case 0xEE: { ushort a = Abs(); byte v = (byte)(_bus.Read(a) + 1); _bus.Write(a, v); SetZN(v); } break;
                case 0xFE: { ushort a = AbsX(); byte v = (byte)(_bus.Read(a) + 1); _bus.Write(a, v); SetZN(v); } break;

                case 0xC6: { ushort a = Zp(); byte v = (byte)(_bus.Read(a) - 1); _bus.Write(a, v); SetZN(v); } break;
                case 0xD6: { ushort a = ZpX(); byte v = (byte)(_bus.Read(a) - 1); _bus.Write(a, v); SetZN(v); } break;
                case 0xCE: { ushort a = Abs(); byte v = (byte)(_bus.Read(a) - 1); _bus.Write(a, v); SetZN(v); } break;
                case 0xDE: { ushort a = AbsX(); byte v = (byte)(_bus.Read(a) - 1); _bus.Write(a, v); SetZN(v); } break;

                // Arithmetic & Logic: ADC, SBC, AND, ORA, EOR
                case 0x69: Adc(Imm()); break;
                case 0x65: Adc(_bus.Read(Zp())); break;
                case 0x75: Adc(_bus.Read(ZpX())); break;
                case 0x6D: Adc(_bus.Read(Abs())); break;
                case 0x7D: Adc(_bus.Read(AbsX())); break;
                case 0x79: Adc(_bus.Read(AbsY())); break;
                case 0x61: Adc(_bus.Read(IndX())); break;
                case 0x71: Adc(_bus.Read(IndY())); break;

                case 0xE9: Sbc(Imm()); break;
                case 0xE5: Sbc(_bus.Read(Zp())); break;
                case 0xF5: Sbc(_bus.Read(ZpX())); break;
                case 0xED: Sbc(_bus.Read(Abs())); break;
                case 0xFD: Sbc(_bus.Read(AbsX())); break;
                case 0xF9: Sbc(_bus.Read(AbsY())); break;
                case 0xE1: Sbc(_bus.Read(IndX())); break;
                case 0xF1: Sbc(_bus.Read(IndY())); break;

                case 0x29: A &= Imm(); SetZN(A); break;
                case 0x25: A &= _bus.Read(Zp()); SetZN(A); break;
                case 0x35: A &= _bus.Read(ZpX()); SetZN(A); break;
                case 0x2D: A &= _bus.Read(Abs()); SetZN(A); break;
                case 0x3D: A &= _bus.Read(AbsX()); SetZN(A); break;
                case 0x39: A &= _bus.Read(AbsY()); SetZN(A); break;
                case 0x21: A &= _bus.Read(IndX()); SetZN(A); break;
                case 0x31: A &= _bus.Read(IndY()); SetZN(A); break;

                case 0x09: A |= Imm(); SetZN(A); break;
                case 0x05: A |= _bus.Read(Zp()); SetZN(A); break;
                case 0x15: A |= _bus.Read(ZpX()); SetZN(A); break;
                case 0x0D: A |= _bus.Read(Abs()); SetZN(A); break;
                case 0x1D: A |= _bus.Read(AbsX()); SetZN(A); break;
                case 0x19: A |= _bus.Read(AbsY()); SetZN(A); break;
                case 0x01: A |= _bus.Read(IndX()); SetZN(A); break;
                case 0x11: A |= _bus.Read(IndY()); SetZN(A); break;

                case 0x49: A ^= Imm(); SetZN(A); break;
                case 0x45: A ^= _bus.Read(Zp()); SetZN(A); break;
                case 0x55: A ^= _bus.Read(ZpX()); SetZN(A); break;
                case 0x4D: A ^= _bus.Read(Abs()); SetZN(A); break;
                case 0x5D: A ^= _bus.Read(AbsX()); SetZN(A); break;
                case 0x59: A ^= _bus.Read(AbsY()); SetZN(A); break;
                case 0x41: A ^= _bus.Read(IndX()); SetZN(A); break;
                case 0x51: A ^= _bus.Read(IndY()); SetZN(A); break;

                // Comparisons: CMP, CPX, CPY
                case 0xC9: Cmp(A, Imm()); break;
                case 0xC5: Cmp(A, _bus.Read(Zp())); break;
                case 0xD5: Cmp(A, _bus.Read(ZpX())); break;
                case 0xCD: Cmp(A, _bus.Read(Abs())); break;
                case 0xDD: Cmp(A, _bus.Read(AbsX())); break;
                case 0xD9: Cmp(A, _bus.Read(AbsY())); break;
                case 0xC1: Cmp(A, _bus.Read(IndX())); break;
                case 0xD1: Cmp(A, _bus.Read(IndY())); break;

                case 0xE0: Cmp(X, Imm()); break;
                case 0xE4: Cmp(X, _bus.Read(Zp())); break;
                case 0xEC: Cmp(X, _bus.Read(Abs())); break;

                case 0xC0: Cmp(Y, Imm()); break;
                case 0xC4: Cmp(Y, _bus.Read(Zp())); break;
                case 0xCC: Cmp(Y, _bus.Read(Abs())); break;

                // BIT
                case 0x24: Bit(_bus.Read(Zp())); break;
                case 0x2C: Bit(_bus.Read(Abs())); break;

                // Shifts & Rotates
                case 0x0A: A = Asl(A); break;
                case 0x06: { ushort a = Zp(); _bus.Write(a, Asl(_bus.Read(a))); } break;
                case 0x16: { ushort a = ZpX(); _bus.Write(a, Asl(_bus.Read(a))); } break;
                case 0x0E: { ushort a = Abs(); _bus.Write(a, Asl(_bus.Read(a))); } break;
                case 0x1E: { ushort a = AbsX(); _bus.Write(a, Asl(_bus.Read(a))); } break;

                case 0x4A: A = Lsr(A); break;
                case 0x46: { ushort a = Zp(); _bus.Write(a, Lsr(_bus.Read(a))); } break;
                case 0x56: { ushort a = ZpX(); _bus.Write(a, Lsr(_bus.Read(a))); } break;
                case 0x4E: { ushort a = Abs(); _bus.Write(a, Lsr(_bus.Read(a))); } break;
                case 0x5E: { ushort a = AbsX(); _bus.Write(a, Lsr(_bus.Read(a))); } break;

                case 0x2A: A = Rol(A); break;
                case 0x26: { ushort a = Zp(); _bus.Write(a, Rol(_bus.Read(a))); } break;
                case 0x36: { ushort a = ZpX(); _bus.Write(a, Rol(_bus.Read(a))); } break;
                case 0x2E: { ushort a = Abs(); _bus.Write(a, Rol(_bus.Read(a))); } break;
                case 0x3E: { ushort a = AbsX(); _bus.Write(a, Rol(_bus.Read(a))); } break;

                case 0x6A: A = Ror(A); break;
                case 0x66: { ushort a = Zp(); _bus.Write(a, Ror(_bus.Read(a))); } break;
                case 0x76: { ushort a = ZpX(); _bus.Write(a, Ror(_bus.Read(a))); } break;
                case 0x6E: { ushort a = Abs(); _bus.Write(a, Ror(_bus.Read(a))); } break;
                case 0x7E: { ushort a = AbsX(); _bus.Write(a, Ror(_bus.Read(a))); } break;

                // Branches
                case 0x10: Branch(!N); break; // BPL
                case 0x30: Branch(N); break;  // BMI
                case 0x50: Branch(!V); break; // BVC
                case 0x70: Branch(V); break;  // BVS
                case 0x90: Branch(!C); break; // BCC
                case 0xB0: Branch(C); break;  // BCS
                case 0xD0: Branch(!Z); break; // BNE
                case 0xF0: Branch(Z); break;  // BEQ

                // Jumps & Calls
                case 0x4C: PC = Abs(); break;
                case 0x6C: {
                    ushort ptr = Abs();
                    ushort lo = _bus.Read(ptr);
                    // 6502 page wrap bug simulation
                    ushort hiPtr = (ushort)((ptr & 0xFF00) | ((ptr + 1) & 0x00FF));
                    ushort hi = _bus.Read(hiPtr);
                    PC = (ushort)((hi << 8) | lo);
                } break;

                case 0x20: {
                    ushort target = Abs();
                    PushWord((ushort)(PC - 1));
                    PC = target;
                } break;

                case 0x60: PC = (ushort)(PopWord() + 1); break; // RTS
                case 0x40: Status = Pop(); PC = PopWord(); break; // RTI

                // Flags
                case 0x18: C = false; break;
                case 0x38: C = true; break;
                case 0x58: I = false; break;
                case 0x78: I = true; break;
                case 0xB8: V = false; break;
                case 0xD8: D = false; break;
                case 0xF8: D = true; break;

                // BRK
                case 0x00: {
                    PC++;
                    PushWord(PC);
                    Push((byte)(Status | 0x30));
                    I = true;
                    ushort lo = _bus.Read(0xFFFE);
                    ushort hi = _bus.Read(0xFFFF);
                    PC = (ushort)((hi << 8) | lo);
                } break;

                default:
                    // Undocumented opcode: Treat as NOP or advance
                    break;
            }

            TotalCycles += cycles;
            _bus.Tick(cycles);
            return cycles;
        }

        private byte Imm() => _bus.Read(PC++);
        private ushort Zp() => _bus.Read(PC++);
        private ushort ZpX() => (ushort)((_bus.Read(PC++) + X) & 0xFF);
        private ushort ZpY() => (ushort)((_bus.Read(PC++) + Y) & 0xFF);
        private ushort Abs() {
            ushort lo = _bus.Read(PC++);
            ushort hi = _bus.Read(PC++);
            return (ushort)((hi << 8) | lo);
        }
        private ushort AbsX() => (ushort)(Abs() + X);
        private ushort AbsY() => (ushort)(Abs() + Y);
        private ushort IndX() {
            byte zp = (byte)(_bus.Read(PC++) + X);
            ushort lo = _bus.Read(zp);
            ushort hi = _bus.Read((byte)(zp + 1));
            return (ushort)((hi << 8) | lo);
        }
        private ushort IndY() {
            byte zp = _bus.Read(PC++);
            ushort lo = _bus.Read(zp);
            ushort hi = _bus.Read((byte)(zp + 1));
            return (ushort)(((hi << 8) | lo) + Y);
        }

        private void Branch(bool cond)
        {
            sbyte rel = (sbyte)_bus.Read(PC++);
            if (cond)
            {
                PC = (ushort)(PC + rel);
            }
        }

        private void Cmp(byte reg, byte val)
        {
            int diff = reg - val;
            C = (reg >= val);
            Z = (reg == val);
            N = ((diff & 0x80) != 0);
        }

        private void Bit(byte val)
        {
            Z = ((A & val) == 0);
            V = ((val & 0x40) != 0);
            N = ((val & 0x80) != 0);
        }

        private void Adc(byte val)
        {
            if (D)
            {
                int cIn = C ? 1 : 0;
                int lo = (A & 0x0F) + (val & 0x0F) + cIn;
                int hi = (A >> 4) + (val >> 4);
                if (lo > 9) { lo += 6; hi += 1; }
                int sum = (A + val + cIn);
                V = (((A ^ sum) & (val ^ sum) & 0x80) != 0);
                N = ((hi & 0x08) != 0);
                if (hi > 9) { hi += 6; }
                C = (hi > 15 || sum > 255);
                Z = ((A + val + cIn) & 0xFF) == 0;
                A = (byte)((hi << 4) | (lo & 0x0F));
            }
            else
            {
                int sum = A + val + (C ? 1 : 0);
                C = sum > 0xFF;
                V = (~(A ^ val) & (A ^ sum) & 0x80) != 0;
                A = (byte)sum;
                SetZN(A);
            }
        }

        private void Sbc(byte val)
        {
            if (D)
            {
                int cIn = C ? 0 : 1;
                int diff = A - val - cIn;
                int lo = (A & 0x0F) - (val & 0x0F) - cIn;
                int hi = (A >> 4) - (val >> 4);
                if ((lo & 0x10) != 0) { lo -= 6; hi -= 1; }
                if ((hi & 0x10) != 0) { hi -= 6; }
                C = diff >= 0;
                V = (((A ^ val) & (A ^ diff) & 0x80) != 0);
                Z = (diff & 0xFF) == 0;
                N = (diff & 0x80) != 0;
                A = (byte)((hi << 4) | (lo & 0x0F));
            }
            else
            {
                int diff = A - val - (C ? 0 : 1);
                C = diff >= 0;
                V = ((A ^ val) & (A ^ diff) & 0x80) != 0;
                A = (byte)diff;
                SetZN(A);
            }
        }

        private byte Asl(byte val)
        {
            C = (val & 0x80) != 0;
            byte res = (byte)(val << 1);
            SetZN(res);
            return res;
        }

        private byte Lsr(byte val)
        {
            C = (val & 0x01) != 0;
            byte res = (byte)(val >> 1);
            SetZN(res);
            return res;
        }

        private byte Rol(byte val)
        {
            bool oldC = C;
            C = (val & 0x80) != 0;
            byte res = (byte)((val << 1) | (oldC ? 1 : 0));
            SetZN(res);
            return res;
        }

        private byte Ror(byte val)
        {
            bool oldC = C;
            C = (val & 0x01) != 0;
            byte res = (byte)((val >> 1) | (oldC ? 0x80 : 0));
            SetZN(res);
            return res;
        }
    }
}
