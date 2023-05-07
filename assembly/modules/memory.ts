import { Register8bit } from "../models/Register";
import { addressRegister } from "./addressRegister";

export const memory: Register8bit[] = new Array(256)

/**
 * Memory Out
 */
export function MO(): void {
    memory[addressRegister.value].writeToBus();
}

/**
 * Memory In
 */
export function MI(): void {
    memory[addressRegister.value].readFromBus();
}

/**
 * Set Memory
 * @param address
 * @param value
 */
export function setMemory(address: u8, value: u8): void {
    memory[address].setValue(value);
}

/**
 * Get Memory
 */
export function getMemory(address: u8): u8 {
    return memory[address].value;
}

/**
 * Clear Memory
 */
export function clearMemory(): void {
    for (let i = 0; i < memory.length; i++) {
        memory[i].setValue(0);
    }655
}

/**
 * Dump Memory
 * @returns
 */
export function dumpMemory(start: i32 = 0, end: i32 = 65535): string {
    let output = ''
    const addrEnd = end + 1 > memory.length ? memory.length : end + 1
    for (let i = start; i < addrEnd; i++) {
        // if (i % 8 === 0) output += i.toString(16).padStart(2, '0').toUpperCase() + ':    '
        output += '0x' + i.toString(16).padStart(2, '0').toUpperCase() + ': -- 0x'
        output += memory[i].value.toString(16).padStart(2, '0').toUpperCase() + '  ';
        output += '\n';
        // if (i % 8 === 3) output += '  '
        // if (i % 8 === 7) output += '\n'
    }
    return output
}