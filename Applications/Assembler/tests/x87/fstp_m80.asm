use64

; [rip + disp32]
fstp tword [rip + 0x13]
fstp tword [rip + 0x1235]
fstp tword [rip + 0x12345679]

; [rip + base]
fstp tword  [rbx]

; [rip + base + disp8]
fstp tword [rcx + 0x14]
fstp tword [rdx + 0x15]

; [rip + base + disp32]
fstp tword [rbx + 0x1235]
fstp tword [rbx + 0x12345679]

; [rip + base + index]
fstp tword [rbx + rcx]

; [rip + base + scale * index]
fstp tword [rbx + 4 * rcx]

; [rip + base + index + disp8]
fstp tword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fstp tword [rbx + rcx + 0x1235]
fstp tword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fstp tword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fstp tword [rbx + 4 * rcx + 0x1235]
fstp tword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fstp tword [4 * rcx]

; [scale * index + disp8]
fstp tword [4 * rcx + 0x13]

; [scale * index + disp32]
fstp tword [4 * rcx + 0x1235]
fstp tword [4 * rcx + 0x12345679]

; Use rbp as base or index.
fstp tword [rbp]
fstp tword [rbp + 0x12]
fstp tword [rbp + 0x1234]
fstp tword [rbp + 0x12345678]

fstp tword [4 * rbp]
fstp tword [4 * rbp + 0x12]
fstp tword [4 * rbp + 0x1234]
fstp tword [4 * rbp + 0x12345678]

fstp tword [rbx + 4 * rbp]
fstp tword [rbx + 4 * rbp + 0x12]
fstp tword [rbx + 4 * rbp + 0x1234]
fstp tword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fstp tword [rsp]
fstp tword [rsp + 0x12]
fstp tword [rsp + 0x1234]
fstp tword [rsp + 0x12345678]

fstp tword [rsp + rax]
fstp tword [rsp + rbp]
fstp tword [rsp + 2*rbp]
fstp tword [rsp + 4*rbp]
fstp tword [rsp + 8*rbp]

; use each register as indirect.
fstp tword [rax]
fstp tword [rcx]
fstp tword [rdx]
fstp tword [rbx]
fstp tword [rsp]
fstp tword [rbp]
fstp tword [rsi]
fstp tword [rdi]

; use each register as indirect.
; rsp is forbidden as index
fstp tword [rax + 2*rax]
fstp tword [rcx + 2*rcx]
fstp tword [rdx + 2*rdx]
fstp tword [rbx + 2*rbx]
fstp tword [rbp + 2*rbp]
fstp tword [rsi + 2*rsi]
fstp tword [rdi + 2*rdi]
