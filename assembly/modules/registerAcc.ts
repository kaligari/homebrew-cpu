import { Register8bit } from "../models/Register";

export const registerAcc = new Register8bit()

export function registerAccValue(): number {
    return registerAcc.value
}

/**
 * Accumulator In
 */
export function ACI(): void {
    registerAcc.readFromBus();
}

/**
 * Accumulator Out
 */
export function ACO(): void {
    registerAcc.writeToBus();
}