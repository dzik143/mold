use64
; ------------------------------------------------------------------------------
; opcode m?
; ------------------------------------------------------------------------------
fnsavew [rip + 0x13]
fnsavew [rip + 0x1235]
fnsavew [rip + 0x12345679]
fnsavew [rbx]
fnsavew [rcx + 0x14]
fnsavew [rdx + 0x15]
fnsavew [rbx + 0x1235]
fnsavew [rbx + 0x12345679]
fnsavew [rbx + rcx]
fnsavew [rbx + 4 * rcx]
fnsavew [rbx + rcx + 0x13]
fnsavew [rbx + rcx + 0x1235]
fnsavew [rbx + rcx + 0x12345679]
fnsavew [rbx + 4 * rcx + 0x13]
fnsavew [rbx + 4 * rcx + 0x1235]
fnsavew [rbx + 8 * rcx + 0x12345679]
fnsavew [4 * rcx]
fnsavew [4 * rcx + 0x13]
fnsavew [4 * rcx + 0x1235]
fnsavew [4 * rcx + 0x12345679]
fnsavew [rbp]
fnsavew [rbp + 0x12]
fnsavew [rbp + 0x1234]
fnsavew [rbp + 0x12345678]
fnsavew [4 * rbp]
fnsavew [4 * rbp + 0x12]
fnsavew [4 * rbp + 0x1234]
fnsavew [4 * rbp + 0x12345678]
fnsavew [rbx + 4 * rbp]
fnsavew [rbx + 4 * rbp + 0x12]
fnsavew [rbx + 4 * rbp + 0x1234]
fnsavew [rbx + 4 * rbp + 0x12345678]
fnsavew [rsp]
fnsavew [rsp + 0x12]
fnsavew [rsp + 0x1234]
fnsavew [rsp + 0x12345678]
fnsavew [rsp + rax]
fnsavew [rsp + rbp]
fnsavew [rsp + 2*rbp]
fnsavew [rsp + 4*rbp]
fnsavew [rsp + 8*rbp]
fnsavew [rax]
fnsavew [rcx]
fnsavew [rdx]
fnsavew [rbx]
fnsavew [rsp]
fnsavew [rbp]
fnsavew [rsi]
fnsavew [rdi]
fnsavew [rax + 2*rax]
fnsavew [rcx + 2*rcx]
fnsavew [rdx + 2*rdx]
fnsavew [rbx + 2*rbx]
fnsavew [rbp + 2*rbp]
fnsavew [rsi + 2*rsi]
fnsavew [rdi + 2*rdi]

