; [rip + disp32]
tword [rip + 0x13]
tword [rip + 0x1235]
tword [rip + 0x12345679]

; [rip + base]
tword [rbx]

; [rip + base + disp8]
tword [rcx + 0x14]
tword [rdx + 0x15]

; [rip + base + disp32]
tword [rbx + 0x1235]
tword [rbx + 0x12345679]

; [rip + base + index]
tword [rbx + rcx]

; [rip + base + scale * index]
tword [rbx + 4 * rcx]

; [rip + base + index + disp8]
tword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
tword [rbx + rcx + 0x1235]
tword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
tword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
tword [rbx + 4 * rcx + 0x1235]
tword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
tword [4 * rcx]

; [scale * index + disp8]
tword [4 * rcx + 0x13]

; [scale * index + disp32]
tword [4 * rcx + 0x1235]
tword [4 * rcx + 0x12345679]

; Use rbp as base or index.
tword [rbp]
tword [rbp + 0x12]
tword [rbp + 0x1234]
tword [rbp + 0x12345678]

tword [4 * rbp]
tword [4 * rbp + 0x12]
tword [4 * rbp + 0x1234]
tword [4 * rbp + 0x12345678]

tword [rbx + 4 * rbp]
tword [rbx + 4 * rbp + 0x12]
tword [rbx + 4 * rbp + 0x1234]
tword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
tword [rsp]
tword [rsp + 0x12]
tword [rsp + 0x1234]
tword [rsp + 0x12345678]

tword [rsp + rax]
tword [rsp + rbp]
tword [rsp + 2*rbp]
tword [rsp + 4*rbp]
tword [rsp + 8*rbp]

; use each register as indirect.
tword [rax]
tword [rcx]
tword [rdx]
tword [rbx]
tword [rsp]
tword [rbp]
tword [rsi]
tword [rdi]

; use each register as indirect.
; rsp is forbidden as index
tword [rax + 2*rax]
tword [rcx + 2*rcx]
tword [rdx + 2*rdx]
tword [rbx + 2*rbx]
tword [rbp + 2*rbp]
tword [rsi + 2*rsi]
tword [rdi + 2*rdi]
