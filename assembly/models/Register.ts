import Bus from "./Bus";

export class Register8bit {
    value: u8 = 0
    reading: boolean = false
    writing: boolean = false
    incrementing: boolean = false
    decrementing: boolean = false

    setValue(value: u8): void {
        this.value = value;
    }

    reset(): void {
        this.value = 0;
    }

    readFromBus(): void {
        this.reading = true;
    }

    writeToBus(): void {
        this.writing = true;
    }

    setBit(bit: u8): void {
        this.value |= 1 << bit;
    }

    removeBit(bit: u8): void {
        this.value &= ~(1 << bit);
    }

    increment(): void {
        this.incrementing = true;
    }

    decrement(): void {
        this.decrementing = true;
    }

    beforeTick(): void {
        if (this.incrementing) {
            this.value++;
            this.incrementing = false;
        }
        if (this.decrementing) {
            this.value--;
            this.decrementing = false;
        }
    }
    
    afterTick(): void {}
}