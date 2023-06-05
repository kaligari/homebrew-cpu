import { Memory } from "../models/Memory";
import { addressRegister } from "./addressRegister";

export const memory = new Memory(256)

/**
 * Memory Out
 */
export function MO(): void {
    memory.getMemory(addressRegister.value).writeToBus();
}

/**
 * Memory In
 */
export function MI(): void {
    memory.getMemory(addressRegister.value).readFromBus();
}

/**
 * Set Memory
 * @param address
 * @param value
 */
export function setMemory(address: u8, value: u8): void {
    memory.getMemory(address).setValue(value);
}

/**
 * Get Memory
 */
export function getMemory(address: u8): u8 {
    return memory.getMemory(address).value;
}

/**
 * Clear Memory
 */
export function clearMemory(): void {
    const memoryLength = memory.length as u8
    for (let i: u8 = 0; i < memoryLength; i++) {
        memory.getMemory(i).setValue(0);
    }
}

/**
 * Copy fragment of memory from given address to given address
 */
export function copyMemory(from: u8, to: u8, length: u8): void {
    for (let i = 0; i < length; i++) {
        memory.getMemory(to + i).setValue(memory.getMemory(from + i).value);
    }
}

/**
 * Dump Memory
 * @returns
 */
export function dumpMemory(start: u8 = 0, end: u8 = 255): string {
    let output = ''
    const memoryLength = memory.length as u8
    const addrEnd = end + 1 > memoryLength ? memoryLength : end + 1
    for (let i = start; i < addrEnd; i++) {
        // if (i % 8 === 0) output += i.toString(16).padStart(2, '0').toUpperCase() + ':    '
        output += '0x' + i.toString(16).padStart(2, '0').toUpperCase() + ': -- 0x'
        output += memory.getMemory(i).value.toString(16).padStart(2, '0').toUpperCase() + '  ';
        output += '\n';
        // if (i % 8 === 3) output += '  '
        // if (i % 8 === 7) output += '\n'
    }
    return output
}