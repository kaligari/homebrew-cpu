import Bus from "../models/Bus"
import { Register8bit } from "../models/Register"
import { addressRegister } from "./addressRegister"
import { registerA } from "./registerA"
import { registerB } from "./registerB"
import { registerAcc } from "./registerAcc"
import { registerX } from "./registerX"
import { alu } from "./alu"
import { flagsRegister } from "./flags"
import { instructionRegister } from "./instructionRegister"
import { programCounter } from "./programCounter"
import { memory } from "./memory"

export const bus = new Bus()

bus.addRegister(programCounter)
bus.addRegister(addressRegister)
bus.addRegister(instructionRegister)
bus.addRegister(registerA)
bus.addRegister(registerB)
bus.addRegister(registerAcc)
bus.addRegister(registerX)
bus.addRegister(alu)
bus.addRegister(flagsRegister)

for (let i = 0; i < memory.length; i++) {
  memory[i] = new Register8bit()
  bus.addRegister(memory[i])
}

/**
 * Clock tick
 */
export function tick(): void {
  bus.updateRegisters();
}

/**
 * Reset all registers
 */
export function resetRegisters(): void {
  bus.resetRegisters();
}