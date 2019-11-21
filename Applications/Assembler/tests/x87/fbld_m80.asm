use64

; [rip + disp32]
fbld tword [rip + 0x13]
fbld tword [rip + 0x1235]
fbld tword [rip + 0x12345679]

; [rip + base]
fbld tword  [rbx]

; [rip + base + disp8]
fbld tword [rcx + 0x14]
fbld tword [rdx + 0x15]

; [rip + base + disp32]
fbld tword [rbx + 0x1235]
fbld tword [rbx + 0x12345679]

; [rip + base + index]
fbld tword [rbx + rcx]

; [rip + base + scale * index]
fbld tword [rbx + 4 * rcx]

; [rip + base + index + disp8]
fbld tword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fbld tword [rbx + rcx + 0x1235]
fbld tword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fbld tword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fbld tword [rbx + 4 * rcx + 0x1235]
fbld tword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fbld tword [4 * rcx]

; [scale * index + disp8]
fbld tword [4 * rcx + 0x13]

; [scale * index + disp32]
fbld tword [4 * rcx + 0x1235]
fbld tword [4 * rcx + 0x12345679]

; Use rbp as base or index.
fbld tword [rbp]
fbld tword [rbp + 0x12]
fbld tword [rbp + 0x1234]
fbld tword [rbp + 0x12345678]

fbld tword [4 * rbp]
fbld tword [4 * rbp + 0x12]
fbld tword [4 * rbp + 0x1234]
fbld tword [4 * rbp + 0x12345678]

fbld tword [rbx + 4 * rbp]
fbld tword [rbx + 4 * rbp + 0x12]
fbld tword [rbx + 4 * rbp + 0x1234]
fbld tword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fbld tword [rsp]
fbld tword [rsp + 0x12]
fbld tword [rsp + 0x1234]
fbld tword [rsp + 0x12345678]

fbld tword [rsp + rax]
fbld tword [rsp + rbp]
fbld tword [rsp + 2*rbp]
fbld tword [rsp + 4*rbp]
fbld tword [rsp + 8*rbp]

; use each register as indirect.
fbld tword [rax]
fbld tword [rcx]
fbld tword [rdx]
fbld tword [rbx]
fbld tword [rsp]
fbld tword [rbp]
fbld tword [rsi]
fbld tword [rdi]

; use each register as indirect.
; rsp is forbidden as index
fbld tword [rax + 2*rax]
fbld tword [rcx + 2*rcx]
fbld tword [rdx + 2*rdx]
fbld tword [rbx + 2*rbx]
fbld tword [rbp + 2*rbp]
fbld tword [rsi + 2*rsi]
fbld tword [rdi + 2*rdi]
