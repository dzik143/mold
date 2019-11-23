use64
; ------------------------------------------------------------------------------
; opcode r8
; ------------------------------------------------------------------------------
setne al
setne cl
setne dl
setne bl
setne ah
setne ch
setne dh
setne bh

; ------------------------------------------------------------------------------
; opcode m8
; ------------------------------------------------------------------------------
setne byte [rip + 0x13]
setne byte [rip + 0x1235]
setne byte [rip + 0x12345679]
setne byte [rbx]
setne byte [rcx + 0x14]
setne byte [rdx + 0x15]
setne byte [rbx + 0x1235]
setne byte [rbx + 0x12345679]
setne byte [rbx + rcx]
setne byte [rbx + 4 * rcx]
setne byte [rbx + rcx + 0x13]
setne byte [rbx + rcx + 0x1235]
setne byte [rbx + rcx + 0x12345679]
setne byte [rbx + 4 * rcx + 0x13]
setne byte [rbx + 4 * rcx + 0x1235]
setne byte [rbx + 8 * rcx + 0x12345679]
setne byte [4 * rcx]
setne byte [4 * rcx + 0x13]
setne byte [4 * rcx + 0x1235]
setne byte [4 * rcx + 0x12345679]
setne byte [rbp]
setne byte [rbp + 0x12]
setne byte [rbp + 0x1234]
setne byte [rbp + 0x12345678]
setne byte [4 * rbp]
setne byte [4 * rbp + 0x12]
setne byte [4 * rbp + 0x1234]
setne byte [4 * rbp + 0x12345678]
setne byte [rbx + 4 * rbp]
setne byte [rbx + 4 * rbp + 0x12]
setne byte [rbx + 4 * rbp + 0x1234]
setne byte [rbx + 4 * rbp + 0x12345678]
setne byte [rsp]
setne byte [rsp + 0x12]
setne byte [rsp + 0x1234]
setne byte [rsp + 0x12345678]
setne byte [rsp + rax]
setne byte [rsp + rbp]
setne byte [rsp + 2*rbp]
setne byte [rsp + 4*rbp]
setne byte [rsp + 8*rbp]
setne byte [rax]
setne byte [rcx]
setne byte [rdx]
setne byte [rbx]
setne byte [rsp]
setne byte [rbp]
setne byte [rsi]
setne byte [rdi]
setne byte [rax + 2*rax]
setne byte [rcx + 2*rcx]
setne byte [rdx + 2*rdx]
setne byte [rbx + 2*rbx]
setne byte [rbp + 2*rbp]
setne byte [rsi + 2*rsi]
setne byte [rdi + 2*rdi]

