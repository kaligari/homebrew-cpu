import { addressRegisterValue, MAI } from './modules/addressRegister'
import { A0_0, A0_1, A1_0, A1_1, A2_0, A2_1, A3_0, A3_1, A4_0, A4_1, ALUMode, SHL, SHR, SO, SU } from './modules/alu'
import { tick, resetRegisters } from './modules/bus'
import { flagsRegisterValue, FLAG_ZERO, FLAG_NEGATIVE, FLAG_HALT, FLAG_CARRY, FLAG_OVERFLOW, FLAG_INTERRUPT, FI, FO, CHF, CZF, CNF, CCF, CVF, RCF, SCF, RIF, SIF } from './modules/flags'
import { instructionRegisterValue, II } from './modules/instructionRegister'
import { programCounterValue, CE, CO, J, JCF, JNC, JNZ } from './modules/programCounter'
import { MI, MO, setMemory, dumpMemory, clearMemory, getMemory } from './modules/memory'
import { AI, AO, registerAValue } from './modules/registerA'
import { registerBValue, BI } from './modules/registerB'
import { registerXValue, XDEC, XI, XINC, XO } from './modules/registerX'
import { registerAccValue, ACI, ACO } from './modules/registerAcc'
import { microInstructionCounterValue, IMC, RMC } from './modules/microInstructionCounter'
export {
  // Micro Instruction Counter
  microInstructionCounterValue,
  RMC, IMC,
  // Register A
  registerAValue,
  AO, AI,
  // Register B
  registerBValue, 
  BI,
  // Register Accumulator
  registerAccValue,
  ACI, ACO,
  // Register X
  registerXValue,
  XI, XO, XINC, XDEC,
  // Flags Register
  flagsRegisterValue,
  FLAG_CARRY,
  FLAG_ZERO, FLAG_NEGATIVE,
  FLAG_HALT,
  FLAG_OVERFLOW,
  FLAG_INTERRUPT,
  CHF, CZF, CNF, CCF, CVF,
  SCF, RCF, SIF, RIF,
  FI, FO,
  // Address Register
  MAI,
  addressRegisterValue,
  // Program Counter
  programCounterValue,
  CO, CE, J,
  JCF, JNC, JNZ,
  // Instruction Register
  instructionRegisterValue,
  II,
  // ALU
  SO, SU,
  A0_0, A0_1,
  A1_0, A1_1,
  A2_0, A2_1,
  A3_0, A3_1,
  A4_0, A4_1,
  ALUMode,
  SHR, SHL,
  // Memory
  setMemory,
  getMemory,
  dumpMemory,
  clearMemory,
  MI, MO,
  // Register reset
  resetRegisters,
  // Clock
  tick,
}

// function doInstruction(): boolean {
//   let halt = false
  
//   // Fetch
//   MI(); CO(); tick();
//   RO(); II(); CE(); tick();
  
//   // Decode
//   mnemonics.forEach(mnemonic => {
//     const instruction = instructionRegister.value
//     console.log('instruction: ' + instruction.toString(16).toUpperCase());
//     console.log('mnemonic.opcode: ' + mnemonic.opcode.toString(16).toUpperCase());
//     if (mnemonic.opcode === instruction) {
//       // Execute
//       mnemonic.instructions.forEach(instruction => {
//         instruction.forEach(step => {
//           step();
//         });
//       });
//     }
//   });
  
  
//   // halt = true;
//   // switch (instruction) {
//   //   case 0:
//   //     // NOP
//   //     break;
//   //   // case 0b0000_0001:
//   //   //   // LDA
//   //   //   MI(); CO(); tick();
//   //   //   RO(); MI(); tick();
//   //   //   RO(); AI(); tick();
//   //   //   CE(); tick();

//   //   //   print(pc, ': LDA Load to register A value from memory location ' + addressRegister.value.toString(16).toUpperCase() + ' (value: ' + registerA.value.toString() + ')');
//   //   //   break;
//   //   case 0b0000_0010:
//   //     // ADD
//   //     MI(); CO(); tick();
//   //     RO(); MI(); tick();
//   //     RO(); BI(); tick();
//   //     AI(); SO(); tick();
//   //     CE(); tick();

//   //     print(pc, ': ADD Load to register B value from memory location ' + addressRegister.value.toString(16).toUpperCase() + ' (value: ' + registerB.value.toString() + ')');
//   //     break;
//   //   case 3:
//   //     // SUB
//   //     MI(); CO(); tick();
//   //     RO(); MI(); tick();
//   //     RO(); BI(); tick();
//   //     AI(); SO(); SU(); tick();
//   //     CE(); tick();

//   //     print(pc, ': SUB ' + registerA.value.toString() + ' - ' + registerB.value.toString() + ' = ' + alu.value.toString());
//   //     break;
//   //   case 4:
//   //     // STA
//   //     CO(); MI(); tick();
//   //     RO(); MI(); tick();
//   //     RI(); AO(); tick();
//   //     CE(); tick();

//   //     print(pc, ': STA Store value ' + registerA.value.toString() + ' to memory location ' + addressRegister.value.toString(16).toUpperCase());
//   //     break;
//   //   // case 0b0000_0101:
//   //   //   // LDI
//   //   //   CO(); MI(); tick();
//   //   //   RO(); AI(); tick();
//   //   //   CE(); tick();

//   //   //   print(pc, ': LDI Load to register A immediately value ' + registerA.value.toString());
//   //   //   break;
//   //   case 6:
//   //     // JMP
//   //     CO(); MI(); tick();
//   //     RO(); J(); tick();

//   //     print(pc, ': JMP Jump to memory address ' + ram[addressRegister.value].value.toString(16).toUpperCase());
//   //     break;
//   //   case 7:
//   //     // JC
//   //     console.log('JC ' + (flagsRegister.value & 0b00000001).toString());
      
//   //     if(flagsRegister.value & 0b00000001) {
//   //       CO(); MI(); tick();
//   //       RO(); J(); tick();
//   //       print(pc, ': JC Jump to memory address ' + ram[addressRegister.value].value.toString(16).toUpperCase());
//   //     }
//   //     break;
//   //   case 0b0000_1000:
//   //     // JZ
//   //     // TODO Here register A and B should have the same value
//   //     console.log('regA: ' + registerA.value.toString());
//   //     console.log('regB: ' + registerB.value.toString());
      
//   //     console.log('JZ ' + (flagsRegister.value & 0b00000010 ? true : false).toString());
//   //     if(flagsRegister.value & 0b00000010) {
//   //       CO(); MI(); tick();
//   //       RO(); J(); tick();
//   //       print(pc, ': JZ Jump to memory address ' + ram[addressRegister.value].value.toString(16).toUpperCase());
//   //     }
//   //     break;
//   //   case 0b0001_0000:
//   //     // STR
//   //     CO(); MI(); tick();
//   //     RO(); AI(); tick();
//   //     CE(); tick();
//   //     CO(); MI(); tick();
//   //     RO(); MI(); tick();
//   //     RI(); AO(); tick();
//   //     CE(); tick();

//   //     print(pc, ': STR Store value ' + registerA.value.toString(16).toUpperCase().padEnd(2, "0") + ' to memory location ' + addressRegister.value.toString(16).toUpperCase());
//   //     break;
//   //   case 0b0001_0001:
//   //     // LDX
//   //     MI(); CO(); tick();
//   //     RO(); MI(); tick();
//   //     RO(); XI(); tick();
//   //     CE(); tick();

//   //     print(pc, ': LDX Load to register X value from memory location ' + addressRegister.value.toString(16).toUpperCase() + ' (value: ' + registerX.value.toString() + ')');
//   //     break;
//   //   case 0b0001_0010:
//   //     // STX
//   //     CO(); MI(); tick();
//   //     RO(); XI(); tick();
//   //     CE(); tick();
//   //     CO(); MI(); tick();
//   //     RO(); MI(); tick();
//   //     RI(); XO(); tick();
//   //     CE(); tick();

//   //     print(pc, ': STX Store value ' + registerX.value.toString(16).toUpperCase().padEnd(2, "0") + ' to memory location ' + addressRegister.value.toString(16).toUpperCase());
//   //     break;
//   //   case 0b0001_0011:
//   //     // LDY
//   //     MI(); CO(); tick();
//   //     RO(); MI(); tick();
//   //     RO(); YI(); tick();
//   //     CE(); tick();

//   //     print(pc, ': LDY Load to register Y value from memory location ' + addressRegister.value.toString(16).toUpperCase() + ' (value: ' + registerY.value.toString() + ')');
//   //     break;
//   //   case 0b0001_0100:
//   //     // STY
//   //     CO(); MI(); tick();
//   //     RO(); YI(); tick();
//   //     CE(); tick();
//   //     CO(); MI(); tick();
//   //     RO(); MI(); tick();
//   //     RI(); YO(); tick();
//   //     CE(); tick();

//   //     print(pc, ': STY Store value ' + registerY.value.toString(16).toUpperCase().padEnd(2, "0") + ' to memory location ' + addressRegister.value.toString(16).toUpperCase());
//   //     break;
//   //   case 0b0001_0101:
//   //     // ADI
//   //     MI(); CO(); tick();
//   //     RO(); BI(); tick();
//   //     AI(); SO(); tick();
//   //     CE(); tick();

//   //     print(pc, ': ADD Load to register B value from memory location ' + addressRegister.value.toString(16).toUpperCase() + ' (value: ' + registerB.value.toString() + ')');
//   //     break;
//   //   case 0b1110_0000:
//   //     // OUT
//   //     AO(); OI(); tick();
//   //     print(pc, ': OUT: ' + outputRegister.value.toString());
//   //     break;
//   //   case 0b1111_0000:
//   //     // HLT
//   //     halt = true
//   //     print(pc, ': HLT');
//   //     break;
//   //   default:
//   //     break;
//   // }

//   // check halt
//   if(flagsRegister.value & 0b00100000) {
//     halt = true
//   }
  
//   return halt
// }