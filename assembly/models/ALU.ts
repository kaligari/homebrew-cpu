import { FLAG_CARRY, FLAG_HALT, FLAG_NEGATIVE, FLAG_OVERFLOW, FLAG_ZERO } from "../modules/flags";
import { registerAcc } from "../modules/registerAcc";
import { Flags8bit } from "./Flags";
import { Register8bit } from "./Register";

/**
 * Arithmetic Logic Unit
 * Implementing 74LS181
 */
export class ALU8bit extends Register8bit {
    mode: u8 = 0;
    registerA: Register8bit
    registerB: Register8bit
    flagRegister: Flags8bit
    dataShiftedRight: boolean = false;

    constructor(registerA: Register8bit, registerB: Register8bit, flagRegister: Flags8bit) {
        super();
        this.registerA = registerA;
        this.registerB = registerB;
        this.flagRegister = flagRegister;
    }

    calculate(): void {
        switch(this.mode) {
            case 0b1_0110: // Subtract
                this.value = this.registerA.value - this.registerB.value;
                break;
            case 0b0_1001: // Add
                this.value = this.registerA.value + this.registerB.value;
                break;
            case 0b1_1111: // A = A
                this.value = this.registerA.value;
                break;
            case 0b0_1011: // A OR B
                this.value = this.registerA.value | this.registerB.value;
                break;
            default:
                this.value = 0;
        }
    }

    subtract(): void {
        this.mode = 0b1_0110; 
    }

    beforeTick(): void {
        const u16_regA: u16 = this.registerA.value;
        const u16_regB: u16 = this.registerB.value;
        const u16_additionResult: u16 = u16_regA + u16_regB;
        const carryOccurred = u16_additionResult > 255 ? true : false;

        this.calculate();

        // set Zero Flag
        if (this.flagRegister.setFlagZ){
            if(this.value === 0) {
                this.flagRegister.setBit(FLAG_ZERO);
            } else {
                this.flagRegister.removeBit(FLAG_ZERO);
            }
            this.flagRegister.setFlagZ = false;
        }

        // set Negative Flag
        if (this.flagRegister.setFlagN) {
            if(this.value >> 7 === 1) {
                this.flagRegister.setBit(FLAG_NEGATIVE);
            } else {
                this.flagRegister.removeBit(FLAG_NEGATIVE);
            }
            this.flagRegister.setFlagN = false;
        }

        // set Halt Flag
        if (this.flagRegister.setFlagH) {
            this.flagRegister.setBit(FLAG_HALT);
            this.flagRegister.setFlagH = false;
        }

        // set Carry Flag
        if (this.flagRegister.setFlagC) {
            if(carryOccurred || this.dataShiftedRight) {
                this.flagRegister.setBit(FLAG_CARRY);
            } else {
                this.flagRegister.removeBit(FLAG_CARRY);
            }
            this.flagRegister.setFlagC = false;
            this.dataShiftedRight = false;
        }

        // set Overflow Flag
        if (this.flagRegister.setFlagO) {
            if(u16_additionResult > 127 && u16_additionResult < 256) {
                this.flagRegister.setBit(FLAG_OVERFLOW);
            } else {
                this.flagRegister.removeBit(FLAG_OVERFLOW);
            }
            this.flagRegister.setFlagO = false;
        }
    }
}