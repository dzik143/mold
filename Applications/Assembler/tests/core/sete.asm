use64
; ------------------------------------------------------------------------------
; opcode r8
; ------------------------------------------------------------------------------
sete al
sete cl
sete dl
sete bl
sete ah
sete ch
sete dh
sete bh

; ------------------------------------------------------------------------------
; opcode m8
; ------------------------------------------------------------------------------
sete byte [rip + 0x13]
sete byte [rip + 0x1235]
sete byte [rip + 0x12345679]
sete byte [rbx]
sete byte [rcx + 0x14]
sete byte [rdx + 0x15]
sete byte [rbx + 0x1235]
sete byte [rbx + 0x12345679]
sete byte [rbx + rcx]
sete byte [rbx + 4 * rcx]
sete byte [rbx + rcx + 0x13]
sete byte [rbx + rcx + 0x1235]
sete byte [rbx + rcx + 0x12345679]
sete byte [rbx + 4 * rcx + 0x13]
sete byte [rbx + 4 * rcx + 0x1235]
sete byte [rbx + 8 * rcx + 0x12345679]
sete byte [4 * rcx]
sete byte [4 * rcx + 0x13]
sete byte [4 * rcx + 0x1235]
sete byte [4 * rcx + 0x12345679]
sete byte [rbp]
sete byte [rbp + 0x12]
sete byte [rbp + 0x1234]
sete byte [rbp + 0x12345678]
sete byte [4 * rbp]
sete byte [4 * rbp + 0x12]
sete byte [4 * rbp + 0x1234]
sete byte [4 * rbp + 0x12345678]
sete byte [rbx + 4 * rbp]
sete byte [rbx + 4 * rbp + 0x12]
sete byte [rbx + 4 * rbp + 0x1234]
sete byte [rbx + 4 * rbp + 0x12345678]
sete byte [rsp]
sete byte [rsp + 0x12]
sete byte [rsp + 0x1234]
sete byte [rsp + 0x12345678]
sete byte [rsp + rax]
sete byte [rsp + rbp]
sete byte [rsp + 2*rbp]
sete byte [rsp + 4*rbp]
sete byte [rsp + 8*rbp]
sete byte [rax]
sete byte [rcx]
sete byte [rdx]
sete byte [rbx]
sete byte [rsp]
sete byte [rbp]
sete byte [rsi]
sete byte [rdi]
sete byte [rax + 2*rax]
sete byte [rcx + 2*rcx]
sete byte [rdx + 2*rdx]
sete byte [rbx + 2*rbx]
sete byte [rbp + 2*rbp]
sete byte [rsi + 2*rsi]
sete byte [rdi + 2*rdi]

