import { Register8bit } from "../models/Register";

export const registerA = new Register8bit()

export function registerAValue(): number {
    return registerA.value
}

/**
 * Register A In
 */
export function AI(): void {
    registerA.readFromBus();
}

/**
 * Register A Out
 */
export function AO(): void {
    registerA.writeToBus();
}