import { expect, test } from 'vitest'
import { compile } from '../../src/compiler.js'
import { cpu } from '../../src/emulator.js'

test('Test ADC instruction (immediate mode)', () => {
    const program = `
        LDA #$05
        ADC #$05
        HLT
    `
    const compiledProgram = compile(program)
    expect(compiledProgram).toEqual([0xA9, 0x05, 0x69, 0x05, 0xFF])
    
    cpu.reset()
    cpu.loadProgram(compiledProgram)

    while(!cpu.doInstruction()) {}
    expect(cpu.registerAcc).toEqual(0x0A)
    expect(cpu.flagC).toEqual(0)
    expect(cpu.flagZ).toEqual(0)
    expect(cpu.flagN).toEqual(0)
    expect(cpu.flagsRegister).toEqual(0b00100000)
})

test('Test ADC instruction (immediate mode) - C flag', () => {
    const program = `
        LDA #$FF
        ADC #$02
        HLT
    `
    const compiledProgram = compile(program)
    expect(compiledProgram).toEqual([0xA9, 0xFF, 0x69, 0x02, 0xFF])
    
    cpu.reset()
    cpu.loadProgram(compiledProgram)

    while(!cpu.doInstruction()) {}
    expect(cpu.registerAcc).toEqual(0x01)
    expect(cpu.flagC).toEqual(1)
    expect(cpu.flagZ).toEqual(0)
    expect(cpu.flagN).toEqual(0)
    expect(cpu.flagV).toEqual(0)
    expect(cpu.flagsRegister).toEqual(0b00100001)
})

test('Test ADC instruction (immediate mode) - N flag', () => {
    const program = `
        LDA #$55
        ADC #$55
        HLT
    `
    const compiledProgram = compile(program)
    expect(compiledProgram).toEqual([0xA9, 0x55, 0x69, 0x55, 0xFF])
    
    cpu.reset()
    cpu.loadProgram(compiledProgram)

    while(!cpu.doInstruction()) {}
    expect(cpu.registerAcc).toEqual(0xAA)
    expect(cpu.flagC).toEqual(0)
    expect(cpu.flagZ).toEqual(0)
    expect(cpu.flagN).toEqual(1)
    expect(cpu.flagV).toEqual(1)
    expect(cpu.flagsRegister).toEqual(0b00101100)
})

test('Test ADC instruction (immediate mode) - Z flag', () => {
    const program = `
        LDA #$F0
        ADC #$05
        HLT
    `
    const compiledProgram = compile(program)
    expect(compiledProgram).toEqual([0xA9, 0xF0, 0x69, 0x05, 0xFF])
    
    cpu.reset()
    cpu.loadProgram(compiledProgram)

    while(!cpu.doInstruction()) {}
    expect(cpu.registerAcc).toEqual(0xF5)
    expect(cpu.flagC).toEqual(0)
    expect(cpu.flagZ).toEqual(0)
    expect(cpu.flagN).toEqual(1)
    expect(cpu.flagV).toEqual(1)
    expect(cpu.flagsRegister).toEqual(0b00101100)
})

test('Test ADC instruction (immediate mode) - V flag', () => {
    const program = `
        LDA #$50
        ADC #$50
        HLT
    `
    const compiledProgram = compile(program)
    expect(compiledProgram).toEqual([0xA9, 0x50, 0x69, 0x50, 0xFF])
    
    cpu.reset()
    cpu.loadProgram(compiledProgram)

    while(!cpu.doInstruction()) {}
    expect(cpu.registerAcc).toEqual(0xA0)
    expect(cpu.flagC).toEqual(0)
    expect(cpu.flagZ).toEqual(0)
    expect(cpu.flagN).toEqual(1)
    expect(cpu.flagV).toEqual(1)
    expect(cpu.flagsRegister).toEqual(0b00101100)
})

test('Test ADC instruction (immediate mode) - V flag 2', () => {
    // const program = `
    //     LDA #$d0
    //     ADC #$90
    //     HLT
    // `
    // const compiledProgram = compile(program)
    // expect(compiledProgram).toEqual([0xA9, 0xd0, 0x69, 0x90, 0xFF])
    
    // cpu.reset()
    // cpu.loadProgram(compiledProgram)

    // while(!cpu.doInstruction()) {}
    // expect(cpu.registerAcc).toEqual(0x60)
    // expect(cpu.flagC).toEqual(1)
    // expect(cpu.flagZ).toEqual(0)
    // expect(cpu.flagN).toEqual(0)
    // expect(cpu.flagV).toEqual(1)
    // expect(cpu.flagsRegister).toEqual(0b00101100)
})

// test('Test ADC instruction (zero page mode)', () => {
//     const program = `
//         LDA #$05
//         STA $10
//         LDA #$05
//         ADC $10
//         HLT
//     `
//     const compiledProgram = compile(program)
//     expect(compiledProgram).toEqual([0xA9, 0x05, 0x85, 0x10, 0xA9, 0x05, 0x65, 0x10, 0xFF])
    
//     cpu.reset()
//     cpu.loadProgram(compiledProgram)

//     while(!cpu.doInstruction()) {}
//     expect(cpu.registerAcc).toEqual(0x0A)
//     expect(cpu.flagC).toEqual(0)
//     expect(cpu.flagZ).toEqual(0)
//     expect(cpu.flagN).toEqual(0)
//     expect(cpu.flagsRegister).toEqual(0b00100000)
// })