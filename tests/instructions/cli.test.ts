import { expect, test } from 'vitest'
import { compile } from '../../src/compiler.js'
import { cpu } from '../../src/emulator.js'

test('Test CLI instruction', () => {
    const program = `
        CLI
        HLT
    `
    const compiledProgram = compile(program)
    expect(compiledProgram).toEqual([0x58, 0xFF])
    
    cpu.reset()
    cpu.loadProgram(compiledProgram)

    while(!cpu.doInstruction()) {}
    expect(cpu.flagI).toEqual(0)
    expect(cpu.flagsRegister).toEqual(0b00100000)
})

test('Test CLI instruction after SEI', () => {
    const program = `
        SEI
        CLI
        HLT
    `
    const compiledProgram = compile(program)
    expect(compiledProgram).toEqual([0x78, 0x58, 0xFF])
    
    cpu.reset()
    cpu.loadProgram(compiledProgram)

    while(!cpu.doInstruction()) {}
    expect(cpu.flagI).toEqual(0)
    expect(cpu.flagsRegister).toEqual(0b00100000)
})