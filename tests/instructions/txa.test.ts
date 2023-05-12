import { expect, test } from 'vitest'
import { compile } from '../../src/compiler.js'
import { cpu } from '../../src/emulator.js'

test('Test TXA instruction', () => {
    const program = `
        LDX #$55
        TXA
        HLT
    `
    const compiledProgram = compile(program)
    expect(compiledProgram).toEqual([0xA2, 0x55, 0x8A, 0xFF])
    
    cpu.reset()
    cpu.loadProgram(compiledProgram)

    while(!cpu.doInstruction()) {}
    expect(cpu.registerAcc).toEqual(0x55)
})