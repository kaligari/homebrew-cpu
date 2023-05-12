async function instantiate(module, imports = {}) {
  const adaptedImports = {
    env: Object.assign(Object.create(globalThis), imports.env || {}, {
      abort(message, fileName, lineNumber, columnNumber) {
        // ~lib/builtins/abort(~lib/string/String | null?, ~lib/string/String | null?, u32?, u32?) => void
        message = __liftString(message >>> 0);
        fileName = __liftString(fileName >>> 0);
        lineNumber = lineNumber >>> 0;
        columnNumber = columnNumber >>> 0;
        (() => {
          // @external.js
          throw Error(`${message} in ${fileName}:${lineNumber}:${columnNumber}`);
        })();
      },
    }),
  };
  const { exports } = await WebAssembly.instantiate(module, adaptedImports);
  const memory = exports.memory || imports.env.memory;
  const adaptedExports = Object.setPrototypeOf({
    dumpMemory(start, end) {
      // assembly/modules/memory/dumpMemory(i32?, i32?) => ~lib/string/String
      exports.__setArgumentsLength(arguments.length);
      return __liftString(exports.dumpMemory(start, end) >>> 0);
    },
  }, exports);
  function __liftString(pointer) {
    if (!pointer) return null;
    const
      end = pointer + new Uint32Array(memory.buffer)[pointer - 4 >>> 2] >>> 1,
      memoryU16 = new Uint16Array(memory.buffer);
    let
      start = pointer >>> 1,
      string = "";
    while (end - start > 1024) string += String.fromCharCode(...memoryU16.subarray(start, start += 1024));
    return string + String.fromCharCode(...memoryU16.subarray(start, end));
  }
  return adaptedExports;
}
export const {
  memory,
  microInstructionCounterValue,
  RMC,
  IMC,
  registerAValue,
  AO,
  AI,
  registerBValue,
  BI,
  registerAccValue,
  ACI,
  ACO,
  registerXValue,
  XI,
  XO,
  XINC,
  XDEC,
  flagsRegisterValue,
  FLAG_CARRY,
  FLAG_ZERO,
  FLAG_NEGATIVE,
  FLAG_HALT,
  FLAG_OVERFLOW,
  FLAG_INTERRUPT,
  CHF,
  CZF,
  CNF,
  CCF,
  CVF,
  SCF,
  RCF,
  SIF,
  RIF,
  FI,
  FO,
  MAI,
  addressRegisterValue,
  programCounterValue,
  CO,
  CE,
  J,
  JCF,
  JNC,
  JNZ,
  instructionRegisterValue,
  II,
  SO,
  SU,
  A0_0,
  A0_1,
  A1_0,
  A1_1,
  A2_0,
  A2_1,
  A3_0,
  A3_1,
  A4_0,
  A4_1,
  ALUMode,
  SHR,
  SHL,
  setMemory,
  getMemory,
  dumpMemory,
  clearMemory,
  MI,
  MO,
  resetRegisters,
  tick,
} = await (async url => instantiate(
  await (async () => {
    try { return await globalThis.WebAssembly.compileStreaming(globalThis.fetch(url)); }
    catch { return globalThis.WebAssembly.compile(await (await import("node:fs/promises")).readFile(url)); }
  })(), {
  }
))(new URL("debug.wasm", import.meta.url));
