import { Counter8bit } from '../models/Counter'

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