; Init LCD
init:
    STR B0h 30h
    STR B0h 01h
    STR B0h 02h
    STR B0h 0Fh
; Type RAM Test
print:
    STR B2h 52h
    STR B2h 41h
    STR B2h 4Dh
    STR B2h 20h
    STR B2h 54h
    STR B2h 65h
    STR B2h 73h
    STR B2h 74h
    STR B2h 20h
stop:
    OUT
    HLT