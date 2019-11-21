use64

; [rip + disp32]
ficomp word [rip + 0x13]
ficomp word [rip + 0x1235]
ficomp word [rip + 0x12345679]

; [rip + base]
ficomp word  [rbx]

; [rip + base + disp8]
ficomp word [rcx + 0x14]
ficomp word [rdx + 0x15]

; [rip + base + disp32]
ficomp word [rbx + 0x1235]
ficomp word [rbx + 0x12345679]

; [rip + base + index]
ficomp word [rbx + rcx]

; [rip + base + scale * index]
ficomp word [rbx + 4 * rcx]

; [rip + base + index + disp8]
ficomp word [rbx + rcx + 0x13]

; [rip + base + index + disp32]
ficomp word [rbx + rcx + 0x1235]
ficomp word [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
ficomp word [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
ficomp word [rbx + 4 * rcx + 0x1235]
ficomp word [rbx + 8 * rcx + 0x12345679]

; [scale * index]
ficomp word [4 * rcx]

; [scale * index + disp8]
ficomp word [4 * rcx + 0x13]

; [scale * index + disp32]
ficomp word [4 * rcx + 0x1235]
ficomp word [4 * rcx + 0x12345679]

; Use rbp as base or index.
ficomp word [rbp]
ficomp word [rbp + 0x12]
ficomp word [rbp + 0x1234]
ficomp word [rbp + 0x12345678]

ficomp word [4 * rbp]
ficomp word [4 * rbp + 0x12]
ficomp word [4 * rbp + 0x1234]
ficomp word [4 * rbp + 0x12345678]

ficomp word [rbx + 4 * rbp]
ficomp word [rbx + 4 * rbp + 0x12]
ficomp word [rbx + 4 * rbp + 0x1234]
ficomp word [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
ficomp word [rsp]
ficomp word [rsp + 0x12]
ficomp word [rsp + 0x1234]
ficomp word [rsp + 0x12345678]

ficomp word [rsp + rax]
ficomp word [rsp + rbp]
ficomp word [rsp + 2*rbp]
ficomp word [rsp + 4*rbp]
ficomp word [rsp + 8*rbp]

; use each register as indirect.
ficomp word [rax]
ficomp word [rcx]
ficomp word [rdx]
ficomp word [rbx]
ficomp word [rsp]
ficomp word [rbp]
ficomp word [rsi]
ficomp word [rdi]

; use each register as indirect.
; rsp is forbidden as index
ficomp word [rax + 2*rax]
ficomp word [rcx + 2*rcx]
ficomp word [rdx + 2*rdx]
ficomp word [rbx + 2*rbx]
ficomp word [rbp + 2*rbp]
ficomp word [rsi + 2*rsi]
ficomp word [rdi + 2*rdi]
