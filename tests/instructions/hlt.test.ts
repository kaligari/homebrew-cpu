import { expect, test } from 'vitest'
import { flagsRegisterValue } from "../../build/debug"
import { compile } from '../../src/compiler'
import { cpu } from '../../src/emulator'

test('Test HLT instruction', () => {
    const program = `
        HLT
    `
    const compiledProgram = compile(program)
    expect(compiledProgram).toEqual([0xFF])
    
    cpu.reset()
    cpu.loadProgram(compiledProgram)
    while(!cpu.doInstruction()) {}
    expect(flagsRegisterValue() & 0b0010_0000).toEqual(0b0010_0000)
})
