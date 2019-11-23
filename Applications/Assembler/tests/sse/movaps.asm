use64
; ------------------------------------------------------------------------------
; opcode xmm,xmm
; ------------------------------------------------------------------------------
movaps xmm0, xmm0
movaps xmm0, xmm1
movaps xmm0, xmm2
movaps xmm0, xmm3
movaps xmm0, xmm4
movaps xmm0, xmm5
movaps xmm0, xmm6
movaps xmm0, xmm7
movaps xmm1, xmm0
movaps xmm1, xmm1
movaps xmm1, xmm2
movaps xmm1, xmm3
movaps xmm1, xmm4
movaps xmm1, xmm5
movaps xmm1, xmm6
movaps xmm1, xmm7
movaps xmm2, xmm0
movaps xmm2, xmm1
movaps xmm2, xmm2
movaps xmm2, xmm3
movaps xmm2, xmm4
movaps xmm2, xmm5
movaps xmm2, xmm6
movaps xmm2, xmm7
movaps xmm3, xmm0
movaps xmm3, xmm1
movaps xmm3, xmm2
movaps xmm3, xmm3
movaps xmm3, xmm4
movaps xmm3, xmm5
movaps xmm3, xmm6
movaps xmm3, xmm7
movaps xmm4, xmm0
movaps xmm4, xmm1
movaps xmm4, xmm2
movaps xmm4, xmm3
movaps xmm4, xmm4
movaps xmm4, xmm5
movaps xmm4, xmm6
movaps xmm4, xmm7
movaps xmm5, xmm0
movaps xmm5, xmm1
movaps xmm5, xmm2
movaps xmm5, xmm3
movaps xmm5, xmm4
movaps xmm5, xmm5
movaps xmm5, xmm6
movaps xmm5, xmm7
movaps xmm6, xmm0
movaps xmm6, xmm1
movaps xmm6, xmm2
movaps xmm6, xmm3
movaps xmm6, xmm4
movaps xmm6, xmm5
movaps xmm6, xmm6
movaps xmm6, xmm7
movaps xmm7, xmm0
movaps xmm7, xmm1
movaps xmm7, xmm2
movaps xmm7, xmm3
movaps xmm7, xmm4
movaps xmm7, xmm5
movaps xmm7, xmm6
movaps xmm7, xmm7

; ------------------------------------------------------------------------------
; opcode xmm,m128
; ------------------------------------------------------------------------------
movaps xmm0, [rip + 0x13]
movaps xmm0, [rip + 0x1235]
movaps xmm0, [rip + 0x12345679]
movaps xmm0, [rbx]
movaps xmm0, [rcx + 0x14]
movaps xmm0, [rdx + 0x15]
movaps xmm0, [rbx + 0x1235]
movaps xmm0, [rbx + 0x12345679]
movaps xmm0, [rbx + rcx]
movaps xmm0, [rbx + 4 * rcx]
movaps xmm0, [rbx + rcx + 0x13]
movaps xmm0, [rbx + rcx + 0x1235]
movaps xmm0, [rbx + rcx + 0x12345679]
movaps xmm0, [rbx + 4 * rcx + 0x13]
movaps xmm0, [rbx + 4 * rcx + 0x1235]
movaps xmm0, [rbx + 8 * rcx + 0x12345679]
movaps xmm0, [4 * rcx]
movaps xmm0, [4 * rcx + 0x13]
movaps xmm0, [4 * rcx + 0x1235]
movaps xmm0, [4 * rcx + 0x12345679]
movaps xmm0, [rbp]
movaps xmm0, [rbp + 0x12]
movaps xmm0, [rbp + 0x1234]
movaps xmm0, [rbp + 0x12345678]
movaps xmm0, [4 * rbp]
movaps xmm0, [4 * rbp + 0x12]
movaps xmm0, [4 * rbp + 0x1234]
movaps xmm0, [4 * rbp + 0x12345678]
movaps xmm0, [rbx + 4 * rbp]
movaps xmm0, [rbx + 4 * rbp + 0x12]
movaps xmm0, [rbx + 4 * rbp + 0x1234]
movaps xmm0, [rbx + 4 * rbp + 0x12345678]
movaps xmm0, [rsp]
movaps xmm0, [rsp + 0x12]
movaps xmm0, [rsp + 0x1234]
movaps xmm0, [rsp + 0x12345678]
movaps xmm0, [rsp + rax]
movaps xmm0, [rsp + rbp]
movaps xmm0, [rsp + 2*rbp]
movaps xmm0, [rsp + 4*rbp]
movaps xmm0, [rsp + 8*rbp]
movaps xmm0, [rax]
movaps xmm0, [rcx]
movaps xmm0, [rdx]
movaps xmm0, [rbx]
movaps xmm0, [rsp]
movaps xmm0, [rbp]
movaps xmm0, [rsi]
movaps xmm0, [rdi]
movaps xmm0, [rax + 2*rax]
movaps xmm0, [rcx + 2*rcx]
movaps xmm0, [rdx + 2*rdx]
movaps xmm0, [rbx + 2*rbx]
movaps xmm0, [rbp + 2*rbp]
movaps xmm0, [rsi + 2*rsi]
movaps xmm0, [rdi + 2*rdi]
movaps xmm1, [rip + 0x13]
movaps xmm1, [rip + 0x1235]
movaps xmm1, [rip + 0x12345679]
movaps xmm1, [rbx]
movaps xmm1, [rcx + 0x14]
movaps xmm1, [rdx + 0x15]
movaps xmm1, [rbx + 0x1235]
movaps xmm1, [rbx + 0x12345679]
movaps xmm1, [rbx + rcx]
movaps xmm1, [rbx + 4 * rcx]
movaps xmm1, [rbx + rcx + 0x13]
movaps xmm1, [rbx + rcx + 0x1235]
movaps xmm1, [rbx + rcx + 0x12345679]
movaps xmm1, [rbx + 4 * rcx + 0x13]
movaps xmm1, [rbx + 4 * rcx + 0x1235]
movaps xmm1, [rbx + 8 * rcx + 0x12345679]
movaps xmm1, [4 * rcx]
movaps xmm1, [4 * rcx + 0x13]
movaps xmm1, [4 * rcx + 0x1235]
movaps xmm1, [4 * rcx + 0x12345679]
movaps xmm1, [rbp]
movaps xmm1, [rbp + 0x12]
movaps xmm1, [rbp + 0x1234]
movaps xmm1, [rbp + 0x12345678]
movaps xmm1, [4 * rbp]
movaps xmm1, [4 * rbp + 0x12]
movaps xmm1, [4 * rbp + 0x1234]
movaps xmm1, [4 * rbp + 0x12345678]
movaps xmm1, [rbx + 4 * rbp]
movaps xmm1, [rbx + 4 * rbp + 0x12]
movaps xmm1, [rbx + 4 * rbp + 0x1234]
movaps xmm1, [rbx + 4 * rbp + 0x12345678]
movaps xmm1, [rsp]
movaps xmm1, [rsp + 0x12]
movaps xmm1, [rsp + 0x1234]
movaps xmm1, [rsp + 0x12345678]
movaps xmm1, [rsp + rax]
movaps xmm1, [rsp + rbp]
movaps xmm1, [rsp + 2*rbp]
movaps xmm1, [rsp + 4*rbp]
movaps xmm1, [rsp + 8*rbp]
movaps xmm1, [rax]
movaps xmm1, [rcx]
movaps xmm1, [rdx]
movaps xmm1, [rbx]
movaps xmm1, [rsp]
movaps xmm1, [rbp]
movaps xmm1, [rsi]
movaps xmm1, [rdi]
movaps xmm1, [rax + 2*rax]
movaps xmm1, [rcx + 2*rcx]
movaps xmm1, [rdx + 2*rdx]
movaps xmm1, [rbx + 2*rbx]
movaps xmm1, [rbp + 2*rbp]
movaps xmm1, [rsi + 2*rsi]
movaps xmm1, [rdi + 2*rdi]
movaps xmm2, [rip + 0x13]
movaps xmm2, [rip + 0x1235]
movaps xmm2, [rip + 0x12345679]
movaps xmm2, [rbx]
movaps xmm2, [rcx + 0x14]
movaps xmm2, [rdx + 0x15]
movaps xmm2, [rbx + 0x1235]
movaps xmm2, [rbx + 0x12345679]
movaps xmm2, [rbx + rcx]
movaps xmm2, [rbx + 4 * rcx]
movaps xmm2, [rbx + rcx + 0x13]
movaps xmm2, [rbx + rcx + 0x1235]
movaps xmm2, [rbx + rcx + 0x12345679]
movaps xmm2, [rbx + 4 * rcx + 0x13]
movaps xmm2, [rbx + 4 * rcx + 0x1235]
movaps xmm2, [rbx + 8 * rcx + 0x12345679]
movaps xmm2, [4 * rcx]
movaps xmm2, [4 * rcx + 0x13]
movaps xmm2, [4 * rcx + 0x1235]
movaps xmm2, [4 * rcx + 0x12345679]
movaps xmm2, [rbp]
movaps xmm2, [rbp + 0x12]
movaps xmm2, [rbp + 0x1234]
movaps xmm2, [rbp + 0x12345678]
movaps xmm2, [4 * rbp]
movaps xmm2, [4 * rbp + 0x12]
movaps xmm2, [4 * rbp + 0x1234]
movaps xmm2, [4 * rbp + 0x12345678]
movaps xmm2, [rbx + 4 * rbp]
movaps xmm2, [rbx + 4 * rbp + 0x12]
movaps xmm2, [rbx + 4 * rbp + 0x1234]
movaps xmm2, [rbx + 4 * rbp + 0x12345678]
movaps xmm2, [rsp]
movaps xmm2, [rsp + 0x12]
movaps xmm2, [rsp + 0x1234]
movaps xmm2, [rsp + 0x12345678]
movaps xmm2, [rsp + rax]
movaps xmm2, [rsp + rbp]
movaps xmm2, [rsp + 2*rbp]
movaps xmm2, [rsp + 4*rbp]
movaps xmm2, [rsp + 8*rbp]
movaps xmm2, [rax]
movaps xmm2, [rcx]
movaps xmm2, [rdx]
movaps xmm2, [rbx]
movaps xmm2, [rsp]
movaps xmm2, [rbp]
movaps xmm2, [rsi]
movaps xmm2, [rdi]
movaps xmm2, [rax + 2*rax]
movaps xmm2, [rcx + 2*rcx]
movaps xmm2, [rdx + 2*rdx]
movaps xmm2, [rbx + 2*rbx]
movaps xmm2, [rbp + 2*rbp]
movaps xmm2, [rsi + 2*rsi]
movaps xmm2, [rdi + 2*rdi]
movaps xmm3, [rip + 0x13]
movaps xmm3, [rip + 0x1235]
movaps xmm3, [rip + 0x12345679]
movaps xmm3, [rbx]
movaps xmm3, [rcx + 0x14]
movaps xmm3, [rdx + 0x15]
movaps xmm3, [rbx + 0x1235]
movaps xmm3, [rbx + 0x12345679]
movaps xmm3, [rbx + rcx]
movaps xmm3, [rbx + 4 * rcx]
movaps xmm3, [rbx + rcx + 0x13]
movaps xmm3, [rbx + rcx + 0x1235]
movaps xmm3, [rbx + rcx + 0x12345679]
movaps xmm3, [rbx + 4 * rcx + 0x13]
movaps xmm3, [rbx + 4 * rcx + 0x1235]
movaps xmm3, [rbx + 8 * rcx + 0x12345679]
movaps xmm3, [4 * rcx]
movaps xmm3, [4 * rcx + 0x13]
movaps xmm3, [4 * rcx + 0x1235]
movaps xmm3, [4 * rcx + 0x12345679]
movaps xmm3, [rbp]
movaps xmm3, [rbp + 0x12]
movaps xmm3, [rbp + 0x1234]
movaps xmm3, [rbp + 0x12345678]
movaps xmm3, [4 * rbp]
movaps xmm3, [4 * rbp + 0x12]
movaps xmm3, [4 * rbp + 0x1234]
movaps xmm3, [4 * rbp + 0x12345678]
movaps xmm3, [rbx + 4 * rbp]
movaps xmm3, [rbx + 4 * rbp + 0x12]
movaps xmm3, [rbx + 4 * rbp + 0x1234]
movaps xmm3, [rbx + 4 * rbp + 0x12345678]
movaps xmm3, [rsp]
movaps xmm3, [rsp + 0x12]
movaps xmm3, [rsp + 0x1234]
movaps xmm3, [rsp + 0x12345678]
movaps xmm3, [rsp + rax]
movaps xmm3, [rsp + rbp]
movaps xmm3, [rsp + 2*rbp]
movaps xmm3, [rsp + 4*rbp]
movaps xmm3, [rsp + 8*rbp]
movaps xmm3, [rax]
movaps xmm3, [rcx]
movaps xmm3, [rdx]
movaps xmm3, [rbx]
movaps xmm3, [rsp]
movaps xmm3, [rbp]
movaps xmm3, [rsi]
movaps xmm3, [rdi]
movaps xmm3, [rax + 2*rax]
movaps xmm3, [rcx + 2*rcx]
movaps xmm3, [rdx + 2*rdx]
movaps xmm3, [rbx + 2*rbx]
movaps xmm3, [rbp + 2*rbp]
movaps xmm3, [rsi + 2*rsi]
movaps xmm3, [rdi + 2*rdi]
movaps xmm4, [rip + 0x13]
movaps xmm4, [rip + 0x1235]
movaps xmm4, [rip + 0x12345679]
movaps xmm4, [rbx]
movaps xmm4, [rcx + 0x14]
movaps xmm4, [rdx + 0x15]
movaps xmm4, [rbx + 0x1235]
movaps xmm4, [rbx + 0x12345679]
movaps xmm4, [rbx + rcx]
movaps xmm4, [rbx + 4 * rcx]
movaps xmm4, [rbx + rcx + 0x13]
movaps xmm4, [rbx + rcx + 0x1235]
movaps xmm4, [rbx + rcx + 0x12345679]
movaps xmm4, [rbx + 4 * rcx + 0x13]
movaps xmm4, [rbx + 4 * rcx + 0x1235]
movaps xmm4, [rbx + 8 * rcx + 0x12345679]
movaps xmm4, [4 * rcx]
movaps xmm4, [4 * rcx + 0x13]
movaps xmm4, [4 * rcx + 0x1235]
movaps xmm4, [4 * rcx + 0x12345679]
movaps xmm4, [rbp]
movaps xmm4, [rbp + 0x12]
movaps xmm4, [rbp + 0x1234]
movaps xmm4, [rbp + 0x12345678]
movaps xmm4, [4 * rbp]
movaps xmm4, [4 * rbp + 0x12]
movaps xmm4, [4 * rbp + 0x1234]
movaps xmm4, [4 * rbp + 0x12345678]
movaps xmm4, [rbx + 4 * rbp]
movaps xmm4, [rbx + 4 * rbp + 0x12]
movaps xmm4, [rbx + 4 * rbp + 0x1234]
movaps xmm4, [rbx + 4 * rbp + 0x12345678]
movaps xmm4, [rsp]
movaps xmm4, [rsp + 0x12]
movaps xmm4, [rsp + 0x1234]
movaps xmm4, [rsp + 0x12345678]
movaps xmm4, [rsp + rax]
movaps xmm4, [rsp + rbp]
movaps xmm4, [rsp + 2*rbp]
movaps xmm4, [rsp + 4*rbp]
movaps xmm4, [rsp + 8*rbp]
movaps xmm4, [rax]
movaps xmm4, [rcx]
movaps xmm4, [rdx]
movaps xmm4, [rbx]
movaps xmm4, [rsp]
movaps xmm4, [rbp]
movaps xmm4, [rsi]
movaps xmm4, [rdi]
movaps xmm4, [rax + 2*rax]
movaps xmm4, [rcx + 2*rcx]
movaps xmm4, [rdx + 2*rdx]
movaps xmm4, [rbx + 2*rbx]
movaps xmm4, [rbp + 2*rbp]
movaps xmm4, [rsi + 2*rsi]
movaps xmm4, [rdi + 2*rdi]
movaps xmm5, [rip + 0x13]
movaps xmm5, [rip + 0x1235]
movaps xmm5, [rip + 0x12345679]
movaps xmm5, [rbx]
movaps xmm5, [rcx + 0x14]
movaps xmm5, [rdx + 0x15]
movaps xmm5, [rbx + 0x1235]
movaps xmm5, [rbx + 0x12345679]
movaps xmm5, [rbx + rcx]
movaps xmm5, [rbx + 4 * rcx]
movaps xmm5, [rbx + rcx + 0x13]
movaps xmm5, [rbx + rcx + 0x1235]
movaps xmm5, [rbx + rcx + 0x12345679]
movaps xmm5, [rbx + 4 * rcx + 0x13]
movaps xmm5, [rbx + 4 * rcx + 0x1235]
movaps xmm5, [rbx + 8 * rcx + 0x12345679]
movaps xmm5, [4 * rcx]
movaps xmm5, [4 * rcx + 0x13]
movaps xmm5, [4 * rcx + 0x1235]
movaps xmm5, [4 * rcx + 0x12345679]
movaps xmm5, [rbp]
movaps xmm5, [rbp + 0x12]
movaps xmm5, [rbp + 0x1234]
movaps xmm5, [rbp + 0x12345678]
movaps xmm5, [4 * rbp]
movaps xmm5, [4 * rbp + 0x12]
movaps xmm5, [4 * rbp + 0x1234]
movaps xmm5, [4 * rbp + 0x12345678]
movaps xmm5, [rbx + 4 * rbp]
movaps xmm5, [rbx + 4 * rbp + 0x12]
movaps xmm5, [rbx + 4 * rbp + 0x1234]
movaps xmm5, [rbx + 4 * rbp + 0x12345678]
movaps xmm5, [rsp]
movaps xmm5, [rsp + 0x12]
movaps xmm5, [rsp + 0x1234]
movaps xmm5, [rsp + 0x12345678]
movaps xmm5, [rsp + rax]
movaps xmm5, [rsp + rbp]
movaps xmm5, [rsp + 2*rbp]
movaps xmm5, [rsp + 4*rbp]
movaps xmm5, [rsp + 8*rbp]
movaps xmm5, [rax]
movaps xmm5, [rcx]
movaps xmm5, [rdx]
movaps xmm5, [rbx]
movaps xmm5, [rsp]
movaps xmm5, [rbp]
movaps xmm5, [rsi]
movaps xmm5, [rdi]
movaps xmm5, [rax + 2*rax]
movaps xmm5, [rcx + 2*rcx]
movaps xmm5, [rdx + 2*rdx]
movaps xmm5, [rbx + 2*rbx]
movaps xmm5, [rbp + 2*rbp]
movaps xmm5, [rsi + 2*rsi]
movaps xmm5, [rdi + 2*rdi]
movaps xmm6, [rip + 0x13]
movaps xmm6, [rip + 0x1235]
movaps xmm6, [rip + 0x12345679]
movaps xmm6, [rbx]
movaps xmm6, [rcx + 0x14]
movaps xmm6, [rdx + 0x15]
movaps xmm6, [rbx + 0x1235]
movaps xmm6, [rbx + 0x12345679]
movaps xmm6, [rbx + rcx]
movaps xmm6, [rbx + 4 * rcx]
movaps xmm6, [rbx + rcx + 0x13]
movaps xmm6, [rbx + rcx + 0x1235]
movaps xmm6, [rbx + rcx + 0x12345679]
movaps xmm6, [rbx + 4 * rcx + 0x13]
movaps xmm6, [rbx + 4 * rcx + 0x1235]
movaps xmm6, [rbx + 8 * rcx + 0x12345679]
movaps xmm6, [4 * rcx]
movaps xmm6, [4 * rcx + 0x13]
movaps xmm6, [4 * rcx + 0x1235]
movaps xmm6, [4 * rcx + 0x12345679]
movaps xmm6, [rbp]
movaps xmm6, [rbp + 0x12]
movaps xmm6, [rbp + 0x1234]
movaps xmm6, [rbp + 0x12345678]
movaps xmm6, [4 * rbp]
movaps xmm6, [4 * rbp + 0x12]
movaps xmm6, [4 * rbp + 0x1234]
movaps xmm6, [4 * rbp + 0x12345678]
movaps xmm6, [rbx + 4 * rbp]
movaps xmm6, [rbx + 4 * rbp + 0x12]
movaps xmm6, [rbx + 4 * rbp + 0x1234]
movaps xmm6, [rbx + 4 * rbp + 0x12345678]
movaps xmm6, [rsp]
movaps xmm6, [rsp + 0x12]
movaps xmm6, [rsp + 0x1234]
movaps xmm6, [rsp + 0x12345678]
movaps xmm6, [rsp + rax]
movaps xmm6, [rsp + rbp]
movaps xmm6, [rsp + 2*rbp]
movaps xmm6, [rsp + 4*rbp]
movaps xmm6, [rsp + 8*rbp]
movaps xmm6, [rax]
movaps xmm6, [rcx]
movaps xmm6, [rdx]
movaps xmm6, [rbx]
movaps xmm6, [rsp]
movaps xmm6, [rbp]
movaps xmm6, [rsi]
movaps xmm6, [rdi]
movaps xmm6, [rax + 2*rax]
movaps xmm6, [rcx + 2*rcx]
movaps xmm6, [rdx + 2*rdx]
movaps xmm6, [rbx + 2*rbx]
movaps xmm6, [rbp + 2*rbp]
movaps xmm6, [rsi + 2*rsi]
movaps xmm6, [rdi + 2*rdi]
movaps xmm7, [rip + 0x13]
movaps xmm7, [rip + 0x1235]
movaps xmm7, [rip + 0x12345679]
movaps xmm7, [rbx]
movaps xmm7, [rcx + 0x14]
movaps xmm7, [rdx + 0x15]
movaps xmm7, [rbx + 0x1235]
movaps xmm7, [rbx + 0x12345679]
movaps xmm7, [rbx + rcx]
movaps xmm7, [rbx + 4 * rcx]
movaps xmm7, [rbx + rcx + 0x13]
movaps xmm7, [rbx + rcx + 0x1235]
movaps xmm7, [rbx + rcx + 0x12345679]
movaps xmm7, [rbx + 4 * rcx + 0x13]
movaps xmm7, [rbx + 4 * rcx + 0x1235]
movaps xmm7, [rbx + 8 * rcx + 0x12345679]
movaps xmm7, [4 * rcx]
movaps xmm7, [4 * rcx + 0x13]
movaps xmm7, [4 * rcx + 0x1235]
movaps xmm7, [4 * rcx + 0x12345679]
movaps xmm7, [rbp]
movaps xmm7, [rbp + 0x12]
movaps xmm7, [rbp + 0x1234]
movaps xmm7, [rbp + 0x12345678]
movaps xmm7, [4 * rbp]
movaps xmm7, [4 * rbp + 0x12]
movaps xmm7, [4 * rbp + 0x1234]
movaps xmm7, [4 * rbp + 0x12345678]
movaps xmm7, [rbx + 4 * rbp]
movaps xmm7, [rbx + 4 * rbp + 0x12]
movaps xmm7, [rbx + 4 * rbp + 0x1234]
movaps xmm7, [rbx + 4 * rbp + 0x12345678]
movaps xmm7, [rsp]
movaps xmm7, [rsp + 0x12]
movaps xmm7, [rsp + 0x1234]
movaps xmm7, [rsp + 0x12345678]
movaps xmm7, [rsp + rax]
movaps xmm7, [rsp + rbp]
movaps xmm7, [rsp + 2*rbp]
movaps xmm7, [rsp + 4*rbp]
movaps xmm7, [rsp + 8*rbp]
movaps xmm7, [rax]
movaps xmm7, [rcx]
movaps xmm7, [rdx]
movaps xmm7, [rbx]
movaps xmm7, [rsp]
movaps xmm7, [rbp]
movaps xmm7, [rsi]
movaps xmm7, [rdi]
movaps xmm7, [rax + 2*rax]
movaps xmm7, [rcx + 2*rcx]
movaps xmm7, [rdx + 2*rdx]
movaps xmm7, [rbx + 2*rbx]
movaps xmm7, [rbp + 2*rbp]
movaps xmm7, [rsi + 2*rsi]
movaps xmm7, [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode m128,xmm
; ------------------------------------------------------------------------------
movaps [rip + 0x13], xmm0
movaps [rip + 0x13], xmm1
movaps [rip + 0x13], xmm2
movaps [rip + 0x13], xmm3
movaps [rip + 0x13], xmm4
movaps [rip + 0x13], xmm5
movaps [rip + 0x13], xmm6
movaps [rip + 0x13], xmm7
movaps [rip + 0x1235], xmm0
movaps [rip + 0x1235], xmm1
movaps [rip + 0x1235], xmm2
movaps [rip + 0x1235], xmm3
movaps [rip + 0x1235], xmm4
movaps [rip + 0x1235], xmm5
movaps [rip + 0x1235], xmm6
movaps [rip + 0x1235], xmm7
movaps [rip + 0x12345679], xmm0
movaps [rip + 0x12345679], xmm1
movaps [rip + 0x12345679], xmm2
movaps [rip + 0x12345679], xmm3
movaps [rip + 0x12345679], xmm4
movaps [rip + 0x12345679], xmm5
movaps [rip + 0x12345679], xmm6
movaps [rip + 0x12345679], xmm7
movaps [rbx], xmm0
movaps [rbx], xmm1
movaps [rbx], xmm2
movaps [rbx], xmm3
movaps [rbx], xmm4
movaps [rbx], xmm5
movaps [rbx], xmm6
movaps [rbx], xmm7
movaps [rcx + 0x14], xmm0
movaps [rcx + 0x14], xmm1
movaps [rcx + 0x14], xmm2
movaps [rcx + 0x14], xmm3
movaps [rcx + 0x14], xmm4
movaps [rcx + 0x14], xmm5
movaps [rcx + 0x14], xmm6
movaps [rcx + 0x14], xmm7
movaps [rdx + 0x15], xmm0
movaps [rdx + 0x15], xmm1
movaps [rdx + 0x15], xmm2
movaps [rdx + 0x15], xmm3
movaps [rdx + 0x15], xmm4
movaps [rdx + 0x15], xmm5
movaps [rdx + 0x15], xmm6
movaps [rdx + 0x15], xmm7
movaps [rbx + 0x1235], xmm0
movaps [rbx + 0x1235], xmm1
movaps [rbx + 0x1235], xmm2
movaps [rbx + 0x1235], xmm3
movaps [rbx + 0x1235], xmm4
movaps [rbx + 0x1235], xmm5
movaps [rbx + 0x1235], xmm6
movaps [rbx + 0x1235], xmm7
movaps [rbx + 0x12345679], xmm0
movaps [rbx + 0x12345679], xmm1
movaps [rbx + 0x12345679], xmm2
movaps [rbx + 0x12345679], xmm3
movaps [rbx + 0x12345679], xmm4
movaps [rbx + 0x12345679], xmm5
movaps [rbx + 0x12345679], xmm6
movaps [rbx + 0x12345679], xmm7
movaps [rbx + rcx], xmm0
movaps [rbx + rcx], xmm1
movaps [rbx + rcx], xmm2
movaps [rbx + rcx], xmm3
movaps [rbx + rcx], xmm4
movaps [rbx + rcx], xmm5
movaps [rbx + rcx], xmm6
movaps [rbx + rcx], xmm7
movaps [rbx + 4 * rcx], xmm0
movaps [rbx + 4 * rcx], xmm1
movaps [rbx + 4 * rcx], xmm2
movaps [rbx + 4 * rcx], xmm3
movaps [rbx + 4 * rcx], xmm4
movaps [rbx + 4 * rcx], xmm5
movaps [rbx + 4 * rcx], xmm6
movaps [rbx + 4 * rcx], xmm7
movaps [rbx + rcx + 0x13], xmm0
movaps [rbx + rcx + 0x13], xmm1
movaps [rbx + rcx + 0x13], xmm2
movaps [rbx + rcx + 0x13], xmm3
movaps [rbx + rcx + 0x13], xmm4
movaps [rbx + rcx + 0x13], xmm5
movaps [rbx + rcx + 0x13], xmm6
movaps [rbx + rcx + 0x13], xmm7
movaps [rbx + rcx + 0x1235], xmm0
movaps [rbx + rcx + 0x1235], xmm1
movaps [rbx + rcx + 0x1235], xmm2
movaps [rbx + rcx + 0x1235], xmm3
movaps [rbx + rcx + 0x1235], xmm4
movaps [rbx + rcx + 0x1235], xmm5
movaps [rbx + rcx + 0x1235], xmm6
movaps [rbx + rcx + 0x1235], xmm7
movaps [rbx + rcx + 0x12345679], xmm0
movaps [rbx + rcx + 0x12345679], xmm1
movaps [rbx + rcx + 0x12345679], xmm2
movaps [rbx + rcx + 0x12345679], xmm3
movaps [rbx + rcx + 0x12345679], xmm4
movaps [rbx + rcx + 0x12345679], xmm5
movaps [rbx + rcx + 0x12345679], xmm6
movaps [rbx + rcx + 0x12345679], xmm7
movaps [rbx + 4 * rcx + 0x13], xmm0
movaps [rbx + 4 * rcx + 0x13], xmm1
movaps [rbx + 4 * rcx + 0x13], xmm2
movaps [rbx + 4 * rcx + 0x13], xmm3
movaps [rbx + 4 * rcx + 0x13], xmm4
movaps [rbx + 4 * rcx + 0x13], xmm5
movaps [rbx + 4 * rcx + 0x13], xmm6
movaps [rbx + 4 * rcx + 0x13], xmm7
movaps [rbx + 4 * rcx + 0x1235], xmm0
movaps [rbx + 4 * rcx + 0x1235], xmm1
movaps [rbx + 4 * rcx + 0x1235], xmm2
movaps [rbx + 4 * rcx + 0x1235], xmm3
movaps [rbx + 4 * rcx + 0x1235], xmm4
movaps [rbx + 4 * rcx + 0x1235], xmm5
movaps [rbx + 4 * rcx + 0x1235], xmm6
movaps [rbx + 4 * rcx + 0x1235], xmm7
movaps [rbx + 8 * rcx + 0x12345679], xmm0
movaps [rbx + 8 * rcx + 0x12345679], xmm1
movaps [rbx + 8 * rcx + 0x12345679], xmm2
movaps [rbx + 8 * rcx + 0x12345679], xmm3
movaps [rbx + 8 * rcx + 0x12345679], xmm4
movaps [rbx + 8 * rcx + 0x12345679], xmm5
movaps [rbx + 8 * rcx + 0x12345679], xmm6
movaps [rbx + 8 * rcx + 0x12345679], xmm7
movaps [4 * rcx], xmm0
movaps [4 * rcx], xmm1
movaps [4 * rcx], xmm2
movaps [4 * rcx], xmm3
movaps [4 * rcx], xmm4
movaps [4 * rcx], xmm5
movaps [4 * rcx], xmm6
movaps [4 * rcx], xmm7
movaps [4 * rcx + 0x13], xmm0
movaps [4 * rcx + 0x13], xmm1
movaps [4 * rcx + 0x13], xmm2
movaps [4 * rcx + 0x13], xmm3
movaps [4 * rcx + 0x13], xmm4
movaps [4 * rcx + 0x13], xmm5
movaps [4 * rcx + 0x13], xmm6
movaps [4 * rcx + 0x13], xmm7
movaps [4 * rcx + 0x1235], xmm0
movaps [4 * rcx + 0x1235], xmm1
movaps [4 * rcx + 0x1235], xmm2
movaps [4 * rcx + 0x1235], xmm3
movaps [4 * rcx + 0x1235], xmm4
movaps [4 * rcx + 0x1235], xmm5
movaps [4 * rcx + 0x1235], xmm6
movaps [4 * rcx + 0x1235], xmm7
movaps [4 * rcx + 0x12345679], xmm0
movaps [4 * rcx + 0x12345679], xmm1
movaps [4 * rcx + 0x12345679], xmm2
movaps [4 * rcx + 0x12345679], xmm3
movaps [4 * rcx + 0x12345679], xmm4
movaps [4 * rcx + 0x12345679], xmm5
movaps [4 * rcx + 0x12345679], xmm6
movaps [4 * rcx + 0x12345679], xmm7
movaps [rbp], xmm0
movaps [rbp], xmm1
movaps [rbp], xmm2
movaps [rbp], xmm3
movaps [rbp], xmm4
movaps [rbp], xmm5
movaps [rbp], xmm6
movaps [rbp], xmm7
movaps [rbp + 0x12], xmm0
movaps [rbp + 0x12], xmm1
movaps [rbp + 0x12], xmm2
movaps [rbp + 0x12], xmm3
movaps [rbp + 0x12], xmm4
movaps [rbp + 0x12], xmm5
movaps [rbp + 0x12], xmm6
movaps [rbp + 0x12], xmm7
movaps [rbp + 0x1234], xmm0
movaps [rbp + 0x1234], xmm1
movaps [rbp + 0x1234], xmm2
movaps [rbp + 0x1234], xmm3
movaps [rbp + 0x1234], xmm4
movaps [rbp + 0x1234], xmm5
movaps [rbp + 0x1234], xmm6
movaps [rbp + 0x1234], xmm7
movaps [rbp + 0x12345678], xmm0
movaps [rbp + 0x12345678], xmm1
movaps [rbp + 0x12345678], xmm2
movaps [rbp + 0x12345678], xmm3
movaps [rbp + 0x12345678], xmm4
movaps [rbp + 0x12345678], xmm5
movaps [rbp + 0x12345678], xmm6
movaps [rbp + 0x12345678], xmm7
movaps [4 * rbp], xmm0
movaps [4 * rbp], xmm1
movaps [4 * rbp], xmm2
movaps [4 * rbp], xmm3
movaps [4 * rbp], xmm4
movaps [4 * rbp], xmm5
movaps [4 * rbp], xmm6
movaps [4 * rbp], xmm7
movaps [4 * rbp + 0x12], xmm0
movaps [4 * rbp + 0x12], xmm1
movaps [4 * rbp + 0x12], xmm2
movaps [4 * rbp + 0x12], xmm3
movaps [4 * rbp + 0x12], xmm4
movaps [4 * rbp + 0x12], xmm5
movaps [4 * rbp + 0x12], xmm6
movaps [4 * rbp + 0x12], xmm7
movaps [4 * rbp + 0x1234], xmm0
movaps [4 * rbp + 0x1234], xmm1
movaps [4 * rbp + 0x1234], xmm2
movaps [4 * rbp + 0x1234], xmm3
movaps [4 * rbp + 0x1234], xmm4
movaps [4 * rbp + 0x1234], xmm5
movaps [4 * rbp + 0x1234], xmm6
movaps [4 * rbp + 0x1234], xmm7
movaps [4 * rbp + 0x12345678], xmm0
movaps [4 * rbp + 0x12345678], xmm1
movaps [4 * rbp + 0x12345678], xmm2
movaps [4 * rbp + 0x12345678], xmm3
movaps [4 * rbp + 0x12345678], xmm4
movaps [4 * rbp + 0x12345678], xmm5
movaps [4 * rbp + 0x12345678], xmm6
movaps [4 * rbp + 0x12345678], xmm7
movaps [rbx + 4 * rbp], xmm0
movaps [rbx + 4 * rbp], xmm1
movaps [rbx + 4 * rbp], xmm2
movaps [rbx + 4 * rbp], xmm3
movaps [rbx + 4 * rbp], xmm4
movaps [rbx + 4 * rbp], xmm5
movaps [rbx + 4 * rbp], xmm6
movaps [rbx + 4 * rbp], xmm7
movaps [rbx + 4 * rbp + 0x12], xmm0
movaps [rbx + 4 * rbp + 0x12], xmm1
movaps [rbx + 4 * rbp + 0x12], xmm2
movaps [rbx + 4 * rbp + 0x12], xmm3
movaps [rbx + 4 * rbp + 0x12], xmm4
movaps [rbx + 4 * rbp + 0x12], xmm5
movaps [rbx + 4 * rbp + 0x12], xmm6
movaps [rbx + 4 * rbp + 0x12], xmm7
movaps [rbx + 4 * rbp + 0x1234], xmm0
movaps [rbx + 4 * rbp + 0x1234], xmm1
movaps [rbx + 4 * rbp + 0x1234], xmm2
movaps [rbx + 4 * rbp + 0x1234], xmm3
movaps [rbx + 4 * rbp + 0x1234], xmm4
movaps [rbx + 4 * rbp + 0x1234], xmm5
movaps [rbx + 4 * rbp + 0x1234], xmm6
movaps [rbx + 4 * rbp + 0x1234], xmm7
movaps [rbx + 4 * rbp + 0x12345678], xmm0
movaps [rbx + 4 * rbp + 0x12345678], xmm1
movaps [rbx + 4 * rbp + 0x12345678], xmm2
movaps [rbx + 4 * rbp + 0x12345678], xmm3
movaps [rbx + 4 * rbp + 0x12345678], xmm4
movaps [rbx + 4 * rbp + 0x12345678], xmm5
movaps [rbx + 4 * rbp + 0x12345678], xmm6
movaps [rbx + 4 * rbp + 0x12345678], xmm7
movaps [rsp], xmm0
movaps [rsp], xmm1
movaps [rsp], xmm2
movaps [rsp], xmm3
movaps [rsp], xmm4
movaps [rsp], xmm5
movaps [rsp], xmm6
movaps [rsp], xmm7
movaps [rsp + 0x12], xmm0
movaps [rsp + 0x12], xmm1
movaps [rsp + 0x12], xmm2
movaps [rsp + 0x12], xmm3
movaps [rsp + 0x12], xmm4
movaps [rsp + 0x12], xmm5
movaps [rsp + 0x12], xmm6
movaps [rsp + 0x12], xmm7
movaps [rsp + 0x1234], xmm0
movaps [rsp + 0x1234], xmm1
movaps [rsp + 0x1234], xmm2
movaps [rsp + 0x1234], xmm3
movaps [rsp + 0x1234], xmm4
movaps [rsp + 0x1234], xmm5
movaps [rsp + 0x1234], xmm6
movaps [rsp + 0x1234], xmm7
movaps [rsp + 0x12345678], xmm0
movaps [rsp + 0x12345678], xmm1
movaps [rsp + 0x12345678], xmm2
movaps [rsp + 0x12345678], xmm3
movaps [rsp + 0x12345678], xmm4
movaps [rsp + 0x12345678], xmm5
movaps [rsp + 0x12345678], xmm6
movaps [rsp + 0x12345678], xmm7
movaps [rsp + rax], xmm0
movaps [rsp + rax], xmm1
movaps [rsp + rax], xmm2
movaps [rsp + rax], xmm3
movaps [rsp + rax], xmm4
movaps [rsp + rax], xmm5
movaps [rsp + rax], xmm6
movaps [rsp + rax], xmm7
movaps [rsp + rbp], xmm0
movaps [rsp + rbp], xmm1
movaps [rsp + rbp], xmm2
movaps [rsp + rbp], xmm3
movaps [rsp + rbp], xmm4
movaps [rsp + rbp], xmm5
movaps [rsp + rbp], xmm6
movaps [rsp + rbp], xmm7
movaps [rsp + 2*rbp], xmm0
movaps [rsp + 2*rbp], xmm1
movaps [rsp + 2*rbp], xmm2
movaps [rsp + 2*rbp], xmm3
movaps [rsp + 2*rbp], xmm4
movaps [rsp + 2*rbp], xmm5
movaps [rsp + 2*rbp], xmm6
movaps [rsp + 2*rbp], xmm7
movaps [rsp + 4*rbp], xmm0
movaps [rsp + 4*rbp], xmm1
movaps [rsp + 4*rbp], xmm2
movaps [rsp + 4*rbp], xmm3
movaps [rsp + 4*rbp], xmm4
movaps [rsp + 4*rbp], xmm5
movaps [rsp + 4*rbp], xmm6
movaps [rsp + 4*rbp], xmm7
movaps [rsp + 8*rbp], xmm0
movaps [rsp + 8*rbp], xmm1
movaps [rsp + 8*rbp], xmm2
movaps [rsp + 8*rbp], xmm3
movaps [rsp + 8*rbp], xmm4
movaps [rsp + 8*rbp], xmm5
movaps [rsp + 8*rbp], xmm6
movaps [rsp + 8*rbp], xmm7
movaps [rax], xmm0
movaps [rax], xmm1
movaps [rax], xmm2
movaps [rax], xmm3
movaps [rax], xmm4
movaps [rax], xmm5
movaps [rax], xmm6
movaps [rax], xmm7
movaps [rcx], xmm0
movaps [rcx], xmm1
movaps [rcx], xmm2
movaps [rcx], xmm3
movaps [rcx], xmm4
movaps [rcx], xmm5
movaps [rcx], xmm6
movaps [rcx], xmm7
movaps [rdx], xmm0
movaps [rdx], xmm1
movaps [rdx], xmm2
movaps [rdx], xmm3
movaps [rdx], xmm4
movaps [rdx], xmm5
movaps [rdx], xmm6
movaps [rdx], xmm7
movaps [rbx], xmm0
movaps [rbx], xmm1
movaps [rbx], xmm2
movaps [rbx], xmm3
movaps [rbx], xmm4
movaps [rbx], xmm5
movaps [rbx], xmm6
movaps [rbx], xmm7
movaps [rsp], xmm0
movaps [rsp], xmm1
movaps [rsp], xmm2
movaps [rsp], xmm3
movaps [rsp], xmm4
movaps [rsp], xmm5
movaps [rsp], xmm6
movaps [rsp], xmm7
movaps [rbp], xmm0
movaps [rbp], xmm1
movaps [rbp], xmm2
movaps [rbp], xmm3
movaps [rbp], xmm4
movaps [rbp], xmm5
movaps [rbp], xmm6
movaps [rbp], xmm7
movaps [rsi], xmm0
movaps [rsi], xmm1
movaps [rsi], xmm2
movaps [rsi], xmm3
movaps [rsi], xmm4
movaps [rsi], xmm5
movaps [rsi], xmm6
movaps [rsi], xmm7
movaps [rdi], xmm0
movaps [rdi], xmm1
movaps [rdi], xmm2
movaps [rdi], xmm3
movaps [rdi], xmm4
movaps [rdi], xmm5
movaps [rdi], xmm6
movaps [rdi], xmm7
movaps [rax + 2*rax], xmm0
movaps [rax + 2*rax], xmm1
movaps [rax + 2*rax], xmm2
movaps [rax + 2*rax], xmm3
movaps [rax + 2*rax], xmm4
movaps [rax + 2*rax], xmm5
movaps [rax + 2*rax], xmm6
movaps [rax + 2*rax], xmm7
movaps [rcx + 2*rcx], xmm0
movaps [rcx + 2*rcx], xmm1
movaps [rcx + 2*rcx], xmm2
movaps [rcx + 2*rcx], xmm3
movaps [rcx + 2*rcx], xmm4
movaps [rcx + 2*rcx], xmm5
movaps [rcx + 2*rcx], xmm6
movaps [rcx + 2*rcx], xmm7
movaps [rdx + 2*rdx], xmm0
movaps [rdx + 2*rdx], xmm1
movaps [rdx + 2*rdx], xmm2
movaps [rdx + 2*rdx], xmm3
movaps [rdx + 2*rdx], xmm4
movaps [rdx + 2*rdx], xmm5
movaps [rdx + 2*rdx], xmm6
movaps [rdx + 2*rdx], xmm7
movaps [rbx + 2*rbx], xmm0
movaps [rbx + 2*rbx], xmm1
movaps [rbx + 2*rbx], xmm2
movaps [rbx + 2*rbx], xmm3
movaps [rbx + 2*rbx], xmm4
movaps [rbx + 2*rbx], xmm5
movaps [rbx + 2*rbx], xmm6
movaps [rbx + 2*rbx], xmm7
movaps [rbp + 2*rbp], xmm0
movaps [rbp + 2*rbp], xmm1
movaps [rbp + 2*rbp], xmm2
movaps [rbp + 2*rbp], xmm3
movaps [rbp + 2*rbp], xmm4
movaps [rbp + 2*rbp], xmm5
movaps [rbp + 2*rbp], xmm6
movaps [rbp + 2*rbp], xmm7
movaps [rsi + 2*rsi], xmm0
movaps [rsi + 2*rsi], xmm1
movaps [rsi + 2*rsi], xmm2
movaps [rsi + 2*rsi], xmm3
movaps [rsi + 2*rsi], xmm4
movaps [rsi + 2*rsi], xmm5
movaps [rsi + 2*rsi], xmm6
movaps [rsi + 2*rsi], xmm7
movaps [rdi + 2*rdi], xmm0
movaps [rdi + 2*rdi], xmm1
movaps [rdi + 2*rdi], xmm2
movaps [rdi + 2*rdi], xmm3
movaps [rdi + 2*rdi], xmm4
movaps [rdi + 2*rdi], xmm5
movaps [rdi + 2*rdi], xmm6
movaps [rdi + 2*rdi], xmm7

