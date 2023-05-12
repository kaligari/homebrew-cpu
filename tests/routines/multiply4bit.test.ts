import { expect, test } from 'vitest'
import { flagsRegisterValue } from "../../build/debug"
import { compile } from '../../src/compiler'
import { cpu } from '../../src/emulator'

test('Test multiply 4-bit numbers', () => {
    const program = `
      LDA #4
      STA $00
      LDA #4
      STA $01
      LDX #4
    loop:
      LSR $01
      BCC iterate
      CLC
      LDA $00
      ADC $10
      STA $10
    iterate:
      ASL $00
      DEX
      BNE loop
    `
    const compiledProgram = compile(program)
    // expect(compiledProgram).toEqual([0xFF])
    
    cpu.reset()
    cpu.loadProgram(compiledProgram)
    while(!cpu.doInstruction()) {}
    expect(flagsRegisterValue() & 0b0010_0000).toEqual(0b0010_0000)
})

// test('Test multiply 4-bit numbers with define', () => {
//     const program = `
//     define output 	$10
//     define m1	    $00
//     define m2	    $01
    
//       lda #4
//       sta m1
//       lda #4
//       sta m2
//       ldx #4
//     loop:
//       lsr m2
//       bcc iterate
//       clc
//       lda m1
//       adc output
//       sta output
//     iterate:
//       asl m1
//       dex
//       bne loop
//     `
//     const compiledProgram = compile(program)
//     expect(compiledProgram).toEqual([0xFF])
    
//     cpu.reset()
//     cpu.loadProgram(compiledProgram)
//     while(!cpu.doInstruction()) {}
//     expect(flagsRegisterValue() & 0b0010_0000).toEqual(0b0010_0000)
// })
