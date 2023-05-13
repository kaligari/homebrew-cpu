import { expect, test } from 'vitest'
import { compile } from '../../src/compiler.js'
import { cpu } from '../../src/emulator.js'

test('Test ASL instruction (zero page mode)', () => {
    const program = `
        LDA #$55
        STA $10
        ASL $10
        HLT
    `
    const compiledProgram = compile(program)
    expect(compiledProgram).toEqual([0xA9, 0x55, 0x85, 0x10, 0x06, 0x10, 0xFF])
    
    cpu.reset()
    cpu.loadProgram(compiledProgram)

    while(!cpu.doInstruction()) {}
    expect(cpu.flagN).toEqual(1)
    expect(cpu.getMemory(0x10)).toEqual(0xAA)
})