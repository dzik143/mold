use64
; ------------------------------------------------------------------------------
; opcode m80
; ------------------------------------------------------------------------------
fbstp tword [rip + 0x13]
fbstp tword [rip + 0x1235]
fbstp tword [rip + 0x12345679]
fbstp tword [rbx]
fbstp tword [rcx + 0x14]
fbstp tword [rdx + 0x15]
fbstp tword [rbx + 0x1235]
fbstp tword [rbx + 0x12345679]
fbstp tword [rbx + rcx]
fbstp tword [rbx + 4 * rcx]
fbstp tword [rbx + rcx + 0x13]
fbstp tword [rbx + rcx + 0x1235]
fbstp tword [rbx + rcx + 0x12345679]
fbstp tword [rbx + 4 * rcx + 0x13]
fbstp tword [rbx + 4 * rcx + 0x1235]
fbstp tword [rbx + 8 * rcx + 0x12345679]
fbstp tword [4 * rcx]
fbstp tword [4 * rcx + 0x13]
fbstp tword [4 * rcx + 0x1235]
fbstp tword [4 * rcx + 0x12345679]
fbstp tword [rbp]
fbstp tword [rbp + 0x12]
fbstp tword [rbp + 0x1234]
fbstp tword [rbp + 0x12345678]
fbstp tword [4 * rbp]
fbstp tword [4 * rbp + 0x12]
fbstp tword [4 * rbp + 0x1234]
fbstp tword [4 * rbp + 0x12345678]
fbstp tword [rbx + 4 * rbp]
fbstp tword [rbx + 4 * rbp + 0x12]
fbstp tword [rbx + 4 * rbp + 0x1234]
fbstp tword [rbx + 4 * rbp + 0x12345678]
fbstp tword [rsp]
fbstp tword [rsp + 0x12]
fbstp tword [rsp + 0x1234]
fbstp tword [rsp + 0x12345678]
fbstp tword [rsp + rax]
fbstp tword [rsp + rbp]
fbstp tword [rsp + 2*rbp]
fbstp tword [rsp + 4*rbp]
fbstp tword [rsp + 8*rbp]
fbstp tword [rax]
fbstp tword [rcx]
fbstp tword [rdx]
fbstp tword [rbx]
fbstp tword [rsp]
fbstp tword [rbp]
fbstp tword [rsi]
fbstp tword [rdi]
fbstp tword [rax + 2*rax]
fbstp tword [rcx + 2*rcx]
fbstp tword [rdx + 2*rdx]
fbstp tword [rbx + 2*rbx]
fbstp tword [rbp + 2*rbp]
fbstp tword [rsi + 2*rsi]
fbstp tword [rdi + 2*rdi]
