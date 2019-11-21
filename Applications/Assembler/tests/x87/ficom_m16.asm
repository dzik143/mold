use64

; [rip + disp32]
ficom word [rip + 0x13]
ficom word [rip + 0x1235]
ficom word [rip + 0x12345679]

; [rip + base]
ficom word  [rbx]

; [rip + base + disp8]
ficom word [rcx + 0x14]
ficom word [rdx + 0x15]

; [rip + base + disp32]
ficom word [rbx + 0x1235]
ficom word [rbx + 0x12345679]

; [rip + base + index]
ficom word [rbx + rcx]

; [rip + base + scale * index]
ficom word [rbx + 4 * rcx]

; [rip + base + index + disp8]
ficom word [rbx + rcx + 0x13]

; [rip + base + index + disp32]
ficom word [rbx + rcx + 0x1235]
ficom word [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
ficom word [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
ficom word [rbx + 4 * rcx + 0x1235]
ficom word [rbx + 8 * rcx + 0x12345679]

; [scale * index]
ficom word [4 * rcx]

; [scale * index + disp8]
ficom word [4 * rcx + 0x13]

; [scale * index + disp32]
ficom word [4 * rcx + 0x1235]
ficom word [4 * rcx + 0x12345679]

; Use rbp as base or index.
ficom word [rbp]
ficom word [rbp + 0x12]
ficom word [rbp + 0x1234]
ficom word [rbp + 0x12345678]

ficom word [4 * rbp]
ficom word [4 * rbp + 0x12]
ficom word [4 * rbp + 0x1234]
ficom word [4 * rbp + 0x12345678]

ficom word [rbx + 4 * rbp]
ficom word [rbx + 4 * rbp + 0x12]
ficom word [rbx + 4 * rbp + 0x1234]
ficom word [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
ficom word [rsp]
ficom word [rsp + 0x12]
ficom word [rsp + 0x1234]
ficom word [rsp + 0x12345678]

ficom word [rsp + rax]
ficom word [rsp + rbp]
ficom word [rsp + 2*rbp]
ficom word [rsp + 4*rbp]
ficom word [rsp + 8*rbp]

; use each register as indirect.
ficom word [rax]
ficom word [rcx]
ficom word [rdx]
ficom word [rbx]
ficom word [rsp]
ficom word [rbp]
ficom word [rsi]
ficom word [rdi]

; use each register as indirect.
; rsp is forbidden as index
ficom word [rax + 2*rax]
ficom word [rcx + 2*rcx]
ficom word [rdx + 2*rdx]
ficom word [rbx + 2*rbx]
ficom word [rbp + 2*rbp]
ficom word [rsi + 2*rsi]
ficom word [rdi + 2*rdi]
