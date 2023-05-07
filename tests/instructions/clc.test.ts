import { expect, test } from 'vitest'
import { compile } from '../../src/compiler.js'
import { cpu } from '../../src/emulator.js'

test('Test CLC instruction', () => {
    const program = `
        CLC
        HLT
    `
    const compiledProgram = compile(program)
    expect(compiledProgram).toEqual([0x18, 0xFF])
    
    cpu.reset()
    cpu.loadProgram(compiledProgram)

    while(!cpu.doInstruction()) {}
    expect(cpu.flagC).toEqual(0)
    expect(cpu.flagsRegister).toEqual(0b00100000)
})

test('Test CLC instruction after SEC', () => {
    const program = `
        SEC
        CLC
        HLT
    `
    const compiledProgram = compile(program)
    expect(compiledProgram).toEqual([0x38, 0x18, 0xFF])
    
    cpu.reset()
    cpu.loadProgram(compiledProgram)

    while(!cpu.doInstruction()) {}
    expect(cpu.flagC).toEqual(0)
    expect(cpu.flagsRegister).toEqual(0b00100000)
})