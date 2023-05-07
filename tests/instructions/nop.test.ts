import { expect, test } from 'vitest'
import { compile } from '../../src/compiler'

test('Test HLT instruction', () => {
    const program = `
        NOP
        HLT
    `
    const compiledProgram = compile(program)
    expect(compiledProgram).toEqual([0xEA, 0xFF])
})
