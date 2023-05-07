import { expect, test } from 'vitest'
import { compile } from '../../src/compiler.js'
import { cpu } from '../../src/emulator.js'

test('Test LDA instruction (immediate mode)', () => {
    const program = `
        LDA #$55
        HLT
    `
    const compiledProgram = compile(program)
    expect(compiledProgram).toEqual([0xA9, 0x55, 0xFF])
    
    cpu.reset()
    cpu.loadProgram(compiledProgram)

    while(!cpu.doInstruction()) {}
    expect(cpu.registerAcc).toEqual(0x55)
})

test('Test LDA instruction (immediate mode) - Z flag', () => {
    const program = `
        LDA #$00
        HLT
    `
    const compiledProgram = compile(program)
    expect(compiledProgram).toEqual([0xA9, 0x00, 0xFF])
    
    cpu.reset()
    cpu.loadProgram(compiledProgram)

    while(!cpu.doInstruction()) {}
    expect(cpu.registerAcc).toEqual(0x00)
    expect(cpu.flagZ).toEqual(1)
    expect(cpu.flagN).toEqual(0)
    expect(cpu.flagHalt).toEqual(1)
    expect(cpu.flagsRegister).toEqual(0b00100010)
})

test('Test LDA instruction (immediate mode) - N flag', () => {
    const program = `
        LDA #$FA
        HLT
    `
    const compiledProgram = compile(program)
    expect(compiledProgram).toEqual([0xA9, 0xFA, 0xFF])
    
    cpu.reset()
    cpu.loadProgram(compiledProgram)

    while(!cpu.doInstruction()) {}
    expect(cpu.registerAcc).toEqual(0xFA)
    expect(cpu.flagN).toEqual(1)
    expect(cpu.flagZ).toEqual(0)
    expect(cpu.flagHalt).toEqual(1)
    expect(cpu.flagsRegister).toEqual(0b00100100)
})


test('Test LDA instruction (zero page mode)', () => {
    const program = `
        LDA $03
        HLT
        .byte $55
    `
    const compiledProgram = compile(program)
    expect(compiledProgram).toEqual([0xA5, 0x03, 0xFF, 0x55])
    
    cpu.reset()
    cpu.loadProgram(compiledProgram)

    while(!cpu.doInstruction()) {}
    expect(cpu.registerAcc).toEqual(0x55)
})

test('Test LDA instruction (zero page mode) - Z flag', () => {
    const program = `
        LDA $03
        HLT
        .byte $00
    `
    const compiledProgram = compile(program)
    expect(compiledProgram).toEqual([0xA5, 0x03, 0xFF, 0x00])
    
    cpu.reset()
    cpu.loadProgram(compiledProgram)

    while(!cpu.doInstruction()) {}
    expect(cpu.registerAcc).toEqual(0x00)
    expect(cpu.flagZ).toEqual(1)
    expect(cpu.flagN).toEqual(0)
    expect(cpu.flagHalt).toEqual(1)
    expect(cpu.flagsRegister).toEqual(0b00100010)
})

test('Test LDA instruction (zero page mode) - N flag', () => {
    const program = `
        LDA $03
        HLT
        .byte $F9
    `
    const compiledProgram = compile(program)
    expect(compiledProgram).toEqual([0xA5, 0x03, 0xFF, 0xF9])
    
    cpu.reset()
    cpu.loadProgram(compiledProgram)

    while(!cpu.doInstruction()) {}
    expect(cpu.registerAcc).toEqual(0xF9)
    expect(cpu.flagN).toEqual(1)
    expect(cpu.flagZ).toEqual(0)
    expect(cpu.flagHalt).toEqual(1)
    expect(cpu.flagsRegister).toEqual(0b00100100)
})