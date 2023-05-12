import { Register8bit } from '../models/Register';
import { FLAG_CARRY, FLAG_ZERO, flagsRegister } from './flags';
import { RMC } from './microInstructionCounter';

export const programCounter = new Register8bit()

export function programCounterValue(): number {
    return programCounter.value
}

/**
 * Counter Enable
 */
export function CE(): void {
    programCounter.increment();
}

/**
 * Counter Out
 */
export function CO(): void {
    programCounter.writeToBus();
}

/**
 * Jump
 */
export function J(): void {
    programCounter.readFromBus();
}

/**
 * Jump if Carry Flag is set
 */
export function JCF(): void {
    if ((flagsRegister.value & 1 << FLAG_CARRY) === 1) {
        programCounter.readFromBus();
        RMC();
    }
}

/**
 * Jump if Carry Flag is clear
 */
export function JNC(): void {
    if ((flagsRegister.value & 1 << FLAG_CARRY) === 0) {
        programCounter.readFromBus();
        RMC();
    }
}

/**
 * Jump if Zero Flag is clear
 */
export function JNZ(): void {
    if ((flagsRegister.value & 1 << FLAG_ZERO) === 0) {
        programCounter.readFromBus();
        RMC();
    }
}