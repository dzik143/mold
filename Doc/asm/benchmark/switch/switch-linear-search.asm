include '_commonBefore.asm'

    lea rcx, [values + 8]
    lea rsi, [values - 1]

next_value:

    add   rsi, 1
    cmp   al, byte [rsi]
    cmovz rcx, rsi
    ja    next_value

    sub rcx, values
    jmp qword [labels + rcx * 8]

include '_commonAfter.asm'


values db 10, 20, 30, 40, 50, 60, 70, 80, 0
labels dq l1, l2, l3, l4, l5, l6, l7, l8, l0