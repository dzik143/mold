use64
; ------------------------------------------------------------------------------
; opcode r8
; ------------------------------------------------------------------------------
setns al
setns cl
setns dl
setns bl
setns ah
setns ch
setns dh
setns bh

; ------------------------------------------------------------------------------
; opcode m8
; ------------------------------------------------------------------------------
setns byte [rip + 0x13]
setns byte [rip + 0x1235]
setns byte [rip + 0x12345679]
setns byte [rbx]
setns byte [rcx + 0x14]
setns byte [rdx + 0x15]
setns byte [rbx + 0x1235]
setns byte [rbx + 0x12345679]
setns byte [rbx + rcx]
setns byte [rbx + 4 * rcx]
setns byte [rbx + rcx + 0x13]
setns byte [rbx + rcx + 0x1235]
setns byte [rbx + rcx + 0x12345679]
setns byte [rbx + 4 * rcx + 0x13]
setns byte [rbx + 4 * rcx + 0x1235]
setns byte [rbx + 8 * rcx + 0x12345679]
setns byte [4 * rcx]
setns byte [4 * rcx + 0x13]
setns byte [4 * rcx + 0x1235]
setns byte [4 * rcx + 0x12345679]
setns byte [rbp]
setns byte [rbp + 0x12]
setns byte [rbp + 0x1234]
setns byte [rbp + 0x12345678]
setns byte [4 * rbp]
setns byte [4 * rbp + 0x12]
setns byte [4 * rbp + 0x1234]
setns byte [4 * rbp + 0x12345678]
setns byte [rbx + 4 * rbp]
setns byte [rbx + 4 * rbp + 0x12]
setns byte [rbx + 4 * rbp + 0x1234]
setns byte [rbx + 4 * rbp + 0x12345678]
setns byte [rsp]
setns byte [rsp + 0x12]
setns byte [rsp + 0x1234]
setns byte [rsp + 0x12345678]
setns byte [rsp + rax]
setns byte [rsp + rbp]
setns byte [rsp + 2*rbp]
setns byte [rsp + 4*rbp]
setns byte [rsp + 8*rbp]
setns byte [rax]
setns byte [rcx]
setns byte [rdx]
setns byte [rbx]
setns byte [rsp]
setns byte [rbp]
setns byte [rsi]
setns byte [rdi]
setns byte [rax + 2*rax]
setns byte [rcx + 2*rcx]
setns byte [rdx + 2*rdx]
setns byte [rbx + 2*rbx]
setns byte [rbp + 2*rbp]
setns byte [rsi + 2*rsi]
setns byte [rdi + 2*rdi]

