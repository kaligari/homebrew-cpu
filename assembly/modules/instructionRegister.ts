import { Register8bit } from "../models/Register";

export const instructionRegister = new Register8bit()

/**
 * Instruction Register In
 */
export function II(): void {
    instructionRegister.readFromBus();
}

export function instructionRegisterValue(): u8 {
    return instructionRegister.value;
}