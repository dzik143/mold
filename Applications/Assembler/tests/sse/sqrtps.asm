use64
; ------------------------------------------------------------------------------
; opcode xmm,xmm
; ------------------------------------------------------------------------------
sqrtps xmm0, xmm0
sqrtps xmm0, xmm1
sqrtps xmm0, xmm2
sqrtps xmm0, xmm3
sqrtps xmm0, xmm4
sqrtps xmm0, xmm5
sqrtps xmm0, xmm6
sqrtps xmm0, xmm7
sqrtps xmm1, xmm0
sqrtps xmm1, xmm1
sqrtps xmm1, xmm2
sqrtps xmm1, xmm3
sqrtps xmm1, xmm4
sqrtps xmm1, xmm5
sqrtps xmm1, xmm6
sqrtps xmm1, xmm7
sqrtps xmm2, xmm0
sqrtps xmm2, xmm1
sqrtps xmm2, xmm2
sqrtps xmm2, xmm3
sqrtps xmm2, xmm4
sqrtps xmm2, xmm5
sqrtps xmm2, xmm6
sqrtps xmm2, xmm7
sqrtps xmm3, xmm0
sqrtps xmm3, xmm1
sqrtps xmm3, xmm2
sqrtps xmm3, xmm3
sqrtps xmm3, xmm4
sqrtps xmm3, xmm5
sqrtps xmm3, xmm6
sqrtps xmm3, xmm7
sqrtps xmm4, xmm0
sqrtps xmm4, xmm1
sqrtps xmm4, xmm2
sqrtps xmm4, xmm3
sqrtps xmm4, xmm4
sqrtps xmm4, xmm5
sqrtps xmm4, xmm6
sqrtps xmm4, xmm7
sqrtps xmm5, xmm0
sqrtps xmm5, xmm1
sqrtps xmm5, xmm2
sqrtps xmm5, xmm3
sqrtps xmm5, xmm4
sqrtps xmm5, xmm5
sqrtps xmm5, xmm6
sqrtps xmm5, xmm7
sqrtps xmm6, xmm0
sqrtps xmm6, xmm1
sqrtps xmm6, xmm2
sqrtps xmm6, xmm3
sqrtps xmm6, xmm4
sqrtps xmm6, xmm5
sqrtps xmm6, xmm6
sqrtps xmm6, xmm7
sqrtps xmm7, xmm0
sqrtps xmm7, xmm1
sqrtps xmm7, xmm2
sqrtps xmm7, xmm3
sqrtps xmm7, xmm4
sqrtps xmm7, xmm5
sqrtps xmm7, xmm6
sqrtps xmm7, xmm7

; ------------------------------------------------------------------------------
; opcode xmm,m128
; ------------------------------------------------------------------------------
sqrtps xmm0, [rip + 0x13]
sqrtps xmm0, [rip + 0x1235]
sqrtps xmm0, [rip + 0x12345679]
sqrtps xmm0, [rbx]
sqrtps xmm0, [rcx + 0x14]
sqrtps xmm0, [rdx + 0x15]
sqrtps xmm0, [rbx + 0x1235]
sqrtps xmm0, [rbx + 0x12345679]
sqrtps xmm0, [rbx + rcx]
sqrtps xmm0, [rbx + 4 * rcx]
sqrtps xmm0, [rbx + rcx + 0x13]
sqrtps xmm0, [rbx + rcx + 0x1235]
sqrtps xmm0, [rbx + rcx + 0x12345679]
sqrtps xmm0, [rbx + 4 * rcx + 0x13]
sqrtps xmm0, [rbx + 4 * rcx + 0x1235]
sqrtps xmm0, [rbx + 8 * rcx + 0x12345679]
sqrtps xmm0, [4 * rcx]
sqrtps xmm0, [4 * rcx + 0x13]
sqrtps xmm0, [4 * rcx + 0x1235]
sqrtps xmm0, [4 * rcx + 0x12345679]
sqrtps xmm0, [rbp]
sqrtps xmm0, [rbp + 0x12]
sqrtps xmm0, [rbp + 0x1234]
sqrtps xmm0, [rbp + 0x12345678]
sqrtps xmm0, [4 * rbp]
sqrtps xmm0, [4 * rbp + 0x12]
sqrtps xmm0, [4 * rbp + 0x1234]
sqrtps xmm0, [4 * rbp + 0x12345678]
sqrtps xmm0, [rbx + 4 * rbp]
sqrtps xmm0, [rbx + 4 * rbp + 0x12]
sqrtps xmm0, [rbx + 4 * rbp + 0x1234]
sqrtps xmm0, [rbx + 4 * rbp + 0x12345678]
sqrtps xmm0, [rsp]
sqrtps xmm0, [rsp + 0x12]
sqrtps xmm0, [rsp + 0x1234]
sqrtps xmm0, [rsp + 0x12345678]
sqrtps xmm0, [rsp + rax]
sqrtps xmm0, [rsp + rbp]
sqrtps xmm0, [rsp + 2*rbp]
sqrtps xmm0, [rsp + 4*rbp]
sqrtps xmm0, [rsp + 8*rbp]
sqrtps xmm0, [rax]
sqrtps xmm0, [rcx]
sqrtps xmm0, [rdx]
sqrtps xmm0, [rbx]
sqrtps xmm0, [rsp]
sqrtps xmm0, [rbp]
sqrtps xmm0, [rsi]
sqrtps xmm0, [rdi]
sqrtps xmm0, [rax + 2*rax]
sqrtps xmm0, [rcx + 2*rcx]
sqrtps xmm0, [rdx + 2*rdx]
sqrtps xmm0, [rbx + 2*rbx]
sqrtps xmm0, [rbp + 2*rbp]
sqrtps xmm0, [rsi + 2*rsi]
sqrtps xmm0, [rdi + 2*rdi]
sqrtps xmm1, [rip + 0x13]
sqrtps xmm1, [rip + 0x1235]
sqrtps xmm1, [rip + 0x12345679]
sqrtps xmm1, [rbx]
sqrtps xmm1, [rcx + 0x14]
sqrtps xmm1, [rdx + 0x15]
sqrtps xmm1, [rbx + 0x1235]
sqrtps xmm1, [rbx + 0x12345679]
sqrtps xmm1, [rbx + rcx]
sqrtps xmm1, [rbx + 4 * rcx]
sqrtps xmm1, [rbx + rcx + 0x13]
sqrtps xmm1, [rbx + rcx + 0x1235]
sqrtps xmm1, [rbx + rcx + 0x12345679]
sqrtps xmm1, [rbx + 4 * rcx + 0x13]
sqrtps xmm1, [rbx + 4 * rcx + 0x1235]
sqrtps xmm1, [rbx + 8 * rcx + 0x12345679]
sqrtps xmm1, [4 * rcx]
sqrtps xmm1, [4 * rcx + 0x13]
sqrtps xmm1, [4 * rcx + 0x1235]
sqrtps xmm1, [4 * rcx + 0x12345679]
sqrtps xmm1, [rbp]
sqrtps xmm1, [rbp + 0x12]
sqrtps xmm1, [rbp + 0x1234]
sqrtps xmm1, [rbp + 0x12345678]
sqrtps xmm1, [4 * rbp]
sqrtps xmm1, [4 * rbp + 0x12]
sqrtps xmm1, [4 * rbp + 0x1234]
sqrtps xmm1, [4 * rbp + 0x12345678]
sqrtps xmm1, [rbx + 4 * rbp]
sqrtps xmm1, [rbx + 4 * rbp + 0x12]
sqrtps xmm1, [rbx + 4 * rbp + 0x1234]
sqrtps xmm1, [rbx + 4 * rbp + 0x12345678]
sqrtps xmm1, [rsp]
sqrtps xmm1, [rsp + 0x12]
sqrtps xmm1, [rsp + 0x1234]
sqrtps xmm1, [rsp + 0x12345678]
sqrtps xmm1, [rsp + rax]
sqrtps xmm1, [rsp + rbp]
sqrtps xmm1, [rsp + 2*rbp]
sqrtps xmm1, [rsp + 4*rbp]
sqrtps xmm1, [rsp + 8*rbp]
sqrtps xmm1, [rax]
sqrtps xmm1, [rcx]
sqrtps xmm1, [rdx]
sqrtps xmm1, [rbx]
sqrtps xmm1, [rsp]
sqrtps xmm1, [rbp]
sqrtps xmm1, [rsi]
sqrtps xmm1, [rdi]
sqrtps xmm1, [rax + 2*rax]
sqrtps xmm1, [rcx + 2*rcx]
sqrtps xmm1, [rdx + 2*rdx]
sqrtps xmm1, [rbx + 2*rbx]
sqrtps xmm1, [rbp + 2*rbp]
sqrtps xmm1, [rsi + 2*rsi]
sqrtps xmm1, [rdi + 2*rdi]
sqrtps xmm2, [rip + 0x13]
sqrtps xmm2, [rip + 0x1235]
sqrtps xmm2, [rip + 0x12345679]
sqrtps xmm2, [rbx]
sqrtps xmm2, [rcx + 0x14]
sqrtps xmm2, [rdx + 0x15]
sqrtps xmm2, [rbx + 0x1235]
sqrtps xmm2, [rbx + 0x12345679]
sqrtps xmm2, [rbx + rcx]
sqrtps xmm2, [rbx + 4 * rcx]
sqrtps xmm2, [rbx + rcx + 0x13]
sqrtps xmm2, [rbx + rcx + 0x1235]
sqrtps xmm2, [rbx + rcx + 0x12345679]
sqrtps xmm2, [rbx + 4 * rcx + 0x13]
sqrtps xmm2, [rbx + 4 * rcx + 0x1235]
sqrtps xmm2, [rbx + 8 * rcx + 0x12345679]
sqrtps xmm2, [4 * rcx]
sqrtps xmm2, [4 * rcx + 0x13]
sqrtps xmm2, [4 * rcx + 0x1235]
sqrtps xmm2, [4 * rcx + 0x12345679]
sqrtps xmm2, [rbp]
sqrtps xmm2, [rbp + 0x12]
sqrtps xmm2, [rbp + 0x1234]
sqrtps xmm2, [rbp + 0x12345678]
sqrtps xmm2, [4 * rbp]
sqrtps xmm2, [4 * rbp + 0x12]
sqrtps xmm2, [4 * rbp + 0x1234]
sqrtps xmm2, [4 * rbp + 0x12345678]
sqrtps xmm2, [rbx + 4 * rbp]
sqrtps xmm2, [rbx + 4 * rbp + 0x12]
sqrtps xmm2, [rbx + 4 * rbp + 0x1234]
sqrtps xmm2, [rbx + 4 * rbp + 0x12345678]
sqrtps xmm2, [rsp]
sqrtps xmm2, [rsp + 0x12]
sqrtps xmm2, [rsp + 0x1234]
sqrtps xmm2, [rsp + 0x12345678]
sqrtps xmm2, [rsp + rax]
sqrtps xmm2, [rsp + rbp]
sqrtps xmm2, [rsp + 2*rbp]
sqrtps xmm2, [rsp + 4*rbp]
sqrtps xmm2, [rsp + 8*rbp]
sqrtps xmm2, [rax]
sqrtps xmm2, [rcx]
sqrtps xmm2, [rdx]
sqrtps xmm2, [rbx]
sqrtps xmm2, [rsp]
sqrtps xmm2, [rbp]
sqrtps xmm2, [rsi]
sqrtps xmm2, [rdi]
sqrtps xmm2, [rax + 2*rax]
sqrtps xmm2, [rcx + 2*rcx]
sqrtps xmm2, [rdx + 2*rdx]
sqrtps xmm2, [rbx + 2*rbx]
sqrtps xmm2, [rbp + 2*rbp]
sqrtps xmm2, [rsi + 2*rsi]
sqrtps xmm2, [rdi + 2*rdi]
sqrtps xmm3, [rip + 0x13]
sqrtps xmm3, [rip + 0x1235]
sqrtps xmm3, [rip + 0x12345679]
sqrtps xmm3, [rbx]
sqrtps xmm3, [rcx + 0x14]
sqrtps xmm3, [rdx + 0x15]
sqrtps xmm3, [rbx + 0x1235]
sqrtps xmm3, [rbx + 0x12345679]
sqrtps xmm3, [rbx + rcx]
sqrtps xmm3, [rbx + 4 * rcx]
sqrtps xmm3, [rbx + rcx + 0x13]
sqrtps xmm3, [rbx + rcx + 0x1235]
sqrtps xmm3, [rbx + rcx + 0x12345679]
sqrtps xmm3, [rbx + 4 * rcx + 0x13]
sqrtps xmm3, [rbx + 4 * rcx + 0x1235]
sqrtps xmm3, [rbx + 8 * rcx + 0x12345679]
sqrtps xmm3, [4 * rcx]
sqrtps xmm3, [4 * rcx + 0x13]
sqrtps xmm3, [4 * rcx + 0x1235]
sqrtps xmm3, [4 * rcx + 0x12345679]
sqrtps xmm3, [rbp]
sqrtps xmm3, [rbp + 0x12]
sqrtps xmm3, [rbp + 0x1234]
sqrtps xmm3, [rbp + 0x12345678]
sqrtps xmm3, [4 * rbp]
sqrtps xmm3, [4 * rbp + 0x12]
sqrtps xmm3, [4 * rbp + 0x1234]
sqrtps xmm3, [4 * rbp + 0x12345678]
sqrtps xmm3, [rbx + 4 * rbp]
sqrtps xmm3, [rbx + 4 * rbp + 0x12]
sqrtps xmm3, [rbx + 4 * rbp + 0x1234]
sqrtps xmm3, [rbx + 4 * rbp + 0x12345678]
sqrtps xmm3, [rsp]
sqrtps xmm3, [rsp + 0x12]
sqrtps xmm3, [rsp + 0x1234]
sqrtps xmm3, [rsp + 0x12345678]
sqrtps xmm3, [rsp + rax]
sqrtps xmm3, [rsp + rbp]
sqrtps xmm3, [rsp + 2*rbp]
sqrtps xmm3, [rsp + 4*rbp]
sqrtps xmm3, [rsp + 8*rbp]
sqrtps xmm3, [rax]
sqrtps xmm3, [rcx]
sqrtps xmm3, [rdx]
sqrtps xmm3, [rbx]
sqrtps xmm3, [rsp]
sqrtps xmm3, [rbp]
sqrtps xmm3, [rsi]
sqrtps xmm3, [rdi]
sqrtps xmm3, [rax + 2*rax]
sqrtps xmm3, [rcx + 2*rcx]
sqrtps xmm3, [rdx + 2*rdx]
sqrtps xmm3, [rbx + 2*rbx]
sqrtps xmm3, [rbp + 2*rbp]
sqrtps xmm3, [rsi + 2*rsi]
sqrtps xmm3, [rdi + 2*rdi]
sqrtps xmm4, [rip + 0x13]
sqrtps xmm4, [rip + 0x1235]
sqrtps xmm4, [rip + 0x12345679]
sqrtps xmm4, [rbx]
sqrtps xmm4, [rcx + 0x14]
sqrtps xmm4, [rdx + 0x15]
sqrtps xmm4, [rbx + 0x1235]
sqrtps xmm4, [rbx + 0x12345679]
sqrtps xmm4, [rbx + rcx]
sqrtps xmm4, [rbx + 4 * rcx]
sqrtps xmm4, [rbx + rcx + 0x13]
sqrtps xmm4, [rbx + rcx + 0x1235]
sqrtps xmm4, [rbx + rcx + 0x12345679]
sqrtps xmm4, [rbx + 4 * rcx + 0x13]
sqrtps xmm4, [rbx + 4 * rcx + 0x1235]
sqrtps xmm4, [rbx + 8 * rcx + 0x12345679]
sqrtps xmm4, [4 * rcx]
sqrtps xmm4, [4 * rcx + 0x13]
sqrtps xmm4, [4 * rcx + 0x1235]
sqrtps xmm4, [4 * rcx + 0x12345679]
sqrtps xmm4, [rbp]
sqrtps xmm4, [rbp + 0x12]
sqrtps xmm4, [rbp + 0x1234]
sqrtps xmm4, [rbp + 0x12345678]
sqrtps xmm4, [4 * rbp]
sqrtps xmm4, [4 * rbp + 0x12]
sqrtps xmm4, [4 * rbp + 0x1234]
sqrtps xmm4, [4 * rbp + 0x12345678]
sqrtps xmm4, [rbx + 4 * rbp]
sqrtps xmm4, [rbx + 4 * rbp + 0x12]
sqrtps xmm4, [rbx + 4 * rbp + 0x1234]
sqrtps xmm4, [rbx + 4 * rbp + 0x12345678]
sqrtps xmm4, [rsp]
sqrtps xmm4, [rsp + 0x12]
sqrtps xmm4, [rsp + 0x1234]
sqrtps xmm4, [rsp + 0x12345678]
sqrtps xmm4, [rsp + rax]
sqrtps xmm4, [rsp + rbp]
sqrtps xmm4, [rsp + 2*rbp]
sqrtps xmm4, [rsp + 4*rbp]
sqrtps xmm4, [rsp + 8*rbp]
sqrtps xmm4, [rax]
sqrtps xmm4, [rcx]
sqrtps xmm4, [rdx]
sqrtps xmm4, [rbx]
sqrtps xmm4, [rsp]
sqrtps xmm4, [rbp]
sqrtps xmm4, [rsi]
sqrtps xmm4, [rdi]
sqrtps xmm4, [rax + 2*rax]
sqrtps xmm4, [rcx + 2*rcx]
sqrtps xmm4, [rdx + 2*rdx]
sqrtps xmm4, [rbx + 2*rbx]
sqrtps xmm4, [rbp + 2*rbp]
sqrtps xmm4, [rsi + 2*rsi]
sqrtps xmm4, [rdi + 2*rdi]
sqrtps xmm5, [rip + 0x13]
sqrtps xmm5, [rip + 0x1235]
sqrtps xmm5, [rip + 0x12345679]
sqrtps xmm5, [rbx]
sqrtps xmm5, [rcx + 0x14]
sqrtps xmm5, [rdx + 0x15]
sqrtps xmm5, [rbx + 0x1235]
sqrtps xmm5, [rbx + 0x12345679]
sqrtps xmm5, [rbx + rcx]
sqrtps xmm5, [rbx + 4 * rcx]
sqrtps xmm5, [rbx + rcx + 0x13]
sqrtps xmm5, [rbx + rcx + 0x1235]
sqrtps xmm5, [rbx + rcx + 0x12345679]
sqrtps xmm5, [rbx + 4 * rcx + 0x13]
sqrtps xmm5, [rbx + 4 * rcx + 0x1235]
sqrtps xmm5, [rbx + 8 * rcx + 0x12345679]
sqrtps xmm5, [4 * rcx]
sqrtps xmm5, [4 * rcx + 0x13]
sqrtps xmm5, [4 * rcx + 0x1235]
sqrtps xmm5, [4 * rcx + 0x12345679]
sqrtps xmm5, [rbp]
sqrtps xmm5, [rbp + 0x12]
sqrtps xmm5, [rbp + 0x1234]
sqrtps xmm5, [rbp + 0x12345678]
sqrtps xmm5, [4 * rbp]
sqrtps xmm5, [4 * rbp + 0x12]
sqrtps xmm5, [4 * rbp + 0x1234]
sqrtps xmm5, [4 * rbp + 0x12345678]
sqrtps xmm5, [rbx + 4 * rbp]
sqrtps xmm5, [rbx + 4 * rbp + 0x12]
sqrtps xmm5, [rbx + 4 * rbp + 0x1234]
sqrtps xmm5, [rbx + 4 * rbp + 0x12345678]
sqrtps xmm5, [rsp]
sqrtps xmm5, [rsp + 0x12]
sqrtps xmm5, [rsp + 0x1234]
sqrtps xmm5, [rsp + 0x12345678]
sqrtps xmm5, [rsp + rax]
sqrtps xmm5, [rsp + rbp]
sqrtps xmm5, [rsp + 2*rbp]
sqrtps xmm5, [rsp + 4*rbp]
sqrtps xmm5, [rsp + 8*rbp]
sqrtps xmm5, [rax]
sqrtps xmm5, [rcx]
sqrtps xmm5, [rdx]
sqrtps xmm5, [rbx]
sqrtps xmm5, [rsp]
sqrtps xmm5, [rbp]
sqrtps xmm5, [rsi]
sqrtps xmm5, [rdi]
sqrtps xmm5, [rax + 2*rax]
sqrtps xmm5, [rcx + 2*rcx]
sqrtps xmm5, [rdx + 2*rdx]
sqrtps xmm5, [rbx + 2*rbx]
sqrtps xmm5, [rbp + 2*rbp]
sqrtps xmm5, [rsi + 2*rsi]
sqrtps xmm5, [rdi + 2*rdi]
sqrtps xmm6, [rip + 0x13]
sqrtps xmm6, [rip + 0x1235]
sqrtps xmm6, [rip + 0x12345679]
sqrtps xmm6, [rbx]
sqrtps xmm6, [rcx + 0x14]
sqrtps xmm6, [rdx + 0x15]
sqrtps xmm6, [rbx + 0x1235]
sqrtps xmm6, [rbx + 0x12345679]
sqrtps xmm6, [rbx + rcx]
sqrtps xmm6, [rbx + 4 * rcx]
sqrtps xmm6, [rbx + rcx + 0x13]
sqrtps xmm6, [rbx + rcx + 0x1235]
sqrtps xmm6, [rbx + rcx + 0x12345679]
sqrtps xmm6, [rbx + 4 * rcx + 0x13]
sqrtps xmm6, [rbx + 4 * rcx + 0x1235]
sqrtps xmm6, [rbx + 8 * rcx + 0x12345679]
sqrtps xmm6, [4 * rcx]
sqrtps xmm6, [4 * rcx + 0x13]
sqrtps xmm6, [4 * rcx + 0x1235]
sqrtps xmm6, [4 * rcx + 0x12345679]
sqrtps xmm6, [rbp]
sqrtps xmm6, [rbp + 0x12]
sqrtps xmm6, [rbp + 0x1234]
sqrtps xmm6, [rbp + 0x12345678]
sqrtps xmm6, [4 * rbp]
sqrtps xmm6, [4 * rbp + 0x12]
sqrtps xmm6, [4 * rbp + 0x1234]
sqrtps xmm6, [4 * rbp + 0x12345678]
sqrtps xmm6, [rbx + 4 * rbp]
sqrtps xmm6, [rbx + 4 * rbp + 0x12]
sqrtps xmm6, [rbx + 4 * rbp + 0x1234]
sqrtps xmm6, [rbx + 4 * rbp + 0x12345678]
sqrtps xmm6, [rsp]
sqrtps xmm6, [rsp + 0x12]
sqrtps xmm6, [rsp + 0x1234]
sqrtps xmm6, [rsp + 0x12345678]
sqrtps xmm6, [rsp + rax]
sqrtps xmm6, [rsp + rbp]
sqrtps xmm6, [rsp + 2*rbp]
sqrtps xmm6, [rsp + 4*rbp]
sqrtps xmm6, [rsp + 8*rbp]
sqrtps xmm6, [rax]
sqrtps xmm6, [rcx]
sqrtps xmm6, [rdx]
sqrtps xmm6, [rbx]
sqrtps xmm6, [rsp]
sqrtps xmm6, [rbp]
sqrtps xmm6, [rsi]
sqrtps xmm6, [rdi]
sqrtps xmm6, [rax + 2*rax]
sqrtps xmm6, [rcx + 2*rcx]
sqrtps xmm6, [rdx + 2*rdx]
sqrtps xmm6, [rbx + 2*rbx]
sqrtps xmm6, [rbp + 2*rbp]
sqrtps xmm6, [rsi + 2*rsi]
sqrtps xmm6, [rdi + 2*rdi]
sqrtps xmm7, [rip + 0x13]
sqrtps xmm7, [rip + 0x1235]
sqrtps xmm7, [rip + 0x12345679]
sqrtps xmm7, [rbx]
sqrtps xmm7, [rcx + 0x14]
sqrtps xmm7, [rdx + 0x15]
sqrtps xmm7, [rbx + 0x1235]
sqrtps xmm7, [rbx + 0x12345679]
sqrtps xmm7, [rbx + rcx]
sqrtps xmm7, [rbx + 4 * rcx]
sqrtps xmm7, [rbx + rcx + 0x13]
sqrtps xmm7, [rbx + rcx + 0x1235]
sqrtps xmm7, [rbx + rcx + 0x12345679]
sqrtps xmm7, [rbx + 4 * rcx + 0x13]
sqrtps xmm7, [rbx + 4 * rcx + 0x1235]
sqrtps xmm7, [rbx + 8 * rcx + 0x12345679]
sqrtps xmm7, [4 * rcx]
sqrtps xmm7, [4 * rcx + 0x13]
sqrtps xmm7, [4 * rcx + 0x1235]
sqrtps xmm7, [4 * rcx + 0x12345679]
sqrtps xmm7, [rbp]
sqrtps xmm7, [rbp + 0x12]
sqrtps xmm7, [rbp + 0x1234]
sqrtps xmm7, [rbp + 0x12345678]
sqrtps xmm7, [4 * rbp]
sqrtps xmm7, [4 * rbp + 0x12]
sqrtps xmm7, [4 * rbp + 0x1234]
sqrtps xmm7, [4 * rbp + 0x12345678]
sqrtps xmm7, [rbx + 4 * rbp]
sqrtps xmm7, [rbx + 4 * rbp + 0x12]
sqrtps xmm7, [rbx + 4 * rbp + 0x1234]
sqrtps xmm7, [rbx + 4 * rbp + 0x12345678]
sqrtps xmm7, [rsp]
sqrtps xmm7, [rsp + 0x12]
sqrtps xmm7, [rsp + 0x1234]
sqrtps xmm7, [rsp + 0x12345678]
sqrtps xmm7, [rsp + rax]
sqrtps xmm7, [rsp + rbp]
sqrtps xmm7, [rsp + 2*rbp]
sqrtps xmm7, [rsp + 4*rbp]
sqrtps xmm7, [rsp + 8*rbp]
sqrtps xmm7, [rax]
sqrtps xmm7, [rcx]
sqrtps xmm7, [rdx]
sqrtps xmm7, [rbx]
sqrtps xmm7, [rsp]
sqrtps xmm7, [rbp]
sqrtps xmm7, [rsi]
sqrtps xmm7, [rdi]
sqrtps xmm7, [rax + 2*rax]
sqrtps xmm7, [rcx + 2*rcx]
sqrtps xmm7, [rdx + 2*rdx]
sqrtps xmm7, [rbx + 2*rbx]
sqrtps xmm7, [rbp + 2*rbp]
sqrtps xmm7, [rsi + 2*rsi]
sqrtps xmm7, [rdi + 2*rdi]

