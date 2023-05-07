import { expect, test } from 'vitest'
import { compile } from '../../src/compiler.js'
import { cpu } from '../../src/emulator.js'

test('Test SEI instruction', () => {
    const program = `
        SEI
        HLT
    `
    const compiledProgram = compile(program)
    expect(compiledProgram).toEqual([0x78, 0xFF])
    
    cpu.reset()
    cpu.loadProgram(compiledProgram)

    while(!cpu.doInstruction()) {}
    expect(cpu.flagI).toEqual(1)
    expect(cpu.flagsRegister).toEqual(0b00110000)
})