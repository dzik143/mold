use64
; ------------------------------------------------------------------------------
; opcode r8
; ------------------------------------------------------------------------------
setg al
setg cl
setg dl
setg bl
setg ah
setg ch
setg dh
setg bh

; ------------------------------------------------------------------------------
; opcode m8
; ------------------------------------------------------------------------------
setg byte [rip + 0x13]
setg byte [rip + 0x1235]
setg byte [rip + 0x12345679]
setg byte [rbx]
setg byte [rcx + 0x14]
setg byte [rdx + 0x15]
setg byte [rbx + 0x1235]
setg byte [rbx + 0x12345679]
setg byte [rbx + rcx]
setg byte [rbx + 4 * rcx]
setg byte [rbx + rcx + 0x13]
setg byte [rbx + rcx + 0x1235]
setg byte [rbx + rcx + 0x12345679]
setg byte [rbx + 4 * rcx + 0x13]
setg byte [rbx + 4 * rcx + 0x1235]
setg byte [rbx + 8 * rcx + 0x12345679]
setg byte [4 * rcx]
setg byte [4 * rcx + 0x13]
setg byte [4 * rcx + 0x1235]
setg byte [4 * rcx + 0x12345679]
setg byte [rbp]
setg byte [rbp + 0x12]
setg byte [rbp + 0x1234]
setg byte [rbp + 0x12345678]
setg byte [4 * rbp]
setg byte [4 * rbp + 0x12]
setg byte [4 * rbp + 0x1234]
setg byte [4 * rbp + 0x12345678]
setg byte [rbx + 4 * rbp]
setg byte [rbx + 4 * rbp + 0x12]
setg byte [rbx + 4 * rbp + 0x1234]
setg byte [rbx + 4 * rbp + 0x12345678]
setg byte [rsp]
setg byte [rsp + 0x12]
setg byte [rsp + 0x1234]
setg byte [rsp + 0x12345678]
setg byte [rsp + rax]
setg byte [rsp + rbp]
setg byte [rsp + 2*rbp]
setg byte [rsp + 4*rbp]
setg byte [rsp + 8*rbp]
setg byte [rax]
setg byte [rcx]
setg byte [rdx]
setg byte [rbx]
setg byte [rsp]
setg byte [rbp]
setg byte [rsi]
setg byte [rdi]
setg byte [rax + 2*rax]
setg byte [rcx + 2*rcx]
setg byte [rdx + 2*rdx]
setg byte [rbx + 2*rbx]
setg byte [rbp + 2*rbp]
setg byte [rsi + 2*rsi]
setg byte [rdi + 2*rdi]

