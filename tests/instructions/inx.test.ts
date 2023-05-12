import { expect, test } from 'vitest'
import { compile } from '../../src/compiler.js'
import { cpu } from '../../src/emulator.js'

test('Test INX instruction', () => {
    const program = `
        LDX #$55
        INX
        HLT
    `
    const compiledProgram = compile(program)
    expect(compiledProgram).toEqual([0xA2, 0x55, 0xE8, 0xFF])
    
    cpu.reset()
    cpu.loadProgram(compiledProgram)

    while(!cpu.doInstruction()) {}
    expect(cpu.registerX).toEqual(0x55 + 1)
})

// TODO: test flags Z and N