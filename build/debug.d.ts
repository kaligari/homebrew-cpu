/** Exported memory */
export declare const memory: WebAssembly.Memory;
/**
 * assembly/modules/microInstructionCounter/microInstructionCounterValue
 * @returns `f64`
 */
export declare function microInstructionCounterValue(): number;
/**
 * assembly/modules/microInstructionCounter/RMC
 */
export declare function RMC(): void;
/**
 * assembly/modules/microInstructionCounter/IMC
 */
export declare function IMC(): void;
/**
 * assembly/modules/registerA/registerAValue
 * @returns `f64`
 */
export declare function registerAValue(): number;
/**
 * assembly/modules/registerA/AO
 */
export declare function AO(): void;
/**
 * assembly/modules/registerA/AI
 */
export declare function AI(): void;
/**
 * assembly/modules/registerB/registerBValue
 * @returns `f64`
 */
export declare function registerBValue(): number;
/**
 * assembly/modules/registerB/BI
 */
export declare function BI(): void;
/**
 * assembly/modules/registerAcc/registerAccValue
 * @returns `f64`
 */
export declare function registerAccValue(): number;
/**
 * assembly/modules/registerAcc/ACI
 */
export declare function ACI(): void;
/**
 * assembly/modules/registerAcc/ACO
 */
export declare function ACO(): void;
/**
 * assembly/modules/registerX/registerXValue
 * @returns `f64`
 */
export declare function registerXValue(): number;
/**
 * assembly/modules/registerX/XI
 */
export declare function XI(): void;
/**
 * assembly/modules/registerX/XO
 */
export declare function XO(): void;
/**
 * assembly/modules/registerX/XINC
 */
export declare function XINC(): void;
/**
 * assembly/modules/registerX/XDEC
 */
export declare function XDEC(): void;
/**
 * assembly/modules/flags/flagsRegisterValue
 * @returns `u8`
 */
export declare function flagsRegisterValue(): number;
/** assembly/modules/flags/FLAG_CARRY */
export declare const FLAG_CARRY: {
  /** @type `u8` */
  get value(): number
};
/** assembly/modules/flags/FLAG_ZERO */
export declare const FLAG_ZERO: {
  /** @type `u8` */
  get value(): number
};
/** assembly/modules/flags/FLAG_NEGATIVE */
export declare const FLAG_NEGATIVE: {
  /** @type `u8` */
  get value(): number
};
/** assembly/modules/flags/FLAG_HALT */
export declare const FLAG_HALT: {
  /** @type `u8` */
  get value(): number
};
/** assembly/modules/flags/FLAG_OVERFLOW */
export declare const FLAG_OVERFLOW: {
  /** @type `u8` */
  get value(): number
};
/** assembly/modules/flags/FLAG_INTERRUPT */
export declare const FLAG_INTERRUPT: {
  /** @type `u8` */
  get value(): number
};
/**
 * assembly/modules/flags/CHF
 */
export declare function CHF(): void;
/**
 * assembly/modules/flags/CZF
 */
export declare function CZF(): void;
/**
 * assembly/modules/flags/CNF
 */
export declare function CNF(): void;
/**
 * assembly/modules/flags/CCF
 */
export declare function CCF(): void;
/**
 * assembly/modules/flags/CVF
 */
export declare function CVF(): void;
/**
 * assembly/modules/flags/SCF
 */
export declare function SCF(): void;
/**
 * assembly/modules/flags/RCF
 */
export declare function RCF(): void;
/**
 * assembly/modules/flags/SIF
 */
export declare function SIF(): void;
/**
 * assembly/modules/flags/RIF
 */
export declare function RIF(): void;
/**
 * assembly/modules/flags/FI
 */
export declare function FI(): void;
/**
 * assembly/modules/flags/FO
 */
export declare function FO(): void;
/**
 * assembly/modules/addressRegister/MAI
 */
export declare function MAI(): void;
/**
 * assembly/modules/addressRegister/addressRegisterValue
 * @returns `u8`
 */
export declare function addressRegisterValue(): number;
/**
 * assembly/modules/programCounter/programCounterValue
 * @returns `f64`
 */
export declare function programCounterValue(): number;
/**
 * assembly/modules/programCounter/CO
 */
export declare function CO(): void;
/**
 * assembly/modules/programCounter/CE
 */
export declare function CE(): void;
/**
 * assembly/modules/programCounter/J
 */
export declare function J(): void;
/**
 * assembly/modules/programCounter/JCF
 */
export declare function JCF(): void;
/**
 * assembly/modules/programCounter/JNC
 */
export declare function JNC(): void;
/**
 * assembly/modules/programCounter/JNZ
 */
export declare function JNZ(): void;
/**
 * assembly/modules/instructionRegister/instructionRegisterValue
 * @returns `u8`
 */
export declare function instructionRegisterValue(): number;
/**
 * assembly/modules/instructionRegister/II
 */
export declare function II(): void;
/**
 * assembly/modules/alu/SO
 */
export declare function SO(): void;
/**
 * assembly/modules/alu/SU
 */
export declare function SU(): void;
/**
 * assembly/modules/alu/A0_0
 */
export declare function A0_0(): void;
/**
 * assembly/modules/alu/A0_1
 */
export declare function A0_1(): void;
/**
 * assembly/modules/alu/A1_0
 */
export declare function A1_0(): void;
/**
 * assembly/modules/alu/A1_1
 */
export declare function A1_1(): void;
/**
 * assembly/modules/alu/A2_0
 */
export declare function A2_0(): void;
/**
 * assembly/modules/alu/A2_1
 */
export declare function A2_1(): void;
/**
 * assembly/modules/alu/A3_0
 */
export declare function A3_0(): void;
/**
 * assembly/modules/alu/A3_1
 */
export declare function A3_1(): void;
/**
 * assembly/modules/alu/A4_0
 */
export declare function A4_0(): void;
/**
 * assembly/modules/alu/A4_1
 */
export declare function A4_1(): void;
/**
 * assembly/modules/alu/ALUMode
 * @returns `f64`
 */
export declare function ALUMode(): number;
/**
 * assembly/modules/alu/SHR
 */
export declare function SHR(): void;
/**
 * assembly/modules/alu/SHL
 */
export declare function SHL(): void;
/**
 * assembly/modules/memory/setMemory
 * @param address `u8`
 * @param value `u8`
 */
export declare function setMemory(address: number, value: number): void;
/**
 * assembly/modules/memory/getMemory
 * @param address `u8`
 * @returns `u8`
 */
export declare function getMemory(address: number): number;
/**
 * assembly/modules/memory/dumpMemory
 * @param start `i32`
 * @param end `i32`
 * @returns `~lib/string/String`
 */
export declare function dumpMemory(start?: number, end?: number): string;
/**
 * assembly/modules/memory/clearMemory
 */
export declare function clearMemory(): void;
/**
 * assembly/modules/memory/MI
 */
export declare function MI(): void;
/**
 * assembly/modules/memory/MO
 */
export declare function MO(): void;
/**
 * assembly/modules/bus/resetRegisters
 */
export declare function resetRegisters(): void;
/**
 * assembly/modules/bus/tick
 */
export declare function tick(): void;
