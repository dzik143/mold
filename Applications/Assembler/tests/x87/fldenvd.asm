use64
; ------------------------------------------------------------------------------
; opcode m?
; ------------------------------------------------------------------------------
fldenvd [rip + 0x13]
fldenvd [rip + 0x1235]
fldenvd [rip + 0x12345679]
fldenvd [rbx]
fldenvd [rcx + 0x14]
fldenvd [rdx + 0x15]
fldenvd [rbx + 0x1235]
fldenvd [rbx + 0x12345679]
fldenvd [rbx + rcx]
fldenvd [rbx + 4 * rcx]
fldenvd [rbx + rcx + 0x13]
fldenvd [rbx + rcx + 0x1235]
fldenvd [rbx + rcx + 0x12345679]
fldenvd [rbx + 4 * rcx + 0x13]
fldenvd [rbx + 4 * rcx + 0x1235]
fldenvd [rbx + 8 * rcx + 0x12345679]
fldenvd [4 * rcx]
fldenvd [4 * rcx + 0x13]
fldenvd [4 * rcx + 0x1235]
fldenvd [4 * rcx + 0x12345679]
fldenvd [rbp]
fldenvd [rbp + 0x12]
fldenvd [rbp + 0x1234]
fldenvd [rbp + 0x12345678]
fldenvd [4 * rbp]
fldenvd [4 * rbp + 0x12]
fldenvd [4 * rbp + 0x1234]
fldenvd [4 * rbp + 0x12345678]
fldenvd [rbx + 4 * rbp]
fldenvd [rbx + 4 * rbp + 0x12]
fldenvd [rbx + 4 * rbp + 0x1234]
fldenvd [rbx + 4 * rbp + 0x12345678]
fldenvd [rsp]
fldenvd [rsp + 0x12]
fldenvd [rsp + 0x1234]
fldenvd [rsp + 0x12345678]
fldenvd [rsp + rax]
fldenvd [rsp + rbp]
fldenvd [rsp + 2*rbp]
fldenvd [rsp + 4*rbp]
fldenvd [rsp + 8*rbp]
fldenvd [rax]
fldenvd [rcx]
fldenvd [rdx]
fldenvd [rbx]
fldenvd [rsp]
fldenvd [rbp]
fldenvd [rsi]
fldenvd [rdi]
fldenvd [rax + 2*rax]
fldenvd [rcx + 2*rcx]
fldenvd [rdx + 2*rdx]
fldenvd [rbx + 2*rbx]
fldenvd [rbp + 2*rbp]
fldenvd [rsi + 2*rsi]
fldenvd [rdi + 2*rdi]

