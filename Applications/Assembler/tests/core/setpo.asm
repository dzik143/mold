use64
; ------------------------------------------------------------------------------
; opcode r8
; ------------------------------------------------------------------------------
setpo al
setpo cl
setpo dl
setpo bl
setpo ah
setpo ch
setpo dh
setpo bh

; ------------------------------------------------------------------------------
; opcode m8
; ------------------------------------------------------------------------------
setpo byte [rip + 0x13]
setpo byte [rip + 0x1235]
setpo byte [rip + 0x12345679]
setpo byte [rbx]
setpo byte [rcx + 0x14]
setpo byte [rdx + 0x15]
setpo byte [rbx + 0x1235]
setpo byte [rbx + 0x12345679]
setpo byte [rbx + rcx]
setpo byte [rbx + 4 * rcx]
setpo byte [rbx + rcx + 0x13]
setpo byte [rbx + rcx + 0x1235]
setpo byte [rbx + rcx + 0x12345679]
setpo byte [rbx + 4 * rcx + 0x13]
setpo byte [rbx + 4 * rcx + 0x1235]
setpo byte [rbx + 8 * rcx + 0x12345679]
setpo byte [4 * rcx]
setpo byte [4 * rcx + 0x13]
setpo byte [4 * rcx + 0x1235]
setpo byte [4 * rcx + 0x12345679]
setpo byte [rbp]
setpo byte [rbp + 0x12]
setpo byte [rbp + 0x1234]
setpo byte [rbp + 0x12345678]
setpo byte [4 * rbp]
setpo byte [4 * rbp + 0x12]
setpo byte [4 * rbp + 0x1234]
setpo byte [4 * rbp + 0x12345678]
setpo byte [rbx + 4 * rbp]
setpo byte [rbx + 4 * rbp + 0x12]
setpo byte [rbx + 4 * rbp + 0x1234]
setpo byte [rbx + 4 * rbp + 0x12345678]
setpo byte [rsp]
setpo byte [rsp + 0x12]
setpo byte [rsp + 0x1234]
setpo byte [rsp + 0x12345678]
setpo byte [rsp + rax]
setpo byte [rsp + rbp]
setpo byte [rsp + 2*rbp]
setpo byte [rsp + 4*rbp]
setpo byte [rsp + 8*rbp]
setpo byte [rax]
setpo byte [rcx]
setpo byte [rdx]
setpo byte [rbx]
setpo byte [rsp]
setpo byte [rbp]
setpo byte [rsi]
setpo byte [rdi]
setpo byte [rax + 2*rax]
setpo byte [rcx + 2*rcx]
setpo byte [rdx + 2*rdx]
setpo byte [rbx + 2*rbx]
setpo byte [rbp + 2*rbp]
setpo byte [rsi + 2*rsi]
setpo byte [rdi + 2*rdi]

