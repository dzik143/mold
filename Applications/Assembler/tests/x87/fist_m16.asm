use64

; [rip + disp32]
fist word [rip + 0x13]
fist word [rip + 0x1235]
fist word [rip + 0x12345679]

; [rip + base]
fist word  [rbx]

; [rip + base + disp8]
fist word [rcx + 0x14]
fist word [rdx + 0x15]

; [rip + base + disp32]
fist word [rbx + 0x1235]
fist word [rbx + 0x12345679]

; [rip + base + index]
fist word [rbx + rcx]

; [rip + base + scale * index]
fist word [rbx + 4 * rcx]

; [rip + base + index + disp8]
fist word [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fist word [rbx + rcx + 0x1235]
fist word [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fist word [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fist word [rbx + 4 * rcx + 0x1235]
fist word [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fist word [4 * rcx]

; [scale * index + disp8]
fist word [4 * rcx + 0x13]

; [scale * index + disp32]
fist word [4 * rcx + 0x1235]
fist word [4 * rcx + 0x12345679]

; Use rbp as base or index.
fist word [rbp]
fist word [rbp + 0x12]
fist word [rbp + 0x1234]
fist word [rbp + 0x12345678]

fist word [4 * rbp]
fist word [4 * rbp + 0x12]
fist word [4 * rbp + 0x1234]
fist word [4 * rbp + 0x12345678]

fist word [rbx + 4 * rbp]
fist word [rbx + 4 * rbp + 0x12]
fist word [rbx + 4 * rbp + 0x1234]
fist word [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fist word [rsp]
fist word [rsp + 0x12]
fist word [rsp + 0x1234]
fist word [rsp + 0x12345678]

fist word [rsp + rax]
fist word [rsp + rbp]
fist word [rsp + 2*rbp]
fist word [rsp + 4*rbp]
fist word [rsp + 8*rbp]

; use each register as indirect.
fist word [rax]
fist word [rcx]
fist word [rdx]
fist word [rbx]
fist word [rsp]
fist word [rbp]
fist word [rsi]
fist word [rdi]

; use each register as indirect.
; rsp is forbidden as index
fist word [rax + 2*rax]
fist word [rcx + 2*rcx]
fist word [rdx + 2*rdx]
fist word [rbx + 2*rbx]
fist word [rbp + 2*rbp]
fist word [rsi + 2*rsi]
fist word [rdi + 2*rdi]
