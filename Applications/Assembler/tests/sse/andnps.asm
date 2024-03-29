use64
; ------------------------------------------------------------------------------
; opcode xmm,xmm
; ------------------------------------------------------------------------------
andnps xmm0, xmm0
andnps xmm0, xmm1
andnps xmm0, xmm2
andnps xmm0, xmm3
andnps xmm0, xmm4
andnps xmm0, xmm5
andnps xmm0, xmm6
andnps xmm0, xmm7
andnps xmm1, xmm0
andnps xmm1, xmm1
andnps xmm1, xmm2
andnps xmm1, xmm3
andnps xmm1, xmm4
andnps xmm1, xmm5
andnps xmm1, xmm6
andnps xmm1, xmm7
andnps xmm2, xmm0
andnps xmm2, xmm1
andnps xmm2, xmm2
andnps xmm2, xmm3
andnps xmm2, xmm4
andnps xmm2, xmm5
andnps xmm2, xmm6
andnps xmm2, xmm7
andnps xmm3, xmm0
andnps xmm3, xmm1
andnps xmm3, xmm2
andnps xmm3, xmm3
andnps xmm3, xmm4
andnps xmm3, xmm5
andnps xmm3, xmm6
andnps xmm3, xmm7
andnps xmm4, xmm0
andnps xmm4, xmm1
andnps xmm4, xmm2
andnps xmm4, xmm3
andnps xmm4, xmm4
andnps xmm4, xmm5
andnps xmm4, xmm6
andnps xmm4, xmm7
andnps xmm5, xmm0
andnps xmm5, xmm1
andnps xmm5, xmm2
andnps xmm5, xmm3
andnps xmm5, xmm4
andnps xmm5, xmm5
andnps xmm5, xmm6
andnps xmm5, xmm7
andnps xmm6, xmm0
andnps xmm6, xmm1
andnps xmm6, xmm2
andnps xmm6, xmm3
andnps xmm6, xmm4
andnps xmm6, xmm5
andnps xmm6, xmm6
andnps xmm6, xmm7
andnps xmm7, xmm0
andnps xmm7, xmm1
andnps xmm7, xmm2
andnps xmm7, xmm3
andnps xmm7, xmm4
andnps xmm7, xmm5
andnps xmm7, xmm6
andnps xmm7, xmm7

; ------------------------------------------------------------------------------
; opcode xmm,m128
; ------------------------------------------------------------------------------
andnps xmm0, [rip + 0x13]
andnps xmm0, [rip + 0x1235]
andnps xmm0, [rip + 0x12345679]
andnps xmm0, [rbx]
andnps xmm0, [rcx + 0x14]
andnps xmm0, [rdx + 0x15]
andnps xmm0, [rbx + 0x1235]
andnps xmm0, [rbx + 0x12345679]
andnps xmm0, [rbx + rcx]
andnps xmm0, [rbx + 4 * rcx]
andnps xmm0, [rbx + rcx + 0x13]
andnps xmm0, [rbx + rcx + 0x1235]
andnps xmm0, [rbx + rcx + 0x12345679]
andnps xmm0, [rbx + 4 * rcx + 0x13]
andnps xmm0, [rbx + 4 * rcx + 0x1235]
andnps xmm0, [rbx + 8 * rcx + 0x12345679]
andnps xmm0, [4 * rcx]
andnps xmm0, [4 * rcx + 0x13]
andnps xmm0, [4 * rcx + 0x1235]
andnps xmm0, [4 * rcx + 0x12345679]
andnps xmm0, [rbp]
andnps xmm0, [rbp + 0x12]
andnps xmm0, [rbp + 0x1234]
andnps xmm0, [rbp + 0x12345678]
andnps xmm0, [4 * rbp]
andnps xmm0, [4 * rbp + 0x12]
andnps xmm0, [4 * rbp + 0x1234]
andnps xmm0, [4 * rbp + 0x12345678]
andnps xmm0, [rbx + 4 * rbp]
andnps xmm0, [rbx + 4 * rbp + 0x12]
andnps xmm0, [rbx + 4 * rbp + 0x1234]
andnps xmm0, [rbx + 4 * rbp + 0x12345678]
andnps xmm0, [rsp]
andnps xmm0, [rsp + 0x12]
andnps xmm0, [rsp + 0x1234]
andnps xmm0, [rsp + 0x12345678]
andnps xmm0, [rsp + rax]
andnps xmm0, [rsp + rbp]
andnps xmm0, [rsp + 2*rbp]
andnps xmm0, [rsp + 4*rbp]
andnps xmm0, [rsp + 8*rbp]
andnps xmm0, [rax]
andnps xmm0, [rcx]
andnps xmm0, [rdx]
andnps xmm0, [rbx]
andnps xmm0, [rsp]
andnps xmm0, [rbp]
andnps xmm0, [rsi]
andnps xmm0, [rdi]
andnps xmm0, [rax + 2*rax]
andnps xmm0, [rcx + 2*rcx]
andnps xmm0, [rdx + 2*rdx]
andnps xmm0, [rbx + 2*rbx]
andnps xmm0, [rbp + 2*rbp]
andnps xmm0, [rsi + 2*rsi]
andnps xmm0, [rdi + 2*rdi]
andnps xmm1, [rip + 0x13]
andnps xmm1, [rip + 0x1235]
andnps xmm1, [rip + 0x12345679]
andnps xmm1, [rbx]
andnps xmm1, [rcx + 0x14]
andnps xmm1, [rdx + 0x15]
andnps xmm1, [rbx + 0x1235]
andnps xmm1, [rbx + 0x12345679]
andnps xmm1, [rbx + rcx]
andnps xmm1, [rbx + 4 * rcx]
andnps xmm1, [rbx + rcx + 0x13]
andnps xmm1, [rbx + rcx + 0x1235]
andnps xmm1, [rbx + rcx + 0x12345679]
andnps xmm1, [rbx + 4 * rcx + 0x13]
andnps xmm1, [rbx + 4 * rcx + 0x1235]
andnps xmm1, [rbx + 8 * rcx + 0x12345679]
andnps xmm1, [4 * rcx]
andnps xmm1, [4 * rcx + 0x13]
andnps xmm1, [4 * rcx + 0x1235]
andnps xmm1, [4 * rcx + 0x12345679]
andnps xmm1, [rbp]
andnps xmm1, [rbp + 0x12]
andnps xmm1, [rbp + 0x1234]
andnps xmm1, [rbp + 0x12345678]
andnps xmm1, [4 * rbp]
andnps xmm1, [4 * rbp + 0x12]
andnps xmm1, [4 * rbp + 0x1234]
andnps xmm1, [4 * rbp + 0x12345678]
andnps xmm1, [rbx + 4 * rbp]
andnps xmm1, [rbx + 4 * rbp + 0x12]
andnps xmm1, [rbx + 4 * rbp + 0x1234]
andnps xmm1, [rbx + 4 * rbp + 0x12345678]
andnps xmm1, [rsp]
andnps xmm1, [rsp + 0x12]
andnps xmm1, [rsp + 0x1234]
andnps xmm1, [rsp + 0x12345678]
andnps xmm1, [rsp + rax]
andnps xmm1, [rsp + rbp]
andnps xmm1, [rsp + 2*rbp]
andnps xmm1, [rsp + 4*rbp]
andnps xmm1, [rsp + 8*rbp]
andnps xmm1, [rax]
andnps xmm1, [rcx]
andnps xmm1, [rdx]
andnps xmm1, [rbx]
andnps xmm1, [rsp]
andnps xmm1, [rbp]
andnps xmm1, [rsi]
andnps xmm1, [rdi]
andnps xmm1, [rax + 2*rax]
andnps xmm1, [rcx + 2*rcx]
andnps xmm1, [rdx + 2*rdx]
andnps xmm1, [rbx + 2*rbx]
andnps xmm1, [rbp + 2*rbp]
andnps xmm1, [rsi + 2*rsi]
andnps xmm1, [rdi + 2*rdi]
andnps xmm2, [rip + 0x13]
andnps xmm2, [rip + 0x1235]
andnps xmm2, [rip + 0x12345679]
andnps xmm2, [rbx]
andnps xmm2, [rcx + 0x14]
andnps xmm2, [rdx + 0x15]
andnps xmm2, [rbx + 0x1235]
andnps xmm2, [rbx + 0x12345679]
andnps xmm2, [rbx + rcx]
andnps xmm2, [rbx + 4 * rcx]
andnps xmm2, [rbx + rcx + 0x13]
andnps xmm2, [rbx + rcx + 0x1235]
andnps xmm2, [rbx + rcx + 0x12345679]
andnps xmm2, [rbx + 4 * rcx + 0x13]
andnps xmm2, [rbx + 4 * rcx + 0x1235]
andnps xmm2, [rbx + 8 * rcx + 0x12345679]
andnps xmm2, [4 * rcx]
andnps xmm2, [4 * rcx + 0x13]
andnps xmm2, [4 * rcx + 0x1235]
andnps xmm2, [4 * rcx + 0x12345679]
andnps xmm2, [rbp]
andnps xmm2, [rbp + 0x12]
andnps xmm2, [rbp + 0x1234]
andnps xmm2, [rbp + 0x12345678]
andnps xmm2, [4 * rbp]
andnps xmm2, [4 * rbp + 0x12]
andnps xmm2, [4 * rbp + 0x1234]
andnps xmm2, [4 * rbp + 0x12345678]
andnps xmm2, [rbx + 4 * rbp]
andnps xmm2, [rbx + 4 * rbp + 0x12]
andnps xmm2, [rbx + 4 * rbp + 0x1234]
andnps xmm2, [rbx + 4 * rbp + 0x12345678]
andnps xmm2, [rsp]
andnps xmm2, [rsp + 0x12]
andnps xmm2, [rsp + 0x1234]
andnps xmm2, [rsp + 0x12345678]
andnps xmm2, [rsp + rax]
andnps xmm2, [rsp + rbp]
andnps xmm2, [rsp + 2*rbp]
andnps xmm2, [rsp + 4*rbp]
andnps xmm2, [rsp + 8*rbp]
andnps xmm2, [rax]
andnps xmm2, [rcx]
andnps xmm2, [rdx]
andnps xmm2, [rbx]
andnps xmm2, [rsp]
andnps xmm2, [rbp]
andnps xmm2, [rsi]
andnps xmm2, [rdi]
andnps xmm2, [rax + 2*rax]
andnps xmm2, [rcx + 2*rcx]
andnps xmm2, [rdx + 2*rdx]
andnps xmm2, [rbx + 2*rbx]
andnps xmm2, [rbp + 2*rbp]
andnps xmm2, [rsi + 2*rsi]
andnps xmm2, [rdi + 2*rdi]
andnps xmm3, [rip + 0x13]
andnps xmm3, [rip + 0x1235]
andnps xmm3, [rip + 0x12345679]
andnps xmm3, [rbx]
andnps xmm3, [rcx + 0x14]
andnps xmm3, [rdx + 0x15]
andnps xmm3, [rbx + 0x1235]
andnps xmm3, [rbx + 0x12345679]
andnps xmm3, [rbx + rcx]
andnps xmm3, [rbx + 4 * rcx]
andnps xmm3, [rbx + rcx + 0x13]
andnps xmm3, [rbx + rcx + 0x1235]
andnps xmm3, [rbx + rcx + 0x12345679]
andnps xmm3, [rbx + 4 * rcx + 0x13]
andnps xmm3, [rbx + 4 * rcx + 0x1235]
andnps xmm3, [rbx + 8 * rcx + 0x12345679]
andnps xmm3, [4 * rcx]
andnps xmm3, [4 * rcx + 0x13]
andnps xmm3, [4 * rcx + 0x1235]
andnps xmm3, [4 * rcx + 0x12345679]
andnps xmm3, [rbp]
andnps xmm3, [rbp + 0x12]
andnps xmm3, [rbp + 0x1234]
andnps xmm3, [rbp + 0x12345678]
andnps xmm3, [4 * rbp]
andnps xmm3, [4 * rbp + 0x12]
andnps xmm3, [4 * rbp + 0x1234]
andnps xmm3, [4 * rbp + 0x12345678]
andnps xmm3, [rbx + 4 * rbp]
andnps xmm3, [rbx + 4 * rbp + 0x12]
andnps xmm3, [rbx + 4 * rbp + 0x1234]
andnps xmm3, [rbx + 4 * rbp + 0x12345678]
andnps xmm3, [rsp]
andnps xmm3, [rsp + 0x12]
andnps xmm3, [rsp + 0x1234]
andnps xmm3, [rsp + 0x12345678]
andnps xmm3, [rsp + rax]
andnps xmm3, [rsp + rbp]
andnps xmm3, [rsp + 2*rbp]
andnps xmm3, [rsp + 4*rbp]
andnps xmm3, [rsp + 8*rbp]
andnps xmm3, [rax]
andnps xmm3, [rcx]
andnps xmm3, [rdx]
andnps xmm3, [rbx]
andnps xmm3, [rsp]
andnps xmm3, [rbp]
andnps xmm3, [rsi]
andnps xmm3, [rdi]
andnps xmm3, [rax + 2*rax]
andnps xmm3, [rcx + 2*rcx]
andnps xmm3, [rdx + 2*rdx]
andnps xmm3, [rbx + 2*rbx]
andnps xmm3, [rbp + 2*rbp]
andnps xmm3, [rsi + 2*rsi]
andnps xmm3, [rdi + 2*rdi]
andnps xmm4, [rip + 0x13]
andnps xmm4, [rip + 0x1235]
andnps xmm4, [rip + 0x12345679]
andnps xmm4, [rbx]
andnps xmm4, [rcx + 0x14]
andnps xmm4, [rdx + 0x15]
andnps xmm4, [rbx + 0x1235]
andnps xmm4, [rbx + 0x12345679]
andnps xmm4, [rbx + rcx]
andnps xmm4, [rbx + 4 * rcx]
andnps xmm4, [rbx + rcx + 0x13]
andnps xmm4, [rbx + rcx + 0x1235]
andnps xmm4, [rbx + rcx + 0x12345679]
andnps xmm4, [rbx + 4 * rcx + 0x13]
andnps xmm4, [rbx + 4 * rcx + 0x1235]
andnps xmm4, [rbx + 8 * rcx + 0x12345679]
andnps xmm4, [4 * rcx]
andnps xmm4, [4 * rcx + 0x13]
andnps xmm4, [4 * rcx + 0x1235]
andnps xmm4, [4 * rcx + 0x12345679]
andnps xmm4, [rbp]
andnps xmm4, [rbp + 0x12]
andnps xmm4, [rbp + 0x1234]
andnps xmm4, [rbp + 0x12345678]
andnps xmm4, [4 * rbp]
andnps xmm4, [4 * rbp + 0x12]
andnps xmm4, [4 * rbp + 0x1234]
andnps xmm4, [4 * rbp + 0x12345678]
andnps xmm4, [rbx + 4 * rbp]
andnps xmm4, [rbx + 4 * rbp + 0x12]
andnps xmm4, [rbx + 4 * rbp + 0x1234]
andnps xmm4, [rbx + 4 * rbp + 0x12345678]
andnps xmm4, [rsp]
andnps xmm4, [rsp + 0x12]
andnps xmm4, [rsp + 0x1234]
andnps xmm4, [rsp + 0x12345678]
andnps xmm4, [rsp + rax]
andnps xmm4, [rsp + rbp]
andnps xmm4, [rsp + 2*rbp]
andnps xmm4, [rsp + 4*rbp]
andnps xmm4, [rsp + 8*rbp]
andnps xmm4, [rax]
andnps xmm4, [rcx]
andnps xmm4, [rdx]
andnps xmm4, [rbx]
andnps xmm4, [rsp]
andnps xmm4, [rbp]
andnps xmm4, [rsi]
andnps xmm4, [rdi]
andnps xmm4, [rax + 2*rax]
andnps xmm4, [rcx + 2*rcx]
andnps xmm4, [rdx + 2*rdx]
andnps xmm4, [rbx + 2*rbx]
andnps xmm4, [rbp + 2*rbp]
andnps xmm4, [rsi + 2*rsi]
andnps xmm4, [rdi + 2*rdi]
andnps xmm5, [rip + 0x13]
andnps xmm5, [rip + 0x1235]
andnps xmm5, [rip + 0x12345679]
andnps xmm5, [rbx]
andnps xmm5, [rcx + 0x14]
andnps xmm5, [rdx + 0x15]
andnps xmm5, [rbx + 0x1235]
andnps xmm5, [rbx + 0x12345679]
andnps xmm5, [rbx + rcx]
andnps xmm5, [rbx + 4 * rcx]
andnps xmm5, [rbx + rcx + 0x13]
andnps xmm5, [rbx + rcx + 0x1235]
andnps xmm5, [rbx + rcx + 0x12345679]
andnps xmm5, [rbx + 4 * rcx + 0x13]
andnps xmm5, [rbx + 4 * rcx + 0x1235]
andnps xmm5, [rbx + 8 * rcx + 0x12345679]
andnps xmm5, [4 * rcx]
andnps xmm5, [4 * rcx + 0x13]
andnps xmm5, [4 * rcx + 0x1235]
andnps xmm5, [4 * rcx + 0x12345679]
andnps xmm5, [rbp]
andnps xmm5, [rbp + 0x12]
andnps xmm5, [rbp + 0x1234]
andnps xmm5, [rbp + 0x12345678]
andnps xmm5, [4 * rbp]
andnps xmm5, [4 * rbp + 0x12]
andnps xmm5, [4 * rbp + 0x1234]
andnps xmm5, [4 * rbp + 0x12345678]
andnps xmm5, [rbx + 4 * rbp]
andnps xmm5, [rbx + 4 * rbp + 0x12]
andnps xmm5, [rbx + 4 * rbp + 0x1234]
andnps xmm5, [rbx + 4 * rbp + 0x12345678]
andnps xmm5, [rsp]
andnps xmm5, [rsp + 0x12]
andnps xmm5, [rsp + 0x1234]
andnps xmm5, [rsp + 0x12345678]
andnps xmm5, [rsp + rax]
andnps xmm5, [rsp + rbp]
andnps xmm5, [rsp + 2*rbp]
andnps xmm5, [rsp + 4*rbp]
andnps xmm5, [rsp + 8*rbp]
andnps xmm5, [rax]
andnps xmm5, [rcx]
andnps xmm5, [rdx]
andnps xmm5, [rbx]
andnps xmm5, [rsp]
andnps xmm5, [rbp]
andnps xmm5, [rsi]
andnps xmm5, [rdi]
andnps xmm5, [rax + 2*rax]
andnps xmm5, [rcx + 2*rcx]
andnps xmm5, [rdx + 2*rdx]
andnps xmm5, [rbx + 2*rbx]
andnps xmm5, [rbp + 2*rbp]
andnps xmm5, [rsi + 2*rsi]
andnps xmm5, [rdi + 2*rdi]
andnps xmm6, [rip + 0x13]
andnps xmm6, [rip + 0x1235]
andnps xmm6, [rip + 0x12345679]
andnps xmm6, [rbx]
andnps xmm6, [rcx + 0x14]
andnps xmm6, [rdx + 0x15]
andnps xmm6, [rbx + 0x1235]
andnps xmm6, [rbx + 0x12345679]
andnps xmm6, [rbx + rcx]
andnps xmm6, [rbx + 4 * rcx]
andnps xmm6, [rbx + rcx + 0x13]
andnps xmm6, [rbx + rcx + 0x1235]
andnps xmm6, [rbx + rcx + 0x12345679]
andnps xmm6, [rbx + 4 * rcx + 0x13]
andnps xmm6, [rbx + 4 * rcx + 0x1235]
andnps xmm6, [rbx + 8 * rcx + 0x12345679]
andnps xmm6, [4 * rcx]
andnps xmm6, [4 * rcx + 0x13]
andnps xmm6, [4 * rcx + 0x1235]
andnps xmm6, [4 * rcx + 0x12345679]
andnps xmm6, [rbp]
andnps xmm6, [rbp + 0x12]
andnps xmm6, [rbp + 0x1234]
andnps xmm6, [rbp + 0x12345678]
andnps xmm6, [4 * rbp]
andnps xmm6, [4 * rbp + 0x12]
andnps xmm6, [4 * rbp + 0x1234]
andnps xmm6, [4 * rbp + 0x12345678]
andnps xmm6, [rbx + 4 * rbp]
andnps xmm6, [rbx + 4 * rbp + 0x12]
andnps xmm6, [rbx + 4 * rbp + 0x1234]
andnps xmm6, [rbx + 4 * rbp + 0x12345678]
andnps xmm6, [rsp]
andnps xmm6, [rsp + 0x12]
andnps xmm6, [rsp + 0x1234]
andnps xmm6, [rsp + 0x12345678]
andnps xmm6, [rsp + rax]
andnps xmm6, [rsp + rbp]
andnps xmm6, [rsp + 2*rbp]
andnps xmm6, [rsp + 4*rbp]
andnps xmm6, [rsp + 8*rbp]
andnps xmm6, [rax]
andnps xmm6, [rcx]
andnps xmm6, [rdx]
andnps xmm6, [rbx]
andnps xmm6, [rsp]
andnps xmm6, [rbp]
andnps xmm6, [rsi]
andnps xmm6, [rdi]
andnps xmm6, [rax + 2*rax]
andnps xmm6, [rcx + 2*rcx]
andnps xmm6, [rdx + 2*rdx]
andnps xmm6, [rbx + 2*rbx]
andnps xmm6, [rbp + 2*rbp]
andnps xmm6, [rsi + 2*rsi]
andnps xmm6, [rdi + 2*rdi]
andnps xmm7, [rip + 0x13]
andnps xmm7, [rip + 0x1235]
andnps xmm7, [rip + 0x12345679]
andnps xmm7, [rbx]
andnps xmm7, [rcx + 0x14]
andnps xmm7, [rdx + 0x15]
andnps xmm7, [rbx + 0x1235]
andnps xmm7, [rbx + 0x12345679]
andnps xmm7, [rbx + rcx]
andnps xmm7, [rbx + 4 * rcx]
andnps xmm7, [rbx + rcx + 0x13]
andnps xmm7, [rbx + rcx + 0x1235]
andnps xmm7, [rbx + rcx + 0x12345679]
andnps xmm7, [rbx + 4 * rcx + 0x13]
andnps xmm7, [rbx + 4 * rcx + 0x1235]
andnps xmm7, [rbx + 8 * rcx + 0x12345679]
andnps xmm7, [4 * rcx]
andnps xmm7, [4 * rcx + 0x13]
andnps xmm7, [4 * rcx + 0x1235]
andnps xmm7, [4 * rcx + 0x12345679]
andnps xmm7, [rbp]
andnps xmm7, [rbp + 0x12]
andnps xmm7, [rbp + 0x1234]
andnps xmm7, [rbp + 0x12345678]
andnps xmm7, [4 * rbp]
andnps xmm7, [4 * rbp + 0x12]
andnps xmm7, [4 * rbp + 0x1234]
andnps xmm7, [4 * rbp + 0x12345678]
andnps xmm7, [rbx + 4 * rbp]
andnps xmm7, [rbx + 4 * rbp + 0x12]
andnps xmm7, [rbx + 4 * rbp + 0x1234]
andnps xmm7, [rbx + 4 * rbp + 0x12345678]
andnps xmm7, [rsp]
andnps xmm7, [rsp + 0x12]
andnps xmm7, [rsp + 0x1234]
andnps xmm7, [rsp + 0x12345678]
andnps xmm7, [rsp + rax]
andnps xmm7, [rsp + rbp]
andnps xmm7, [rsp + 2*rbp]
andnps xmm7, [rsp + 4*rbp]
andnps xmm7, [rsp + 8*rbp]
andnps xmm7, [rax]
andnps xmm7, [rcx]
andnps xmm7, [rdx]
andnps xmm7, [rbx]
andnps xmm7, [rsp]
andnps xmm7, [rbp]
andnps xmm7, [rsi]
andnps xmm7, [rdi]
andnps xmm7, [rax + 2*rax]
andnps xmm7, [rcx + 2*rcx]
andnps xmm7, [rdx + 2*rdx]
andnps xmm7, [rbx + 2*rbx]
andnps xmm7, [rbp + 2*rbp]
andnps xmm7, [rsi + 2*rsi]
andnps xmm7, [rdi + 2*rdi]

