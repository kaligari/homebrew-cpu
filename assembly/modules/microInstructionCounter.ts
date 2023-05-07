import { Register8bit } from '../models/Register'

export const microInstructionCounter = new Register8bit()

export function microInstructionCounterValue(): number {
    return microInstructionCounter.value
}

/**
 * Resetm micro instruction counter
 */
export function RMC(): void {
    microInstructionCounter.value = 0
}

/**
 * Increment micro instruction counter
 */
export function IMC(): void {
    microInstructionCounter.value++
}