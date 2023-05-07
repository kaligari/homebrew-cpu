import { expect, test } from 'vitest'
import { compile } from '../../src/compiler.js'
import { cpu } from '../../src/emulator.js'

// Test STA instruction (zero page mode)
test('Test STA instruction (zero page mode)', () => {
    const program = `
        LDA #$05
        STA $10
        HLT
    `
    const compiledProgram = compile(program)
    expect(compiledProgram).toEqual([0xA9, 0x05, 0x85, 0x10, 0xFF])
    
    cpu.reset()
    cpu.loadProgram(compiledProgram)

    while(!cpu.doInstruction()) {}
    expect(cpu.getMemory(0x10)).toEqual(0x05)
})