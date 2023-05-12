import { expect, test } from 'vitest'
import { compile } from '../../src/compiler.js'
import { cpu } from '../../src/emulator.js'

test('Test DEX instruction', () => {
    const program = `
        LDX #$55
        DEX
        HLT
    `
    const compiledProgram = compile(program)
    expect(compiledProgram).toEqual([0xA2, 0x55, 0xCA, 0xFF])
    
    cpu.reset()
    cpu.loadProgram(compiledProgram)

    while(!cpu.doInstruction()) {}
    expect(cpu.registerX).toEqual(0x55 - 1)
})

test('Test DEX instruction - flag Z', () => {
    const program = `
        LDX #$01
        DEX
        HLT
    `
    const compiledProgram = compile(program)
    expect(compiledProgram).toEqual([0xA2, 0x01, 0xCA, 0xFF])
    
    cpu.reset()
    cpu.loadProgram(compiledProgram)

    while(!cpu.doInstruction()) {}
    expect(cpu.flagZ).toEqual(1)
    expect(cpu.registerX).toEqual(0x00)
})

// TODO: test flag N