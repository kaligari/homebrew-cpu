import { expect, test } from 'vitest'
import { compile } from '../../src/compiler.js'
import { cpu } from '../../src/emulator.js'

test('Test JMP instruction', () => {
    const program = `
        JMP $02
        HLT
    `
    const compiledProgram = compile(program)
    expect(compiledProgram).toEqual([0x4C, 0x02, 0xFF])
    
    cpu.reset()
    cpu.loadProgram(compiledProgram)

    while(!cpu.doInstruction()) {}
})

test('Test JMP instruction', () => {
    const program = `
        LDA #$AA
        JMP done
    dontExecute:
        LDA #$55
    done:
        HLT
    `
    const compiledProgram = compile(program)
    expect(compiledProgram).toEqual([0xA9, 0xAA, 0x4C, 0x06, 0xA9, 0x55, 0xFF])

    cpu.reset()
    cpu.loadProgram(compiledProgram)

    while(!cpu.doInstruction()) {}
    expect(cpu.registerAcc).toEqual(0xAA)
})

