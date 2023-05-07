add:
afterloop:

start:
    LDI 2
    STA 1Eh
    LDI 1
    STA 1Fh
add:
    LDA 1Eh
    ADD 1Fh
    STA 1Fh
    OUT
    LDI 0
    ADI 1
    JZ afterloop
    HLT
    JMP add
afterloop:
    HLT