use64
; ------------------------------------------------------------------------------
; opcode xmm,xmm
; ------------------------------------------------------------------------------
movups xmm0, xmm0
movups xmm0, xmm1
movups xmm0, xmm2
movups xmm0, xmm3
movups xmm0, xmm4
movups xmm0, xmm5
movups xmm0, xmm6
movups xmm0, xmm7
movups xmm1, xmm0
movups xmm1, xmm1
movups xmm1, xmm2
movups xmm1, xmm3
movups xmm1, xmm4
movups xmm1, xmm5
movups xmm1, xmm6
movups xmm1, xmm7
movups xmm2, xmm0
movups xmm2, xmm1
movups xmm2, xmm2
movups xmm2, xmm3
movups xmm2, xmm4
movups xmm2, xmm5
movups xmm2, xmm6
movups xmm2, xmm7
movups xmm3, xmm0
movups xmm3, xmm1
movups xmm3, xmm2
movups xmm3, xmm3
movups xmm3, xmm4
movups xmm3, xmm5
movups xmm3, xmm6
movups xmm3, xmm7
movups xmm4, xmm0
movups xmm4, xmm1
movups xmm4, xmm2
movups xmm4, xmm3
movups xmm4, xmm4
movups xmm4, xmm5
movups xmm4, xmm6
movups xmm4, xmm7
movups xmm5, xmm0
movups xmm5, xmm1
movups xmm5, xmm2
movups xmm5, xmm3
movups xmm5, xmm4
movups xmm5, xmm5
movups xmm5, xmm6
movups xmm5, xmm7
movups xmm6, xmm0
movups xmm6, xmm1
movups xmm6, xmm2
movups xmm6, xmm3
movups xmm6, xmm4
movups xmm6, xmm5
movups xmm6, xmm6
movups xmm6, xmm7
movups xmm7, xmm0
movups xmm7, xmm1
movups xmm7, xmm2
movups xmm7, xmm3
movups xmm7, xmm4
movups xmm7, xmm5
movups xmm7, xmm6
movups xmm7, xmm7

; ------------------------------------------------------------------------------
; opcode xmm,m128
; ------------------------------------------------------------------------------
movups xmm0, [rip + 0x13]
movups xmm0, [rip + 0x1235]
movups xmm0, [rip + 0x12345679]
movups xmm0, [rbx]
movups xmm0, [rcx + 0x14]
movups xmm0, [rdx + 0x15]
movups xmm0, [rbx + 0x1235]
movups xmm0, [rbx + 0x12345679]
movups xmm0, [rbx + rcx]
movups xmm0, [rbx + 4 * rcx]
movups xmm0, [rbx + rcx + 0x13]
movups xmm0, [rbx + rcx + 0x1235]
movups xmm0, [rbx + rcx + 0x12345679]
movups xmm0, [rbx + 4 * rcx + 0x13]
movups xmm0, [rbx + 4 * rcx + 0x1235]
movups xmm0, [rbx + 8 * rcx + 0x12345679]
movups xmm0, [4 * rcx]
movups xmm0, [4 * rcx + 0x13]
movups xmm0, [4 * rcx + 0x1235]
movups xmm0, [4 * rcx + 0x12345679]
movups xmm0, [rbp]
movups xmm0, [rbp + 0x12]
movups xmm0, [rbp + 0x1234]
movups xmm0, [rbp + 0x12345678]
movups xmm0, [4 * rbp]
movups xmm0, [4 * rbp + 0x12]
movups xmm0, [4 * rbp + 0x1234]
movups xmm0, [4 * rbp + 0x12345678]
movups xmm0, [rbx + 4 * rbp]
movups xmm0, [rbx + 4 * rbp + 0x12]
movups xmm0, [rbx + 4 * rbp + 0x1234]
movups xmm0, [rbx + 4 * rbp + 0x12345678]
movups xmm0, [rsp]
movups xmm0, [rsp + 0x12]
movups xmm0, [rsp + 0x1234]
movups xmm0, [rsp + 0x12345678]
movups xmm0, [rsp + rax]
movups xmm0, [rsp + rbp]
movups xmm0, [rsp + 2*rbp]
movups xmm0, [rsp + 4*rbp]
movups xmm0, [rsp + 8*rbp]
movups xmm0, [rax]
movups xmm0, [rcx]
movups xmm0, [rdx]
movups xmm0, [rbx]
movups xmm0, [rsp]
movups xmm0, [rbp]
movups xmm0, [rsi]
movups xmm0, [rdi]
movups xmm0, [rax + 2*rax]
movups xmm0, [rcx + 2*rcx]
movups xmm0, [rdx + 2*rdx]
movups xmm0, [rbx + 2*rbx]
movups xmm0, [rbp + 2*rbp]
movups xmm0, [rsi + 2*rsi]
movups xmm0, [rdi + 2*rdi]
movups xmm1, [rip + 0x13]
movups xmm1, [rip + 0x1235]
movups xmm1, [rip + 0x12345679]
movups xmm1, [rbx]
movups xmm1, [rcx + 0x14]
movups xmm1, [rdx + 0x15]
movups xmm1, [rbx + 0x1235]
movups xmm1, [rbx + 0x12345679]
movups xmm1, [rbx + rcx]
movups xmm1, [rbx + 4 * rcx]
movups xmm1, [rbx + rcx + 0x13]
movups xmm1, [rbx + rcx + 0x1235]
movups xmm1, [rbx + rcx + 0x12345679]
movups xmm1, [rbx + 4 * rcx + 0x13]
movups xmm1, [rbx + 4 * rcx + 0x1235]
movups xmm1, [rbx + 8 * rcx + 0x12345679]
movups xmm1, [4 * rcx]
movups xmm1, [4 * rcx + 0x13]
movups xmm1, [4 * rcx + 0x1235]
movups xmm1, [4 * rcx + 0x12345679]
movups xmm1, [rbp]
movups xmm1, [rbp + 0x12]
movups xmm1, [rbp + 0x1234]
movups xmm1, [rbp + 0x12345678]
movups xmm1, [4 * rbp]
movups xmm1, [4 * rbp + 0x12]
movups xmm1, [4 * rbp + 0x1234]
movups xmm1, [4 * rbp + 0x12345678]
movups xmm1, [rbx + 4 * rbp]
movups xmm1, [rbx + 4 * rbp + 0x12]
movups xmm1, [rbx + 4 * rbp + 0x1234]
movups xmm1, [rbx + 4 * rbp + 0x12345678]
movups xmm1, [rsp]
movups xmm1, [rsp + 0x12]
movups xmm1, [rsp + 0x1234]
movups xmm1, [rsp + 0x12345678]
movups xmm1, [rsp + rax]
movups xmm1, [rsp + rbp]
movups xmm1, [rsp + 2*rbp]
movups xmm1, [rsp + 4*rbp]
movups xmm1, [rsp + 8*rbp]
movups xmm1, [rax]
movups xmm1, [rcx]
movups xmm1, [rdx]
movups xmm1, [rbx]
movups xmm1, [rsp]
movups xmm1, [rbp]
movups xmm1, [rsi]
movups xmm1, [rdi]
movups xmm1, [rax + 2*rax]
movups xmm1, [rcx + 2*rcx]
movups xmm1, [rdx + 2*rdx]
movups xmm1, [rbx + 2*rbx]
movups xmm1, [rbp + 2*rbp]
movups xmm1, [rsi + 2*rsi]
movups xmm1, [rdi + 2*rdi]
movups xmm2, [rip + 0x13]
movups xmm2, [rip + 0x1235]
movups xmm2, [rip + 0x12345679]
movups xmm2, [rbx]
movups xmm2, [rcx + 0x14]
movups xmm2, [rdx + 0x15]
movups xmm2, [rbx + 0x1235]
movups xmm2, [rbx + 0x12345679]
movups xmm2, [rbx + rcx]
movups xmm2, [rbx + 4 * rcx]
movups xmm2, [rbx + rcx + 0x13]
movups xmm2, [rbx + rcx + 0x1235]
movups xmm2, [rbx + rcx + 0x12345679]
movups xmm2, [rbx + 4 * rcx + 0x13]
movups xmm2, [rbx + 4 * rcx + 0x1235]
movups xmm2, [rbx + 8 * rcx + 0x12345679]
movups xmm2, [4 * rcx]
movups xmm2, [4 * rcx + 0x13]
movups xmm2, [4 * rcx + 0x1235]
movups xmm2, [4 * rcx + 0x12345679]
movups xmm2, [rbp]
movups xmm2, [rbp + 0x12]
movups xmm2, [rbp + 0x1234]
movups xmm2, [rbp + 0x12345678]
movups xmm2, [4 * rbp]
movups xmm2, [4 * rbp + 0x12]
movups xmm2, [4 * rbp + 0x1234]
movups xmm2, [4 * rbp + 0x12345678]
movups xmm2, [rbx + 4 * rbp]
movups xmm2, [rbx + 4 * rbp + 0x12]
movups xmm2, [rbx + 4 * rbp + 0x1234]
movups xmm2, [rbx + 4 * rbp + 0x12345678]
movups xmm2, [rsp]
movups xmm2, [rsp + 0x12]
movups xmm2, [rsp + 0x1234]
movups xmm2, [rsp + 0x12345678]
movups xmm2, [rsp + rax]
movups xmm2, [rsp + rbp]
movups xmm2, [rsp + 2*rbp]
movups xmm2, [rsp + 4*rbp]
movups xmm2, [rsp + 8*rbp]
movups xmm2, [rax]
movups xmm2, [rcx]
movups xmm2, [rdx]
movups xmm2, [rbx]
movups xmm2, [rsp]
movups xmm2, [rbp]
movups xmm2, [rsi]
movups xmm2, [rdi]
movups xmm2, [rax + 2*rax]
movups xmm2, [rcx + 2*rcx]
movups xmm2, [rdx + 2*rdx]
movups xmm2, [rbx + 2*rbx]
movups xmm2, [rbp + 2*rbp]
movups xmm2, [rsi + 2*rsi]
movups xmm2, [rdi + 2*rdi]
movups xmm3, [rip + 0x13]
movups xmm3, [rip + 0x1235]
movups xmm3, [rip + 0x12345679]
movups xmm3, [rbx]
movups xmm3, [rcx + 0x14]
movups xmm3, [rdx + 0x15]
movups xmm3, [rbx + 0x1235]
movups xmm3, [rbx + 0x12345679]
movups xmm3, [rbx + rcx]
movups xmm3, [rbx + 4 * rcx]
movups xmm3, [rbx + rcx + 0x13]
movups xmm3, [rbx + rcx + 0x1235]
movups xmm3, [rbx + rcx + 0x12345679]
movups xmm3, [rbx + 4 * rcx + 0x13]
movups xmm3, [rbx + 4 * rcx + 0x1235]
movups xmm3, [rbx + 8 * rcx + 0x12345679]
movups xmm3, [4 * rcx]
movups xmm3, [4 * rcx + 0x13]
movups xmm3, [4 * rcx + 0x1235]
movups xmm3, [4 * rcx + 0x12345679]
movups xmm3, [rbp]
movups xmm3, [rbp + 0x12]
movups xmm3, [rbp + 0x1234]
movups xmm3, [rbp + 0x12345678]
movups xmm3, [4 * rbp]
movups xmm3, [4 * rbp + 0x12]
movups xmm3, [4 * rbp + 0x1234]
movups xmm3, [4 * rbp + 0x12345678]
movups xmm3, [rbx + 4 * rbp]
movups xmm3, [rbx + 4 * rbp + 0x12]
movups xmm3, [rbx + 4 * rbp + 0x1234]
movups xmm3, [rbx + 4 * rbp + 0x12345678]
movups xmm3, [rsp]
movups xmm3, [rsp + 0x12]
movups xmm3, [rsp + 0x1234]
movups xmm3, [rsp + 0x12345678]
movups xmm3, [rsp + rax]
movups xmm3, [rsp + rbp]
movups xmm3, [rsp + 2*rbp]
movups xmm3, [rsp + 4*rbp]
movups xmm3, [rsp + 8*rbp]
movups xmm3, [rax]
movups xmm3, [rcx]
movups xmm3, [rdx]
movups xmm3, [rbx]
movups xmm3, [rsp]
movups xmm3, [rbp]
movups xmm3, [rsi]
movups xmm3, [rdi]
movups xmm3, [rax + 2*rax]
movups xmm3, [rcx + 2*rcx]
movups xmm3, [rdx + 2*rdx]
movups xmm3, [rbx + 2*rbx]
movups xmm3, [rbp + 2*rbp]
movups xmm3, [rsi + 2*rsi]
movups xmm3, [rdi + 2*rdi]
movups xmm4, [rip + 0x13]
movups xmm4, [rip + 0x1235]
movups xmm4, [rip + 0x12345679]
movups xmm4, [rbx]
movups xmm4, [rcx + 0x14]
movups xmm4, [rdx + 0x15]
movups xmm4, [rbx + 0x1235]
movups xmm4, [rbx + 0x12345679]
movups xmm4, [rbx + rcx]
movups xmm4, [rbx + 4 * rcx]
movups xmm4, [rbx + rcx + 0x13]
movups xmm4, [rbx + rcx + 0x1235]
movups xmm4, [rbx + rcx + 0x12345679]
movups xmm4, [rbx + 4 * rcx + 0x13]
movups xmm4, [rbx + 4 * rcx + 0x1235]
movups xmm4, [rbx + 8 * rcx + 0x12345679]
movups xmm4, [4 * rcx]
movups xmm4, [4 * rcx + 0x13]
movups xmm4, [4 * rcx + 0x1235]
movups xmm4, [4 * rcx + 0x12345679]
movups xmm4, [rbp]
movups xmm4, [rbp + 0x12]
movups xmm4, [rbp + 0x1234]
movups xmm4, [rbp + 0x12345678]
movups xmm4, [4 * rbp]
movups xmm4, [4 * rbp + 0x12]
movups xmm4, [4 * rbp + 0x1234]
movups xmm4, [4 * rbp + 0x12345678]
movups xmm4, [rbx + 4 * rbp]
movups xmm4, [rbx + 4 * rbp + 0x12]
movups xmm4, [rbx + 4 * rbp + 0x1234]
movups xmm4, [rbx + 4 * rbp + 0x12345678]
movups xmm4, [rsp]
movups xmm4, [rsp + 0x12]
movups xmm4, [rsp + 0x1234]
movups xmm4, [rsp + 0x12345678]
movups xmm4, [rsp + rax]
movups xmm4, [rsp + rbp]
movups xmm4, [rsp + 2*rbp]
movups xmm4, [rsp + 4*rbp]
movups xmm4, [rsp + 8*rbp]
movups xmm4, [rax]
movups xmm4, [rcx]
movups xmm4, [rdx]
movups xmm4, [rbx]
movups xmm4, [rsp]
movups xmm4, [rbp]
movups xmm4, [rsi]
movups xmm4, [rdi]
movups xmm4, [rax + 2*rax]
movups xmm4, [rcx + 2*rcx]
movups xmm4, [rdx + 2*rdx]
movups xmm4, [rbx + 2*rbx]
movups xmm4, [rbp + 2*rbp]
movups xmm4, [rsi + 2*rsi]
movups xmm4, [rdi + 2*rdi]
movups xmm5, [rip + 0x13]
movups xmm5, [rip + 0x1235]
movups xmm5, [rip + 0x12345679]
movups xmm5, [rbx]
movups xmm5, [rcx + 0x14]
movups xmm5, [rdx + 0x15]
movups xmm5, [rbx + 0x1235]
movups xmm5, [rbx + 0x12345679]
movups xmm5, [rbx + rcx]
movups xmm5, [rbx + 4 * rcx]
movups xmm5, [rbx + rcx + 0x13]
movups xmm5, [rbx + rcx + 0x1235]
movups xmm5, [rbx + rcx + 0x12345679]
movups xmm5, [rbx + 4 * rcx + 0x13]
movups xmm5, [rbx + 4 * rcx + 0x1235]
movups xmm5, [rbx + 8 * rcx + 0x12345679]
movups xmm5, [4 * rcx]
movups xmm5, [4 * rcx + 0x13]
movups xmm5, [4 * rcx + 0x1235]
movups xmm5, [4 * rcx + 0x12345679]
movups xmm5, [rbp]
movups xmm5, [rbp + 0x12]
movups xmm5, [rbp + 0x1234]
movups xmm5, [rbp + 0x12345678]
movups xmm5, [4 * rbp]
movups xmm5, [4 * rbp + 0x12]
movups xmm5, [4 * rbp + 0x1234]
movups xmm5, [4 * rbp + 0x12345678]
movups xmm5, [rbx + 4 * rbp]
movups xmm5, [rbx + 4 * rbp + 0x12]
movups xmm5, [rbx + 4 * rbp + 0x1234]
movups xmm5, [rbx + 4 * rbp + 0x12345678]
movups xmm5, [rsp]
movups xmm5, [rsp + 0x12]
movups xmm5, [rsp + 0x1234]
movups xmm5, [rsp + 0x12345678]
movups xmm5, [rsp + rax]
movups xmm5, [rsp + rbp]
movups xmm5, [rsp + 2*rbp]
movups xmm5, [rsp + 4*rbp]
movups xmm5, [rsp + 8*rbp]
movups xmm5, [rax]
movups xmm5, [rcx]
movups xmm5, [rdx]
movups xmm5, [rbx]
movups xmm5, [rsp]
movups xmm5, [rbp]
movups xmm5, [rsi]
movups xmm5, [rdi]
movups xmm5, [rax + 2*rax]
movups xmm5, [rcx + 2*rcx]
movups xmm5, [rdx + 2*rdx]
movups xmm5, [rbx + 2*rbx]
movups xmm5, [rbp + 2*rbp]
movups xmm5, [rsi + 2*rsi]
movups xmm5, [rdi + 2*rdi]
movups xmm6, [rip + 0x13]
movups xmm6, [rip + 0x1235]
movups xmm6, [rip + 0x12345679]
movups xmm6, [rbx]
movups xmm6, [rcx + 0x14]
movups xmm6, [rdx + 0x15]
movups xmm6, [rbx + 0x1235]
movups xmm6, [rbx + 0x12345679]
movups xmm6, [rbx + rcx]
movups xmm6, [rbx + 4 * rcx]
movups xmm6, [rbx + rcx + 0x13]
movups xmm6, [rbx + rcx + 0x1235]
movups xmm6, [rbx + rcx + 0x12345679]
movups xmm6, [rbx + 4 * rcx + 0x13]
movups xmm6, [rbx + 4 * rcx + 0x1235]
movups xmm6, [rbx + 8 * rcx + 0x12345679]
movups xmm6, [4 * rcx]
movups xmm6, [4 * rcx + 0x13]
movups xmm6, [4 * rcx + 0x1235]
movups xmm6, [4 * rcx + 0x12345679]
movups xmm6, [rbp]
movups xmm6, [rbp + 0x12]
movups xmm6, [rbp + 0x1234]
movups xmm6, [rbp + 0x12345678]
movups xmm6, [4 * rbp]
movups xmm6, [4 * rbp + 0x12]
movups xmm6, [4 * rbp + 0x1234]
movups xmm6, [4 * rbp + 0x12345678]
movups xmm6, [rbx + 4 * rbp]
movups xmm6, [rbx + 4 * rbp + 0x12]
movups xmm6, [rbx + 4 * rbp + 0x1234]
movups xmm6, [rbx + 4 * rbp + 0x12345678]
movups xmm6, [rsp]
movups xmm6, [rsp + 0x12]
movups xmm6, [rsp + 0x1234]
movups xmm6, [rsp + 0x12345678]
movups xmm6, [rsp + rax]
movups xmm6, [rsp + rbp]
movups xmm6, [rsp + 2*rbp]
movups xmm6, [rsp + 4*rbp]
movups xmm6, [rsp + 8*rbp]
movups xmm6, [rax]
movups xmm6, [rcx]
movups xmm6, [rdx]
movups xmm6, [rbx]
movups xmm6, [rsp]
movups xmm6, [rbp]
movups xmm6, [rsi]
movups xmm6, [rdi]
movups xmm6, [rax + 2*rax]
movups xmm6, [rcx + 2*rcx]
movups xmm6, [rdx + 2*rdx]
movups xmm6, [rbx + 2*rbx]
movups xmm6, [rbp + 2*rbp]
movups xmm6, [rsi + 2*rsi]
movups xmm6, [rdi + 2*rdi]
movups xmm7, [rip + 0x13]
movups xmm7, [rip + 0x1235]
movups xmm7, [rip + 0x12345679]
movups xmm7, [rbx]
movups xmm7, [rcx + 0x14]
movups xmm7, [rdx + 0x15]
movups xmm7, [rbx + 0x1235]
movups xmm7, [rbx + 0x12345679]
movups xmm7, [rbx + rcx]
movups xmm7, [rbx + 4 * rcx]
movups xmm7, [rbx + rcx + 0x13]
movups xmm7, [rbx + rcx + 0x1235]
movups xmm7, [rbx + rcx + 0x12345679]
movups xmm7, [rbx + 4 * rcx + 0x13]
movups xmm7, [rbx + 4 * rcx + 0x1235]
movups xmm7, [rbx + 8 * rcx + 0x12345679]
movups xmm7, [4 * rcx]
movups xmm7, [4 * rcx + 0x13]
movups xmm7, [4 * rcx + 0x1235]
movups xmm7, [4 * rcx + 0x12345679]
movups xmm7, [rbp]
movups xmm7, [rbp + 0x12]
movups xmm7, [rbp + 0x1234]
movups xmm7, [rbp + 0x12345678]
movups xmm7, [4 * rbp]
movups xmm7, [4 * rbp + 0x12]
movups xmm7, [4 * rbp + 0x1234]
movups xmm7, [4 * rbp + 0x12345678]
movups xmm7, [rbx + 4 * rbp]
movups xmm7, [rbx + 4 * rbp + 0x12]
movups xmm7, [rbx + 4 * rbp + 0x1234]
movups xmm7, [rbx + 4 * rbp + 0x12345678]
movups xmm7, [rsp]
movups xmm7, [rsp + 0x12]
movups xmm7, [rsp + 0x1234]
movups xmm7, [rsp + 0x12345678]
movups xmm7, [rsp + rax]
movups xmm7, [rsp + rbp]
movups xmm7, [rsp + 2*rbp]
movups xmm7, [rsp + 4*rbp]
movups xmm7, [rsp + 8*rbp]
movups xmm7, [rax]
movups xmm7, [rcx]
movups xmm7, [rdx]
movups xmm7, [rbx]
movups xmm7, [rsp]
movups xmm7, [rbp]
movups xmm7, [rsi]
movups xmm7, [rdi]
movups xmm7, [rax + 2*rax]
movups xmm7, [rcx + 2*rcx]
movups xmm7, [rdx + 2*rdx]
movups xmm7, [rbx + 2*rbx]
movups xmm7, [rbp + 2*rbp]
movups xmm7, [rsi + 2*rsi]
movups xmm7, [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode m128,xmm
; ------------------------------------------------------------------------------
movups [rip + 0x13], xmm0
movups [rip + 0x13], xmm1
movups [rip + 0x13], xmm2
movups [rip + 0x13], xmm3
movups [rip + 0x13], xmm4
movups [rip + 0x13], xmm5
movups [rip + 0x13], xmm6
movups [rip + 0x13], xmm7
movups [rip + 0x1235], xmm0
movups [rip + 0x1235], xmm1
movups [rip + 0x1235], xmm2
movups [rip + 0x1235], xmm3
movups [rip + 0x1235], xmm4
movups [rip + 0x1235], xmm5
movups [rip + 0x1235], xmm6
movups [rip + 0x1235], xmm7
movups [rip + 0x12345679], xmm0
movups [rip + 0x12345679], xmm1
movups [rip + 0x12345679], xmm2
movups [rip + 0x12345679], xmm3
movups [rip + 0x12345679], xmm4
movups [rip + 0x12345679], xmm5
movups [rip + 0x12345679], xmm6
movups [rip + 0x12345679], xmm7
movups [rbx], xmm0
movups [rbx], xmm1
movups [rbx], xmm2
movups [rbx], xmm3
movups [rbx], xmm4
movups [rbx], xmm5
movups [rbx], xmm6
movups [rbx], xmm7
movups [rcx + 0x14], xmm0
movups [rcx + 0x14], xmm1
movups [rcx + 0x14], xmm2
movups [rcx + 0x14], xmm3
movups [rcx + 0x14], xmm4
movups [rcx + 0x14], xmm5
movups [rcx + 0x14], xmm6
movups [rcx + 0x14], xmm7
movups [rdx + 0x15], xmm0
movups [rdx + 0x15], xmm1
movups [rdx + 0x15], xmm2
movups [rdx + 0x15], xmm3
movups [rdx + 0x15], xmm4
movups [rdx + 0x15], xmm5
movups [rdx + 0x15], xmm6
movups [rdx + 0x15], xmm7
movups [rbx + 0x1235], xmm0
movups [rbx + 0x1235], xmm1
movups [rbx + 0x1235], xmm2
movups [rbx + 0x1235], xmm3
movups [rbx + 0x1235], xmm4
movups [rbx + 0x1235], xmm5
movups [rbx + 0x1235], xmm6
movups [rbx + 0x1235], xmm7
movups [rbx + 0x12345679], xmm0
movups [rbx + 0x12345679], xmm1
movups [rbx + 0x12345679], xmm2
movups [rbx + 0x12345679], xmm3
movups [rbx + 0x12345679], xmm4
movups [rbx + 0x12345679], xmm5
movups [rbx + 0x12345679], xmm6
movups [rbx + 0x12345679], xmm7
movups [rbx + rcx], xmm0
movups [rbx + rcx], xmm1
movups [rbx + rcx], xmm2
movups [rbx + rcx], xmm3
movups [rbx + rcx], xmm4
movups [rbx + rcx], xmm5
movups [rbx + rcx], xmm6
movups [rbx + rcx], xmm7
movups [rbx + 4 * rcx], xmm0
movups [rbx + 4 * rcx], xmm1
movups [rbx + 4 * rcx], xmm2
movups [rbx + 4 * rcx], xmm3
movups [rbx + 4 * rcx], xmm4
movups [rbx + 4 * rcx], xmm5
movups [rbx + 4 * rcx], xmm6
movups [rbx + 4 * rcx], xmm7
movups [rbx + rcx + 0x13], xmm0
movups [rbx + rcx + 0x13], xmm1
movups [rbx + rcx + 0x13], xmm2
movups [rbx + rcx + 0x13], xmm3
movups [rbx + rcx + 0x13], xmm4
movups [rbx + rcx + 0x13], xmm5
movups [rbx + rcx + 0x13], xmm6
movups [rbx + rcx + 0x13], xmm7
movups [rbx + rcx + 0x1235], xmm0
movups [rbx + rcx + 0x1235], xmm1
movups [rbx + rcx + 0x1235], xmm2
movups [rbx + rcx + 0x1235], xmm3
movups [rbx + rcx + 0x1235], xmm4
movups [rbx + rcx + 0x1235], xmm5
movups [rbx + rcx + 0x1235], xmm6
movups [rbx + rcx + 0x1235], xmm7
movups [rbx + rcx + 0x12345679], xmm0
movups [rbx + rcx + 0x12345679], xmm1
movups [rbx + rcx + 0x12345679], xmm2
movups [rbx + rcx + 0x12345679], xmm3
movups [rbx + rcx + 0x12345679], xmm4
movups [rbx + rcx + 0x12345679], xmm5
movups [rbx + rcx + 0x12345679], xmm6
movups [rbx + rcx + 0x12345679], xmm7
movups [rbx + 4 * rcx + 0x13], xmm0
movups [rbx + 4 * rcx + 0x13], xmm1
movups [rbx + 4 * rcx + 0x13], xmm2
movups [rbx + 4 * rcx + 0x13], xmm3
movups [rbx + 4 * rcx + 0x13], xmm4
movups [rbx + 4 * rcx + 0x13], xmm5
movups [rbx + 4 * rcx + 0x13], xmm6
movups [rbx + 4 * rcx + 0x13], xmm7
movups [rbx + 4 * rcx + 0x1235], xmm0
movups [rbx + 4 * rcx + 0x1235], xmm1
movups [rbx + 4 * rcx + 0x1235], xmm2
movups [rbx + 4 * rcx + 0x1235], xmm3
movups [rbx + 4 * rcx + 0x1235], xmm4
movups [rbx + 4 * rcx + 0x1235], xmm5
movups [rbx + 4 * rcx + 0x1235], xmm6
movups [rbx + 4 * rcx + 0x1235], xmm7
movups [rbx + 8 * rcx + 0x12345679], xmm0
movups [rbx + 8 * rcx + 0x12345679], xmm1
movups [rbx + 8 * rcx + 0x12345679], xmm2
movups [rbx + 8 * rcx + 0x12345679], xmm3
movups [rbx + 8 * rcx + 0x12345679], xmm4
movups [rbx + 8 * rcx + 0x12345679], xmm5
movups [rbx + 8 * rcx + 0x12345679], xmm6
movups [rbx + 8 * rcx + 0x12345679], xmm7
movups [4 * rcx], xmm0
movups [4 * rcx], xmm1
movups [4 * rcx], xmm2
movups [4 * rcx], xmm3
movups [4 * rcx], xmm4
movups [4 * rcx], xmm5
movups [4 * rcx], xmm6
movups [4 * rcx], xmm7
movups [4 * rcx + 0x13], xmm0
movups [4 * rcx + 0x13], xmm1
movups [4 * rcx + 0x13], xmm2
movups [4 * rcx + 0x13], xmm3
movups [4 * rcx + 0x13], xmm4
movups [4 * rcx + 0x13], xmm5
movups [4 * rcx + 0x13], xmm6
movups [4 * rcx + 0x13], xmm7
movups [4 * rcx + 0x1235], xmm0
movups [4 * rcx + 0x1235], xmm1
movups [4 * rcx + 0x1235], xmm2
movups [4 * rcx + 0x1235], xmm3
movups [4 * rcx + 0x1235], xmm4
movups [4 * rcx + 0x1235], xmm5
movups [4 * rcx + 0x1235], xmm6
movups [4 * rcx + 0x1235], xmm7
movups [4 * rcx + 0x12345679], xmm0
movups [4 * rcx + 0x12345679], xmm1
movups [4 * rcx + 0x12345679], xmm2
movups [4 * rcx + 0x12345679], xmm3
movups [4 * rcx + 0x12345679], xmm4
movups [4 * rcx + 0x12345679], xmm5
movups [4 * rcx + 0x12345679], xmm6
movups [4 * rcx + 0x12345679], xmm7
movups [rbp], xmm0
movups [rbp], xmm1
movups [rbp], xmm2
movups [rbp], xmm3
movups [rbp], xmm4
movups [rbp], xmm5
movups [rbp], xmm6
movups [rbp], xmm7
movups [rbp + 0x12], xmm0
movups [rbp + 0x12], xmm1
movups [rbp + 0x12], xmm2
movups [rbp + 0x12], xmm3
movups [rbp + 0x12], xmm4
movups [rbp + 0x12], xmm5
movups [rbp + 0x12], xmm6
movups [rbp + 0x12], xmm7
movups [rbp + 0x1234], xmm0
movups [rbp + 0x1234], xmm1
movups [rbp + 0x1234], xmm2
movups [rbp + 0x1234], xmm3
movups [rbp + 0x1234], xmm4
movups [rbp + 0x1234], xmm5
movups [rbp + 0x1234], xmm6
movups [rbp + 0x1234], xmm7
movups [rbp + 0x12345678], xmm0
movups [rbp + 0x12345678], xmm1
movups [rbp + 0x12345678], xmm2
movups [rbp + 0x12345678], xmm3
movups [rbp + 0x12345678], xmm4
movups [rbp + 0x12345678], xmm5
movups [rbp + 0x12345678], xmm6
movups [rbp + 0x12345678], xmm7
movups [4 * rbp], xmm0
movups [4 * rbp], xmm1
movups [4 * rbp], xmm2
movups [4 * rbp], xmm3
movups [4 * rbp], xmm4
movups [4 * rbp], xmm5
movups [4 * rbp], xmm6
movups [4 * rbp], xmm7
movups [4 * rbp + 0x12], xmm0
movups [4 * rbp + 0x12], xmm1
movups [4 * rbp + 0x12], xmm2
movups [4 * rbp + 0x12], xmm3
movups [4 * rbp + 0x12], xmm4
movups [4 * rbp + 0x12], xmm5
movups [4 * rbp + 0x12], xmm6
movups [4 * rbp + 0x12], xmm7
movups [4 * rbp + 0x1234], xmm0
movups [4 * rbp + 0x1234], xmm1
movups [4 * rbp + 0x1234], xmm2
movups [4 * rbp + 0x1234], xmm3
movups [4 * rbp + 0x1234], xmm4
movups [4 * rbp + 0x1234], xmm5
movups [4 * rbp + 0x1234], xmm6
movups [4 * rbp + 0x1234], xmm7
movups [4 * rbp + 0x12345678], xmm0
movups [4 * rbp + 0x12345678], xmm1
movups [4 * rbp + 0x12345678], xmm2
movups [4 * rbp + 0x12345678], xmm3
movups [4 * rbp + 0x12345678], xmm4
movups [4 * rbp + 0x12345678], xmm5
movups [4 * rbp + 0x12345678], xmm6
movups [4 * rbp + 0x12345678], xmm7
movups [rbx + 4 * rbp], xmm0
movups [rbx + 4 * rbp], xmm1
movups [rbx + 4 * rbp], xmm2
movups [rbx + 4 * rbp], xmm3
movups [rbx + 4 * rbp], xmm4
movups [rbx + 4 * rbp], xmm5
movups [rbx + 4 * rbp], xmm6
movups [rbx + 4 * rbp], xmm7
movups [rbx + 4 * rbp + 0x12], xmm0
movups [rbx + 4 * rbp + 0x12], xmm1
movups [rbx + 4 * rbp + 0x12], xmm2
movups [rbx + 4 * rbp + 0x12], xmm3
movups [rbx + 4 * rbp + 0x12], xmm4
movups [rbx + 4 * rbp + 0x12], xmm5
movups [rbx + 4 * rbp + 0x12], xmm6
movups [rbx + 4 * rbp + 0x12], xmm7
movups [rbx + 4 * rbp + 0x1234], xmm0
movups [rbx + 4 * rbp + 0x1234], xmm1
movups [rbx + 4 * rbp + 0x1234], xmm2
movups [rbx + 4 * rbp + 0x1234], xmm3
movups [rbx + 4 * rbp + 0x1234], xmm4
movups [rbx + 4 * rbp + 0x1234], xmm5
movups [rbx + 4 * rbp + 0x1234], xmm6
movups [rbx + 4 * rbp + 0x1234], xmm7
movups [rbx + 4 * rbp + 0x12345678], xmm0
movups [rbx + 4 * rbp + 0x12345678], xmm1
movups [rbx + 4 * rbp + 0x12345678], xmm2
movups [rbx + 4 * rbp + 0x12345678], xmm3
movups [rbx + 4 * rbp + 0x12345678], xmm4
movups [rbx + 4 * rbp + 0x12345678], xmm5
movups [rbx + 4 * rbp + 0x12345678], xmm6
movups [rbx + 4 * rbp + 0x12345678], xmm7
movups [rsp], xmm0
movups [rsp], xmm1
movups [rsp], xmm2
movups [rsp], xmm3
movups [rsp], xmm4
movups [rsp], xmm5
movups [rsp], xmm6
movups [rsp], xmm7
movups [rsp + 0x12], xmm0
movups [rsp + 0x12], xmm1
movups [rsp + 0x12], xmm2
movups [rsp + 0x12], xmm3
movups [rsp + 0x12], xmm4
movups [rsp + 0x12], xmm5
movups [rsp + 0x12], xmm6
movups [rsp + 0x12], xmm7
movups [rsp + 0x1234], xmm0
movups [rsp + 0x1234], xmm1
movups [rsp + 0x1234], xmm2
movups [rsp + 0x1234], xmm3
movups [rsp + 0x1234], xmm4
movups [rsp + 0x1234], xmm5
movups [rsp + 0x1234], xmm6
movups [rsp + 0x1234], xmm7
movups [rsp + 0x12345678], xmm0
movups [rsp + 0x12345678], xmm1
movups [rsp + 0x12345678], xmm2
movups [rsp + 0x12345678], xmm3
movups [rsp + 0x12345678], xmm4
movups [rsp + 0x12345678], xmm5
movups [rsp + 0x12345678], xmm6
movups [rsp + 0x12345678], xmm7
movups [rsp + rax], xmm0
movups [rsp + rax], xmm1
movups [rsp + rax], xmm2
movups [rsp + rax], xmm3
movups [rsp + rax], xmm4
movups [rsp + rax], xmm5
movups [rsp + rax], xmm6
movups [rsp + rax], xmm7
movups [rsp + rbp], xmm0
movups [rsp + rbp], xmm1
movups [rsp + rbp], xmm2
movups [rsp + rbp], xmm3
movups [rsp + rbp], xmm4
movups [rsp + rbp], xmm5
movups [rsp + rbp], xmm6
movups [rsp + rbp], xmm7
movups [rsp + 2*rbp], xmm0
movups [rsp + 2*rbp], xmm1
movups [rsp + 2*rbp], xmm2
movups [rsp + 2*rbp], xmm3
movups [rsp + 2*rbp], xmm4
movups [rsp + 2*rbp], xmm5
movups [rsp + 2*rbp], xmm6
movups [rsp + 2*rbp], xmm7
movups [rsp + 4*rbp], xmm0
movups [rsp + 4*rbp], xmm1
movups [rsp + 4*rbp], xmm2
movups [rsp + 4*rbp], xmm3
movups [rsp + 4*rbp], xmm4
movups [rsp + 4*rbp], xmm5
movups [rsp + 4*rbp], xmm6
movups [rsp + 4*rbp], xmm7
movups [rsp + 8*rbp], xmm0
movups [rsp + 8*rbp], xmm1
movups [rsp + 8*rbp], xmm2
movups [rsp + 8*rbp], xmm3
movups [rsp + 8*rbp], xmm4
movups [rsp + 8*rbp], xmm5
movups [rsp + 8*rbp], xmm6
movups [rsp + 8*rbp], xmm7
movups [rax], xmm0
movups [rax], xmm1
movups [rax], xmm2
movups [rax], xmm3
movups [rax], xmm4
movups [rax], xmm5
movups [rax], xmm6
movups [rax], xmm7
movups [rcx], xmm0
movups [rcx], xmm1
movups [rcx], xmm2
movups [rcx], xmm3
movups [rcx], xmm4
movups [rcx], xmm5
movups [rcx], xmm6
movups [rcx], xmm7
movups [rdx], xmm0
movups [rdx], xmm1
movups [rdx], xmm2
movups [rdx], xmm3
movups [rdx], xmm4
movups [rdx], xmm5
movups [rdx], xmm6
movups [rdx], xmm7
movups [rbx], xmm0
movups [rbx], xmm1
movups [rbx], xmm2
movups [rbx], xmm3
movups [rbx], xmm4
movups [rbx], xmm5
movups [rbx], xmm6
movups [rbx], xmm7
movups [rsp], xmm0
movups [rsp], xmm1
movups [rsp], xmm2
movups [rsp], xmm3
movups [rsp], xmm4
movups [rsp], xmm5
movups [rsp], xmm6
movups [rsp], xmm7
movups [rbp], xmm0
movups [rbp], xmm1
movups [rbp], xmm2
movups [rbp], xmm3
movups [rbp], xmm4
movups [rbp], xmm5
movups [rbp], xmm6
movups [rbp], xmm7
movups [rsi], xmm0
movups [rsi], xmm1
movups [rsi], xmm2
movups [rsi], xmm3
movups [rsi], xmm4
movups [rsi], xmm5
movups [rsi], xmm6
movups [rsi], xmm7
movups [rdi], xmm0
movups [rdi], xmm1
movups [rdi], xmm2
movups [rdi], xmm3
movups [rdi], xmm4
movups [rdi], xmm5
movups [rdi], xmm6
movups [rdi], xmm7
movups [rax + 2*rax], xmm0
movups [rax + 2*rax], xmm1
movups [rax + 2*rax], xmm2
movups [rax + 2*rax], xmm3
movups [rax + 2*rax], xmm4
movups [rax + 2*rax], xmm5
movups [rax + 2*rax], xmm6
movups [rax + 2*rax], xmm7
movups [rcx + 2*rcx], xmm0
movups [rcx + 2*rcx], xmm1
movups [rcx + 2*rcx], xmm2
movups [rcx + 2*rcx], xmm3
movups [rcx + 2*rcx], xmm4
movups [rcx + 2*rcx], xmm5
movups [rcx + 2*rcx], xmm6
movups [rcx + 2*rcx], xmm7
movups [rdx + 2*rdx], xmm0
movups [rdx + 2*rdx], xmm1
movups [rdx + 2*rdx], xmm2
movups [rdx + 2*rdx], xmm3
movups [rdx + 2*rdx], xmm4
movups [rdx + 2*rdx], xmm5
movups [rdx + 2*rdx], xmm6
movups [rdx + 2*rdx], xmm7
movups [rbx + 2*rbx], xmm0
movups [rbx + 2*rbx], xmm1
movups [rbx + 2*rbx], xmm2
movups [rbx + 2*rbx], xmm3
movups [rbx + 2*rbx], xmm4
movups [rbx + 2*rbx], xmm5
movups [rbx + 2*rbx], xmm6
movups [rbx + 2*rbx], xmm7
movups [rbp + 2*rbp], xmm0
movups [rbp + 2*rbp], xmm1
movups [rbp + 2*rbp], xmm2
movups [rbp + 2*rbp], xmm3
movups [rbp + 2*rbp], xmm4
movups [rbp + 2*rbp], xmm5
movups [rbp + 2*rbp], xmm6
movups [rbp + 2*rbp], xmm7
movups [rsi + 2*rsi], xmm0
movups [rsi + 2*rsi], xmm1
movups [rsi + 2*rsi], xmm2
movups [rsi + 2*rsi], xmm3
movups [rsi + 2*rsi], xmm4
movups [rsi + 2*rsi], xmm5
movups [rsi + 2*rsi], xmm6
movups [rsi + 2*rsi], xmm7
movups [rdi + 2*rdi], xmm0
movups [rdi + 2*rdi], xmm1
movups [rdi + 2*rdi], xmm2
movups [rdi + 2*rdi], xmm3
movups [rdi + 2*rdi], xmm4
movups [rdi + 2*rdi], xmm5
movups [rdi + 2*rdi], xmm6
movups [rdi + 2*rdi], xmm7

