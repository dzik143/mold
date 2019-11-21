use64

; [rip + disp32]
fisubr word [rip + 0x13]
fisubr word [rip + 0x1235]
fisubr word [rip + 0x12345679]

; [rip + base]
fisubr word  [rbx]

; [rip + base + disp8]
fisubr word [rcx + 0x14]
fisubr word [rdx + 0x15]

; [rip + base + disp32]
fisubr word [rbx + 0x1235]
fisubr word [rbx + 0x12345679]

; [rip + base + index]
fisubr word [rbx + rcx]

; [rip + base + scale * index]
fisubr word [rbx + 4 * rcx]

; [rip + base + index + disp8]
fisubr word [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fisubr word [rbx + rcx + 0x1235]
fisubr word [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fisubr word [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fisubr word [rbx + 4 * rcx + 0x1235]
fisubr word [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fisubr word [4 * rcx]

; [scale * index + disp8]
fisubr word [4 * rcx + 0x13]

; [scale * index + disp32]
fisubr word [4 * rcx + 0x1235]
fisubr word [4 * rcx + 0x12345679]

; Use rbp as base or index.
fisubr word [rbp]
fisubr word [rbp + 0x12]
fisubr word [rbp + 0x1234]
fisubr word [rbp + 0x12345678]

fisubr word [4 * rbp]
fisubr word [4 * rbp + 0x12]
fisubr word [4 * rbp + 0x1234]
fisubr word [4 * rbp + 0x12345678]

fisubr word [rbx + 4 * rbp]
fisubr word [rbx + 4 * rbp + 0x12]
fisubr word [rbx + 4 * rbp + 0x1234]
fisubr word [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fisubr word [rsp]
fisubr word [rsp + 0x12]
fisubr word [rsp + 0x1234]
fisubr word [rsp + 0x12345678]

fisubr word [rsp + rax]
fisubr word [rsp + rbp]
fisubr word [rsp + 2*rbp]
fisubr word [rsp + 4*rbp]
fisubr word [rsp + 8*rbp]

; use each register as indirect.
fisubr word [rax]
fisubr word [rcx]
fisubr word [rdx]
fisubr word [rbx]
fisubr word [rsp]
fisubr word [rbp]
fisubr word [rsi]
fisubr word [rdi]

; use each register as indirect.
; rsp is forbidden as index
fisubr word [rax + 2*rax]
fisubr word [rcx + 2*rcx]
fisubr word [rdx + 2*rdx]
fisubr word [rbx + 2*rbx]
fisubr word [rbp + 2*rbp]
fisubr word [rsi + 2*rsi]
fisubr word [rdi + 2*rdi]
