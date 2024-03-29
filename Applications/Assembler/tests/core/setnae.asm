use64
; ------------------------------------------------------------------------------
; opcode r8
; ------------------------------------------------------------------------------
setnae al
setnae cl
setnae dl
setnae bl
setnae ah
setnae ch
setnae dh
setnae bh

; ------------------------------------------------------------------------------
; opcode m8
; ------------------------------------------------------------------------------
setnae byte [rip + 0x13]
setnae byte [rip + 0x1235]
setnae byte [rip + 0x12345679]
setnae byte [rbx]
setnae byte [rcx + 0x14]
setnae byte [rdx + 0x15]
setnae byte [rbx + 0x1235]
setnae byte [rbx + 0x12345679]
setnae byte [rbx + rcx]
setnae byte [rbx + 4 * rcx]
setnae byte [rbx + rcx + 0x13]
setnae byte [rbx + rcx + 0x1235]
setnae byte [rbx + rcx + 0x12345679]
setnae byte [rbx + 4 * rcx + 0x13]
setnae byte [rbx + 4 * rcx + 0x1235]
setnae byte [rbx + 8 * rcx + 0x12345679]
setnae byte [4 * rcx]
setnae byte [4 * rcx + 0x13]
setnae byte [4 * rcx + 0x1235]
setnae byte [4 * rcx + 0x12345679]
setnae byte [rbp]
setnae byte [rbp + 0x12]
setnae byte [rbp + 0x1234]
setnae byte [rbp + 0x12345678]
setnae byte [4 * rbp]
setnae byte [4 * rbp + 0x12]
setnae byte [4 * rbp + 0x1234]
setnae byte [4 * rbp + 0x12345678]
setnae byte [rbx + 4 * rbp]
setnae byte [rbx + 4 * rbp + 0x12]
setnae byte [rbx + 4 * rbp + 0x1234]
setnae byte [rbx + 4 * rbp + 0x12345678]
setnae byte [rsp]
setnae byte [rsp + 0x12]
setnae byte [rsp + 0x1234]
setnae byte [rsp + 0x12345678]
setnae byte [rsp + rax]
setnae byte [rsp + rbp]
setnae byte [rsp + 2*rbp]
setnae byte [rsp + 4*rbp]
setnae byte [rsp + 8*rbp]
setnae byte [rax]
setnae byte [rcx]
setnae byte [rdx]
setnae byte [rbx]
setnae byte [rsp]
setnae byte [rbp]
setnae byte [rsi]
setnae byte [rdi]
setnae byte [rax + 2*rax]
setnae byte [rcx + 2*rcx]
setnae byte [rdx + 2*rdx]
setnae byte [rbx + 2*rbx]
setnae byte [rbp + 2*rbp]
setnae byte [rsi + 2*rsi]
setnae byte [rdi + 2*rdi]

