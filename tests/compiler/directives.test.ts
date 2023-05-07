import { expect, test } from 'vitest'
import { compile, labels } from '../../src/compiler.js'

test('Test label directive', () => {
    const program = `
    start:
        LDA #$55
    
    end:
        HLT
    `
    const compiledProgram = compile(program)
    expect(labels).toEqual([['start', 0x00], ['end', 0x02]])
    expect(compiledProgram).toEqual([0xA9, 0x55, 0xFF])
})

// test('Test hoisted labels', () => {
//     const program = `
//     start:
//         LDA #$55
//         JMP end
    
//     end:
//         HLT
//     `
//     const compiledProgram = compile(program)
//     expect(labels).toEqual([['start', 0x00], ['end', 0x02]])
//     expect(compiledProgram).toEqual([0x05, 0x55, 0xFF])
// })

test('Test .byte directive', () => {
    const program = `
        .byte $55`
    const compiledProgram = compile(program)
    expect(compiledProgram).toEqual([0x55])
})

test('Test .byte directive', () => {
    const program = `
        .word $1234
    `
    const compiledProgram = compile(program)
    expect(compiledProgram).toEqual([0x34, 0x12])
})

test('Test .asciiz directive', () => {
    const program = `
        .asciiz "Hello, world!"
    `
    const compiledProgram = compile(program)
    expect(compiledProgram).toEqual([0x48, 0x65, 0x6C, 0x6C, 0x6F, 0x2C, 0x20, 0x77, 0x6F, 0x72, 0x6C, 0x64, 0x21, 0x0])
})