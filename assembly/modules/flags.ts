import { Flags8bit } from "../models/Flags";

export const FLAG_CARRY: u8 =       0;
export const FLAG_ZERO: u8 =        1;
export const FLAG_NEGATIVE: u8 =    2;
export const FLAG_OVERFLOW: u8 =    3;
export const FLAG_INTERRUPT: u8 =   4;
export const FLAG_HALT: u8 =        5;

export const flagsRegister: Flags8bit = new Flags8bit();

export function flagsRegisterValue(): u8 {
    return flagsRegister.value;
}

/**
 * Flags In
 */
export function FI(): void {
    flagsRegister.readFromBus();
}

/**
 * Flags Out
 */
export function FO(): void {
    flagsRegister.writeToBus();
}

/**
 * Capture Carry Flag
 */
export function CCF(): void {
    flagsRegister.setFlagC = true;
}

/**
 * Capture Zero Flag
 */
export function CZF(): void {
    flagsRegister.setFlagZ = true;
}

/**
 * Capture Negative Flag
 */
export function CNF(): void {
    flagsRegister.setFlagN = true;
}

/**
 * Capture Overflow Flag
 */
export function CVF(): void {
    flagsRegister.setFlagO = true;
}

/**
 * Capture Halt Flag
 */
export function CHF(): void {
    flagsRegister.setFlagH = true;
}

/**
 * Set Carry Flag
 */
export function SCF(): void {
    flagsRegister.setBit(FLAG_CARRY);
}

/**
 * Reset Carry Flag
 */
export function RCF(): void {
    flagsRegister.removeBit(FLAG_CARRY);
}

/**
 * Set Interrupt Flag
 */
export function SIF(): void {
    flagsRegister.setBit(FLAG_INTERRUPT);
}

/**
 * Reset Interrupt Flag
 */
export function RIF(): void {
    flagsRegister.removeBit(FLAG_INTERRUPT);
}

// Dump Flags
export function dumpFlags(): void {
    console.log('-------- Flags --------');
    console.log('Carry: ' + ((flagsRegister.value & 0b00000001) > 0 ? 'true' : 'false'));
    console.log('Overflow: ' + ((flagsRegister.value & 0b00000010) > 0 ? 'true' : 'false'));
    console.log('Zero: ' + ((flagsRegister.value & 0b00000100) > 0 ? 'true' : 'false'));
    console.log('Negative: ' + ((flagsRegister.value & 0b00001000) > 0 ? 'true' : 'false'));
    console.log('Interrupt: ' + ((flagsRegister.value & 0b00010000) > 0 ? 'true' : 'false'));
    console.log('Halt: ' + ((flagsRegister.value & 0b00100000) > 0 ? 'true' : 'false'));
    // console.log('Break: ' + ((flagsRegister.value & 0b01000000) > 0 ? 'true' : 'false'));
    // console.log('Decimal: ' + ((flagsRegister.value & 0b10000000) > 0 ? 'true' : 'false'));
}

// Reset Flags
export function resetFlags(): void {
    flagsRegister.reset();
}