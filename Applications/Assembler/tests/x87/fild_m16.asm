use64

; [rip + disp32]
fild word [rip + 0x13]
fild word [rip + 0x1235]
fild word [rip + 0x12345679]

; [rip + base]
fild word  [rbx]

; [rip + base + disp8]
fild word [rcx + 0x14]
fild word [rdx + 0x15]

; [rip + base + disp32]
fild word [rbx + 0x1235]
fild word [rbx + 0x12345679]

; [rip + base + index]
fild word [rbx + rcx]

; [rip + base + scale * index]
fild word [rbx + 4 * rcx]

; [rip + base + index + disp8]
fild word [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fild word [rbx + rcx + 0x1235]
fild word [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fild word [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fild word [rbx + 4 * rcx + 0x1235]
fild word [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fild word [4 * rcx]

; [scale * index + disp8]
fild word [4 * rcx + 0x13]

; [scale * index + disp32]
fild word [4 * rcx + 0x1235]
fild word [4 * rcx + 0x12345679]

; Use rbp as base or index.
fild word [rbp]
fild word [rbp + 0x12]
fild word [rbp + 0x1234]
fild word [rbp + 0x12345678]

fild word [4 * rbp]
fild word [4 * rbp + 0x12]
fild word [4 * rbp + 0x1234]
fild word [4 * rbp + 0x12345678]

fild word [rbx + 4 * rbp]
fild word [rbx + 4 * rbp + 0x12]
fild word [rbx + 4 * rbp + 0x1234]
fild word [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fild word [rsp]
fild word [rsp + 0x12]
fild word [rsp + 0x1234]
fild word [rsp + 0x12345678]

fild word [rsp + rax]
fild word [rsp + rbp]
fild word [rsp + 2*rbp]
fild word [rsp + 4*rbp]
fild word [rsp + 8*rbp]

; use each register as indirect.
fild word [rax]
fild word [rcx]
fild word [rdx]
fild word [rbx]
fild word [rsp]
fild word [rbp]
fild word [rsi]
fild word [rdi]

; use each register as indirect.
; rsp is forbidden as index
fild word [rax + 2*rax]
fild word [rcx + 2*rcx]
fild word [rdx + 2*rdx]
fild word [rbx + 2*rbx]
fild word [rbp + 2*rbp]
fild word [rsi + 2*rsi]
fild word [rdi + 2*rdi]
