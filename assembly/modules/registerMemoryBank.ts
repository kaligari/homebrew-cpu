import { Register8bit } from "../models/Register";

export const registerMemoryBank = new Register8bit()

export function registerXValue(): number {
    return registerMemoryBank.value;
}

/**
 * Register Memory Bank In
 */
export function RMBI(): void {
    registerMemoryBank.readFromBus();
}
