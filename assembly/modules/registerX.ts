import { Register8bit } from "../models/Register";

export const registerX = new Register8bit()

export function registerXValue(): number {
    return registerX.value;
}

/**
 * Register X In
 */
export function XI(): void {
    registerX.readFromBus();
}

/**
 * Register X Out
 */
export function XO(): void {
    registerX.writeToBus();
}