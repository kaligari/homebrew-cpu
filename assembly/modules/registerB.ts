import { Register8bit } from "../models/Register";

export const registerB = new Register8bit()

/**
 * Register B In
 */
export function BI(): void {
    registerB.readFromBus();
}

export function registerBValue(): number {
    return registerB.value
}