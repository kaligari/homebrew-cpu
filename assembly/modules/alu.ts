import { ALU8bit } from "../models/ALU";
import { flagsRegister } from "./flags";
import { registerA } from "./registerA";
import { registerB } from "./registerB";

export const alu = new ALU8bit(registerA, registerB, flagsRegister);

/**
 * ALU Subtract
 */
export function SU(): void {
  alu.subtract();
}

/**
 * ALU Mode
 */
export function ALUMode(): number {
  return alu.mode;
}

/**
 * ALU Out
 */
export function SO(): void {
  alu.writeToBus();
}

export function A0_0(): void {
  alu.mode &= 0b1_1110;
}

export function A0_1(): void {
  alu.mode |= 0b0_0001;
}

export function A1_0(): void {
  alu.mode &= 0b1_1101;
}

export function A1_1(): void {
  alu.mode |= 0b0_0010;
}

export function A2_0(): void {
  alu.mode &= 0b1_1011;
}

export function A2_1(): void {
  alu.mode |= 0b0_0100;
}

export function A3_0(): void {
  alu.mode &= 0b1_0111;
}

export function A3_1(): void {
  alu.mode |= 0b0_1000;
}

export function A4_0(): void {
  alu.mode &= 0b0_1111;
}

export function A4_1(): void {
  alu.mode |= 0b1_0000;
}

export function SHR(): void {
  const shiftedValue = alu.registerA.value >> 1;
  alu.dataShiftedRight = (alu.registerA.value & 0b0000_0001) === 1 ? true : false;
  alu.registerA.value = shiftedValue;
}

export function SHL(): void {
  alu.registerA.value = alu.registerA.value << 1;
}