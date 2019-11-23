; [rip + disp32]
word [rip + 0x13]
word [rip + 0x1235]
word [rip + 0x12345679]

; [rip + base]
word [rbx]

; [rip + base + disp8]
word [rcx + 0x14]
word [rdx + 0x15]

; [rip + base + disp32]
word [rbx + 0x1235]
word [rbx + 0x12345679]

; [rip + base + index]
word [rbx + rcx]

; [rip + base + scale * index]
word [rbx + 4 * rcx]

; [rip + base + index + disp8]
word [rbx + rcx + 0x13]

; [rip + base + index + disp32]
word [rbx + rcx + 0x1235]
word [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
word [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
word [rbx + 4 * rcx + 0x1235]
word [rbx + 8 * rcx + 0x12345679]

; [scale * index]
word [4 * rcx]

; [scale * index + disp8]
word [4 * rcx + 0x13]

; [scale * index + disp32]
word [4 * rcx + 0x1235]
word [4 * rcx + 0x12345679]

; Use rbp as base or index.
word [rbp]
word [rbp + 0x12]
word [rbp + 0x1234]
word [rbp + 0x12345678]

word [4 * rbp]
word [4 * rbp + 0x12]
word [4 * rbp + 0x1234]
word [4 * rbp + 0x12345678]

word [rbx + 4 * rbp]
word [rbx + 4 * rbp + 0x12]
word [rbx + 4 * rbp + 0x1234]
word [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
word [rsp]
word [rsp + 0x12]
word [rsp + 0x1234]
word [rsp + 0x12345678]

word [rsp + rax]
word [rsp + rbp]
word [rsp + 2*rbp]
word [rsp + 4*rbp]
word [rsp + 8*rbp]

; use each register as indirect.
word [rax]
word [rcx]
word [rdx]
word [rbx]
word [rsp]
word [rbp]
word [rsi]
word [rdi]

; use each register as indirect.
; rsp is forbidden as index
word [rax + 2*rax]
word [rcx + 2*rcx]
word [rdx + 2*rdx]
word [rbx + 2*rbx]
word [rbp + 2*rbp]
word [rsi + 2*rsi]
word [rdi + 2*rdi]
