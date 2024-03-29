use64
; ------------------------------------------------------------------------------
; opcode r8
; ------------------------------------------------------------------------------
setnz al
setnz cl
setnz dl
setnz bl
setnz ah
setnz ch
setnz dh
setnz bh

; ------------------------------------------------------------------------------
; opcode m8
; ------------------------------------------------------------------------------
setnz byte [rip + 0x13]
setnz byte [rip + 0x1235]
setnz byte [rip + 0x12345679]
setnz byte [rbx]
setnz byte [rcx + 0x14]
setnz byte [rdx + 0x15]
setnz byte [rbx + 0x1235]
setnz byte [rbx + 0x12345679]
setnz byte [rbx + rcx]
setnz byte [rbx + 4 * rcx]
setnz byte [rbx + rcx + 0x13]
setnz byte [rbx + rcx + 0x1235]
setnz byte [rbx + rcx + 0x12345679]
setnz byte [rbx + 4 * rcx + 0x13]
setnz byte [rbx + 4 * rcx + 0x1235]
setnz byte [rbx + 8 * rcx + 0x12345679]
setnz byte [4 * rcx]
setnz byte [4 * rcx + 0x13]
setnz byte [4 * rcx + 0x1235]
setnz byte [4 * rcx + 0x12345679]
setnz byte [rbp]
setnz byte [rbp + 0x12]
setnz byte [rbp + 0x1234]
setnz byte [rbp + 0x12345678]
setnz byte [4 * rbp]
setnz byte [4 * rbp + 0x12]
setnz byte [4 * rbp + 0x1234]
setnz byte [4 * rbp + 0x12345678]
setnz byte [rbx + 4 * rbp]
setnz byte [rbx + 4 * rbp + 0x12]
setnz byte [rbx + 4 * rbp + 0x1234]
setnz byte [rbx + 4 * rbp + 0x12345678]
setnz byte [rsp]
setnz byte [rsp + 0x12]
setnz byte [rsp + 0x1234]
setnz byte [rsp + 0x12345678]
setnz byte [rsp + rax]
setnz byte [rsp + rbp]
setnz byte [rsp + 2*rbp]
setnz byte [rsp + 4*rbp]
setnz byte [rsp + 8*rbp]
setnz byte [rax]
setnz byte [rcx]
setnz byte [rdx]
setnz byte [rbx]
setnz byte [rsp]
setnz byte [rbp]
setnz byte [rsi]
setnz byte [rdi]
setnz byte [rax + 2*rax]
setnz byte [rcx + 2*rcx]
setnz byte [rdx + 2*rdx]
setnz byte [rbx + 2*rbx]
setnz byte [rbp + 2*rbp]
setnz byte [rsi + 2*rsi]
setnz byte [rdi + 2*rdi]

