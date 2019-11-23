use64
; ------------------------------------------------------------------------------
; opcode xmm,xmm
; ------------------------------------------------------------------------------
maxps xmm0, xmm0
maxps xmm0, xmm1
maxps xmm0, xmm2
maxps xmm0, xmm3
maxps xmm0, xmm4
maxps xmm0, xmm5
maxps xmm0, xmm6
maxps xmm0, xmm7
maxps xmm1, xmm0
maxps xmm1, xmm1
maxps xmm1, xmm2
maxps xmm1, xmm3
maxps xmm1, xmm4
maxps xmm1, xmm5
maxps xmm1, xmm6
maxps xmm1, xmm7
maxps xmm2, xmm0
maxps xmm2, xmm1
maxps xmm2, xmm2
maxps xmm2, xmm3
maxps xmm2, xmm4
maxps xmm2, xmm5
maxps xmm2, xmm6
maxps xmm2, xmm7
maxps xmm3, xmm0
maxps xmm3, xmm1
maxps xmm3, xmm2
maxps xmm3, xmm3
maxps xmm3, xmm4
maxps xmm3, xmm5
maxps xmm3, xmm6
maxps xmm3, xmm7
maxps xmm4, xmm0
maxps xmm4, xmm1
maxps xmm4, xmm2
maxps xmm4, xmm3
maxps xmm4, xmm4
maxps xmm4, xmm5
maxps xmm4, xmm6
maxps xmm4, xmm7
maxps xmm5, xmm0
maxps xmm5, xmm1
maxps xmm5, xmm2
maxps xmm5, xmm3
maxps xmm5, xmm4
maxps xmm5, xmm5
maxps xmm5, xmm6
maxps xmm5, xmm7
maxps xmm6, xmm0
maxps xmm6, xmm1
maxps xmm6, xmm2
maxps xmm6, xmm3
maxps xmm6, xmm4
maxps xmm6, xmm5
maxps xmm6, xmm6
maxps xmm6, xmm7
maxps xmm7, xmm0
maxps xmm7, xmm1
maxps xmm7, xmm2
maxps xmm7, xmm3
maxps xmm7, xmm4
maxps xmm7, xmm5
maxps xmm7, xmm6
maxps xmm7, xmm7

; ------------------------------------------------------------------------------
; opcode xmm,m128
; ------------------------------------------------------------------------------
maxps xmm0, [rip + 0x13]
maxps xmm0, [rip + 0x1235]
maxps xmm0, [rip + 0x12345679]
maxps xmm0, [rbx]
maxps xmm0, [rcx + 0x14]
maxps xmm0, [rdx + 0x15]
maxps xmm0, [rbx + 0x1235]
maxps xmm0, [rbx + 0x12345679]
maxps xmm0, [rbx + rcx]
maxps xmm0, [rbx + 4 * rcx]
maxps xmm0, [rbx + rcx + 0x13]
maxps xmm0, [rbx + rcx + 0x1235]
maxps xmm0, [rbx + rcx + 0x12345679]
maxps xmm0, [rbx + 4 * rcx + 0x13]
maxps xmm0, [rbx + 4 * rcx + 0x1235]
maxps xmm0, [rbx + 8 * rcx + 0x12345679]
maxps xmm0, [4 * rcx]
maxps xmm0, [4 * rcx + 0x13]
maxps xmm0, [4 * rcx + 0x1235]
maxps xmm0, [4 * rcx + 0x12345679]
maxps xmm0, [rbp]
maxps xmm0, [rbp + 0x12]
maxps xmm0, [rbp + 0x1234]
maxps xmm0, [rbp + 0x12345678]
maxps xmm0, [4 * rbp]
maxps xmm0, [4 * rbp + 0x12]
maxps xmm0, [4 * rbp + 0x1234]
maxps xmm0, [4 * rbp + 0x12345678]
maxps xmm0, [rbx + 4 * rbp]
maxps xmm0, [rbx + 4 * rbp + 0x12]
maxps xmm0, [rbx + 4 * rbp + 0x1234]
maxps xmm0, [rbx + 4 * rbp + 0x12345678]
maxps xmm0, [rsp]
maxps xmm0, [rsp + 0x12]
maxps xmm0, [rsp + 0x1234]
maxps xmm0, [rsp + 0x12345678]
maxps xmm0, [rsp + rax]
maxps xmm0, [rsp + rbp]
maxps xmm0, [rsp + 2*rbp]
maxps xmm0, [rsp + 4*rbp]
maxps xmm0, [rsp + 8*rbp]
maxps xmm0, [rax]
maxps xmm0, [rcx]
maxps xmm0, [rdx]
maxps xmm0, [rbx]
maxps xmm0, [rsp]
maxps xmm0, [rbp]
maxps xmm0, [rsi]
maxps xmm0, [rdi]
maxps xmm0, [rax + 2*rax]
maxps xmm0, [rcx + 2*rcx]
maxps xmm0, [rdx + 2*rdx]
maxps xmm0, [rbx + 2*rbx]
maxps xmm0, [rbp + 2*rbp]
maxps xmm0, [rsi + 2*rsi]
maxps xmm0, [rdi + 2*rdi]
maxps xmm1, [rip + 0x13]
maxps xmm1, [rip + 0x1235]
maxps xmm1, [rip + 0x12345679]
maxps xmm1, [rbx]
maxps xmm1, [rcx + 0x14]
maxps xmm1, [rdx + 0x15]
maxps xmm1, [rbx + 0x1235]
maxps xmm1, [rbx + 0x12345679]
maxps xmm1, [rbx + rcx]
maxps xmm1, [rbx + 4 * rcx]
maxps xmm1, [rbx + rcx + 0x13]
maxps xmm1, [rbx + rcx + 0x1235]
maxps xmm1, [rbx + rcx + 0x12345679]
maxps xmm1, [rbx + 4 * rcx + 0x13]
maxps xmm1, [rbx + 4 * rcx + 0x1235]
maxps xmm1, [rbx + 8 * rcx + 0x12345679]
maxps xmm1, [4 * rcx]
maxps xmm1, [4 * rcx + 0x13]
maxps xmm1, [4 * rcx + 0x1235]
maxps xmm1, [4 * rcx + 0x12345679]
maxps xmm1, [rbp]
maxps xmm1, [rbp + 0x12]
maxps xmm1, [rbp + 0x1234]
maxps xmm1, [rbp + 0x12345678]
maxps xmm1, [4 * rbp]
maxps xmm1, [4 * rbp + 0x12]
maxps xmm1, [4 * rbp + 0x1234]
maxps xmm1, [4 * rbp + 0x12345678]
maxps xmm1, [rbx + 4 * rbp]
maxps xmm1, [rbx + 4 * rbp + 0x12]
maxps xmm1, [rbx + 4 * rbp + 0x1234]
maxps xmm1, [rbx + 4 * rbp + 0x12345678]
maxps xmm1, [rsp]
maxps xmm1, [rsp + 0x12]
maxps xmm1, [rsp + 0x1234]
maxps xmm1, [rsp + 0x12345678]
maxps xmm1, [rsp + rax]
maxps xmm1, [rsp + rbp]
maxps xmm1, [rsp + 2*rbp]
maxps xmm1, [rsp + 4*rbp]
maxps xmm1, [rsp + 8*rbp]
maxps xmm1, [rax]
maxps xmm1, [rcx]
maxps xmm1, [rdx]
maxps xmm1, [rbx]
maxps xmm1, [rsp]
maxps xmm1, [rbp]
maxps xmm1, [rsi]
maxps xmm1, [rdi]
maxps xmm1, [rax + 2*rax]
maxps xmm1, [rcx + 2*rcx]
maxps xmm1, [rdx + 2*rdx]
maxps xmm1, [rbx + 2*rbx]
maxps xmm1, [rbp + 2*rbp]
maxps xmm1, [rsi + 2*rsi]
maxps xmm1, [rdi + 2*rdi]
maxps xmm2, [rip + 0x13]
maxps xmm2, [rip + 0x1235]
maxps xmm2, [rip + 0x12345679]
maxps xmm2, [rbx]
maxps xmm2, [rcx + 0x14]
maxps xmm2, [rdx + 0x15]
maxps xmm2, [rbx + 0x1235]
maxps xmm2, [rbx + 0x12345679]
maxps xmm2, [rbx + rcx]
maxps xmm2, [rbx + 4 * rcx]
maxps xmm2, [rbx + rcx + 0x13]
maxps xmm2, [rbx + rcx + 0x1235]
maxps xmm2, [rbx + rcx + 0x12345679]
maxps xmm2, [rbx + 4 * rcx + 0x13]
maxps xmm2, [rbx + 4 * rcx + 0x1235]
maxps xmm2, [rbx + 8 * rcx + 0x12345679]
maxps xmm2, [4 * rcx]
maxps xmm2, [4 * rcx + 0x13]
maxps xmm2, [4 * rcx + 0x1235]
maxps xmm2, [4 * rcx + 0x12345679]
maxps xmm2, [rbp]
maxps xmm2, [rbp + 0x12]
maxps xmm2, [rbp + 0x1234]
maxps xmm2, [rbp + 0x12345678]
maxps xmm2, [4 * rbp]
maxps xmm2, [4 * rbp + 0x12]
maxps xmm2, [4 * rbp + 0x1234]
maxps xmm2, [4 * rbp + 0x12345678]
maxps xmm2, [rbx + 4 * rbp]
maxps xmm2, [rbx + 4 * rbp + 0x12]
maxps xmm2, [rbx + 4 * rbp + 0x1234]
maxps xmm2, [rbx + 4 * rbp + 0x12345678]
maxps xmm2, [rsp]
maxps xmm2, [rsp + 0x12]
maxps xmm2, [rsp + 0x1234]
maxps xmm2, [rsp + 0x12345678]
maxps xmm2, [rsp + rax]
maxps xmm2, [rsp + rbp]
maxps xmm2, [rsp + 2*rbp]
maxps xmm2, [rsp + 4*rbp]
maxps xmm2, [rsp + 8*rbp]
maxps xmm2, [rax]
maxps xmm2, [rcx]
maxps xmm2, [rdx]
maxps xmm2, [rbx]
maxps xmm2, [rsp]
maxps xmm2, [rbp]
maxps xmm2, [rsi]
maxps xmm2, [rdi]
maxps xmm2, [rax + 2*rax]
maxps xmm2, [rcx + 2*rcx]
maxps xmm2, [rdx + 2*rdx]
maxps xmm2, [rbx + 2*rbx]
maxps xmm2, [rbp + 2*rbp]
maxps xmm2, [rsi + 2*rsi]
maxps xmm2, [rdi + 2*rdi]
maxps xmm3, [rip + 0x13]
maxps xmm3, [rip + 0x1235]
maxps xmm3, [rip + 0x12345679]
maxps xmm3, [rbx]
maxps xmm3, [rcx + 0x14]
maxps xmm3, [rdx + 0x15]
maxps xmm3, [rbx + 0x1235]
maxps xmm3, [rbx + 0x12345679]
maxps xmm3, [rbx + rcx]
maxps xmm3, [rbx + 4 * rcx]
maxps xmm3, [rbx + rcx + 0x13]
maxps xmm3, [rbx + rcx + 0x1235]
maxps xmm3, [rbx + rcx + 0x12345679]
maxps xmm3, [rbx + 4 * rcx + 0x13]
maxps xmm3, [rbx + 4 * rcx + 0x1235]
maxps xmm3, [rbx + 8 * rcx + 0x12345679]
maxps xmm3, [4 * rcx]
maxps xmm3, [4 * rcx + 0x13]
maxps xmm3, [4 * rcx + 0x1235]
maxps xmm3, [4 * rcx + 0x12345679]
maxps xmm3, [rbp]
maxps xmm3, [rbp + 0x12]
maxps xmm3, [rbp + 0x1234]
maxps xmm3, [rbp + 0x12345678]
maxps xmm3, [4 * rbp]
maxps xmm3, [4 * rbp + 0x12]
maxps xmm3, [4 * rbp + 0x1234]
maxps xmm3, [4 * rbp + 0x12345678]
maxps xmm3, [rbx + 4 * rbp]
maxps xmm3, [rbx + 4 * rbp + 0x12]
maxps xmm3, [rbx + 4 * rbp + 0x1234]
maxps xmm3, [rbx + 4 * rbp + 0x12345678]
maxps xmm3, [rsp]
maxps xmm3, [rsp + 0x12]
maxps xmm3, [rsp + 0x1234]
maxps xmm3, [rsp + 0x12345678]
maxps xmm3, [rsp + rax]
maxps xmm3, [rsp + rbp]
maxps xmm3, [rsp + 2*rbp]
maxps xmm3, [rsp + 4*rbp]
maxps xmm3, [rsp + 8*rbp]
maxps xmm3, [rax]
maxps xmm3, [rcx]
maxps xmm3, [rdx]
maxps xmm3, [rbx]
maxps xmm3, [rsp]
maxps xmm3, [rbp]
maxps xmm3, [rsi]
maxps xmm3, [rdi]
maxps xmm3, [rax + 2*rax]
maxps xmm3, [rcx + 2*rcx]
maxps xmm3, [rdx + 2*rdx]
maxps xmm3, [rbx + 2*rbx]
maxps xmm3, [rbp + 2*rbp]
maxps xmm3, [rsi + 2*rsi]
maxps xmm3, [rdi + 2*rdi]
maxps xmm4, [rip + 0x13]
maxps xmm4, [rip + 0x1235]
maxps xmm4, [rip + 0x12345679]
maxps xmm4, [rbx]
maxps xmm4, [rcx + 0x14]
maxps xmm4, [rdx + 0x15]
maxps xmm4, [rbx + 0x1235]
maxps xmm4, [rbx + 0x12345679]
maxps xmm4, [rbx + rcx]
maxps xmm4, [rbx + 4 * rcx]
maxps xmm4, [rbx + rcx + 0x13]
maxps xmm4, [rbx + rcx + 0x1235]
maxps xmm4, [rbx + rcx + 0x12345679]
maxps xmm4, [rbx + 4 * rcx + 0x13]
maxps xmm4, [rbx + 4 * rcx + 0x1235]
maxps xmm4, [rbx + 8 * rcx + 0x12345679]
maxps xmm4, [4 * rcx]
maxps xmm4, [4 * rcx + 0x13]
maxps xmm4, [4 * rcx + 0x1235]
maxps xmm4, [4 * rcx + 0x12345679]
maxps xmm4, [rbp]
maxps xmm4, [rbp + 0x12]
maxps xmm4, [rbp + 0x1234]
maxps xmm4, [rbp + 0x12345678]
maxps xmm4, [4 * rbp]
maxps xmm4, [4 * rbp + 0x12]
maxps xmm4, [4 * rbp + 0x1234]
maxps xmm4, [4 * rbp + 0x12345678]
maxps xmm4, [rbx + 4 * rbp]
maxps xmm4, [rbx + 4 * rbp + 0x12]
maxps xmm4, [rbx + 4 * rbp + 0x1234]
maxps xmm4, [rbx + 4 * rbp + 0x12345678]
maxps xmm4, [rsp]
maxps xmm4, [rsp + 0x12]
maxps xmm4, [rsp + 0x1234]
maxps xmm4, [rsp + 0x12345678]
maxps xmm4, [rsp + rax]
maxps xmm4, [rsp + rbp]
maxps xmm4, [rsp + 2*rbp]
maxps xmm4, [rsp + 4*rbp]
maxps xmm4, [rsp + 8*rbp]
maxps xmm4, [rax]
maxps xmm4, [rcx]
maxps xmm4, [rdx]
maxps xmm4, [rbx]
maxps xmm4, [rsp]
maxps xmm4, [rbp]
maxps xmm4, [rsi]
maxps xmm4, [rdi]
maxps xmm4, [rax + 2*rax]
maxps xmm4, [rcx + 2*rcx]
maxps xmm4, [rdx + 2*rdx]
maxps xmm4, [rbx + 2*rbx]
maxps xmm4, [rbp + 2*rbp]
maxps xmm4, [rsi + 2*rsi]
maxps xmm4, [rdi + 2*rdi]
maxps xmm5, [rip + 0x13]
maxps xmm5, [rip + 0x1235]
maxps xmm5, [rip + 0x12345679]
maxps xmm5, [rbx]
maxps xmm5, [rcx + 0x14]
maxps xmm5, [rdx + 0x15]
maxps xmm5, [rbx + 0x1235]
maxps xmm5, [rbx + 0x12345679]
maxps xmm5, [rbx + rcx]
maxps xmm5, [rbx + 4 * rcx]
maxps xmm5, [rbx + rcx + 0x13]
maxps xmm5, [rbx + rcx + 0x1235]
maxps xmm5, [rbx + rcx + 0x12345679]
maxps xmm5, [rbx + 4 * rcx + 0x13]
maxps xmm5, [rbx + 4 * rcx + 0x1235]
maxps xmm5, [rbx + 8 * rcx + 0x12345679]
maxps xmm5, [4 * rcx]
maxps xmm5, [4 * rcx + 0x13]
maxps xmm5, [4 * rcx + 0x1235]
maxps xmm5, [4 * rcx + 0x12345679]
maxps xmm5, [rbp]
maxps xmm5, [rbp + 0x12]
maxps xmm5, [rbp + 0x1234]
maxps xmm5, [rbp + 0x12345678]
maxps xmm5, [4 * rbp]
maxps xmm5, [4 * rbp + 0x12]
maxps xmm5, [4 * rbp + 0x1234]
maxps xmm5, [4 * rbp + 0x12345678]
maxps xmm5, [rbx + 4 * rbp]
maxps xmm5, [rbx + 4 * rbp + 0x12]
maxps xmm5, [rbx + 4 * rbp + 0x1234]
maxps xmm5, [rbx + 4 * rbp + 0x12345678]
maxps xmm5, [rsp]
maxps xmm5, [rsp + 0x12]
maxps xmm5, [rsp + 0x1234]
maxps xmm5, [rsp + 0x12345678]
maxps xmm5, [rsp + rax]
maxps xmm5, [rsp + rbp]
maxps xmm5, [rsp + 2*rbp]
maxps xmm5, [rsp + 4*rbp]
maxps xmm5, [rsp + 8*rbp]
maxps xmm5, [rax]
maxps xmm5, [rcx]
maxps xmm5, [rdx]
maxps xmm5, [rbx]
maxps xmm5, [rsp]
maxps xmm5, [rbp]
maxps xmm5, [rsi]
maxps xmm5, [rdi]
maxps xmm5, [rax + 2*rax]
maxps xmm5, [rcx + 2*rcx]
maxps xmm5, [rdx + 2*rdx]
maxps xmm5, [rbx + 2*rbx]
maxps xmm5, [rbp + 2*rbp]
maxps xmm5, [rsi + 2*rsi]
maxps xmm5, [rdi + 2*rdi]
maxps xmm6, [rip + 0x13]
maxps xmm6, [rip + 0x1235]
maxps xmm6, [rip + 0x12345679]
maxps xmm6, [rbx]
maxps xmm6, [rcx + 0x14]
maxps xmm6, [rdx + 0x15]
maxps xmm6, [rbx + 0x1235]
maxps xmm6, [rbx + 0x12345679]
maxps xmm6, [rbx + rcx]
maxps xmm6, [rbx + 4 * rcx]
maxps xmm6, [rbx + rcx + 0x13]
maxps xmm6, [rbx + rcx + 0x1235]
maxps xmm6, [rbx + rcx + 0x12345679]
maxps xmm6, [rbx + 4 * rcx + 0x13]
maxps xmm6, [rbx + 4 * rcx + 0x1235]
maxps xmm6, [rbx + 8 * rcx + 0x12345679]
maxps xmm6, [4 * rcx]
maxps xmm6, [4 * rcx + 0x13]
maxps xmm6, [4 * rcx + 0x1235]
maxps xmm6, [4 * rcx + 0x12345679]
maxps xmm6, [rbp]
maxps xmm6, [rbp + 0x12]
maxps xmm6, [rbp + 0x1234]
maxps xmm6, [rbp + 0x12345678]
maxps xmm6, [4 * rbp]
maxps xmm6, [4 * rbp + 0x12]
maxps xmm6, [4 * rbp + 0x1234]
maxps xmm6, [4 * rbp + 0x12345678]
maxps xmm6, [rbx + 4 * rbp]
maxps xmm6, [rbx + 4 * rbp + 0x12]
maxps xmm6, [rbx + 4 * rbp + 0x1234]
maxps xmm6, [rbx + 4 * rbp + 0x12345678]
maxps xmm6, [rsp]
maxps xmm6, [rsp + 0x12]
maxps xmm6, [rsp + 0x1234]
maxps xmm6, [rsp + 0x12345678]
maxps xmm6, [rsp + rax]
maxps xmm6, [rsp + rbp]
maxps xmm6, [rsp + 2*rbp]
maxps xmm6, [rsp + 4*rbp]
maxps xmm6, [rsp + 8*rbp]
maxps xmm6, [rax]
maxps xmm6, [rcx]
maxps xmm6, [rdx]
maxps xmm6, [rbx]
maxps xmm6, [rsp]
maxps xmm6, [rbp]
maxps xmm6, [rsi]
maxps xmm6, [rdi]
maxps xmm6, [rax + 2*rax]
maxps xmm6, [rcx + 2*rcx]
maxps xmm6, [rdx + 2*rdx]
maxps xmm6, [rbx + 2*rbx]
maxps xmm6, [rbp + 2*rbp]
maxps xmm6, [rsi + 2*rsi]
maxps xmm6, [rdi + 2*rdi]
maxps xmm7, [rip + 0x13]
maxps xmm7, [rip + 0x1235]
maxps xmm7, [rip + 0x12345679]
maxps xmm7, [rbx]
maxps xmm7, [rcx + 0x14]
maxps xmm7, [rdx + 0x15]
maxps xmm7, [rbx + 0x1235]
maxps xmm7, [rbx + 0x12345679]
maxps xmm7, [rbx + rcx]
maxps xmm7, [rbx + 4 * rcx]
maxps xmm7, [rbx + rcx + 0x13]
maxps xmm7, [rbx + rcx + 0x1235]
maxps xmm7, [rbx + rcx + 0x12345679]
maxps xmm7, [rbx + 4 * rcx + 0x13]
maxps xmm7, [rbx + 4 * rcx + 0x1235]
maxps xmm7, [rbx + 8 * rcx + 0x12345679]
maxps xmm7, [4 * rcx]
maxps xmm7, [4 * rcx + 0x13]
maxps xmm7, [4 * rcx + 0x1235]
maxps xmm7, [4 * rcx + 0x12345679]
maxps xmm7, [rbp]
maxps xmm7, [rbp + 0x12]
maxps xmm7, [rbp + 0x1234]
maxps xmm7, [rbp + 0x12345678]
maxps xmm7, [4 * rbp]
maxps xmm7, [4 * rbp + 0x12]
maxps xmm7, [4 * rbp + 0x1234]
maxps xmm7, [4 * rbp + 0x12345678]
maxps xmm7, [rbx + 4 * rbp]
maxps xmm7, [rbx + 4 * rbp + 0x12]
maxps xmm7, [rbx + 4 * rbp + 0x1234]
maxps xmm7, [rbx + 4 * rbp + 0x12345678]
maxps xmm7, [rsp]
maxps xmm7, [rsp + 0x12]
maxps xmm7, [rsp + 0x1234]
maxps xmm7, [rsp + 0x12345678]
maxps xmm7, [rsp + rax]
maxps xmm7, [rsp + rbp]
maxps xmm7, [rsp + 2*rbp]
maxps xmm7, [rsp + 4*rbp]
maxps xmm7, [rsp + 8*rbp]
maxps xmm7, [rax]
maxps xmm7, [rcx]
maxps xmm7, [rdx]
maxps xmm7, [rbx]
maxps xmm7, [rsp]
maxps xmm7, [rbp]
maxps xmm7, [rsi]
maxps xmm7, [rdi]
maxps xmm7, [rax + 2*rax]
maxps xmm7, [rcx + 2*rcx]
maxps xmm7, [rdx + 2*rdx]
maxps xmm7, [rbx + 2*rbx]
maxps xmm7, [rbp + 2*rbp]
maxps xmm7, [rsi + 2*rsi]
maxps xmm7, [rdi + 2*rdi]

