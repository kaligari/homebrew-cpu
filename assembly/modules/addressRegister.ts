import { Register8bit } from "../models/Register";

export const addressRegister = new Register8bit()

/**
 * Memory Address Out
 */
export function addressRegisterValue(): u8 {
   return addressRegister.value;
}

/**
 * Memory Address In
 */
export function MAI(): void {
   addressRegister.readFromBus();
}