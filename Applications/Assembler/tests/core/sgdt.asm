use64
; ------------------------------------------------------------------------------
; opcode m80
; ------------------------------------------------------------------------------
sgdt tword [rip + 0x13]
sgdt tword [rip + 0x1235]
sgdt tword [rip + 0x12345679]
sgdt tword [rbx]
sgdt tword [rcx + 0x14]
sgdt tword [rdx + 0x15]
sgdt tword [rbx + 0x1235]
sgdt tword [rbx + 0x12345679]
sgdt tword [rbx + rcx]
sgdt tword [rbx + 4 * rcx]
sgdt tword [rbx + rcx + 0x13]
sgdt tword [rbx + rcx + 0x1235]
sgdt tword [rbx + rcx + 0x12345679]
sgdt tword [rbx + 4 * rcx + 0x13]
sgdt tword [rbx + 4 * rcx + 0x1235]
sgdt tword [rbx + 8 * rcx + 0x12345679]
sgdt tword [4 * rcx]
sgdt tword [4 * rcx + 0x13]
sgdt tword [4 * rcx + 0x1235]
sgdt tword [4 * rcx + 0x12345679]
sgdt tword [rbp]
sgdt tword [rbp + 0x12]
sgdt tword [rbp + 0x1234]
sgdt tword [rbp + 0x12345678]
sgdt tword [4 * rbp]
sgdt tword [4 * rbp + 0x12]
sgdt tword [4 * rbp + 0x1234]
sgdt tword [4 * rbp + 0x12345678]
sgdt tword [rbx + 4 * rbp]
sgdt tword [rbx + 4 * rbp + 0x12]
sgdt tword [rbx + 4 * rbp + 0x1234]
sgdt tword [rbx + 4 * rbp + 0x12345678]
sgdt tword [rsp]
sgdt tword [rsp + 0x12]
sgdt tword [rsp + 0x1234]
sgdt tword [rsp + 0x12345678]
sgdt tword [rsp + rax]
sgdt tword [rsp + rbp]
sgdt tword [rsp + 2*rbp]
sgdt tword [rsp + 4*rbp]
sgdt tword [rsp + 8*rbp]
sgdt tword [rax]
sgdt tword [rcx]
sgdt tword [rdx]
sgdt tword [rbx]
sgdt tword [rsp]
sgdt tword [rbp]
sgdt tword [rsi]
sgdt tword [rdi]
sgdt tword [rax + 2*rax]
sgdt tword [rcx + 2*rcx]
sgdt tword [rdx + 2*rdx]
sgdt tword [rbx + 2*rbx]
sgdt tword [rbp + 2*rbp]
sgdt tword [rsi + 2*rsi]
sgdt tword [rdi + 2*rdi]

