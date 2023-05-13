import { expect, test } from 'vitest'
import { compile, labels } from '../../src/compiler.js'
import { cpu } from '../../src/emulator.js'

test('Test BNE instruction - branch', () => {
    const program = `
        LDA #$55
        BNE done
        LDA #$FF
    done:
        HLT
    `
    const compiledProgram = compile(program)
    expect(labels).toEqual([['done', 0x06]])
    expect(cpu.flagZ).toEqual(0)
    expect(compiledProgram).toEqual([0xA9, 0x55, 0xD0, 0x06, 0xA9, 0xFF, 0xFF])
    
    cpu.reset()
    cpu.loadProgram(compiledProgram)

    while(!cpu.doInstruction()) {}
    expect(cpu.registerAcc).toEqual(0x55)
})

test('Test BNE instruction - don\'t branch', () => {
    const program = `
        LDA #$00
        BNE done
        LDA #$FF
    done:
        HLT
    `
    const compiledProgram = compile(program)
    expect(labels).toEqual([['done', 0x06]])
    expect(cpu.flagZ).toEqual(0)
    expect(compiledProgram).toEqual([0xA9, 0x00, 0xD0, 0x06, 0xA9, 0xFF, 0xFF])
    
    cpu.reset()
    cpu.loadProgram(compiledProgram)

    while(!cpu.doInstruction()) {}
    expect(cpu.registerAcc).toEqual(0xFF)
})