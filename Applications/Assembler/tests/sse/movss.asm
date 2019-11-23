use64
; ------------------------------------------------------------------------------
; opcode xmm,xmm
; ------------------------------------------------------------------------------
movss xmm0, xmm0
movss xmm0, xmm1
movss xmm0, xmm2
movss xmm0, xmm3
movss xmm0, xmm4
movss xmm0, xmm5
movss xmm0, xmm6
movss xmm0, xmm7
movss xmm1, xmm0
movss xmm1, xmm1
movss xmm1, xmm2
movss xmm1, xmm3
movss xmm1, xmm4
movss xmm1, xmm5
movss xmm1, xmm6
movss xmm1, xmm7
movss xmm2, xmm0
movss xmm2, xmm1
movss xmm2, xmm2
movss xmm2, xmm3
movss xmm2, xmm4
movss xmm2, xmm5
movss xmm2, xmm6
movss xmm2, xmm7
movss xmm3, xmm0
movss xmm3, xmm1
movss xmm3, xmm2
movss xmm3, xmm3
movss xmm3, xmm4
movss xmm3, xmm5
movss xmm3, xmm6
movss xmm3, xmm7
movss xmm4, xmm0
movss xmm4, xmm1
movss xmm4, xmm2
movss xmm4, xmm3
movss xmm4, xmm4
movss xmm4, xmm5
movss xmm4, xmm6
movss xmm4, xmm7
movss xmm5, xmm0
movss xmm5, xmm1
movss xmm5, xmm2
movss xmm5, xmm3
movss xmm5, xmm4
movss xmm5, xmm5
movss xmm5, xmm6
movss xmm5, xmm7
movss xmm6, xmm0
movss xmm6, xmm1
movss xmm6, xmm2
movss xmm6, xmm3
movss xmm6, xmm4
movss xmm6, xmm5
movss xmm6, xmm6
movss xmm6, xmm7
movss xmm7, xmm0
movss xmm7, xmm1
movss xmm7, xmm2
movss xmm7, xmm3
movss xmm7, xmm4
movss xmm7, xmm5
movss xmm7, xmm6
movss xmm7, xmm7

; ------------------------------------------------------------------------------
; opcode xmm,m32
; ------------------------------------------------------------------------------
movss xmm0, dword [rip + 0x13]
movss xmm0, dword [rip + 0x1235]
movss xmm0, dword [rip + 0x12345679]
movss xmm0, dword [rbx]
movss xmm0, dword [rcx + 0x14]
movss xmm0, dword [rdx + 0x15]
movss xmm0, dword [rbx + 0x1235]
movss xmm0, dword [rbx + 0x12345679]
movss xmm0, dword [rbx + rcx]
movss xmm0, dword [rbx + 4 * rcx]
movss xmm0, dword [rbx + rcx + 0x13]
movss xmm0, dword [rbx + rcx + 0x1235]
movss xmm0, dword [rbx + rcx + 0x12345679]
movss xmm0, dword [rbx + 4 * rcx + 0x13]
movss xmm0, dword [rbx + 4 * rcx + 0x1235]
movss xmm0, dword [rbx + 8 * rcx + 0x12345679]
movss xmm0, dword [4 * rcx]
movss xmm0, dword [4 * rcx + 0x13]
movss xmm0, dword [4 * rcx + 0x1235]
movss xmm0, dword [4 * rcx + 0x12345679]
movss xmm0, dword [rbp]
movss xmm0, dword [rbp + 0x12]
movss xmm0, dword [rbp + 0x1234]
movss xmm0, dword [rbp + 0x12345678]
movss xmm0, dword [4 * rbp]
movss xmm0, dword [4 * rbp + 0x12]
movss xmm0, dword [4 * rbp + 0x1234]
movss xmm0, dword [4 * rbp + 0x12345678]
movss xmm0, dword [rbx + 4 * rbp]
movss xmm0, dword [rbx + 4 * rbp + 0x12]
movss xmm0, dword [rbx + 4 * rbp + 0x1234]
movss xmm0, dword [rbx + 4 * rbp + 0x12345678]
movss xmm0, dword [rsp]
movss xmm0, dword [rsp + 0x12]
movss xmm0, dword [rsp + 0x1234]
movss xmm0, dword [rsp + 0x12345678]
movss xmm0, dword [rsp + rax]
movss xmm0, dword [rsp + rbp]
movss xmm0, dword [rsp + 2*rbp]
movss xmm0, dword [rsp + 4*rbp]
movss xmm0, dword [rsp + 8*rbp]
movss xmm0, dword [rax]
movss xmm0, dword [rcx]
movss xmm0, dword [rdx]
movss xmm0, dword [rbx]
movss xmm0, dword [rsp]
movss xmm0, dword [rbp]
movss xmm0, dword [rsi]
movss xmm0, dword [rdi]
movss xmm0, dword [rax + 2*rax]
movss xmm0, dword [rcx + 2*rcx]
movss xmm0, dword [rdx + 2*rdx]
movss xmm0, dword [rbx + 2*rbx]
movss xmm0, dword [rbp + 2*rbp]
movss xmm0, dword [rsi + 2*rsi]
movss xmm0, dword [rdi + 2*rdi]
movss xmm1, dword [rip + 0x13]
movss xmm1, dword [rip + 0x1235]
movss xmm1, dword [rip + 0x12345679]
movss xmm1, dword [rbx]
movss xmm1, dword [rcx + 0x14]
movss xmm1, dword [rdx + 0x15]
movss xmm1, dword [rbx + 0x1235]
movss xmm1, dword [rbx + 0x12345679]
movss xmm1, dword [rbx + rcx]
movss xmm1, dword [rbx + 4 * rcx]
movss xmm1, dword [rbx + rcx + 0x13]
movss xmm1, dword [rbx + rcx + 0x1235]
movss xmm1, dword [rbx + rcx + 0x12345679]
movss xmm1, dword [rbx + 4 * rcx + 0x13]
movss xmm1, dword [rbx + 4 * rcx + 0x1235]
movss xmm1, dword [rbx + 8 * rcx + 0x12345679]
movss xmm1, dword [4 * rcx]
movss xmm1, dword [4 * rcx + 0x13]
movss xmm1, dword [4 * rcx + 0x1235]
movss xmm1, dword [4 * rcx + 0x12345679]
movss xmm1, dword [rbp]
movss xmm1, dword [rbp + 0x12]
movss xmm1, dword [rbp + 0x1234]
movss xmm1, dword [rbp + 0x12345678]
movss xmm1, dword [4 * rbp]
movss xmm1, dword [4 * rbp + 0x12]
movss xmm1, dword [4 * rbp + 0x1234]
movss xmm1, dword [4 * rbp + 0x12345678]
movss xmm1, dword [rbx + 4 * rbp]
movss xmm1, dword [rbx + 4 * rbp + 0x12]
movss xmm1, dword [rbx + 4 * rbp + 0x1234]
movss xmm1, dword [rbx + 4 * rbp + 0x12345678]
movss xmm1, dword [rsp]
movss xmm1, dword [rsp + 0x12]
movss xmm1, dword [rsp + 0x1234]
movss xmm1, dword [rsp + 0x12345678]
movss xmm1, dword [rsp + rax]
movss xmm1, dword [rsp + rbp]
movss xmm1, dword [rsp + 2*rbp]
movss xmm1, dword [rsp + 4*rbp]
movss xmm1, dword [rsp + 8*rbp]
movss xmm1, dword [rax]
movss xmm1, dword [rcx]
movss xmm1, dword [rdx]
movss xmm1, dword [rbx]
movss xmm1, dword [rsp]
movss xmm1, dword [rbp]
movss xmm1, dword [rsi]
movss xmm1, dword [rdi]
movss xmm1, dword [rax + 2*rax]
movss xmm1, dword [rcx + 2*rcx]
movss xmm1, dword [rdx + 2*rdx]
movss xmm1, dword [rbx + 2*rbx]
movss xmm1, dword [rbp + 2*rbp]
movss xmm1, dword [rsi + 2*rsi]
movss xmm1, dword [rdi + 2*rdi]
movss xmm2, dword [rip + 0x13]
movss xmm2, dword [rip + 0x1235]
movss xmm2, dword [rip + 0x12345679]
movss xmm2, dword [rbx]
movss xmm2, dword [rcx + 0x14]
movss xmm2, dword [rdx + 0x15]
movss xmm2, dword [rbx + 0x1235]
movss xmm2, dword [rbx + 0x12345679]
movss xmm2, dword [rbx + rcx]
movss xmm2, dword [rbx + 4 * rcx]
movss xmm2, dword [rbx + rcx + 0x13]
movss xmm2, dword [rbx + rcx + 0x1235]
movss xmm2, dword [rbx + rcx + 0x12345679]
movss xmm2, dword [rbx + 4 * rcx + 0x13]
movss xmm2, dword [rbx + 4 * rcx + 0x1235]
movss xmm2, dword [rbx + 8 * rcx + 0x12345679]
movss xmm2, dword [4 * rcx]
movss xmm2, dword [4 * rcx + 0x13]
movss xmm2, dword [4 * rcx + 0x1235]
movss xmm2, dword [4 * rcx + 0x12345679]
movss xmm2, dword [rbp]
movss xmm2, dword [rbp + 0x12]
movss xmm2, dword [rbp + 0x1234]
movss xmm2, dword [rbp + 0x12345678]
movss xmm2, dword [4 * rbp]
movss xmm2, dword [4 * rbp + 0x12]
movss xmm2, dword [4 * rbp + 0x1234]
movss xmm2, dword [4 * rbp + 0x12345678]
movss xmm2, dword [rbx + 4 * rbp]
movss xmm2, dword [rbx + 4 * rbp + 0x12]
movss xmm2, dword [rbx + 4 * rbp + 0x1234]
movss xmm2, dword [rbx + 4 * rbp + 0x12345678]
movss xmm2, dword [rsp]
movss xmm2, dword [rsp + 0x12]
movss xmm2, dword [rsp + 0x1234]
movss xmm2, dword [rsp + 0x12345678]
movss xmm2, dword [rsp + rax]
movss xmm2, dword [rsp + rbp]
movss xmm2, dword [rsp + 2*rbp]
movss xmm2, dword [rsp + 4*rbp]
movss xmm2, dword [rsp + 8*rbp]
movss xmm2, dword [rax]
movss xmm2, dword [rcx]
movss xmm2, dword [rdx]
movss xmm2, dword [rbx]
movss xmm2, dword [rsp]
movss xmm2, dword [rbp]
movss xmm2, dword [rsi]
movss xmm2, dword [rdi]
movss xmm2, dword [rax + 2*rax]
movss xmm2, dword [rcx + 2*rcx]
movss xmm2, dword [rdx + 2*rdx]
movss xmm2, dword [rbx + 2*rbx]
movss xmm2, dword [rbp + 2*rbp]
movss xmm2, dword [rsi + 2*rsi]
movss xmm2, dword [rdi + 2*rdi]
movss xmm3, dword [rip + 0x13]
movss xmm3, dword [rip + 0x1235]
movss xmm3, dword [rip + 0x12345679]
movss xmm3, dword [rbx]
movss xmm3, dword [rcx + 0x14]
movss xmm3, dword [rdx + 0x15]
movss xmm3, dword [rbx + 0x1235]
movss xmm3, dword [rbx + 0x12345679]
movss xmm3, dword [rbx + rcx]
movss xmm3, dword [rbx + 4 * rcx]
movss xmm3, dword [rbx + rcx + 0x13]
movss xmm3, dword [rbx + rcx + 0x1235]
movss xmm3, dword [rbx + rcx + 0x12345679]
movss xmm3, dword [rbx + 4 * rcx + 0x13]
movss xmm3, dword [rbx + 4 * rcx + 0x1235]
movss xmm3, dword [rbx + 8 * rcx + 0x12345679]
movss xmm3, dword [4 * rcx]
movss xmm3, dword [4 * rcx + 0x13]
movss xmm3, dword [4 * rcx + 0x1235]
movss xmm3, dword [4 * rcx + 0x12345679]
movss xmm3, dword [rbp]
movss xmm3, dword [rbp + 0x12]
movss xmm3, dword [rbp + 0x1234]
movss xmm3, dword [rbp + 0x12345678]
movss xmm3, dword [4 * rbp]
movss xmm3, dword [4 * rbp + 0x12]
movss xmm3, dword [4 * rbp + 0x1234]
movss xmm3, dword [4 * rbp + 0x12345678]
movss xmm3, dword [rbx + 4 * rbp]
movss xmm3, dword [rbx + 4 * rbp + 0x12]
movss xmm3, dword [rbx + 4 * rbp + 0x1234]
movss xmm3, dword [rbx + 4 * rbp + 0x12345678]
movss xmm3, dword [rsp]
movss xmm3, dword [rsp + 0x12]
movss xmm3, dword [rsp + 0x1234]
movss xmm3, dword [rsp + 0x12345678]
movss xmm3, dword [rsp + rax]
movss xmm3, dword [rsp + rbp]
movss xmm3, dword [rsp + 2*rbp]
movss xmm3, dword [rsp + 4*rbp]
movss xmm3, dword [rsp + 8*rbp]
movss xmm3, dword [rax]
movss xmm3, dword [rcx]
movss xmm3, dword [rdx]
movss xmm3, dword [rbx]
movss xmm3, dword [rsp]
movss xmm3, dword [rbp]
movss xmm3, dword [rsi]
movss xmm3, dword [rdi]
movss xmm3, dword [rax + 2*rax]
movss xmm3, dword [rcx + 2*rcx]
movss xmm3, dword [rdx + 2*rdx]
movss xmm3, dword [rbx + 2*rbx]
movss xmm3, dword [rbp + 2*rbp]
movss xmm3, dword [rsi + 2*rsi]
movss xmm3, dword [rdi + 2*rdi]
movss xmm4, dword [rip + 0x13]
movss xmm4, dword [rip + 0x1235]
movss xmm4, dword [rip + 0x12345679]
movss xmm4, dword [rbx]
movss xmm4, dword [rcx + 0x14]
movss xmm4, dword [rdx + 0x15]
movss xmm4, dword [rbx + 0x1235]
movss xmm4, dword [rbx + 0x12345679]
movss xmm4, dword [rbx + rcx]
movss xmm4, dword [rbx + 4 * rcx]
movss xmm4, dword [rbx + rcx + 0x13]
movss xmm4, dword [rbx + rcx + 0x1235]
movss xmm4, dword [rbx + rcx + 0x12345679]
movss xmm4, dword [rbx + 4 * rcx + 0x13]
movss xmm4, dword [rbx + 4 * rcx + 0x1235]
movss xmm4, dword [rbx + 8 * rcx + 0x12345679]
movss xmm4, dword [4 * rcx]
movss xmm4, dword [4 * rcx + 0x13]
movss xmm4, dword [4 * rcx + 0x1235]
movss xmm4, dword [4 * rcx + 0x12345679]
movss xmm4, dword [rbp]
movss xmm4, dword [rbp + 0x12]
movss xmm4, dword [rbp + 0x1234]
movss xmm4, dword [rbp + 0x12345678]
movss xmm4, dword [4 * rbp]
movss xmm4, dword [4 * rbp + 0x12]
movss xmm4, dword [4 * rbp + 0x1234]
movss xmm4, dword [4 * rbp + 0x12345678]
movss xmm4, dword [rbx + 4 * rbp]
movss xmm4, dword [rbx + 4 * rbp + 0x12]
movss xmm4, dword [rbx + 4 * rbp + 0x1234]
movss xmm4, dword [rbx + 4 * rbp + 0x12345678]
movss xmm4, dword [rsp]
movss xmm4, dword [rsp + 0x12]
movss xmm4, dword [rsp + 0x1234]
movss xmm4, dword [rsp + 0x12345678]
movss xmm4, dword [rsp + rax]
movss xmm4, dword [rsp + rbp]
movss xmm4, dword [rsp + 2*rbp]
movss xmm4, dword [rsp + 4*rbp]
movss xmm4, dword [rsp + 8*rbp]
movss xmm4, dword [rax]
movss xmm4, dword [rcx]
movss xmm4, dword [rdx]
movss xmm4, dword [rbx]
movss xmm4, dword [rsp]
movss xmm4, dword [rbp]
movss xmm4, dword [rsi]
movss xmm4, dword [rdi]
movss xmm4, dword [rax + 2*rax]
movss xmm4, dword [rcx + 2*rcx]
movss xmm4, dword [rdx + 2*rdx]
movss xmm4, dword [rbx + 2*rbx]
movss xmm4, dword [rbp + 2*rbp]
movss xmm4, dword [rsi + 2*rsi]
movss xmm4, dword [rdi + 2*rdi]
movss xmm5, dword [rip + 0x13]
movss xmm5, dword [rip + 0x1235]
movss xmm5, dword [rip + 0x12345679]
movss xmm5, dword [rbx]
movss xmm5, dword [rcx + 0x14]
movss xmm5, dword [rdx + 0x15]
movss xmm5, dword [rbx + 0x1235]
movss xmm5, dword [rbx + 0x12345679]
movss xmm5, dword [rbx + rcx]
movss xmm5, dword [rbx + 4 * rcx]
movss xmm5, dword [rbx + rcx + 0x13]
movss xmm5, dword [rbx + rcx + 0x1235]
movss xmm5, dword [rbx + rcx + 0x12345679]
movss xmm5, dword [rbx + 4 * rcx + 0x13]
movss xmm5, dword [rbx + 4 * rcx + 0x1235]
movss xmm5, dword [rbx + 8 * rcx + 0x12345679]
movss xmm5, dword [4 * rcx]
movss xmm5, dword [4 * rcx + 0x13]
movss xmm5, dword [4 * rcx + 0x1235]
movss xmm5, dword [4 * rcx + 0x12345679]
movss xmm5, dword [rbp]
movss xmm5, dword [rbp + 0x12]
movss xmm5, dword [rbp + 0x1234]
movss xmm5, dword [rbp + 0x12345678]
movss xmm5, dword [4 * rbp]
movss xmm5, dword [4 * rbp + 0x12]
movss xmm5, dword [4 * rbp + 0x1234]
movss xmm5, dword [4 * rbp + 0x12345678]
movss xmm5, dword [rbx + 4 * rbp]
movss xmm5, dword [rbx + 4 * rbp + 0x12]
movss xmm5, dword [rbx + 4 * rbp + 0x1234]
movss xmm5, dword [rbx + 4 * rbp + 0x12345678]
movss xmm5, dword [rsp]
movss xmm5, dword [rsp + 0x12]
movss xmm5, dword [rsp + 0x1234]
movss xmm5, dword [rsp + 0x12345678]
movss xmm5, dword [rsp + rax]
movss xmm5, dword [rsp + rbp]
movss xmm5, dword [rsp + 2*rbp]
movss xmm5, dword [rsp + 4*rbp]
movss xmm5, dword [rsp + 8*rbp]
movss xmm5, dword [rax]
movss xmm5, dword [rcx]
movss xmm5, dword [rdx]
movss xmm5, dword [rbx]
movss xmm5, dword [rsp]
movss xmm5, dword [rbp]
movss xmm5, dword [rsi]
movss xmm5, dword [rdi]
movss xmm5, dword [rax + 2*rax]
movss xmm5, dword [rcx + 2*rcx]
movss xmm5, dword [rdx + 2*rdx]
movss xmm5, dword [rbx + 2*rbx]
movss xmm5, dword [rbp + 2*rbp]
movss xmm5, dword [rsi + 2*rsi]
movss xmm5, dword [rdi + 2*rdi]
movss xmm6, dword [rip + 0x13]
movss xmm6, dword [rip + 0x1235]
movss xmm6, dword [rip + 0x12345679]
movss xmm6, dword [rbx]
movss xmm6, dword [rcx + 0x14]
movss xmm6, dword [rdx + 0x15]
movss xmm6, dword [rbx + 0x1235]
movss xmm6, dword [rbx + 0x12345679]
movss xmm6, dword [rbx + rcx]
movss xmm6, dword [rbx + 4 * rcx]
movss xmm6, dword [rbx + rcx + 0x13]
movss xmm6, dword [rbx + rcx + 0x1235]
movss xmm6, dword [rbx + rcx + 0x12345679]
movss xmm6, dword [rbx + 4 * rcx + 0x13]
movss xmm6, dword [rbx + 4 * rcx + 0x1235]
movss xmm6, dword [rbx + 8 * rcx + 0x12345679]
movss xmm6, dword [4 * rcx]
movss xmm6, dword [4 * rcx + 0x13]
movss xmm6, dword [4 * rcx + 0x1235]
movss xmm6, dword [4 * rcx + 0x12345679]
movss xmm6, dword [rbp]
movss xmm6, dword [rbp + 0x12]
movss xmm6, dword [rbp + 0x1234]
movss xmm6, dword [rbp + 0x12345678]
movss xmm6, dword [4 * rbp]
movss xmm6, dword [4 * rbp + 0x12]
movss xmm6, dword [4 * rbp + 0x1234]
movss xmm6, dword [4 * rbp + 0x12345678]
movss xmm6, dword [rbx + 4 * rbp]
movss xmm6, dword [rbx + 4 * rbp + 0x12]
movss xmm6, dword [rbx + 4 * rbp + 0x1234]
movss xmm6, dword [rbx + 4 * rbp + 0x12345678]
movss xmm6, dword [rsp]
movss xmm6, dword [rsp + 0x12]
movss xmm6, dword [rsp + 0x1234]
movss xmm6, dword [rsp + 0x12345678]
movss xmm6, dword [rsp + rax]
movss xmm6, dword [rsp + rbp]
movss xmm6, dword [rsp + 2*rbp]
movss xmm6, dword [rsp + 4*rbp]
movss xmm6, dword [rsp + 8*rbp]
movss xmm6, dword [rax]
movss xmm6, dword [rcx]
movss xmm6, dword [rdx]
movss xmm6, dword [rbx]
movss xmm6, dword [rsp]
movss xmm6, dword [rbp]
movss xmm6, dword [rsi]
movss xmm6, dword [rdi]
movss xmm6, dword [rax + 2*rax]
movss xmm6, dword [rcx + 2*rcx]
movss xmm6, dword [rdx + 2*rdx]
movss xmm6, dword [rbx + 2*rbx]
movss xmm6, dword [rbp + 2*rbp]
movss xmm6, dword [rsi + 2*rsi]
movss xmm6, dword [rdi + 2*rdi]
movss xmm7, dword [rip + 0x13]
movss xmm7, dword [rip + 0x1235]
movss xmm7, dword [rip + 0x12345679]
movss xmm7, dword [rbx]
movss xmm7, dword [rcx + 0x14]
movss xmm7, dword [rdx + 0x15]
movss xmm7, dword [rbx + 0x1235]
movss xmm7, dword [rbx + 0x12345679]
movss xmm7, dword [rbx + rcx]
movss xmm7, dword [rbx + 4 * rcx]
movss xmm7, dword [rbx + rcx + 0x13]
movss xmm7, dword [rbx + rcx + 0x1235]
movss xmm7, dword [rbx + rcx + 0x12345679]
movss xmm7, dword [rbx + 4 * rcx + 0x13]
movss xmm7, dword [rbx + 4 * rcx + 0x1235]
movss xmm7, dword [rbx + 8 * rcx + 0x12345679]
movss xmm7, dword [4 * rcx]
movss xmm7, dword [4 * rcx + 0x13]
movss xmm7, dword [4 * rcx + 0x1235]
movss xmm7, dword [4 * rcx + 0x12345679]
movss xmm7, dword [rbp]
movss xmm7, dword [rbp + 0x12]
movss xmm7, dword [rbp + 0x1234]
movss xmm7, dword [rbp + 0x12345678]
movss xmm7, dword [4 * rbp]
movss xmm7, dword [4 * rbp + 0x12]
movss xmm7, dword [4 * rbp + 0x1234]
movss xmm7, dword [4 * rbp + 0x12345678]
movss xmm7, dword [rbx + 4 * rbp]
movss xmm7, dword [rbx + 4 * rbp + 0x12]
movss xmm7, dword [rbx + 4 * rbp + 0x1234]
movss xmm7, dword [rbx + 4 * rbp + 0x12345678]
movss xmm7, dword [rsp]
movss xmm7, dword [rsp + 0x12]
movss xmm7, dword [rsp + 0x1234]
movss xmm7, dword [rsp + 0x12345678]
movss xmm7, dword [rsp + rax]
movss xmm7, dword [rsp + rbp]
movss xmm7, dword [rsp + 2*rbp]
movss xmm7, dword [rsp + 4*rbp]
movss xmm7, dword [rsp + 8*rbp]
movss xmm7, dword [rax]
movss xmm7, dword [rcx]
movss xmm7, dword [rdx]
movss xmm7, dword [rbx]
movss xmm7, dword [rsp]
movss xmm7, dword [rbp]
movss xmm7, dword [rsi]
movss xmm7, dword [rdi]
movss xmm7, dword [rax + 2*rax]
movss xmm7, dword [rcx + 2*rcx]
movss xmm7, dword [rdx + 2*rdx]
movss xmm7, dword [rbx + 2*rbx]
movss xmm7, dword [rbp + 2*rbp]
movss xmm7, dword [rsi + 2*rsi]
movss xmm7, dword [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode m32,xmm
; ------------------------------------------------------------------------------
movss dword [rip + 0x13], xmm0
movss dword [rip + 0x13], xmm1
movss dword [rip + 0x13], xmm2
movss dword [rip + 0x13], xmm3
movss dword [rip + 0x13], xmm4
movss dword [rip + 0x13], xmm5
movss dword [rip + 0x13], xmm6
movss dword [rip + 0x13], xmm7
movss dword [rip + 0x1235], xmm0
movss dword [rip + 0x1235], xmm1
movss dword [rip + 0x1235], xmm2
movss dword [rip + 0x1235], xmm3
movss dword [rip + 0x1235], xmm4
movss dword [rip + 0x1235], xmm5
movss dword [rip + 0x1235], xmm6
movss dword [rip + 0x1235], xmm7
movss dword [rip + 0x12345679], xmm0
movss dword [rip + 0x12345679], xmm1
movss dword [rip + 0x12345679], xmm2
movss dword [rip + 0x12345679], xmm3
movss dword [rip + 0x12345679], xmm4
movss dword [rip + 0x12345679], xmm5
movss dword [rip + 0x12345679], xmm6
movss dword [rip + 0x12345679], xmm7
movss dword [rbx], xmm0
movss dword [rbx], xmm1
movss dword [rbx], xmm2
movss dword [rbx], xmm3
movss dword [rbx], xmm4
movss dword [rbx], xmm5
movss dword [rbx], xmm6
movss dword [rbx], xmm7
movss dword [rcx + 0x14], xmm0
movss dword [rcx + 0x14], xmm1
movss dword [rcx + 0x14], xmm2
movss dword [rcx + 0x14], xmm3
movss dword [rcx + 0x14], xmm4
movss dword [rcx + 0x14], xmm5
movss dword [rcx + 0x14], xmm6
movss dword [rcx + 0x14], xmm7
movss dword [rdx + 0x15], xmm0
movss dword [rdx + 0x15], xmm1
movss dword [rdx + 0x15], xmm2
movss dword [rdx + 0x15], xmm3
movss dword [rdx + 0x15], xmm4
movss dword [rdx + 0x15], xmm5
movss dword [rdx + 0x15], xmm6
movss dword [rdx + 0x15], xmm7
movss dword [rbx + 0x1235], xmm0
movss dword [rbx + 0x1235], xmm1
movss dword [rbx + 0x1235], xmm2
movss dword [rbx + 0x1235], xmm3
movss dword [rbx + 0x1235], xmm4
movss dword [rbx + 0x1235], xmm5
movss dword [rbx + 0x1235], xmm6
movss dword [rbx + 0x1235], xmm7
movss dword [rbx + 0x12345679], xmm0
movss dword [rbx + 0x12345679], xmm1
movss dword [rbx + 0x12345679], xmm2
movss dword [rbx + 0x12345679], xmm3
movss dword [rbx + 0x12345679], xmm4
movss dword [rbx + 0x12345679], xmm5
movss dword [rbx + 0x12345679], xmm6
movss dword [rbx + 0x12345679], xmm7
movss dword [rbx + rcx], xmm0
movss dword [rbx + rcx], xmm1
movss dword [rbx + rcx], xmm2
movss dword [rbx + rcx], xmm3
movss dword [rbx + rcx], xmm4
movss dword [rbx + rcx], xmm5
movss dword [rbx + rcx], xmm6
movss dword [rbx + rcx], xmm7
movss dword [rbx + 4 * rcx], xmm0
movss dword [rbx + 4 * rcx], xmm1
movss dword [rbx + 4 * rcx], xmm2
movss dword [rbx + 4 * rcx], xmm3
movss dword [rbx + 4 * rcx], xmm4
movss dword [rbx + 4 * rcx], xmm5
movss dword [rbx + 4 * rcx], xmm6
movss dword [rbx + 4 * rcx], xmm7
movss dword [rbx + rcx + 0x13], xmm0
movss dword [rbx + rcx + 0x13], xmm1
movss dword [rbx + rcx + 0x13], xmm2
movss dword [rbx + rcx + 0x13], xmm3
movss dword [rbx + rcx + 0x13], xmm4
movss dword [rbx + rcx + 0x13], xmm5
movss dword [rbx + rcx + 0x13], xmm6
movss dword [rbx + rcx + 0x13], xmm7
movss dword [rbx + rcx + 0x1235], xmm0
movss dword [rbx + rcx + 0x1235], xmm1
movss dword [rbx + rcx + 0x1235], xmm2
movss dword [rbx + rcx + 0x1235], xmm3
movss dword [rbx + rcx + 0x1235], xmm4
movss dword [rbx + rcx + 0x1235], xmm5
movss dword [rbx + rcx + 0x1235], xmm6
movss dword [rbx + rcx + 0x1235], xmm7
movss dword [rbx + rcx + 0x12345679], xmm0
movss dword [rbx + rcx + 0x12345679], xmm1
movss dword [rbx + rcx + 0x12345679], xmm2
movss dword [rbx + rcx + 0x12345679], xmm3
movss dword [rbx + rcx + 0x12345679], xmm4
movss dword [rbx + rcx + 0x12345679], xmm5
movss dword [rbx + rcx + 0x12345679], xmm6
movss dword [rbx + rcx + 0x12345679], xmm7
movss dword [rbx + 4 * rcx + 0x13], xmm0
movss dword [rbx + 4 * rcx + 0x13], xmm1
movss dword [rbx + 4 * rcx + 0x13], xmm2
movss dword [rbx + 4 * rcx + 0x13], xmm3
movss dword [rbx + 4 * rcx + 0x13], xmm4
movss dword [rbx + 4 * rcx + 0x13], xmm5
movss dword [rbx + 4 * rcx + 0x13], xmm6
movss dword [rbx + 4 * rcx + 0x13], xmm7
movss dword [rbx + 4 * rcx + 0x1235], xmm0
movss dword [rbx + 4 * rcx + 0x1235], xmm1
movss dword [rbx + 4 * rcx + 0x1235], xmm2
movss dword [rbx + 4 * rcx + 0x1235], xmm3
movss dword [rbx + 4 * rcx + 0x1235], xmm4
movss dword [rbx + 4 * rcx + 0x1235], xmm5
movss dword [rbx + 4 * rcx + 0x1235], xmm6
movss dword [rbx + 4 * rcx + 0x1235], xmm7
movss dword [rbx + 8 * rcx + 0x12345679], xmm0
movss dword [rbx + 8 * rcx + 0x12345679], xmm1
movss dword [rbx + 8 * rcx + 0x12345679], xmm2
movss dword [rbx + 8 * rcx + 0x12345679], xmm3
movss dword [rbx + 8 * rcx + 0x12345679], xmm4
movss dword [rbx + 8 * rcx + 0x12345679], xmm5
movss dword [rbx + 8 * rcx + 0x12345679], xmm6
movss dword [rbx + 8 * rcx + 0x12345679], xmm7
movss dword [4 * rcx], xmm0
movss dword [4 * rcx], xmm1
movss dword [4 * rcx], xmm2
movss dword [4 * rcx], xmm3
movss dword [4 * rcx], xmm4
movss dword [4 * rcx], xmm5
movss dword [4 * rcx], xmm6
movss dword [4 * rcx], xmm7
movss dword [4 * rcx + 0x13], xmm0
movss dword [4 * rcx + 0x13], xmm1
movss dword [4 * rcx + 0x13], xmm2
movss dword [4 * rcx + 0x13], xmm3
movss dword [4 * rcx + 0x13], xmm4
movss dword [4 * rcx + 0x13], xmm5
movss dword [4 * rcx + 0x13], xmm6
movss dword [4 * rcx + 0x13], xmm7
movss dword [4 * rcx + 0x1235], xmm0
movss dword [4 * rcx + 0x1235], xmm1
movss dword [4 * rcx + 0x1235], xmm2
movss dword [4 * rcx + 0x1235], xmm3
movss dword [4 * rcx + 0x1235], xmm4
movss dword [4 * rcx + 0x1235], xmm5
movss dword [4 * rcx + 0x1235], xmm6
movss dword [4 * rcx + 0x1235], xmm7
movss dword [4 * rcx + 0x12345679], xmm0
movss dword [4 * rcx + 0x12345679], xmm1
movss dword [4 * rcx + 0x12345679], xmm2
movss dword [4 * rcx + 0x12345679], xmm3
movss dword [4 * rcx + 0x12345679], xmm4
movss dword [4 * rcx + 0x12345679], xmm5
movss dword [4 * rcx + 0x12345679], xmm6
movss dword [4 * rcx + 0x12345679], xmm7
movss dword [rbp], xmm0
movss dword [rbp], xmm1
movss dword [rbp], xmm2
movss dword [rbp], xmm3
movss dword [rbp], xmm4
movss dword [rbp], xmm5
movss dword [rbp], xmm6
movss dword [rbp], xmm7
movss dword [rbp + 0x12], xmm0
movss dword [rbp + 0x12], xmm1
movss dword [rbp + 0x12], xmm2
movss dword [rbp + 0x12], xmm3
movss dword [rbp + 0x12], xmm4
movss dword [rbp + 0x12], xmm5
movss dword [rbp + 0x12], xmm6
movss dword [rbp + 0x12], xmm7
movss dword [rbp + 0x1234], xmm0
movss dword [rbp + 0x1234], xmm1
movss dword [rbp + 0x1234], xmm2
movss dword [rbp + 0x1234], xmm3
movss dword [rbp + 0x1234], xmm4
movss dword [rbp + 0x1234], xmm5
movss dword [rbp + 0x1234], xmm6
movss dword [rbp + 0x1234], xmm7
movss dword [rbp + 0x12345678], xmm0
movss dword [rbp + 0x12345678], xmm1
movss dword [rbp + 0x12345678], xmm2
movss dword [rbp + 0x12345678], xmm3
movss dword [rbp + 0x12345678], xmm4
movss dword [rbp + 0x12345678], xmm5
movss dword [rbp + 0x12345678], xmm6
movss dword [rbp + 0x12345678], xmm7
movss dword [4 * rbp], xmm0
movss dword [4 * rbp], xmm1
movss dword [4 * rbp], xmm2
movss dword [4 * rbp], xmm3
movss dword [4 * rbp], xmm4
movss dword [4 * rbp], xmm5
movss dword [4 * rbp], xmm6
movss dword [4 * rbp], xmm7
movss dword [4 * rbp + 0x12], xmm0
movss dword [4 * rbp + 0x12], xmm1
movss dword [4 * rbp + 0x12], xmm2
movss dword [4 * rbp + 0x12], xmm3
movss dword [4 * rbp + 0x12], xmm4
movss dword [4 * rbp + 0x12], xmm5
movss dword [4 * rbp + 0x12], xmm6
movss dword [4 * rbp + 0x12], xmm7
movss dword [4 * rbp + 0x1234], xmm0
movss dword [4 * rbp + 0x1234], xmm1
movss dword [4 * rbp + 0x1234], xmm2
movss dword [4 * rbp + 0x1234], xmm3
movss dword [4 * rbp + 0x1234], xmm4
movss dword [4 * rbp + 0x1234], xmm5
movss dword [4 * rbp + 0x1234], xmm6
movss dword [4 * rbp + 0x1234], xmm7
movss dword [4 * rbp + 0x12345678], xmm0
movss dword [4 * rbp + 0x12345678], xmm1
movss dword [4 * rbp + 0x12345678], xmm2
movss dword [4 * rbp + 0x12345678], xmm3
movss dword [4 * rbp + 0x12345678], xmm4
movss dword [4 * rbp + 0x12345678], xmm5
movss dword [4 * rbp + 0x12345678], xmm6
movss dword [4 * rbp + 0x12345678], xmm7
movss dword [rbx + 4 * rbp], xmm0
movss dword [rbx + 4 * rbp], xmm1
movss dword [rbx + 4 * rbp], xmm2
movss dword [rbx + 4 * rbp], xmm3
movss dword [rbx + 4 * rbp], xmm4
movss dword [rbx + 4 * rbp], xmm5
movss dword [rbx + 4 * rbp], xmm6
movss dword [rbx + 4 * rbp], xmm7
movss dword [rbx + 4 * rbp + 0x12], xmm0
movss dword [rbx + 4 * rbp + 0x12], xmm1
movss dword [rbx + 4 * rbp + 0x12], xmm2
movss dword [rbx + 4 * rbp + 0x12], xmm3
movss dword [rbx + 4 * rbp + 0x12], xmm4
movss dword [rbx + 4 * rbp + 0x12], xmm5
movss dword [rbx + 4 * rbp + 0x12], xmm6
movss dword [rbx + 4 * rbp + 0x12], xmm7
movss dword [rbx + 4 * rbp + 0x1234], xmm0
movss dword [rbx + 4 * rbp + 0x1234], xmm1
movss dword [rbx + 4 * rbp + 0x1234], xmm2
movss dword [rbx + 4 * rbp + 0x1234], xmm3
movss dword [rbx + 4 * rbp + 0x1234], xmm4
movss dword [rbx + 4 * rbp + 0x1234], xmm5
movss dword [rbx + 4 * rbp + 0x1234], xmm6
movss dword [rbx + 4 * rbp + 0x1234], xmm7
movss dword [rbx + 4 * rbp + 0x12345678], xmm0
movss dword [rbx + 4 * rbp + 0x12345678], xmm1
movss dword [rbx + 4 * rbp + 0x12345678], xmm2
movss dword [rbx + 4 * rbp + 0x12345678], xmm3
movss dword [rbx + 4 * rbp + 0x12345678], xmm4
movss dword [rbx + 4 * rbp + 0x12345678], xmm5
movss dword [rbx + 4 * rbp + 0x12345678], xmm6
movss dword [rbx + 4 * rbp + 0x12345678], xmm7
movss dword [rsp], xmm0
movss dword [rsp], xmm1
movss dword [rsp], xmm2
movss dword [rsp], xmm3
movss dword [rsp], xmm4
movss dword [rsp], xmm5
movss dword [rsp], xmm6
movss dword [rsp], xmm7
movss dword [rsp + 0x12], xmm0
movss dword [rsp + 0x12], xmm1
movss dword [rsp + 0x12], xmm2
movss dword [rsp + 0x12], xmm3
movss dword [rsp + 0x12], xmm4
movss dword [rsp + 0x12], xmm5
movss dword [rsp + 0x12], xmm6
movss dword [rsp + 0x12], xmm7
movss dword [rsp + 0x1234], xmm0
movss dword [rsp + 0x1234], xmm1
movss dword [rsp + 0x1234], xmm2
movss dword [rsp + 0x1234], xmm3
movss dword [rsp + 0x1234], xmm4
movss dword [rsp + 0x1234], xmm5
movss dword [rsp + 0x1234], xmm6
movss dword [rsp + 0x1234], xmm7
movss dword [rsp + 0x12345678], xmm0
movss dword [rsp + 0x12345678], xmm1
movss dword [rsp + 0x12345678], xmm2
movss dword [rsp + 0x12345678], xmm3
movss dword [rsp + 0x12345678], xmm4
movss dword [rsp + 0x12345678], xmm5
movss dword [rsp + 0x12345678], xmm6
movss dword [rsp + 0x12345678], xmm7
movss dword [rsp + rax], xmm0
movss dword [rsp + rax], xmm1
movss dword [rsp + rax], xmm2
movss dword [rsp + rax], xmm3
movss dword [rsp + rax], xmm4
movss dword [rsp + rax], xmm5
movss dword [rsp + rax], xmm6
movss dword [rsp + rax], xmm7
movss dword [rsp + rbp], xmm0
movss dword [rsp + rbp], xmm1
movss dword [rsp + rbp], xmm2
movss dword [rsp + rbp], xmm3
movss dword [rsp + rbp], xmm4
movss dword [rsp + rbp], xmm5
movss dword [rsp + rbp], xmm6
movss dword [rsp + rbp], xmm7
movss dword [rsp + 2*rbp], xmm0
movss dword [rsp + 2*rbp], xmm1
movss dword [rsp + 2*rbp], xmm2
movss dword [rsp + 2*rbp], xmm3
movss dword [rsp + 2*rbp], xmm4
movss dword [rsp + 2*rbp], xmm5
movss dword [rsp + 2*rbp], xmm6
movss dword [rsp + 2*rbp], xmm7
movss dword [rsp + 4*rbp], xmm0
movss dword [rsp + 4*rbp], xmm1
movss dword [rsp + 4*rbp], xmm2
movss dword [rsp + 4*rbp], xmm3
movss dword [rsp + 4*rbp], xmm4
movss dword [rsp + 4*rbp], xmm5
movss dword [rsp + 4*rbp], xmm6
movss dword [rsp + 4*rbp], xmm7
movss dword [rsp + 8*rbp], xmm0
movss dword [rsp + 8*rbp], xmm1
movss dword [rsp + 8*rbp], xmm2
movss dword [rsp + 8*rbp], xmm3
movss dword [rsp + 8*rbp], xmm4
movss dword [rsp + 8*rbp], xmm5
movss dword [rsp + 8*rbp], xmm6
movss dword [rsp + 8*rbp], xmm7
movss dword [rax], xmm0
movss dword [rax], xmm1
movss dword [rax], xmm2
movss dword [rax], xmm3
movss dword [rax], xmm4
movss dword [rax], xmm5
movss dword [rax], xmm6
movss dword [rax], xmm7
movss dword [rcx], xmm0
movss dword [rcx], xmm1
movss dword [rcx], xmm2
movss dword [rcx], xmm3
movss dword [rcx], xmm4
movss dword [rcx], xmm5
movss dword [rcx], xmm6
movss dword [rcx], xmm7
movss dword [rdx], xmm0
movss dword [rdx], xmm1
movss dword [rdx], xmm2
movss dword [rdx], xmm3
movss dword [rdx], xmm4
movss dword [rdx], xmm5
movss dword [rdx], xmm6
movss dword [rdx], xmm7
movss dword [rbx], xmm0
movss dword [rbx], xmm1
movss dword [rbx], xmm2
movss dword [rbx], xmm3
movss dword [rbx], xmm4
movss dword [rbx], xmm5
movss dword [rbx], xmm6
movss dword [rbx], xmm7
movss dword [rsp], xmm0
movss dword [rsp], xmm1
movss dword [rsp], xmm2
movss dword [rsp], xmm3
movss dword [rsp], xmm4
movss dword [rsp], xmm5
movss dword [rsp], xmm6
movss dword [rsp], xmm7
movss dword [rbp], xmm0
movss dword [rbp], xmm1
movss dword [rbp], xmm2
movss dword [rbp], xmm3
movss dword [rbp], xmm4
movss dword [rbp], xmm5
movss dword [rbp], xmm6
movss dword [rbp], xmm7
movss dword [rsi], xmm0
movss dword [rsi], xmm1
movss dword [rsi], xmm2
movss dword [rsi], xmm3
movss dword [rsi], xmm4
movss dword [rsi], xmm5
movss dword [rsi], xmm6
movss dword [rsi], xmm7
movss dword [rdi], xmm0
movss dword [rdi], xmm1
movss dword [rdi], xmm2
movss dword [rdi], xmm3
movss dword [rdi], xmm4
movss dword [rdi], xmm5
movss dword [rdi], xmm6
movss dword [rdi], xmm7
movss dword [rax + 2*rax], xmm0
movss dword [rax + 2*rax], xmm1
movss dword [rax + 2*rax], xmm2
movss dword [rax + 2*rax], xmm3
movss dword [rax + 2*rax], xmm4
movss dword [rax + 2*rax], xmm5
movss dword [rax + 2*rax], xmm6
movss dword [rax + 2*rax], xmm7
movss dword [rcx + 2*rcx], xmm0
movss dword [rcx + 2*rcx], xmm1
movss dword [rcx + 2*rcx], xmm2
movss dword [rcx + 2*rcx], xmm3
movss dword [rcx + 2*rcx], xmm4
movss dword [rcx + 2*rcx], xmm5
movss dword [rcx + 2*rcx], xmm6
movss dword [rcx + 2*rcx], xmm7
movss dword [rdx + 2*rdx], xmm0
movss dword [rdx + 2*rdx], xmm1
movss dword [rdx + 2*rdx], xmm2
movss dword [rdx + 2*rdx], xmm3
movss dword [rdx + 2*rdx], xmm4
movss dword [rdx + 2*rdx], xmm5
movss dword [rdx + 2*rdx], xmm6
movss dword [rdx + 2*rdx], xmm7
movss dword [rbx + 2*rbx], xmm0
movss dword [rbx + 2*rbx], xmm1
movss dword [rbx + 2*rbx], xmm2
movss dword [rbx + 2*rbx], xmm3
movss dword [rbx + 2*rbx], xmm4
movss dword [rbx + 2*rbx], xmm5
movss dword [rbx + 2*rbx], xmm6
movss dword [rbx + 2*rbx], xmm7
movss dword [rbp + 2*rbp], xmm0
movss dword [rbp + 2*rbp], xmm1
movss dword [rbp + 2*rbp], xmm2
movss dword [rbp + 2*rbp], xmm3
movss dword [rbp + 2*rbp], xmm4
movss dword [rbp + 2*rbp], xmm5
movss dword [rbp + 2*rbp], xmm6
movss dword [rbp + 2*rbp], xmm7
movss dword [rsi + 2*rsi], xmm0
movss dword [rsi + 2*rsi], xmm1
movss dword [rsi + 2*rsi], xmm2
movss dword [rsi + 2*rsi], xmm3
movss dword [rsi + 2*rsi], xmm4
movss dword [rsi + 2*rsi], xmm5
movss dword [rsi + 2*rsi], xmm6
movss dword [rsi + 2*rsi], xmm7
movss dword [rdi + 2*rdi], xmm0
movss dword [rdi + 2*rdi], xmm1
movss dword [rdi + 2*rdi], xmm2
movss dword [rdi + 2*rdi], xmm3
movss dword [rdi + 2*rdi], xmm4
movss dword [rdi + 2*rdi], xmm5
movss dword [rdi + 2*rdi], xmm6
movss dword [rdi + 2*rdi], xmm7

