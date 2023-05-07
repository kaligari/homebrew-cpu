import { expect, test } from 'vitest'
import { compile } from '../../src/compiler.js'
import { cpu } from '../../src/emulator.js'

test('Test ORA instruction (immediate mode)', () => {
    const program = `
        LDA #$55
        ORA #$0F
        HLT
    `
    const compiledProgram = compile(program)
    expect(compiledProgram).toEqual([0xA9, 0x55, 0x09, 0x0F, 0xFF])
    
    cpu.reset()
    cpu.loadProgram(compiledProgram)

    while(!cpu.doInstruction()) {}
    expect(cpu.registerAcc).toEqual(0x5F)
    expect(cpu.flagC).toEqual(0)
    expect(cpu.flagN).toEqual(0)
    expect(cpu.flagsRegister).toEqual(0b00100000)
})