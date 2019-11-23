use64
; ------------------------------------------------------------------------------
; opcode xmm,xmm
; ------------------------------------------------------------------------------
mulps xmm0, xmm0
mulps xmm0, xmm1
mulps xmm0, xmm2
mulps xmm0, xmm3
mulps xmm0, xmm4
mulps xmm0, xmm5
mulps xmm0, xmm6
mulps xmm0, xmm7
mulps xmm1, xmm0
mulps xmm1, xmm1
mulps xmm1, xmm2
mulps xmm1, xmm3
mulps xmm1, xmm4
mulps xmm1, xmm5
mulps xmm1, xmm6
mulps xmm1, xmm7
mulps xmm2, xmm0
mulps xmm2, xmm1
mulps xmm2, xmm2
mulps xmm2, xmm3
mulps xmm2, xmm4
mulps xmm2, xmm5
mulps xmm2, xmm6
mulps xmm2, xmm7
mulps xmm3, xmm0
mulps xmm3, xmm1
mulps xmm3, xmm2
mulps xmm3, xmm3
mulps xmm3, xmm4
mulps xmm3, xmm5
mulps xmm3, xmm6
mulps xmm3, xmm7
mulps xmm4, xmm0
mulps xmm4, xmm1
mulps xmm4, xmm2
mulps xmm4, xmm3
mulps xmm4, xmm4
mulps xmm4, xmm5
mulps xmm4, xmm6
mulps xmm4, xmm7
mulps xmm5, xmm0
mulps xmm5, xmm1
mulps xmm5, xmm2
mulps xmm5, xmm3
mulps xmm5, xmm4
mulps xmm5, xmm5
mulps xmm5, xmm6
mulps xmm5, xmm7
mulps xmm6, xmm0
mulps xmm6, xmm1
mulps xmm6, xmm2
mulps xmm6, xmm3
mulps xmm6, xmm4
mulps xmm6, xmm5
mulps xmm6, xmm6
mulps xmm6, xmm7
mulps xmm7, xmm0
mulps xmm7, xmm1
mulps xmm7, xmm2
mulps xmm7, xmm3
mulps xmm7, xmm4
mulps xmm7, xmm5
mulps xmm7, xmm6
mulps xmm7, xmm7

; ------------------------------------------------------------------------------
; opcode xmm,m128
; ------------------------------------------------------------------------------
mulps xmm0, [rip + 0x13]
mulps xmm0, [rip + 0x1235]
mulps xmm0, [rip + 0x12345679]
mulps xmm0, [rbx]
mulps xmm0, [rcx + 0x14]
mulps xmm0, [rdx + 0x15]
mulps xmm0, [rbx + 0x1235]
mulps xmm0, [rbx + 0x12345679]
mulps xmm0, [rbx + rcx]
mulps xmm0, [rbx + 4 * rcx]
mulps xmm0, [rbx + rcx + 0x13]
mulps xmm0, [rbx + rcx + 0x1235]
mulps xmm0, [rbx + rcx + 0x12345679]
mulps xmm0, [rbx + 4 * rcx + 0x13]
mulps xmm0, [rbx + 4 * rcx + 0x1235]
mulps xmm0, [rbx + 8 * rcx + 0x12345679]
mulps xmm0, [4 * rcx]
mulps xmm0, [4 * rcx + 0x13]
mulps xmm0, [4 * rcx + 0x1235]
mulps xmm0, [4 * rcx + 0x12345679]
mulps xmm0, [rbp]
mulps xmm0, [rbp + 0x12]
mulps xmm0, [rbp + 0x1234]
mulps xmm0, [rbp + 0x12345678]
mulps xmm0, [4 * rbp]
mulps xmm0, [4 * rbp + 0x12]
mulps xmm0, [4 * rbp + 0x1234]
mulps xmm0, [4 * rbp + 0x12345678]
mulps xmm0, [rbx + 4 * rbp]
mulps xmm0, [rbx + 4 * rbp + 0x12]
mulps xmm0, [rbx + 4 * rbp + 0x1234]
mulps xmm0, [rbx + 4 * rbp + 0x12345678]
mulps xmm0, [rsp]
mulps xmm0, [rsp + 0x12]
mulps xmm0, [rsp + 0x1234]
mulps xmm0, [rsp + 0x12345678]
mulps xmm0, [rsp + rax]
mulps xmm0, [rsp + rbp]
mulps xmm0, [rsp + 2*rbp]
mulps xmm0, [rsp + 4*rbp]
mulps xmm0, [rsp + 8*rbp]
mulps xmm0, [rax]
mulps xmm0, [rcx]
mulps xmm0, [rdx]
mulps xmm0, [rbx]
mulps xmm0, [rsp]
mulps xmm0, [rbp]
mulps xmm0, [rsi]
mulps xmm0, [rdi]
mulps xmm0, [rax + 2*rax]
mulps xmm0, [rcx + 2*rcx]
mulps xmm0, [rdx + 2*rdx]
mulps xmm0, [rbx + 2*rbx]
mulps xmm0, [rbp + 2*rbp]
mulps xmm0, [rsi + 2*rsi]
mulps xmm0, [rdi + 2*rdi]
mulps xmm1, [rip + 0x13]
mulps xmm1, [rip + 0x1235]
mulps xmm1, [rip + 0x12345679]
mulps xmm1, [rbx]
mulps xmm1, [rcx + 0x14]
mulps xmm1, [rdx + 0x15]
mulps xmm1, [rbx + 0x1235]
mulps xmm1, [rbx + 0x12345679]
mulps xmm1, [rbx + rcx]
mulps xmm1, [rbx + 4 * rcx]
mulps xmm1, [rbx + rcx + 0x13]
mulps xmm1, [rbx + rcx + 0x1235]
mulps xmm1, [rbx + rcx + 0x12345679]
mulps xmm1, [rbx + 4 * rcx + 0x13]
mulps xmm1, [rbx + 4 * rcx + 0x1235]
mulps xmm1, [rbx + 8 * rcx + 0x12345679]
mulps xmm1, [4 * rcx]
mulps xmm1, [4 * rcx + 0x13]
mulps xmm1, [4 * rcx + 0x1235]
mulps xmm1, [4 * rcx + 0x12345679]
mulps xmm1, [rbp]
mulps xmm1, [rbp + 0x12]
mulps xmm1, [rbp + 0x1234]
mulps xmm1, [rbp + 0x12345678]
mulps xmm1, [4 * rbp]
mulps xmm1, [4 * rbp + 0x12]
mulps xmm1, [4 * rbp + 0x1234]
mulps xmm1, [4 * rbp + 0x12345678]
mulps xmm1, [rbx + 4 * rbp]
mulps xmm1, [rbx + 4 * rbp + 0x12]
mulps xmm1, [rbx + 4 * rbp + 0x1234]
mulps xmm1, [rbx + 4 * rbp + 0x12345678]
mulps xmm1, [rsp]
mulps xmm1, [rsp + 0x12]
mulps xmm1, [rsp + 0x1234]
mulps xmm1, [rsp + 0x12345678]
mulps xmm1, [rsp + rax]
mulps xmm1, [rsp + rbp]
mulps xmm1, [rsp + 2*rbp]
mulps xmm1, [rsp + 4*rbp]
mulps xmm1, [rsp + 8*rbp]
mulps xmm1, [rax]
mulps xmm1, [rcx]
mulps xmm1, [rdx]
mulps xmm1, [rbx]
mulps xmm1, [rsp]
mulps xmm1, [rbp]
mulps xmm1, [rsi]
mulps xmm1, [rdi]
mulps xmm1, [rax + 2*rax]
mulps xmm1, [rcx + 2*rcx]
mulps xmm1, [rdx + 2*rdx]
mulps xmm1, [rbx + 2*rbx]
mulps xmm1, [rbp + 2*rbp]
mulps xmm1, [rsi + 2*rsi]
mulps xmm1, [rdi + 2*rdi]
mulps xmm2, [rip + 0x13]
mulps xmm2, [rip + 0x1235]
mulps xmm2, [rip + 0x12345679]
mulps xmm2, [rbx]
mulps xmm2, [rcx + 0x14]
mulps xmm2, [rdx + 0x15]
mulps xmm2, [rbx + 0x1235]
mulps xmm2, [rbx + 0x12345679]
mulps xmm2, [rbx + rcx]
mulps xmm2, [rbx + 4 * rcx]
mulps xmm2, [rbx + rcx + 0x13]
mulps xmm2, [rbx + rcx + 0x1235]
mulps xmm2, [rbx + rcx + 0x12345679]
mulps xmm2, [rbx + 4 * rcx + 0x13]
mulps xmm2, [rbx + 4 * rcx + 0x1235]
mulps xmm2, [rbx + 8 * rcx + 0x12345679]
mulps xmm2, [4 * rcx]
mulps xmm2, [4 * rcx + 0x13]
mulps xmm2, [4 * rcx + 0x1235]
mulps xmm2, [4 * rcx + 0x12345679]
mulps xmm2, [rbp]
mulps xmm2, [rbp + 0x12]
mulps xmm2, [rbp + 0x1234]
mulps xmm2, [rbp + 0x12345678]
mulps xmm2, [4 * rbp]
mulps xmm2, [4 * rbp + 0x12]
mulps xmm2, [4 * rbp + 0x1234]
mulps xmm2, [4 * rbp + 0x12345678]
mulps xmm2, [rbx + 4 * rbp]
mulps xmm2, [rbx + 4 * rbp + 0x12]
mulps xmm2, [rbx + 4 * rbp + 0x1234]
mulps xmm2, [rbx + 4 * rbp + 0x12345678]
mulps xmm2, [rsp]
mulps xmm2, [rsp + 0x12]
mulps xmm2, [rsp + 0x1234]
mulps xmm2, [rsp + 0x12345678]
mulps xmm2, [rsp + rax]
mulps xmm2, [rsp + rbp]
mulps xmm2, [rsp + 2*rbp]
mulps xmm2, [rsp + 4*rbp]
mulps xmm2, [rsp + 8*rbp]
mulps xmm2, [rax]
mulps xmm2, [rcx]
mulps xmm2, [rdx]
mulps xmm2, [rbx]
mulps xmm2, [rsp]
mulps xmm2, [rbp]
mulps xmm2, [rsi]
mulps xmm2, [rdi]
mulps xmm2, [rax + 2*rax]
mulps xmm2, [rcx + 2*rcx]
mulps xmm2, [rdx + 2*rdx]
mulps xmm2, [rbx + 2*rbx]
mulps xmm2, [rbp + 2*rbp]
mulps xmm2, [rsi + 2*rsi]
mulps xmm2, [rdi + 2*rdi]
mulps xmm3, [rip + 0x13]
mulps xmm3, [rip + 0x1235]
mulps xmm3, [rip + 0x12345679]
mulps xmm3, [rbx]
mulps xmm3, [rcx + 0x14]
mulps xmm3, [rdx + 0x15]
mulps xmm3, [rbx + 0x1235]
mulps xmm3, [rbx + 0x12345679]
mulps xmm3, [rbx + rcx]
mulps xmm3, [rbx + 4 * rcx]
mulps xmm3, [rbx + rcx + 0x13]
mulps xmm3, [rbx + rcx + 0x1235]
mulps xmm3, [rbx + rcx + 0x12345679]
mulps xmm3, [rbx + 4 * rcx + 0x13]
mulps xmm3, [rbx + 4 * rcx + 0x1235]
mulps xmm3, [rbx + 8 * rcx + 0x12345679]
mulps xmm3, [4 * rcx]
mulps xmm3, [4 * rcx + 0x13]
mulps xmm3, [4 * rcx + 0x1235]
mulps xmm3, [4 * rcx + 0x12345679]
mulps xmm3, [rbp]
mulps xmm3, [rbp + 0x12]
mulps xmm3, [rbp + 0x1234]
mulps xmm3, [rbp + 0x12345678]
mulps xmm3, [4 * rbp]
mulps xmm3, [4 * rbp + 0x12]
mulps xmm3, [4 * rbp + 0x1234]
mulps xmm3, [4 * rbp + 0x12345678]
mulps xmm3, [rbx + 4 * rbp]
mulps xmm3, [rbx + 4 * rbp + 0x12]
mulps xmm3, [rbx + 4 * rbp + 0x1234]
mulps xmm3, [rbx + 4 * rbp + 0x12345678]
mulps xmm3, [rsp]
mulps xmm3, [rsp + 0x12]
mulps xmm3, [rsp + 0x1234]
mulps xmm3, [rsp + 0x12345678]
mulps xmm3, [rsp + rax]
mulps xmm3, [rsp + rbp]
mulps xmm3, [rsp + 2*rbp]
mulps xmm3, [rsp + 4*rbp]
mulps xmm3, [rsp + 8*rbp]
mulps xmm3, [rax]
mulps xmm3, [rcx]
mulps xmm3, [rdx]
mulps xmm3, [rbx]
mulps xmm3, [rsp]
mulps xmm3, [rbp]
mulps xmm3, [rsi]
mulps xmm3, [rdi]
mulps xmm3, [rax + 2*rax]
mulps xmm3, [rcx + 2*rcx]
mulps xmm3, [rdx + 2*rdx]
mulps xmm3, [rbx + 2*rbx]
mulps xmm3, [rbp + 2*rbp]
mulps xmm3, [rsi + 2*rsi]
mulps xmm3, [rdi + 2*rdi]
mulps xmm4, [rip + 0x13]
mulps xmm4, [rip + 0x1235]
mulps xmm4, [rip + 0x12345679]
mulps xmm4, [rbx]
mulps xmm4, [rcx + 0x14]
mulps xmm4, [rdx + 0x15]
mulps xmm4, [rbx + 0x1235]
mulps xmm4, [rbx + 0x12345679]
mulps xmm4, [rbx + rcx]
mulps xmm4, [rbx + 4 * rcx]
mulps xmm4, [rbx + rcx + 0x13]
mulps xmm4, [rbx + rcx + 0x1235]
mulps xmm4, [rbx + rcx + 0x12345679]
mulps xmm4, [rbx + 4 * rcx + 0x13]
mulps xmm4, [rbx + 4 * rcx + 0x1235]
mulps xmm4, [rbx + 8 * rcx + 0x12345679]
mulps xmm4, [4 * rcx]
mulps xmm4, [4 * rcx + 0x13]
mulps xmm4, [4 * rcx + 0x1235]
mulps xmm4, [4 * rcx + 0x12345679]
mulps xmm4, [rbp]
mulps xmm4, [rbp + 0x12]
mulps xmm4, [rbp + 0x1234]
mulps xmm4, [rbp + 0x12345678]
mulps xmm4, [4 * rbp]
mulps xmm4, [4 * rbp + 0x12]
mulps xmm4, [4 * rbp + 0x1234]
mulps xmm4, [4 * rbp + 0x12345678]
mulps xmm4, [rbx + 4 * rbp]
mulps xmm4, [rbx + 4 * rbp + 0x12]
mulps xmm4, [rbx + 4 * rbp + 0x1234]
mulps xmm4, [rbx + 4 * rbp + 0x12345678]
mulps xmm4, [rsp]
mulps xmm4, [rsp + 0x12]
mulps xmm4, [rsp + 0x1234]
mulps xmm4, [rsp + 0x12345678]
mulps xmm4, [rsp + rax]
mulps xmm4, [rsp + rbp]
mulps xmm4, [rsp + 2*rbp]
mulps xmm4, [rsp + 4*rbp]
mulps xmm4, [rsp + 8*rbp]
mulps xmm4, [rax]
mulps xmm4, [rcx]
mulps xmm4, [rdx]
mulps xmm4, [rbx]
mulps xmm4, [rsp]
mulps xmm4, [rbp]
mulps xmm4, [rsi]
mulps xmm4, [rdi]
mulps xmm4, [rax + 2*rax]
mulps xmm4, [rcx + 2*rcx]
mulps xmm4, [rdx + 2*rdx]
mulps xmm4, [rbx + 2*rbx]
mulps xmm4, [rbp + 2*rbp]
mulps xmm4, [rsi + 2*rsi]
mulps xmm4, [rdi + 2*rdi]
mulps xmm5, [rip + 0x13]
mulps xmm5, [rip + 0x1235]
mulps xmm5, [rip + 0x12345679]
mulps xmm5, [rbx]
mulps xmm5, [rcx + 0x14]
mulps xmm5, [rdx + 0x15]
mulps xmm5, [rbx + 0x1235]
mulps xmm5, [rbx + 0x12345679]
mulps xmm5, [rbx + rcx]
mulps xmm5, [rbx + 4 * rcx]
mulps xmm5, [rbx + rcx + 0x13]
mulps xmm5, [rbx + rcx + 0x1235]
mulps xmm5, [rbx + rcx + 0x12345679]
mulps xmm5, [rbx + 4 * rcx + 0x13]
mulps xmm5, [rbx + 4 * rcx + 0x1235]
mulps xmm5, [rbx + 8 * rcx + 0x12345679]
mulps xmm5, [4 * rcx]
mulps xmm5, [4 * rcx + 0x13]
mulps xmm5, [4 * rcx + 0x1235]
mulps xmm5, [4 * rcx + 0x12345679]
mulps xmm5, [rbp]
mulps xmm5, [rbp + 0x12]
mulps xmm5, [rbp + 0x1234]
mulps xmm5, [rbp + 0x12345678]
mulps xmm5, [4 * rbp]
mulps xmm5, [4 * rbp + 0x12]
mulps xmm5, [4 * rbp + 0x1234]
mulps xmm5, [4 * rbp + 0x12345678]
mulps xmm5, [rbx + 4 * rbp]
mulps xmm5, [rbx + 4 * rbp + 0x12]
mulps xmm5, [rbx + 4 * rbp + 0x1234]
mulps xmm5, [rbx + 4 * rbp + 0x12345678]
mulps xmm5, [rsp]
mulps xmm5, [rsp + 0x12]
mulps xmm5, [rsp + 0x1234]
mulps xmm5, [rsp + 0x12345678]
mulps xmm5, [rsp + rax]
mulps xmm5, [rsp + rbp]
mulps xmm5, [rsp + 2*rbp]
mulps xmm5, [rsp + 4*rbp]
mulps xmm5, [rsp + 8*rbp]
mulps xmm5, [rax]
mulps xmm5, [rcx]
mulps xmm5, [rdx]
mulps xmm5, [rbx]
mulps xmm5, [rsp]
mulps xmm5, [rbp]
mulps xmm5, [rsi]
mulps xmm5, [rdi]
mulps xmm5, [rax + 2*rax]
mulps xmm5, [rcx + 2*rcx]
mulps xmm5, [rdx + 2*rdx]
mulps xmm5, [rbx + 2*rbx]
mulps xmm5, [rbp + 2*rbp]
mulps xmm5, [rsi + 2*rsi]
mulps xmm5, [rdi + 2*rdi]
mulps xmm6, [rip + 0x13]
mulps xmm6, [rip + 0x1235]
mulps xmm6, [rip + 0x12345679]
mulps xmm6, [rbx]
mulps xmm6, [rcx + 0x14]
mulps xmm6, [rdx + 0x15]
mulps xmm6, [rbx + 0x1235]
mulps xmm6, [rbx + 0x12345679]
mulps xmm6, [rbx + rcx]
mulps xmm6, [rbx + 4 * rcx]
mulps xmm6, [rbx + rcx + 0x13]
mulps xmm6, [rbx + rcx + 0x1235]
mulps xmm6, [rbx + rcx + 0x12345679]
mulps xmm6, [rbx + 4 * rcx + 0x13]
mulps xmm6, [rbx + 4 * rcx + 0x1235]
mulps xmm6, [rbx + 8 * rcx + 0x12345679]
mulps xmm6, [4 * rcx]
mulps xmm6, [4 * rcx + 0x13]
mulps xmm6, [4 * rcx + 0x1235]
mulps xmm6, [4 * rcx + 0x12345679]
mulps xmm6, [rbp]
mulps xmm6, [rbp + 0x12]
mulps xmm6, [rbp + 0x1234]
mulps xmm6, [rbp + 0x12345678]
mulps xmm6, [4 * rbp]
mulps xmm6, [4 * rbp + 0x12]
mulps xmm6, [4 * rbp + 0x1234]
mulps xmm6, [4 * rbp + 0x12345678]
mulps xmm6, [rbx + 4 * rbp]
mulps xmm6, [rbx + 4 * rbp + 0x12]
mulps xmm6, [rbx + 4 * rbp + 0x1234]
mulps xmm6, [rbx + 4 * rbp + 0x12345678]
mulps xmm6, [rsp]
mulps xmm6, [rsp + 0x12]
mulps xmm6, [rsp + 0x1234]
mulps xmm6, [rsp + 0x12345678]
mulps xmm6, [rsp + rax]
mulps xmm6, [rsp + rbp]
mulps xmm6, [rsp + 2*rbp]
mulps xmm6, [rsp + 4*rbp]
mulps xmm6, [rsp + 8*rbp]
mulps xmm6, [rax]
mulps xmm6, [rcx]
mulps xmm6, [rdx]
mulps xmm6, [rbx]
mulps xmm6, [rsp]
mulps xmm6, [rbp]
mulps xmm6, [rsi]
mulps xmm6, [rdi]
mulps xmm6, [rax + 2*rax]
mulps xmm6, [rcx + 2*rcx]
mulps xmm6, [rdx + 2*rdx]
mulps xmm6, [rbx + 2*rbx]
mulps xmm6, [rbp + 2*rbp]
mulps xmm6, [rsi + 2*rsi]
mulps xmm6, [rdi + 2*rdi]
mulps xmm7, [rip + 0x13]
mulps xmm7, [rip + 0x1235]
mulps xmm7, [rip + 0x12345679]
mulps xmm7, [rbx]
mulps xmm7, [rcx + 0x14]
mulps xmm7, [rdx + 0x15]
mulps xmm7, [rbx + 0x1235]
mulps xmm7, [rbx + 0x12345679]
mulps xmm7, [rbx + rcx]
mulps xmm7, [rbx + 4 * rcx]
mulps xmm7, [rbx + rcx + 0x13]
mulps xmm7, [rbx + rcx + 0x1235]
mulps xmm7, [rbx + rcx + 0x12345679]
mulps xmm7, [rbx + 4 * rcx + 0x13]
mulps xmm7, [rbx + 4 * rcx + 0x1235]
mulps xmm7, [rbx + 8 * rcx + 0x12345679]
mulps xmm7, [4 * rcx]
mulps xmm7, [4 * rcx + 0x13]
mulps xmm7, [4 * rcx + 0x1235]
mulps xmm7, [4 * rcx + 0x12345679]
mulps xmm7, [rbp]
mulps xmm7, [rbp + 0x12]
mulps xmm7, [rbp + 0x1234]
mulps xmm7, [rbp + 0x12345678]
mulps xmm7, [4 * rbp]
mulps xmm7, [4 * rbp + 0x12]
mulps xmm7, [4 * rbp + 0x1234]
mulps xmm7, [4 * rbp + 0x12345678]
mulps xmm7, [rbx + 4 * rbp]
mulps xmm7, [rbx + 4 * rbp + 0x12]
mulps xmm7, [rbx + 4 * rbp + 0x1234]
mulps xmm7, [rbx + 4 * rbp + 0x12345678]
mulps xmm7, [rsp]
mulps xmm7, [rsp + 0x12]
mulps xmm7, [rsp + 0x1234]
mulps xmm7, [rsp + 0x12345678]
mulps xmm7, [rsp + rax]
mulps xmm7, [rsp + rbp]
mulps xmm7, [rsp + 2*rbp]
mulps xmm7, [rsp + 4*rbp]
mulps xmm7, [rsp + 8*rbp]
mulps xmm7, [rax]
mulps xmm7, [rcx]
mulps xmm7, [rdx]
mulps xmm7, [rbx]
mulps xmm7, [rsp]
mulps xmm7, [rbp]
mulps xmm7, [rsi]
mulps xmm7, [rdi]
mulps xmm7, [rax + 2*rax]
mulps xmm7, [rcx + 2*rcx]
mulps xmm7, [rdx + 2*rdx]
mulps xmm7, [rbx + 2*rbx]
mulps xmm7, [rbp + 2*rbp]
mulps xmm7, [rsi + 2*rsi]
mulps xmm7, [rdi + 2*rdi]

