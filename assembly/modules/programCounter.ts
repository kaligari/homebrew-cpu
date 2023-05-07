import { Counter8bit } from '../models/Counter'
import { FLAG_CARRY, flagsRegister } from './flags';
import { RMC } from './microInstructionCounter';

export const programCounter = new Counter8bit()

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
    if ((flagsRegister.value & 1 >> FLAG_CARRY) === 1) {
        programCounter.readFromBus();
        RMC();
    }
}

/**
 * Jump if Carry Flag is clear
 */
export function JNC(): void {
    if ((flagsRegister.value & 1 >> FLAG_CARRY) === 0) {
        programCounter.readFromBus();
        RMC();
    }
}