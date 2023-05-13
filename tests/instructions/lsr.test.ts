import { expect, test } from 'vitest'
import { compile } from '../../src/compiler.js'
import { cpu } from '../../src/emulator.js'

test('Test LSR instruction (zero page mode)', () => {
    const program = `
        LDA #$AA
        STA $10
        LSR $10
        HLT
    `
    const compiledProgram = compile(program)
    expect(compiledProgram).toEqual([0xA9, 0xAA, 0x85, 0x10, 0x46, 0x10, 0xFF])
    
    cpu.reset()
    cpu.loadProgram(compiledProgram)

    while(!cpu.doInstruction()) {}
    expect(cpu.flagN).toEqual(0)
    expect(cpu.getMemory(0x10)).toEqual(0x55)
})

test('Test LSR instruction (zero page mode) - C flag', () => {
    const program = `
        LDA #5
        STA $10
        LSR $10
        HLT
    `
    const compiledProgram = compile(program)
    expect(compiledProgram).toEqual([0xA9, 0x05, 0x85, 0x10, 0x46, 0x10, 0xFF])
    
    cpu.reset()
    cpu.loadProgram(compiledProgram)

    while(!cpu.doInstruction()) {}
    expect(cpu.flagC).toEqual(1)
    expect(cpu.flagZ).toEqual(0)
    expect(cpu.flagN).toEqual(0)
    expect(cpu.getMemory(0x10)).toEqual(0x02)
})

test('Test LSR instruction (zero page mode) - C flag zero case', () => {
    const program = `
        LDA #2
        STA $10
        LSR $10
        HLT
    `
    const compiledProgram = compile(program)
    expect(compiledProgram).toEqual([0xA9, 0x02, 0x85, 0x10, 0x46, 0x10, 0xFF])
    
    cpu.reset()
    cpu.loadProgram(compiledProgram)

    while(!cpu.doInstruction()) {}
    expect(cpu.flagC).toEqual(0)
    expect(cpu.flagZ).toEqual(0)
    expect(cpu.flagN).toEqual(0)
    expect(cpu.getMemory(0x10)).toEqual(0x01)
})

test('Test LSR instruction (zero page mode) - Z flag', () => {
    const program = `
        LDA #1
        STA $10
        LSR $10
        HLT
    `
    const compiledProgram = compile(program)
    expect(compiledProgram).toEqual([0xA9, 0x01, 0x85, 0x10, 0x46, 0x10, 0xFF])
    
    cpu.reset()
    cpu.loadProgram(compiledProgram)

    while(!cpu.doInstruction()) {}
    expect(cpu.flagC).toEqual(1)
    expect(cpu.flagZ).toEqual(1)
    expect(cpu.flagN).toEqual(0)
    expect(cpu.getMemory(0x10)).toEqual(0x00)
})

test('Test LSR instruction (zero page mode) - N flag', () => {
    const program = `
        LDA #$FE
        STA $10
        LSR $10
        HLT
    `
    const compiledProgram = compile(program)
    expect(compiledProgram).toEqual([0xA9, 0xFE, 0x85, 0x10, 0x46, 0x10, 0xFF])
    
    cpu.reset()
    cpu.loadProgram(compiledProgram)

    while(!cpu.doInstruction()) {}
    expect(cpu.flagC).toEqual(0)
    expect(cpu.flagZ).toEqual(0)
    expect(cpu.flagN).toEqual(0)
    expect(cpu.getMemory(0x10)).toEqual(0x7F)
})