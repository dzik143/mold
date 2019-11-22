; [rip + disp32]
[rip + 0x13]
[rip + 0x1235]
[rip + 0x12345679]

; [rip + base]
 [rbx]

; [rip + base + disp8]
[rcx + 0x14]
[rdx + 0x15]

; [rip + base + disp32]
[rbx + 0x1235]
[rbx + 0x12345679]

; [rip + base + index]
[rbx + rcx]

; [rip + base + scale * index]
[rbx + 4 * rcx]

; [rip + base + index + disp8]
[rbx + rcx + 0x13]

; [rip + base + index + disp32]
[rbx + rcx + 0x1235]
[rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
[rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
[rbx + 4 * rcx + 0x1235]
[rbx + 8 * rcx + 0x12345679]

; [scale * index]
[4 * rcx]

; [scale * index + disp8]
[4 * rcx + 0x13]

; [scale * index + disp32]
[4 * rcx + 0x1235]
[4 * rcx + 0x12345679]

; Use rbp as base or index.
[rbp]
[rbp + 0x12]
[rbp + 0x1234]
[rbp + 0x12345678]

[4 * rbp]
[4 * rbp + 0x12]
[4 * rbp + 0x1234]
[4 * rbp + 0x12345678]

[rbx + 4 * rbp]
[rbx + 4 * rbp + 0x12]
[rbx + 4 * rbp + 0x1234]
[rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
[rsp]
[rsp + 0x12]
[rsp + 0x1234]
[rsp + 0x12345678]

[rsp + rax]
[rsp + rbp]
[rsp + 2*rbp]
[rsp + 4*rbp]
[rsp + 8*rbp]

; use each register as indirect.
[rax]
[rcx]
[rdx]
[rbx]
[rsp]
[rbp]
[rsi]
[rdi]

; use each register as indirect.
; rsp is forbidden as index
[rax + 2*rax]
[rcx + 2*rcx]
[rdx + 2*rdx]
[rbx + 2*rbx]
[rbp + 2*rbp]
[rsi + 2*rsi]
[rdi + 2*rdi]
