use64
; ------------------------------------------------------------------------------
; opcode m48
; ------------------------------------------------------------------------------
lidt [rip + 0x13]
lidt [rip + 0x1235]
lidt [rip + 0x12345679]
lidt [rbx]
lidt [rcx + 0x14]
lidt [rdx + 0x15]
lidt [rbx + 0x1235]
lidt [rbx + 0x12345679]
lidt [rbx + rcx]
lidt [rbx + 4 * rcx]
lidt [rbx + rcx + 0x13]
lidt [rbx + rcx + 0x1235]
lidt [rbx + rcx + 0x12345679]
lidt [rbx + 4 * rcx + 0x13]
lidt [rbx + 4 * rcx + 0x1235]
lidt [rbx + 8 * rcx + 0x12345679]
lidt [4 * rcx]
lidt [4 * rcx + 0x13]
lidt [4 * rcx + 0x1235]
lidt [4 * rcx + 0x12345679]
lidt [rbp]
lidt [rbp + 0x12]
lidt [rbp + 0x1234]
lidt [rbp + 0x12345678]
lidt [4 * rbp]
lidt [4 * rbp + 0x12]
lidt [4 * rbp + 0x1234]
lidt [4 * rbp + 0x12345678]
lidt [rbx + 4 * rbp]
lidt [rbx + 4 * rbp + 0x12]
lidt [rbx + 4 * rbp + 0x1234]
lidt [rbx + 4 * rbp + 0x12345678]
lidt [rsp]
lidt [rsp + 0x12]
lidt [rsp + 0x1234]
lidt [rsp + 0x12345678]
lidt [rsp + rax]
lidt [rsp + rbp]
lidt [rsp + 2*rbp]
lidt [rsp + 4*rbp]
lidt [rsp + 8*rbp]
lidt [rax]
lidt [rcx]
lidt [rdx]
lidt [rbx]
lidt [rsp]
lidt [rbp]
lidt [rsi]
lidt [rdi]
lidt [rax + 2*rax]
lidt [rcx + 2*rcx]
lidt [rdx + 2*rdx]
lidt [rbx + 2*rbx]
lidt [rbp + 2*rbp]
lidt [rsi + 2*rsi]
lidt [rdi + 2*rdi]

