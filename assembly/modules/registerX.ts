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

/**
 * Increment Register X
 */
export function XINC(): void {
    registerX.increment();
}

/**
 * Decrement Register X
 */
export function XDEC(): void {
    registerX.decrement();
}