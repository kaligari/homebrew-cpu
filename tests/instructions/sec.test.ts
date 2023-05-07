import { expect, test } from 'vitest'
import { compile } from '../../src/compiler.js'
import { cpu } from '../../src/emulator.js'

test('Test SEC instruction', () => {
    const program = `
        SEC
        HLT
    `
    const compiledProgram = compile(program)
    expect(compiledProgram).toEqual([0x38, 0xFF])
    
    cpu.reset()
    cpu.loadProgram(compiledProgram)

    while(!cpu.doInstruction()) {}
    expect(cpu.flagC).toEqual(1)
    expect(cpu.flagsRegister).toEqual(0b00100001)
})