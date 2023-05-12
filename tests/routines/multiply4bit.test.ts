import { expect, test } from 'vitest'
import { flagsRegisterValue } from "../../build/debug"
import { compile } from '../../src/compiler'
import { cpu } from '../../src/emulator'

test('Test multiply 4-bit numbers', () => {
    const program = `
      LDA #4
      STA $20
      LDA #6
      STA $21
      LDX #4
    loop:
      LSR $21
      BCC iterate
      CLC
      LDA $20
      ADC $22
      STA $22
    iterate:
      ASL $20
      DEX
      BNE loop
      HLT
    `
    const compiledProgram = compile(program)
    // expect(compiledProgram).toEqual([0xFF])
    
    cpu.reset()
    cpu.loadProgram(compiledProgram)
    while(!cpu.doInstruction()) {}
    // for (let i = 0; i <= 3; i++) {
    //   cpu.doInstruction()
    // }
    cpu.dumpMemory(0x00, 0x22)
    // cpu.doInstruction(true)
    
    expect(cpu.getMemory(0x22)).toEqual(0x18)
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
