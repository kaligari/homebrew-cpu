import { Register8bit } from "./Register";

export class Memory extends Register8bit {
    memory: Register8bit[]

     constructor(size: u16) {
        super();
        this.memory = new Array(size)
    }

    get length(): i32 {
        return this.memory.length;
    }

    getMemory(address: u8): Register8bit {
        return this.memory[address];
    }

    setMemory(address: u8, value: Register8bit): void {
        this.memory[address] = value;
    }

    beforeTick(): void {
        
    }
}