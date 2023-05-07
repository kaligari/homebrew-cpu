import { expect, test } from 'vitest'
import { compile, labels } from '../../src/compiler.js'
import { cpu } from '../../src/emulator.js'

test('Test BCC instruction - branch', () => {
    const program = `
        LDA #$55
        CLC
        BCC done
        LDA #$FF
    done:
        HLT
    `
    const compiledProgram = compile(program)
    expect(labels).toEqual([['done', 0x07]])
    expect(compiledProgram).toEqual([0xA9, 0x55, 0x18, 0x90, 0x07, 0xA9, 0xFF, 0xFF])
    
    cpu.reset()
    cpu.loadProgram(compiledProgram)
    

    while(!cpu.doInstruction()) {}
    expect(cpu.registerAcc).toEqual(0x55)
})

test('Test BCC instruction - don\'t branch', () => {
    const program = `
        LDA #$55
        SEC
        BCC done
        LDA #$FF
    done:
        HLT
    `
    const compiledProgram = compile(program)
    expect(labels).toEqual([['done', 0x07]])
    expect(compiledProgram).toEqual([0xA9, 0x55, 0x38, 0x90, 0x07, 0xA9, 0xFF, 0xFF])
    
    cpu.reset()
    cpu.loadProgram(compiledProgram)
    

    while(!cpu.doInstruction()) {}
    expect(cpu.registerAcc).toEqual(0xFF)
})