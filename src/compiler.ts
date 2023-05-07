import { EAddressModes, mnemonics } from './mnemonics'

function parseArgument(inputArgument: string) {
    let argument = inputArgument.includes('#') ? inputArgument.substring(1) : inputArgument
    if (argument.includes('$')) {
        return parseInt(argument.substring(1), 16)
    }
    if(argument.includes('%')) {
        return parseInt(argument.substring(1), 2)
    }
    return parseInt(argument)
}

function dicoverAddressMode(argument: string) {
    if (argument && argument.includes('#')) {
        return EAddressModes.IMMEDIATE
    }
    return EAddressModes.ZERO_PAGE
}

export const labels: [string, number][] = []

export function compile(programMnemonics: string) {
    const memory: number[] = []

    programMnemonics
        .split("\n")
        .filter(line => line.trim() !== "")
        .forEach(inputLine => {
            let line = inputLine.trim()
            // Compiler directives
            if (line.startsWith('.')) {
                const [directive, ...directiveArgs] = line.split(" ")
                switch (directive) {
                    case '.byte':
                        memory.push(parseArgument(directiveArgs[0]))
                    break;
                    case '.word':
                        const arg = parseArgument(directiveArgs[0])
                        const arg0 = arg & 0xFF
                        const arg1 = (arg >> 8) & 0xFF
                        memory.push(arg0)
                        memory.push(arg1)
                    break;
                    case '.asciiz':
                        let string = directiveArgs.join(' ')
                        string = string.substring(1, string.length - 1)
                        for(let i = 0; i < string.length; i++) {
                            memory.push(string.charCodeAt(i))
                        }
                        memory.push(0)
                    break;
                    default:
                        throw new Error(`Unknown directive: ${directive}`)
                }
                return
            }
            // Labels
            if (line.endsWith(':')) {
                const labelName = line.substring(0, line.length - 1)
                if (labels.find(label => label[0] === labelName)) {
                    labels[labels.findIndex(label => label[0] === labelName)][1] = memory.length
                } else {
                    labels.push([labelName, memory.length])
                }
                return
            }
            // Comments
            if (line.startsWith(';')) return
            // Mnemonics            
            const [mnemonic, ...args] = line.split(" ");
            if (mnemonic.includes(';')) return
            if (mnemonic.includes(':')) {
                const mnemonicLabel = mnemonic.substring(0, mnemonic.length - 1)
                if (labels.find(label => label[0] === mnemonicLabel)) {
                    labels[labels.findIndex(label => label[0] === mnemonicLabel)][1] = memory.length
                } else {
                    labels.push([mnemonic.substring(0, mnemonic.length - 1), memory.length])
                }
                return
            }
            const addressMode = dicoverAddressMode(args[0])

            const mnemonicObject = mnemonics.find(mnemonicObject =>
                mnemonicObject.mnemonic === mnemonic
                && (mnemonicObject.arguments === 0 || mnemonicObject.addressMode === addressMode))
                
                if(mnemonicObject === undefined) throw new Error(`Unknown mnemonic: ${mnemonic}`)
                
                memory.push(mnemonicObject.opcode)
                if(mnemonicObject.arguments > 0) {
                    for(let i = 0; i < mnemonicObject.arguments; i++) {
                    memory.push(parseArgument(args[i]))
                }
            }
            
            // switch (mnemonic) {
            //     case "LDA": 
            //         memory.push(0b0000_0001);
            //         memory.push(parseArgument(args[0]));
            //         break;
            //     case "ADD": // 0x02
            //         memory.push(0b0000_0010);
            //         memory.push(parseArgument(args[0]));
            //         break;
            //     case "SUB": // 0x03
            //         memory.push(0b0000_0011);
            //         memory.push(parseArgument(args[0]));
            //         break;
            //     case "STA": // 0x04
            //         memory.push(0b0000_0100);
            //         memory.push(parseArgument(args[0]));
            //         break;
            //     case "LDI": // 0x05
            //         memory.push(0b0000_0101);
            //         memory.push(parseArgument(args[0]));
            //         break;
            //     case "JMP": // 0x06
            //         memory.push(0b0000_0110);
            //         // const target = args[0]
            //         // if (isNaN(target)) {
            //         //     const label = labels.find(label => label[0] === target)
            //         //     if (!label) throw new Error(`Unknown label: ${target}`)
            //         //     memory.push(label[1]);
            //         // } else {
            //         //     memory.push(parseArgument(target));
            //         // }
            //         // memory.push(target);
            //         break;
            //     case "STR": // 0x10
            //         memory.push(0b0001_0000);
            //         memory.push(parseArgument(args[1]));
            //         memory.push(parseArgument(args[0]));
            //         break;
            //     case "JZ": // 0x08
            //         memory.push(0b0000_1000);
            //         // const target2 = args[0]
            //         // if (isNaN(target2)) {
            //         //     const label = labels.find(label => label[0] === target2)
            //         //     if (!label) throw new Error(`Unknown label: ${target2}`)
            //         //     memory.push(label[1]);
            //         // } else {
            //         //     memory.push(parseArgument(target2));
            //         // }
            //         break;
            //     case "ADI": // 0x15
            //         memory.push(0b0001_0101);
            //         memory.push(parseArgument(args[0]));
            //     case "OUT": // 0x12
            //         memory.push(0b1110_0000);
            //         break;
            //     case "HLT": // 0xFF
            //         memory.push(0b1111_1111);
            //         break;
            //     default:
            //         throw new Error(`Unknown mnemonic: ${mnemonic}`);
            // }
        });
        
    return memory;
}