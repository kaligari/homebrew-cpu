import { expect, test } from 'vitest'
import { compile } from '../../src/compiler.js'
import { cpu } from '../../src/emulator.js'

test('Test TAX instruction', () => {
    const program = `
        LDA #$55
        TAX
        HLT
    `
    const compiledProgram = compile(program)
    expect(compiledProgram).toEqual([0xA9, 0x55, 0xAA, 0xFF])
    
    cpu.reset()
    cpu.loadProgram(compiledProgram)

    while(!cpu.doInstruction()) {}
    expect(cpu.registerX).toEqual(0x55)
})