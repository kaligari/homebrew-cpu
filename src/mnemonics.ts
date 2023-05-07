import { MAI, CE, CO, MI, MO, CHF, J, XI, ACI , CZF, CNF, AI, A0_1, A1_1, A2_1, A3_1, A4_1, BI, ACO, A2_0, SO, A1_0, A4_0, CCF, CVF, SCF, SIF, RIF, RCF, A3_0, A0_0, SHR, AO, JCF, JNC, RMC } from "../build/debug"

export enum EAddressModes {
  IMMEDIATE = 0,
  ZERO_PAGE = 1,
  IMPLIED = 2,
}

export interface IMnemonic {
    description: string,
    mnemonic: string,
    opcode: number,
    addressMode: EAddressModes,
    arguments: number,
    instructions: (() => void)[][],
  }
  
export const mnemonics: IMnemonic[] = [
    {
      mnemonic: 'NOP',
      addressMode: EAddressModes.IMMEDIATE,
      opcode: 0xEA,
      description: 'No operation',
      arguments: 0,
      instructions: [[RMC]],
    },
    {
      mnemonic: 'ORA',
      addressMode: EAddressModes.IMMEDIATE,
      opcode: 0x09,
      description: 'OR with Accumulator immediately value',
      arguments: 1,
      instructions: [
        [CO, MAI],
        [MO, BI],
        [ACO, AI, A4_0, A3_1, A2_0, A1_1, A0_1],
        [ACI, SO],  
        [CE, CZF, CNF],
        [RMC],
      ],
    },
    {
      mnemonic: 'CLC',
      addressMode: EAddressModes.IMPLIED,
      opcode: 0x18,
      description: 'Clear carry flag',
      arguments: 0,
      instructions: [
        [RCF],
        [RMC],
      ],
    },
    {
      mnemonic: 'SEC',
      addressMode: EAddressModes.IMPLIED,
      opcode: 0x38,
      description: 'Set carry flag',
      arguments: 0,
      instructions: [
        [SCF],
        [RMC],
      ],
    },
    {
      // https://tomnisbet.github.io/nqsap/docs/registers/
      mnemonic: 'LSR',
      addressMode: EAddressModes.ZERO_PAGE,
      opcode: 0x46,
      description: 'Logical shift right',
      arguments: 1,
      instructions: [
        [CO, MAI],
        [MO, MAI],
        [MO, AI, AI, A4_1, A3_1, A2_1, A1_1, A0_1],
        [SHR, SO, ACI, CE, CCF, CZF, CNF],
        [RMC],
      ],
    },
    // // ASL, 0x0A
    // {
    //   mnemonic: 'ASL',
    //   addressMode: EAddressModes.IMPLIED,
    //   opcode: 0x0A,
    //   description: 'Arithmetic shift left',
    //   arguments: 0,
    //   instructions: [
    //     [CO, MAI],
    //     [MI, BI],
    //     [AI, A0_0],
    //     [ACO, AI, A4_0, A3_1, A2_0, A1_1, A0_1],  
    //     [CE, CZF, CNF],
    //   ],
    // },
    // // ROL, 0x2A
    // {
    //   mnemonic: 'ROL',
    //   addressMode: EAddressModes.IMPLIED,
    //   opcode: 0x2A,
    //   description: 'Rotate left',
    //   arguments: 0,
    //   instructions: [
    //     [CO, MAI],
    //     [MI, BI],
    //     [AI, A0_0],
    //     [ACO, AI, A4_0, A3_1, A2_0, A1_1, A0_1],  
    //     [CE, CZF, CNF],
    //   ],
    // },
    // // ROR, 0x6A
    // {
    //   mnemonic: 'ROR',
    //   addressMode: EAddressModes.IMPLIED,
    //   opcode: 0x6A,
    //   description: 'Rotate right',
    //   arguments: 0,
    //   instructions: [
    //     [CO, MAI],
    //     [MI, BI],
    //     [AI, A0_0],
    //     [ACO, AI, A4_0, A3_1, A2_0, A1_1, A0_1],  
    //     [CE, CZF, CNF],
    //   ],
    // },
    {
      mnemonic: 'BCC',
      addressMode: EAddressModes.ZERO_PAGE,
      opcode: 0x90,
      description: 'Branch on carry clear',
      arguments: 1,
      instructions: [
        [CO, MAI],
        [MO, JNC],
        [CE],
        [RMC]
      ],
    },
    {
      mnemonic: 'JMP',
      addressMode: EAddressModes.ZERO_PAGE,
      opcode: 0x4C,
      description: 'Jump to address',
      arguments: 1,
      instructions: [
        [CO, MAI],
        [MO, J, RMC],
      ],
    },
    {
      mnemonic: 'CLI',
      addressMode: EAddressModes.IMPLIED,
      opcode: 0x58,
      description: 'Clear interrupt flag',
      arguments: 0,
      instructions: [
        [RIF],
        [RMC],
      ],
    },
    {
      mnemonic: 'SEI',
      addressMode: EAddressModes.IMPLIED,
      opcode: 0x78,
      description: 'Set interrupt flag',
      arguments: 0,
      instructions: [
        [SIF],
        [RMC],
      ],
    },
    {
      mnemonic: 'LDA',
      addressMode: EAddressModes.IMMEDIATE,
      opcode: 0xA9,
      description: 'Load to Accumulator immediately value',
      arguments: 1,
      instructions: [
        [CO, MAI],
        [MO, ACI, AI, A4_1, A3_1, A2_1, A1_1, A0_1],
        [CE, CZF, CNF],
        [RMC],
      ],
    },
    {
      mnemonic: 'LDA',
      addressMode: EAddressModes.ZERO_PAGE,
      opcode: 0xA5,
      description: 'Load to Accumulator value from memory',
      arguments: 1,
      instructions: [
        [CO, MAI],
        [MO, MAI],
        [MO, ACI, AI, A4_1, A3_1, A2_1, A1_1, A0_1],
        [CE, CZF, CNF],
        [RMC],
      ],
    },
    {
      mnemonic: 'ADC',
      addressMode: EAddressModes.IMMEDIATE,
      opcode: 0x69,
      description: 'Add with Carry to Accumulator immediately value',
      arguments: 1,
      instructions: [
        [CO, MAI],
        [MO, BI],
        [ACO, AI, A4_0, A3_1, A2_0, A1_0, A0_1],
        [ACI, SO],
        [CE, CZF, CNF, CCF, CVF],
        [RMC],
      ],
    },
    {
      mnemonic: 'LDX',
      addressMode: EAddressModes.IMMEDIATE,
      opcode: 0xA2,
      description: 'Load to register X immediately value',
      arguments: 1,
      instructions: [
        [CO, MAI],
        [MO, XI, AI, A4_1, A3_1, A2_1, A1_1, A0_1],
        [CE, CZF, CNF],
        [RMC],
      ],
    },
    {
      mnemonic: 'LDX',
      addressMode: EAddressModes.ZERO_PAGE,
      opcode: 0xA6,
      description: 'Load to register X value from memory',
      arguments: 1,
      instructions: [
        [CO, MAI],
        [MO, MAI],
        [MO, XI, AI, A4_1, A3_1, A2_1, A1_1, A0_1],
        [CE, CZF, CNF],
        [RMC],
      ],
    },
    {
      mnemonic: 'STA',
      addressMode: EAddressModes.ZERO_PAGE,
      opcode: 0x85,
      description: 'Store Accumulator value to memory',
      arguments: 1,
      instructions: [
          [CO, MAI],
          [MO, MAI],
          [ACO, MI],
          [CE],
          [RMC],
      ],
  },
    {
      mnemonic: 'HLT',
      addressMode: EAddressModes.IMMEDIATE,
      opcode: 0xFF,
      description: 'Halt',
        arguments: 0,
      instructions: [
        [CHF],
        [RMC],
      ],
    }
  ];