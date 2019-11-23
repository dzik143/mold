use64
; ------------------------------------------------------------------------------
; opcode xmm,xmm
; ------------------------------------------------------------------------------
addss xmm0, xmm0
addss xmm0, xmm1
addss xmm0, xmm2
addss xmm0, xmm3
addss xmm0, xmm4
addss xmm0, xmm5
addss xmm0, xmm6
addss xmm0, xmm7
addss xmm1, xmm0
addss xmm1, xmm1
addss xmm1, xmm2
addss xmm1, xmm3
addss xmm1, xmm4
addss xmm1, xmm5
addss xmm1, xmm6
addss xmm1, xmm7
addss xmm2, xmm0
addss xmm2, xmm1
addss xmm2, xmm2
addss xmm2, xmm3
addss xmm2, xmm4
addss xmm2, xmm5
addss xmm2, xmm6
addss xmm2, xmm7
addss xmm3, xmm0
addss xmm3, xmm1
addss xmm3, xmm2
addss xmm3, xmm3
addss xmm3, xmm4
addss xmm3, xmm5
addss xmm3, xmm6
addss xmm3, xmm7
addss xmm4, xmm0
addss xmm4, xmm1
addss xmm4, xmm2
addss xmm4, xmm3
addss xmm4, xmm4
addss xmm4, xmm5
addss xmm4, xmm6
addss xmm4, xmm7
addss xmm5, xmm0
addss xmm5, xmm1
addss xmm5, xmm2
addss xmm5, xmm3
addss xmm5, xmm4
addss xmm5, xmm5
addss xmm5, xmm6
addss xmm5, xmm7
addss xmm6, xmm0
addss xmm6, xmm1
addss xmm6, xmm2
addss xmm6, xmm3
addss xmm6, xmm4
addss xmm6, xmm5
addss xmm6, xmm6
addss xmm6, xmm7
addss xmm7, xmm0
addss xmm7, xmm1
addss xmm7, xmm2
addss xmm7, xmm3
addss xmm7, xmm4
addss xmm7, xmm5
addss xmm7, xmm6
addss xmm7, xmm7

; ------------------------------------------------------------------------------
; opcode xmm,m32
; ------------------------------------------------------------------------------
addss xmm0, dword [rip + 0x13]
addss xmm0, dword [rip + 0x1235]
addss xmm0, dword [rip + 0x12345679]
addss xmm0, dword [rbx]
addss xmm0, dword [rcx + 0x14]
addss xmm0, dword [rdx + 0x15]
addss xmm0, dword [rbx + 0x1235]
addss xmm0, dword [rbx + 0x12345679]
addss xmm0, dword [rbx + rcx]
addss xmm0, dword [rbx + 4 * rcx]
addss xmm0, dword [rbx + rcx + 0x13]
addss xmm0, dword [rbx + rcx + 0x1235]
addss xmm0, dword [rbx + rcx + 0x12345679]
addss xmm0, dword [rbx + 4 * rcx + 0x13]
addss xmm0, dword [rbx + 4 * rcx + 0x1235]
addss xmm0, dword [rbx + 8 * rcx + 0x12345679]
addss xmm0, dword [4 * rcx]
addss xmm0, dword [4 * rcx + 0x13]
addss xmm0, dword [4 * rcx + 0x1235]
addss xmm0, dword [4 * rcx + 0x12345679]
addss xmm0, dword [rbp]
addss xmm0, dword [rbp + 0x12]
addss xmm0, dword [rbp + 0x1234]
addss xmm0, dword [rbp + 0x12345678]
addss xmm0, dword [4 * rbp]
addss xmm0, dword [4 * rbp + 0x12]
addss xmm0, dword [4 * rbp + 0x1234]
addss xmm0, dword [4 * rbp + 0x12345678]
addss xmm0, dword [rbx + 4 * rbp]
addss xmm0, dword [rbx + 4 * rbp + 0x12]
addss xmm0, dword [rbx + 4 * rbp + 0x1234]
addss xmm0, dword [rbx + 4 * rbp + 0x12345678]
addss xmm0, dword [rsp]
addss xmm0, dword [rsp + 0x12]
addss xmm0, dword [rsp + 0x1234]
addss xmm0, dword [rsp + 0x12345678]
addss xmm0, dword [rsp + rax]
addss xmm0, dword [rsp + rbp]
addss xmm0, dword [rsp + 2*rbp]
addss xmm0, dword [rsp + 4*rbp]
addss xmm0, dword [rsp + 8*rbp]
addss xmm0, dword [rax]
addss xmm0, dword [rcx]
addss xmm0, dword [rdx]
addss xmm0, dword [rbx]
addss xmm0, dword [rsp]
addss xmm0, dword [rbp]
addss xmm0, dword [rsi]
addss xmm0, dword [rdi]
addss xmm0, dword [rax + 2*rax]
addss xmm0, dword [rcx + 2*rcx]
addss xmm0, dword [rdx + 2*rdx]
addss xmm0, dword [rbx + 2*rbx]
addss xmm0, dword [rbp + 2*rbp]
addss xmm0, dword [rsi + 2*rsi]
addss xmm0, dword [rdi + 2*rdi]
addss xmm1, dword [rip + 0x13]
addss xmm1, dword [rip + 0x1235]
addss xmm1, dword [rip + 0x12345679]
addss xmm1, dword [rbx]
addss xmm1, dword [rcx + 0x14]
addss xmm1, dword [rdx + 0x15]
addss xmm1, dword [rbx + 0x1235]
addss xmm1, dword [rbx + 0x12345679]
addss xmm1, dword [rbx + rcx]
addss xmm1, dword [rbx + 4 * rcx]
addss xmm1, dword [rbx + rcx + 0x13]
addss xmm1, dword [rbx + rcx + 0x1235]
addss xmm1, dword [rbx + rcx + 0x12345679]
addss xmm1, dword [rbx + 4 * rcx + 0x13]
addss xmm1, dword [rbx + 4 * rcx + 0x1235]
addss xmm1, dword [rbx + 8 * rcx + 0x12345679]
addss xmm1, dword [4 * rcx]
addss xmm1, dword [4 * rcx + 0x13]
addss xmm1, dword [4 * rcx + 0x1235]
addss xmm1, dword [4 * rcx + 0x12345679]
addss xmm1, dword [rbp]
addss xmm1, dword [rbp + 0x12]
addss xmm1, dword [rbp + 0x1234]
addss xmm1, dword [rbp + 0x12345678]
addss xmm1, dword [4 * rbp]
addss xmm1, dword [4 * rbp + 0x12]
addss xmm1, dword [4 * rbp + 0x1234]
addss xmm1, dword [4 * rbp + 0x12345678]
addss xmm1, dword [rbx + 4 * rbp]
addss xmm1, dword [rbx + 4 * rbp + 0x12]
addss xmm1, dword [rbx + 4 * rbp + 0x1234]
addss xmm1, dword [rbx + 4 * rbp + 0x12345678]
addss xmm1, dword [rsp]
addss xmm1, dword [rsp + 0x12]
addss xmm1, dword [rsp + 0x1234]
addss xmm1, dword [rsp + 0x12345678]
addss xmm1, dword [rsp + rax]
addss xmm1, dword [rsp + rbp]
addss xmm1, dword [rsp + 2*rbp]
addss xmm1, dword [rsp + 4*rbp]
addss xmm1, dword [rsp + 8*rbp]
addss xmm1, dword [rax]
addss xmm1, dword [rcx]
addss xmm1, dword [rdx]
addss xmm1, dword [rbx]
addss xmm1, dword [rsp]
addss xmm1, dword [rbp]
addss xmm1, dword [rsi]
addss xmm1, dword [rdi]
addss xmm1, dword [rax + 2*rax]
addss xmm1, dword [rcx + 2*rcx]
addss xmm1, dword [rdx + 2*rdx]
addss xmm1, dword [rbx + 2*rbx]
addss xmm1, dword [rbp + 2*rbp]
addss xmm1, dword [rsi + 2*rsi]
addss xmm1, dword [rdi + 2*rdi]
addss xmm2, dword [rip + 0x13]
addss xmm2, dword [rip + 0x1235]
addss xmm2, dword [rip + 0x12345679]
addss xmm2, dword [rbx]
addss xmm2, dword [rcx + 0x14]
addss xmm2, dword [rdx + 0x15]
addss xmm2, dword [rbx + 0x1235]
addss xmm2, dword [rbx + 0x12345679]
addss xmm2, dword [rbx + rcx]
addss xmm2, dword [rbx + 4 * rcx]
addss xmm2, dword [rbx + rcx + 0x13]
addss xmm2, dword [rbx + rcx + 0x1235]
addss xmm2, dword [rbx + rcx + 0x12345679]
addss xmm2, dword [rbx + 4 * rcx + 0x13]
addss xmm2, dword [rbx + 4 * rcx + 0x1235]
addss xmm2, dword [rbx + 8 * rcx + 0x12345679]
addss xmm2, dword [4 * rcx]
addss xmm2, dword [4 * rcx + 0x13]
addss xmm2, dword [4 * rcx + 0x1235]
addss xmm2, dword [4 * rcx + 0x12345679]
addss xmm2, dword [rbp]
addss xmm2, dword [rbp + 0x12]
addss xmm2, dword [rbp + 0x1234]
addss xmm2, dword [rbp + 0x12345678]
addss xmm2, dword [4 * rbp]
addss xmm2, dword [4 * rbp + 0x12]
addss xmm2, dword [4 * rbp + 0x1234]
addss xmm2, dword [4 * rbp + 0x12345678]
addss xmm2, dword [rbx + 4 * rbp]
addss xmm2, dword [rbx + 4 * rbp + 0x12]
addss xmm2, dword [rbx + 4 * rbp + 0x1234]
addss xmm2, dword [rbx + 4 * rbp + 0x12345678]
addss xmm2, dword [rsp]
addss xmm2, dword [rsp + 0x12]
addss xmm2, dword [rsp + 0x1234]
addss xmm2, dword [rsp + 0x12345678]
addss xmm2, dword [rsp + rax]
addss xmm2, dword [rsp + rbp]
addss xmm2, dword [rsp + 2*rbp]
addss xmm2, dword [rsp + 4*rbp]
addss xmm2, dword [rsp + 8*rbp]
addss xmm2, dword [rax]
addss xmm2, dword [rcx]
addss xmm2, dword [rdx]
addss xmm2, dword [rbx]
addss xmm2, dword [rsp]
addss xmm2, dword [rbp]
addss xmm2, dword [rsi]
addss xmm2, dword [rdi]
addss xmm2, dword [rax + 2*rax]
addss xmm2, dword [rcx + 2*rcx]
addss xmm2, dword [rdx + 2*rdx]
addss xmm2, dword [rbx + 2*rbx]
addss xmm2, dword [rbp + 2*rbp]
addss xmm2, dword [rsi + 2*rsi]
addss xmm2, dword [rdi + 2*rdi]
addss xmm3, dword [rip + 0x13]
addss xmm3, dword [rip + 0x1235]
addss xmm3, dword [rip + 0x12345679]
addss xmm3, dword [rbx]
addss xmm3, dword [rcx + 0x14]
addss xmm3, dword [rdx + 0x15]
addss xmm3, dword [rbx + 0x1235]
addss xmm3, dword [rbx + 0x12345679]
addss xmm3, dword [rbx + rcx]
addss xmm3, dword [rbx + 4 * rcx]
addss xmm3, dword [rbx + rcx + 0x13]
addss xmm3, dword [rbx + rcx + 0x1235]
addss xmm3, dword [rbx + rcx + 0x12345679]
addss xmm3, dword [rbx + 4 * rcx + 0x13]
addss xmm3, dword [rbx + 4 * rcx + 0x1235]
addss xmm3, dword [rbx + 8 * rcx + 0x12345679]
addss xmm3, dword [4 * rcx]
addss xmm3, dword [4 * rcx + 0x13]
addss xmm3, dword [4 * rcx + 0x1235]
addss xmm3, dword [4 * rcx + 0x12345679]
addss xmm3, dword [rbp]
addss xmm3, dword [rbp + 0x12]
addss xmm3, dword [rbp + 0x1234]
addss xmm3, dword [rbp + 0x12345678]
addss xmm3, dword [4 * rbp]
addss xmm3, dword [4 * rbp + 0x12]
addss xmm3, dword [4 * rbp + 0x1234]
addss xmm3, dword [4 * rbp + 0x12345678]
addss xmm3, dword [rbx + 4 * rbp]
addss xmm3, dword [rbx + 4 * rbp + 0x12]
addss xmm3, dword [rbx + 4 * rbp + 0x1234]
addss xmm3, dword [rbx + 4 * rbp + 0x12345678]
addss xmm3, dword [rsp]
addss xmm3, dword [rsp + 0x12]
addss xmm3, dword [rsp + 0x1234]
addss xmm3, dword [rsp + 0x12345678]
addss xmm3, dword [rsp + rax]
addss xmm3, dword [rsp + rbp]
addss xmm3, dword [rsp + 2*rbp]
addss xmm3, dword [rsp + 4*rbp]
addss xmm3, dword [rsp + 8*rbp]
addss xmm3, dword [rax]
addss xmm3, dword [rcx]
addss xmm3, dword [rdx]
addss xmm3, dword [rbx]
addss xmm3, dword [rsp]
addss xmm3, dword [rbp]
addss xmm3, dword [rsi]
addss xmm3, dword [rdi]
addss xmm3, dword [rax + 2*rax]
addss xmm3, dword [rcx + 2*rcx]
addss xmm3, dword [rdx + 2*rdx]
addss xmm3, dword [rbx + 2*rbx]
addss xmm3, dword [rbp + 2*rbp]
addss xmm3, dword [rsi + 2*rsi]
addss xmm3, dword [rdi + 2*rdi]
addss xmm4, dword [rip + 0x13]
addss xmm4, dword [rip + 0x1235]
addss xmm4, dword [rip + 0x12345679]
addss xmm4, dword [rbx]
addss xmm4, dword [rcx + 0x14]
addss xmm4, dword [rdx + 0x15]
addss xmm4, dword [rbx + 0x1235]
addss xmm4, dword [rbx + 0x12345679]
addss xmm4, dword [rbx + rcx]
addss xmm4, dword [rbx + 4 * rcx]
addss xmm4, dword [rbx + rcx + 0x13]
addss xmm4, dword [rbx + rcx + 0x1235]
addss xmm4, dword [rbx + rcx + 0x12345679]
addss xmm4, dword [rbx + 4 * rcx + 0x13]
addss xmm4, dword [rbx + 4 * rcx + 0x1235]
addss xmm4, dword [rbx + 8 * rcx + 0x12345679]
addss xmm4, dword [4 * rcx]
addss xmm4, dword [4 * rcx + 0x13]
addss xmm4, dword [4 * rcx + 0x1235]
addss xmm4, dword [4 * rcx + 0x12345679]
addss xmm4, dword [rbp]
addss xmm4, dword [rbp + 0x12]
addss xmm4, dword [rbp + 0x1234]
addss xmm4, dword [rbp + 0x12345678]
addss xmm4, dword [4 * rbp]
addss xmm4, dword [4 * rbp + 0x12]
addss xmm4, dword [4 * rbp + 0x1234]
addss xmm4, dword [4 * rbp + 0x12345678]
addss xmm4, dword [rbx + 4 * rbp]
addss xmm4, dword [rbx + 4 * rbp + 0x12]
addss xmm4, dword [rbx + 4 * rbp + 0x1234]
addss xmm4, dword [rbx + 4 * rbp + 0x12345678]
addss xmm4, dword [rsp]
addss xmm4, dword [rsp + 0x12]
addss xmm4, dword [rsp + 0x1234]
addss xmm4, dword [rsp + 0x12345678]
addss xmm4, dword [rsp + rax]
addss xmm4, dword [rsp + rbp]
addss xmm4, dword [rsp + 2*rbp]
addss xmm4, dword [rsp + 4*rbp]
addss xmm4, dword [rsp + 8*rbp]
addss xmm4, dword [rax]
addss xmm4, dword [rcx]
addss xmm4, dword [rdx]
addss xmm4, dword [rbx]
addss xmm4, dword [rsp]
addss xmm4, dword [rbp]
addss xmm4, dword [rsi]
addss xmm4, dword [rdi]
addss xmm4, dword [rax + 2*rax]
addss xmm4, dword [rcx + 2*rcx]
addss xmm4, dword [rdx + 2*rdx]
addss xmm4, dword [rbx + 2*rbx]
addss xmm4, dword [rbp + 2*rbp]
addss xmm4, dword [rsi + 2*rsi]
addss xmm4, dword [rdi + 2*rdi]
addss xmm5, dword [rip + 0x13]
addss xmm5, dword [rip + 0x1235]
addss xmm5, dword [rip + 0x12345679]
addss xmm5, dword [rbx]
addss xmm5, dword [rcx + 0x14]
addss xmm5, dword [rdx + 0x15]
addss xmm5, dword [rbx + 0x1235]
addss xmm5, dword [rbx + 0x12345679]
addss xmm5, dword [rbx + rcx]
addss xmm5, dword [rbx + 4 * rcx]
addss xmm5, dword [rbx + rcx + 0x13]
addss xmm5, dword [rbx + rcx + 0x1235]
addss xmm5, dword [rbx + rcx + 0x12345679]
addss xmm5, dword [rbx + 4 * rcx + 0x13]
addss xmm5, dword [rbx + 4 * rcx + 0x1235]
addss xmm5, dword [rbx + 8 * rcx + 0x12345679]
addss xmm5, dword [4 * rcx]
addss xmm5, dword [4 * rcx + 0x13]
addss xmm5, dword [4 * rcx + 0x1235]
addss xmm5, dword [4 * rcx + 0x12345679]
addss xmm5, dword [rbp]
addss xmm5, dword [rbp + 0x12]
addss xmm5, dword [rbp + 0x1234]
addss xmm5, dword [rbp + 0x12345678]
addss xmm5, dword [4 * rbp]
addss xmm5, dword [4 * rbp + 0x12]
addss xmm5, dword [4 * rbp + 0x1234]
addss xmm5, dword [4 * rbp + 0x12345678]
addss xmm5, dword [rbx + 4 * rbp]
addss xmm5, dword [rbx + 4 * rbp + 0x12]
addss xmm5, dword [rbx + 4 * rbp + 0x1234]
addss xmm5, dword [rbx + 4 * rbp + 0x12345678]
addss xmm5, dword [rsp]
addss xmm5, dword [rsp + 0x12]
addss xmm5, dword [rsp + 0x1234]
addss xmm5, dword [rsp + 0x12345678]
addss xmm5, dword [rsp + rax]
addss xmm5, dword [rsp + rbp]
addss xmm5, dword [rsp + 2*rbp]
addss xmm5, dword [rsp + 4*rbp]
addss xmm5, dword [rsp + 8*rbp]
addss xmm5, dword [rax]
addss xmm5, dword [rcx]
addss xmm5, dword [rdx]
addss xmm5, dword [rbx]
addss xmm5, dword [rsp]
addss xmm5, dword [rbp]
addss xmm5, dword [rsi]
addss xmm5, dword [rdi]
addss xmm5, dword [rax + 2*rax]
addss xmm5, dword [rcx + 2*rcx]
addss xmm5, dword [rdx + 2*rdx]
addss xmm5, dword [rbx + 2*rbx]
addss xmm5, dword [rbp + 2*rbp]
addss xmm5, dword [rsi + 2*rsi]
addss xmm5, dword [rdi + 2*rdi]
addss xmm6, dword [rip + 0x13]
addss xmm6, dword [rip + 0x1235]
addss xmm6, dword [rip + 0x12345679]
addss xmm6, dword [rbx]
addss xmm6, dword [rcx + 0x14]
addss xmm6, dword [rdx + 0x15]
addss xmm6, dword [rbx + 0x1235]
addss xmm6, dword [rbx + 0x12345679]
addss xmm6, dword [rbx + rcx]
addss xmm6, dword [rbx + 4 * rcx]
addss xmm6, dword [rbx + rcx + 0x13]
addss xmm6, dword [rbx + rcx + 0x1235]
addss xmm6, dword [rbx + rcx + 0x12345679]
addss xmm6, dword [rbx + 4 * rcx + 0x13]
addss xmm6, dword [rbx + 4 * rcx + 0x1235]
addss xmm6, dword [rbx + 8 * rcx + 0x12345679]
addss xmm6, dword [4 * rcx]
addss xmm6, dword [4 * rcx + 0x13]
addss xmm6, dword [4 * rcx + 0x1235]
addss xmm6, dword [4 * rcx + 0x12345679]
addss xmm6, dword [rbp]
addss xmm6, dword [rbp + 0x12]
addss xmm6, dword [rbp + 0x1234]
addss xmm6, dword [rbp + 0x12345678]
addss xmm6, dword [4 * rbp]
addss xmm6, dword [4 * rbp + 0x12]
addss xmm6, dword [4 * rbp + 0x1234]
addss xmm6, dword [4 * rbp + 0x12345678]
addss xmm6, dword [rbx + 4 * rbp]
addss xmm6, dword [rbx + 4 * rbp + 0x12]
addss xmm6, dword [rbx + 4 * rbp + 0x1234]
addss xmm6, dword [rbx + 4 * rbp + 0x12345678]
addss xmm6, dword [rsp]
addss xmm6, dword [rsp + 0x12]
addss xmm6, dword [rsp + 0x1234]
addss xmm6, dword [rsp + 0x12345678]
addss xmm6, dword [rsp + rax]
addss xmm6, dword [rsp + rbp]
addss xmm6, dword [rsp + 2*rbp]
addss xmm6, dword [rsp + 4*rbp]
addss xmm6, dword [rsp + 8*rbp]
addss xmm6, dword [rax]
addss xmm6, dword [rcx]
addss xmm6, dword [rdx]
addss xmm6, dword [rbx]
addss xmm6, dword [rsp]
addss xmm6, dword [rbp]
addss xmm6, dword [rsi]
addss xmm6, dword [rdi]
addss xmm6, dword [rax + 2*rax]
addss xmm6, dword [rcx + 2*rcx]
addss xmm6, dword [rdx + 2*rdx]
addss xmm6, dword [rbx + 2*rbx]
addss xmm6, dword [rbp + 2*rbp]
addss xmm6, dword [rsi + 2*rsi]
addss xmm6, dword [rdi + 2*rdi]
addss xmm7, dword [rip + 0x13]
addss xmm7, dword [rip + 0x1235]
addss xmm7, dword [rip + 0x12345679]
addss xmm7, dword [rbx]
addss xmm7, dword [rcx + 0x14]
addss xmm7, dword [rdx + 0x15]
addss xmm7, dword [rbx + 0x1235]
addss xmm7, dword [rbx + 0x12345679]
addss xmm7, dword [rbx + rcx]
addss xmm7, dword [rbx + 4 * rcx]
addss xmm7, dword [rbx + rcx + 0x13]
addss xmm7, dword [rbx + rcx + 0x1235]
addss xmm7, dword [rbx + rcx + 0x12345679]
addss xmm7, dword [rbx + 4 * rcx + 0x13]
addss xmm7, dword [rbx + 4 * rcx + 0x1235]
addss xmm7, dword [rbx + 8 * rcx + 0x12345679]
addss xmm7, dword [4 * rcx]
addss xmm7, dword [4 * rcx + 0x13]
addss xmm7, dword [4 * rcx + 0x1235]
addss xmm7, dword [4 * rcx + 0x12345679]
addss xmm7, dword [rbp]
addss xmm7, dword [rbp + 0x12]
addss xmm7, dword [rbp + 0x1234]
addss xmm7, dword [rbp + 0x12345678]
addss xmm7, dword [4 * rbp]
addss xmm7, dword [4 * rbp + 0x12]
addss xmm7, dword [4 * rbp + 0x1234]
addss xmm7, dword [4 * rbp + 0x12345678]
addss xmm7, dword [rbx + 4 * rbp]
addss xmm7, dword [rbx + 4 * rbp + 0x12]
addss xmm7, dword [rbx + 4 * rbp + 0x1234]
addss xmm7, dword [rbx + 4 * rbp + 0x12345678]
addss xmm7, dword [rsp]
addss xmm7, dword [rsp + 0x12]
addss xmm7, dword [rsp + 0x1234]
addss xmm7, dword [rsp + 0x12345678]
addss xmm7, dword [rsp + rax]
addss xmm7, dword [rsp + rbp]
addss xmm7, dword [rsp + 2*rbp]
addss xmm7, dword [rsp + 4*rbp]
addss xmm7, dword [rsp + 8*rbp]
addss xmm7, dword [rax]
addss xmm7, dword [rcx]
addss xmm7, dword [rdx]
addss xmm7, dword [rbx]
addss xmm7, dword [rsp]
addss xmm7, dword [rbp]
addss xmm7, dword [rsi]
addss xmm7, dword [rdi]
addss xmm7, dword [rax + 2*rax]
addss xmm7, dword [rcx + 2*rcx]
addss xmm7, dword [rdx + 2*rdx]
addss xmm7, dword [rbx + 2*rbx]
addss xmm7, dword [rbp + 2*rbp]
addss xmm7, dword [rsi + 2*rsi]
addss xmm7, dword [rdi + 2*rdi]

