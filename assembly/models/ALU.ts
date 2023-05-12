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
    flagsRegister: Flags8bit
    dataShiftedRight: boolean = false;
    carryOccurred: boolean = false;
    overflowOccurred: boolean = false;

    constructor(registerA: Register8bit, registerB: Register8bit, flagsRegister: Flags8bit) {
        super();
        this.registerA = registerA;
        this.registerB = registerB;
        this.flagsRegister = flagsRegister;
    }

    calculate(): void {
        switch(this.mode) {
            case 0b1_0110: // Subtract
                this.value = this.registerA.value - this.registerB.value;
                break;
            case 0b0_1001: // Add
                this.value = this.registerA.value + this.registerB.value;
                // add carry
                if ((this.flagsRegister.value & 1 << FLAG_CARRY) === 1) {
                    this.value++;
                }
                // calc overflow
                const m = this.registerA.value >> 7;
                const n = this.registerB.value >> 7;
                const r = this.value >> 7;
                if (m === n && m !== r) {
                    this.overflowOccurred = true;
                } else {
                    this.overflowOccurred = false;
                }
                break;
            case 0b1_1111: // A = A
                this.value = this.registerA.value;
                break;
            case 0b0_1011: // A OR B
                this.value = this.registerA.value | this.registerB.value;
                break;
            case 0b0_1100: // Shift register A to left
                this.value = this.registerA.value << 1;
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
        this.carryOccurred = u16_additionResult > 255 ? true : false;

        this.calculate();

        // set Zero Flag
        if (this.flagsRegister.setFlagZ){
            if(this.value === 0) {
                this.flagsRegister.setBit(FLAG_ZERO);
            } else {
                this.flagsRegister.removeBit(FLAG_ZERO);
            }
            this.flagsRegister.setFlagZ = false;
        }

        // set Negative Flag
        if (this.flagsRegister.setFlagN) {
            if(this.value >> 7 === 1) {
                this.flagsRegister.setBit(FLAG_NEGATIVE);
            } else {
                this.flagsRegister.removeBit(FLAG_NEGATIVE);
            }
            this.flagsRegister.setFlagN = false;
        }

        // set Halt Flag
        if (this.flagsRegister.setFlagH) {
            this.flagsRegister.setBit(FLAG_HALT);
            this.flagsRegister.setFlagH = false;
        }

        // set Carry Flag
        if (this.flagsRegister.setFlagC) {
            if(this.carryOccurred || this.dataShiftedRight) {
                this.flagsRegister.setBit(FLAG_CARRY);
            } else {
                this.flagsRegister.removeBit(FLAG_CARRY);
            }
            this.flagsRegister.setFlagC = false;
            this.dataShiftedRight = false;
        }

        // set Overflow Flag
        if (this.flagsRegister.setFlagO) {
            if(this.overflowOccurred) {
                this.flagsRegister.setBit(FLAG_OVERFLOW);
            } else {
                this.flagsRegister.removeBit(FLAG_OVERFLOW);
            }
            this.flagsRegister.setFlagO = false;
        }
    }
}