# Automated Testing & Verification Guide

## 1. Overview
The project includes a multi-tiered test infrastructure covering:
1. **Unit Testing**: 6502 CPU instruction decoders, addressing modes, and processor status flags.
2. **Bus & Memory Testing**: RAM, screen memory, Color RAM, and ROM address banking.
3. **Boot Integration Testing**: Reset vector dispatch, KERNAL cold-start, Educator 64 startup banner, and prompt loop.
4. **BASIC Execution Testing**: Tokenizer, floating-point arithmetic evaluation, loops, and screen output.
5. **ROM Checksum Verification**: Cryptographic SHA-256 and CRC-32 bit-for-bit validation.

---

## 2. Running Automated Tests

Run the complete test suite from the repository root:

```powershell
dotnet test tests/Commodore4064.Tests/Commodore4064.Tests.csproj --verbosity normal
```

Expected output:
```text
Passed!  - Failed:     0, Passed:    24, Skipped:     0, Total:    24
```

---

## 3. Test Suites Structure

### 3.1 `CpuInstructionTests.cs`
- `Lda_Immediate_SetsAccumulatorAndFlags`
- `Lda_ZeroPage_SetsZeroFlag`
- `Sta_Absolute_WritesMemoryCorrectly`
- `Ldx_Ldy_Immediate_SetsRegisters`
- `Adc_Immediate_AddsWithCarry`
- `Adc_OverflowFlag_SetOnSignedOverflow`
- `Sbc_Immediate_SubtractsWithBorrow`
- `Jmp_Absolute_ChangesProgramCounter`
- `Jsr_Rts_SubroutineCallAndReturn`
- `Branch_Beq_BranchesWhenZeroSet`
- `Branch_Bne_FallsThroughWhenZeroSet`
- `Stack_Pha_Pla_PushesAndPullsAccumulator`

### 3.2 `MemoryBusTests.cs`
- `Ram_ReadWrite_WorksAcrossStandardRange`
- `ScreenMemory_MappedAt_0400_To_07E7`
- `KernalRom_MappedAt_E000_To_FFFF`
- `BasicRom_MappedAt_A000_To_BFFF`
- `VicRasterPolling_AdvancesCycles`

### 3.3 `BootSequenceTests.cs`
- `Reset_InitializesCpuToResetVector`: Confirms PC initialized to `$FCE2` and SP to `$FF`.
- `BootSequence_ExecutesUntilReadyPrompt`: Verifies CPU reaches `$A480/$A483` with Educator 64 startup banner.
- `Educator64_OmitsStandardBytesFreeMessage`: Verifies the standard `"38911 BASIC BYTES FREE"` message is omitted.

### 3.4 `BasicExecutionTests.cs`
- `Basic_PrintHelloWorld_EvaluatesAndOutputsText`: Injects `PRINT "HELLO WORLD"` into the keyboard queue and asserts screen output.
- `Basic_PrintMath_EvaluatesArithmetic`: Injects `PRINT 2+2` and asserts output `4`.
- `Basic_ForLoop_ExecutesAndOutputsSequence`: Executes multi-line program `10 FOR I=1 TO 3: 20 PRINT I: 30 NEXT I: RUN`.
- `Basic_DirectScreenPoke_ModifiesScreenMemory`: Injects `POKE 1034, 81` and verifies screen memory cell update.

---

## 4. Continuous Integration (CI)
All tests are executed automatically on Windows runners in GitHub Actions on every push, pull request, and release tag via `.github/workflows/build.yml`.
