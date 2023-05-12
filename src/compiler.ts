import { EAddressModes, mnemonics } from './mnemonics'

function parseArgument(inputArgument: string) {
    let argument = inputArgument.includes('#') ? inputArgument.substring(1) : inputArgument
    if (argument.includes('$')) {
        return parseInt(argument.substring(1), 16)
    }
    if(argument.includes('%')) {
        return parseInt(argument.substring(1), 2)
    }
    if(isNaN(parseInt(argument))) {
        return `label:${argument}`
    }
    return parseInt(argument)
}

function dicoverAddressMode(argument: string) {
    if(!argument) {
        return EAddressModes.IMPLIED
    }
    if (argument && argument.includes('#')) {
        return EAddressModes.IMMEDIATE
    }
    return EAddressModes.ZERO_PAGE
}

export const labels: [string, number][] = []

export function compile(programMnemonics: string) {
    const memory: (number|string)[] = []

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
                        if(typeof arg === 'string') {
                            throw new Error(`Cannot use label as argument for .word directive`)
                        }
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
            // Comments
            if (line.startsWith(';')) return
            // Labels
            if (line.endsWith(':')) {
                const labelName = line.substring(0, line.length - 1)
                if (!labels.find(label => label[0] === labelName)) {
                    labels.push([labelName, memory.length])
                }
                return
            }
            // Mnemonics            
            const [mnemonic, ...args] = line.split(" ");
            if (mnemonic.includes(';')) return
            // Labels
            if (mnemonic.endsWith(':')) {
                const mnemonicLabel = mnemonic.substring(0, mnemonic.length - 1)
                memory.push(`label:${mnemonicLabel}`)
                return
            }
            const addressMode = dicoverAddressMode(args[0])

            const mnemonicObject = mnemonics.find(mnemonicObject =>
                mnemonicObject.mnemonic === mnemonic
                && (mnemonicObject.arguments === 0 || mnemonicObject.addressMode === addressMode))
                
                if(mnemonicObject === undefined) {
                    throw new Error(`Unknown mnemonic: ${mnemonic}, address mode: ${addressMode}`)
                }
                
                memory.push(mnemonicObject.opcode)
                if(mnemonicObject.arguments > 0) {
                    for(let i = 0; i < mnemonicObject.arguments; i++) {
                    memory.push(parseArgument(args[i]))
                }
            }
        });
    
    // Resolve labels
    labels.forEach(label => {
        const [labelName, labelAddress] = label        
        const labelIndex = memory.findIndex(item => typeof item === 'string' && item === `label:${labelName}`)
        if(labelIndex !== -1) {
            memory[labelIndex] = labelAddress
        }
    })
        
    return memory as number[];
}