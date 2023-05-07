import { Register8bit } from "./Register";

export class Flags8bit extends Register8bit {
    setFlagH: boolean = false;
    setFlagZ: boolean = false;
    setFlagN: boolean = false;
    setFlagC: boolean = false;
    setFlagO: boolean = false;
}