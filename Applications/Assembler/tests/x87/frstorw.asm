use64
; ------------------------------------------------------------------------------
; opcode m?
; ------------------------------------------------------------------------------
frstorw [rip + 0x13]
frstorw [rip + 0x1235]
frstorw [rip + 0x12345679]
frstorw [rbx]
frstorw [rcx + 0x14]
frstorw [rdx + 0x15]
frstorw [rbx + 0x1235]
frstorw [rbx + 0x12345679]
frstorw [rbx + rcx]
frstorw [rbx + 4 * rcx]
frstorw [rbx + rcx + 0x13]
frstorw [rbx + rcx + 0x1235]
frstorw [rbx + rcx + 0x12345679]
frstorw [rbx + 4 * rcx + 0x13]
frstorw [rbx + 4 * rcx + 0x1235]
frstorw [rbx + 8 * rcx + 0x12345679]
frstorw [4 * rcx]
frstorw [4 * rcx + 0x13]
frstorw [4 * rcx + 0x1235]
frstorw [4 * rcx + 0x12345679]
frstorw [rbp]
frstorw [rbp + 0x12]
frstorw [rbp + 0x1234]
frstorw [rbp + 0x12345678]
frstorw [4 * rbp]
frstorw [4 * rbp + 0x12]
frstorw [4 * rbp + 0x1234]
frstorw [4 * rbp + 0x12345678]
frstorw [rbx + 4 * rbp]
frstorw [rbx + 4 * rbp + 0x12]
frstorw [rbx + 4 * rbp + 0x1234]
frstorw [rbx + 4 * rbp + 0x12345678]
frstorw [rsp]
frstorw [rsp + 0x12]
frstorw [rsp + 0x1234]
frstorw [rsp + 0x12345678]
frstorw [rsp + rax]
frstorw [rsp + rbp]
frstorw [rsp + 2*rbp]
frstorw [rsp + 4*rbp]
frstorw [rsp + 8*rbp]
frstorw [rax]
frstorw [rcx]
frstorw [rdx]
frstorw [rbx]
frstorw [rsp]
frstorw [rbp]
frstorw [rsi]
frstorw [rdi]
frstorw [rax + 2*rax]
frstorw [rcx + 2*rcx]
frstorw [rdx + 2*rdx]
frstorw [rbx + 2*rbx]
frstorw [rbp + 2*rbp]
frstorw [rsi + 2*rsi]
frstorw [rdi + 2*rdi]
