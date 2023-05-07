<script setup lang="ts">
import { computed, onMounted, ref } from 'vue';
import { compile, labels } from './compiler';
import { clearRAM, setRAM, doInstruction, dumpRAM } from "../build/debug.js";

const program = ref('')
const output = ref('')

onMounted(async () => {
    const response = await fetch('../tests/prog.asm')
    program.value = await response.text()
})

const compiledProgram = computed(() => {
    // const machineCode = compile(program.value)
    // // load program into RAM
    // for (let i = 0; i < machineCode.length; i++) {
    //     setRAM(i, machineCode[i]);
    // }
})
const ramContents = computed(() => {
    if(program.value.length === 0) return ''    
    const machineCode = compile(program.value)
    clearRAM();
    // load program into RAM
    for (let i = 0; i < machineCode.length; i++) {
        setRAM(i, machineCode[i]);
    }
    return dumpRAM()
})
const compileAndRun = () => {
    // while (!doInstruction()) { }
}
// const output = compil


</script>

<template>
    <div class="container">
        <div class="flex align-middle justify-center">
            <div class="w-full">
                <textarea
                    v-model="program"
                    class="w-full p-2 border-2 border-black bg-yellow-200"
                    name=""
                    id=""
                    rows="15"
                    placeholder="CODE"
                ></textarea>
            </div>
            <div class="w-full">
                <textarea
                    class="w-full p-2 border-2 border-black bg-orange-200"
                    name=""
                    id=""
                    rows="15"
                    placeholder="CODE"
                >{{ ramContents }}</textarea>
            </div>
            <div class="w-full">
                <textarea
                    class="w-full p-2 border-2 border-black bg-green-200"
                    name=""
                    id=""
                    rows="15"
                    placeholder="CODE"
                >{{ output }}</textarea>
            </div>
        </div>
        <button
            @click="compileAndRun"
            class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded"
        >Compile</button>
        Labels:
        {{ labels }}
    </div>
</template>
