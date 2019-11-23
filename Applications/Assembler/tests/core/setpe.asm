use64
; ------------------------------------------------------------------------------
; opcode r8
; ------------------------------------------------------------------------------
setpe al
setpe cl
setpe dl
setpe bl
setpe ah
setpe ch
setpe dh
setpe bh

; ------------------------------------------------------------------------------
; opcode m8
; ------------------------------------------------------------------------------
setpe byte [rip + 0x13]
setpe byte [rip + 0x1235]
setpe byte [rip + 0x12345679]
setpe byte [rbx]
setpe byte [rcx + 0x14]
setpe byte [rdx + 0x15]
setpe byte [rbx + 0x1235]
setpe byte [rbx + 0x12345679]
setpe byte [rbx + rcx]
setpe byte [rbx + 4 * rcx]
setpe byte [rbx + rcx + 0x13]
setpe byte [rbx + rcx + 0x1235]
setpe byte [rbx + rcx + 0x12345679]
setpe byte [rbx + 4 * rcx + 0x13]
setpe byte [rbx + 4 * rcx + 0x1235]
setpe byte [rbx + 8 * rcx + 0x12345679]
setpe byte [4 * rcx]
setpe byte [4 * rcx + 0x13]
setpe byte [4 * rcx + 0x1235]
setpe byte [4 * rcx + 0x12345679]
setpe byte [rbp]
setpe byte [rbp + 0x12]
setpe byte [rbp + 0x1234]
setpe byte [rbp + 0x12345678]
setpe byte [4 * rbp]
setpe byte [4 * rbp + 0x12]
setpe byte [4 * rbp + 0x1234]
setpe byte [4 * rbp + 0x12345678]
setpe byte [rbx + 4 * rbp]
setpe byte [rbx + 4 * rbp + 0x12]
setpe byte [rbx + 4 * rbp + 0x1234]
setpe byte [rbx + 4 * rbp + 0x12345678]
setpe byte [rsp]
setpe byte [rsp + 0x12]
setpe byte [rsp + 0x1234]
setpe byte [rsp + 0x12345678]
setpe byte [rsp + rax]
setpe byte [rsp + rbp]
setpe byte [rsp + 2*rbp]
setpe byte [rsp + 4*rbp]
setpe byte [rsp + 8*rbp]
setpe byte [rax]
setpe byte [rcx]
setpe byte [rdx]
setpe byte [rbx]
setpe byte [rsp]
setpe byte [rbp]
setpe byte [rsi]
setpe byte [rdi]
setpe byte [rax + 2*rax]
setpe byte [rcx + 2*rcx]
setpe byte [rdx + 2*rdx]
setpe byte [rbx + 2*rbx]
setpe byte [rbp + 2*rbp]
setpe byte [rsi + 2*rsi]
setpe byte [rdi + 2*rdi]

