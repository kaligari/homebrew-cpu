import { Register8bit } from "./Register";

export class Counter8bit extends Register8bit {
    incrementing: boolean = false

    increment(): void {
        this.incrementing = true;
    }

    beforeTick(): void {
        if (this.incrementing) {
            this.value++;
            this.incrementing = false;
        }
    }
}