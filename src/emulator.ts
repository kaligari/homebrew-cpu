import { CE, CO, II, MAI, MO,
    registerAValue, resetRegisters, flagsRegisterValue, instructionRegisterValue, setMemory, tick, registerXValue, registerAccValue, FLAG_ZERO, FLAG_NEGATIVE, FLAG_HALT, programCounterValue, registerBValue, ALUMode, FLAG_CARRY, getMemory, dumpMemory, addressRegisterValue, FLAG_OVERFLOW, FLAG_INTERRUPT, IMC, microInstructionCounterValue } from "../build/debug";
import { mnemonics } from "./mnemonics";

class CPU {
    reset(): void {
        resetRegisters()
    }

    getMemory(address: number): number {
        return getMemory(address)
    }

    dumpMemory(start = 0, end = 65535): void {
        console.log('\x1b[36m -- Memory dump (0x' + start.toString(16).toUpperCase().padStart(2, '0') + ' - 0x' + end.toString(16).toUpperCase().padStart(2, '0') + '): \x1b[0m');
        console.log(dumpMemory(start, end))
    }

    loadProgram(inputProgram: number[]): void {
        for (let i = 0; i < inputProgram.length; i++) {
            setMemory(i, inputProgram[i]);
        }
    }

    debugPrintLine(name: string, value: number|string, color: number = 35, pre = '║', post = ''): void {
        this.debugPrintValue(`${pre}${name}${value.toString(16).toUpperCase().padStart(2, '0')}${post}`, color)
    }

    debugPrintValue(text: string, color: number) {
        console.log(`\x1b[${color}m${text}\x1b[0m`);
    }

    debugPrintRegister(name: string, value: number): void {
        this.debugPrintLine(`${name}\x1b[33m0x`, value)
    }
    
     doInstruction(debug = false): boolean {
        if(debug) {
            this.debugPrintLine('Program Counter: 0x', programCounterValue(), 36, '╔══[', ']═════')
            this.debugPrintValue('╟════[Fetch]', 34)
        }
         // Fetch
         MAI(); CO(); tick();
         IMC(); MO(); II(); CE(); tick();
         
         // Decode
         const instruction = instructionRegisterValue()
         
         const mnemonic = mnemonics.find(mnemonic => mnemonic.opcode === instruction)
         if(!mnemonic) {
            throw new Error('Unknown instruction: ' + instruction.toString(16).toUpperCase())
        }
        if(debug) {
            this.debugPrintValue('╚════[Decode]', 34)
        }
        const instructions = mnemonic.instructions
            
        if(debug) {
            this.debugPrintLine('Program Counter: 0x', programCounterValue(), 36, '╔══[', ']═════')
            this.debugPrintValue('╟════[Execute]', 34)
            this.debugPrintValue(`╟══════[Instruction: 0x${mnemonic.opcode.toString(16).toLocaleUpperCase()}(\x1b[36m${mnemonic.mnemonic}\x1b[33m)]`, 33)
        }
        
        while(true) {
            IMC();
            const instruction = instructions[microInstructionCounterValue() - 2]
            if(instruction.length === 0) {
                throw new Error('Unknown instruction')
            }
            instruction.forEach(step => step())
            if(microInstructionCounterValue() === 0) {   
                break
            }
            tick();
            if(debug) {
                this.debugPrintLine('Step: 0x', microInstructionCounterValue() + 2, 32, '╟════════[', ']')
                this.debugPrintRegister('Instruction reg -------- ', instructionRegisterValue())
                this.debugPrintRegister('Accumulator ------------ ', registerAccValue())
                this.debugPrintRegister('Register A ------------- ', registerAValue())
                this.debugPrintRegister('Register B ------------- ', registerBValue())
                this.debugPrintRegister('ALU Mode --------------- ', ALUMode())
                this.debugPrintRegister('Flags ------------------ ', flagsRegisterValue())
                this.debugPrintRegister('Address ---------------- ', addressRegisterValue())
            }
        }
        
        if(debug) {
            this.debugPrintValue('╚══════════════════════════════', 34)
        }
        
        return this.flagHalt === 1
      }

      get registerA(): number {
        return registerAValue()
    }   

    get registerX(): number {
        return registerXValue()
    }   

    get registerAcc(): number {
        return registerAccValue()
    }

    get flagsRegister(): number {
        return flagsRegisterValue()
    }

    readFlag(flag: number): number {
        return (flagsRegisterValue() & (2 ** flag)) >> flag
    }

    get flagC(): number {
        return this.readFlag(FLAG_CARRY.value)
    }

    get flagZ(): number {
        return this.readFlag(FLAG_ZERO.value)
    }

    get flagN(): number {
        return this.readFlag(FLAG_NEGATIVE.value)
    }

    get flagV(): number {
        return this.readFlag(FLAG_OVERFLOW.value)
    }

    get flagI(): number {
        return this.readFlag(FLAG_INTERRUPT.value)
    }

    get flagHalt(): number {
        return this.readFlag(FLAG_HALT.value)
    }
}

const cpu = new CPU()
export { cpu }