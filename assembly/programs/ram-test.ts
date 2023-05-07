import { Register8bit } from "../models/Register";
import { addressRegister } from "../modules/addressRegister";

export const ram: Register8bit[] = new Array(256)

// test ram range 0x40 - 0x7F by storing values to each address and then reading them back
export function testRAM(): void {
    for (let i = 0x40; i < 0x80; i++) {
        addressRegister.value = i;
        ram[addressRegister.value].setValue(i);
    }

    for (let i = 0x40; i < 0x80; i++) {
        ram[i].readFromBus();
        ram[i].writeToBus();
    }
}

// write as a comment testRAM function using mnemonic instructions
// test ram range 0x40 - 0x7F by storing values to each address and then reading them back
// export function testRAM2(): void {
//     for (let i = 0x40; i < 0x80; i++) {
//         MI(); CO(); tick();
//         addressRegister.setValue(i);
//         RO(); MI(); tick();
//         ram[i].setValue(i);
//         RO(); RI(); tick();
//         CE(); tick();
//     }

//     for (let i = 0x40; i < 0x80; i++) {
//         MI(); CO(); tick();
//         addressRegister.setValue(i);
//         RO(); MI(); tick();
//         RO(); OI(); tick();
//         CE(); tick();
//     }
// }