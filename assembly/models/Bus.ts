import { Register8bit } from "./Register"

export default class Bus {
    registers: Register8bit[] = []
    
    addRegister(register: Register8bit): void {
        this.registers.push(register)
    }

    resetRegisters(): void {
        for (let i = 0; i < this.registers.length; i++) {
            let register = this.registers[i]
            register.reset()
        }
    }

    updateRegisters(): void {
        
        for (let i = 0; i < this.registers.length; i++) {
            let register = this.registers[i]
            register.beforeTick()
        }

        let value: i8 = 0

        for (let i = 0; i < this.registers.length; i++) {
            let register = this.registers[i]
            if(register.writing) {
                value = register.value
                register.writing = false;
            }
        }
        
        for (let i = 0; i < this.registers.length; i++) {
            let register = this.registers[i]
            if(register.reading) {
                register.setValue(value)
                register.reading = false;
            }
        }

        for (let i = 0; i < this.registers.length; i++) {
            let register = this.registers[i]
            register.afterTick()
        }
    }
}