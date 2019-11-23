use64
; ------------------------------------------------------------------------------
; opcode xmm,xmm
; ------------------------------------------------------------------------------
subss xmm0, xmm0
subss xmm0, xmm1
subss xmm0, xmm2
subss xmm0, xmm3
subss xmm0, xmm4
subss xmm0, xmm5
subss xmm0, xmm6
subss xmm0, xmm7
subss xmm1, xmm0
subss xmm1, xmm1
subss xmm1, xmm2
subss xmm1, xmm3
subss xmm1, xmm4
subss xmm1, xmm5
subss xmm1, xmm6
subss xmm1, xmm7
subss xmm2, xmm0
subss xmm2, xmm1
subss xmm2, xmm2
subss xmm2, xmm3
subss xmm2, xmm4
subss xmm2, xmm5
subss xmm2, xmm6
subss xmm2, xmm7
subss xmm3, xmm0
subss xmm3, xmm1
subss xmm3, xmm2
subss xmm3, xmm3
subss xmm3, xmm4
subss xmm3, xmm5
subss xmm3, xmm6
subss xmm3, xmm7
subss xmm4, xmm0
subss xmm4, xmm1
subss xmm4, xmm2
subss xmm4, xmm3
subss xmm4, xmm4
subss xmm4, xmm5
subss xmm4, xmm6
subss xmm4, xmm7
subss xmm5, xmm0
subss xmm5, xmm1
subss xmm5, xmm2
subss xmm5, xmm3
subss xmm5, xmm4
subss xmm5, xmm5
subss xmm5, xmm6
subss xmm5, xmm7
subss xmm6, xmm0
subss xmm6, xmm1
subss xmm6, xmm2
subss xmm6, xmm3
subss xmm6, xmm4
subss xmm6, xmm5
subss xmm6, xmm6
subss xmm6, xmm7
subss xmm7, xmm0
subss xmm7, xmm1
subss xmm7, xmm2
subss xmm7, xmm3
subss xmm7, xmm4
subss xmm7, xmm5
subss xmm7, xmm6
subss xmm7, xmm7

; ------------------------------------------------------------------------------
; opcode xmm,m32
; ------------------------------------------------------------------------------
subss xmm0, dword [rip + 0x13]
subss xmm0, dword [rip + 0x1235]
subss xmm0, dword [rip + 0x12345679]
subss xmm0, dword [rbx]
subss xmm0, dword [rcx + 0x14]
subss xmm0, dword [rdx + 0x15]
subss xmm0, dword [rbx + 0x1235]
subss xmm0, dword [rbx + 0x12345679]
subss xmm0, dword [rbx + rcx]
subss xmm0, dword [rbx + 4 * rcx]
subss xmm0, dword [rbx + rcx + 0x13]
subss xmm0, dword [rbx + rcx + 0x1235]
subss xmm0, dword [rbx + rcx + 0x12345679]
subss xmm0, dword [rbx + 4 * rcx + 0x13]
subss xmm0, dword [rbx + 4 * rcx + 0x1235]
subss xmm0, dword [rbx + 8 * rcx + 0x12345679]
subss xmm0, dword [4 * rcx]
subss xmm0, dword [4 * rcx + 0x13]
subss xmm0, dword [4 * rcx + 0x1235]
subss xmm0, dword [4 * rcx + 0x12345679]
subss xmm0, dword [rbp]
subss xmm0, dword [rbp + 0x12]
subss xmm0, dword [rbp + 0x1234]
subss xmm0, dword [rbp + 0x12345678]
subss xmm0, dword [4 * rbp]
subss xmm0, dword [4 * rbp + 0x12]
subss xmm0, dword [4 * rbp + 0x1234]
subss xmm0, dword [4 * rbp + 0x12345678]
subss xmm0, dword [rbx + 4 * rbp]
subss xmm0, dword [rbx + 4 * rbp + 0x12]
subss xmm0, dword [rbx + 4 * rbp + 0x1234]
subss xmm0, dword [rbx + 4 * rbp + 0x12345678]
subss xmm0, dword [rsp]
subss xmm0, dword [rsp + 0x12]
subss xmm0, dword [rsp + 0x1234]
subss xmm0, dword [rsp + 0x12345678]
subss xmm0, dword [rsp + rax]
subss xmm0, dword [rsp + rbp]
subss xmm0, dword [rsp + 2*rbp]
subss xmm0, dword [rsp + 4*rbp]
subss xmm0, dword [rsp + 8*rbp]
subss xmm0, dword [rax]
subss xmm0, dword [rcx]
subss xmm0, dword [rdx]
subss xmm0, dword [rbx]
subss xmm0, dword [rsp]
subss xmm0, dword [rbp]
subss xmm0, dword [rsi]
subss xmm0, dword [rdi]
subss xmm0, dword [rax + 2*rax]
subss xmm0, dword [rcx + 2*rcx]
subss xmm0, dword [rdx + 2*rdx]
subss xmm0, dword [rbx + 2*rbx]
subss xmm0, dword [rbp + 2*rbp]
subss xmm0, dword [rsi + 2*rsi]
subss xmm0, dword [rdi + 2*rdi]
subss xmm1, dword [rip + 0x13]
subss xmm1, dword [rip + 0x1235]
subss xmm1, dword [rip + 0x12345679]
subss xmm1, dword [rbx]
subss xmm1, dword [rcx + 0x14]
subss xmm1, dword [rdx + 0x15]
subss xmm1, dword [rbx + 0x1235]
subss xmm1, dword [rbx + 0x12345679]
subss xmm1, dword [rbx + rcx]
subss xmm1, dword [rbx + 4 * rcx]
subss xmm1, dword [rbx + rcx + 0x13]
subss xmm1, dword [rbx + rcx + 0x1235]
subss xmm1, dword [rbx + rcx + 0x12345679]
subss xmm1, dword [rbx + 4 * rcx + 0x13]
subss xmm1, dword [rbx + 4 * rcx + 0x1235]
subss xmm1, dword [rbx + 8 * rcx + 0x12345679]
subss xmm1, dword [4 * rcx]
subss xmm1, dword [4 * rcx + 0x13]
subss xmm1, dword [4 * rcx + 0x1235]
subss xmm1, dword [4 * rcx + 0x12345679]
subss xmm1, dword [rbp]
subss xmm1, dword [rbp + 0x12]
subss xmm1, dword [rbp + 0x1234]
subss xmm1, dword [rbp + 0x12345678]
subss xmm1, dword [4 * rbp]
subss xmm1, dword [4 * rbp + 0x12]
subss xmm1, dword [4 * rbp + 0x1234]
subss xmm1, dword [4 * rbp + 0x12345678]
subss xmm1, dword [rbx + 4 * rbp]
subss xmm1, dword [rbx + 4 * rbp + 0x12]
subss xmm1, dword [rbx + 4 * rbp + 0x1234]
subss xmm1, dword [rbx + 4 * rbp + 0x12345678]
subss xmm1, dword [rsp]
subss xmm1, dword [rsp + 0x12]
subss xmm1, dword [rsp + 0x1234]
subss xmm1, dword [rsp + 0x12345678]
subss xmm1, dword [rsp + rax]
subss xmm1, dword [rsp + rbp]
subss xmm1, dword [rsp + 2*rbp]
subss xmm1, dword [rsp + 4*rbp]
subss xmm1, dword [rsp + 8*rbp]
subss xmm1, dword [rax]
subss xmm1, dword [rcx]
subss xmm1, dword [rdx]
subss xmm1, dword [rbx]
subss xmm1, dword [rsp]
subss xmm1, dword [rbp]
subss xmm1, dword [rsi]
subss xmm1, dword [rdi]
subss xmm1, dword [rax + 2*rax]
subss xmm1, dword [rcx + 2*rcx]
subss xmm1, dword [rdx + 2*rdx]
subss xmm1, dword [rbx + 2*rbx]
subss xmm1, dword [rbp + 2*rbp]
subss xmm1, dword [rsi + 2*rsi]
subss xmm1, dword [rdi + 2*rdi]
subss xmm2, dword [rip + 0x13]
subss xmm2, dword [rip + 0x1235]
subss xmm2, dword [rip + 0x12345679]
subss xmm2, dword [rbx]
subss xmm2, dword [rcx + 0x14]
subss xmm2, dword [rdx + 0x15]
subss xmm2, dword [rbx + 0x1235]
subss xmm2, dword [rbx + 0x12345679]
subss xmm2, dword [rbx + rcx]
subss xmm2, dword [rbx + 4 * rcx]
subss xmm2, dword [rbx + rcx + 0x13]
subss xmm2, dword [rbx + rcx + 0x1235]
subss xmm2, dword [rbx + rcx + 0x12345679]
subss xmm2, dword [rbx + 4 * rcx + 0x13]
subss xmm2, dword [rbx + 4 * rcx + 0x1235]
subss xmm2, dword [rbx + 8 * rcx + 0x12345679]
subss xmm2, dword [4 * rcx]
subss xmm2, dword [4 * rcx + 0x13]
subss xmm2, dword [4 * rcx + 0x1235]
subss xmm2, dword [4 * rcx + 0x12345679]
subss xmm2, dword [rbp]
subss xmm2, dword [rbp + 0x12]
subss xmm2, dword [rbp + 0x1234]
subss xmm2, dword [rbp + 0x12345678]
subss xmm2, dword [4 * rbp]
subss xmm2, dword [4 * rbp + 0x12]
subss xmm2, dword [4 * rbp + 0x1234]
subss xmm2, dword [4 * rbp + 0x12345678]
subss xmm2, dword [rbx + 4 * rbp]
subss xmm2, dword [rbx + 4 * rbp + 0x12]
subss xmm2, dword [rbx + 4 * rbp + 0x1234]
subss xmm2, dword [rbx + 4 * rbp + 0x12345678]
subss xmm2, dword [rsp]
subss xmm2, dword [rsp + 0x12]
subss xmm2, dword [rsp + 0x1234]
subss xmm2, dword [rsp + 0x12345678]
subss xmm2, dword [rsp + rax]
subss xmm2, dword [rsp + rbp]
subss xmm2, dword [rsp + 2*rbp]
subss xmm2, dword [rsp + 4*rbp]
subss xmm2, dword [rsp + 8*rbp]
subss xmm2, dword [rax]
subss xmm2, dword [rcx]
subss xmm2, dword [rdx]
subss xmm2, dword [rbx]
subss xmm2, dword [rsp]
subss xmm2, dword [rbp]
subss xmm2, dword [rsi]
subss xmm2, dword [rdi]
subss xmm2, dword [rax + 2*rax]
subss xmm2, dword [rcx + 2*rcx]
subss xmm2, dword [rdx + 2*rdx]
subss xmm2, dword [rbx + 2*rbx]
subss xmm2, dword [rbp + 2*rbp]
subss xmm2, dword [rsi + 2*rsi]
subss xmm2, dword [rdi + 2*rdi]
subss xmm3, dword [rip + 0x13]
subss xmm3, dword [rip + 0x1235]
subss xmm3, dword [rip + 0x12345679]
subss xmm3, dword [rbx]
subss xmm3, dword [rcx + 0x14]
subss xmm3, dword [rdx + 0x15]
subss xmm3, dword [rbx + 0x1235]
subss xmm3, dword [rbx + 0x12345679]
subss xmm3, dword [rbx + rcx]
subss xmm3, dword [rbx + 4 * rcx]
subss xmm3, dword [rbx + rcx + 0x13]
subss xmm3, dword [rbx + rcx + 0x1235]
subss xmm3, dword [rbx + rcx + 0x12345679]
subss xmm3, dword [rbx + 4 * rcx + 0x13]
subss xmm3, dword [rbx + 4 * rcx + 0x1235]
subss xmm3, dword [rbx + 8 * rcx + 0x12345679]
subss xmm3, dword [4 * rcx]
subss xmm3, dword [4 * rcx + 0x13]
subss xmm3, dword [4 * rcx + 0x1235]
subss xmm3, dword [4 * rcx + 0x12345679]
subss xmm3, dword [rbp]
subss xmm3, dword [rbp + 0x12]
subss xmm3, dword [rbp + 0x1234]
subss xmm3, dword [rbp + 0x12345678]
subss xmm3, dword [4 * rbp]
subss xmm3, dword [4 * rbp + 0x12]
subss xmm3, dword [4 * rbp + 0x1234]
subss xmm3, dword [4 * rbp + 0x12345678]
subss xmm3, dword [rbx + 4 * rbp]
subss xmm3, dword [rbx + 4 * rbp + 0x12]
subss xmm3, dword [rbx + 4 * rbp + 0x1234]
subss xmm3, dword [rbx + 4 * rbp + 0x12345678]
subss xmm3, dword [rsp]
subss xmm3, dword [rsp + 0x12]
subss xmm3, dword [rsp + 0x1234]
subss xmm3, dword [rsp + 0x12345678]
subss xmm3, dword [rsp + rax]
subss xmm3, dword [rsp + rbp]
subss xmm3, dword [rsp + 2*rbp]
subss xmm3, dword [rsp + 4*rbp]
subss xmm3, dword [rsp + 8*rbp]
subss xmm3, dword [rax]
subss xmm3, dword [rcx]
subss xmm3, dword [rdx]
subss xmm3, dword [rbx]
subss xmm3, dword [rsp]
subss xmm3, dword [rbp]
subss xmm3, dword [rsi]
subss xmm3, dword [rdi]
subss xmm3, dword [rax + 2*rax]
subss xmm3, dword [rcx + 2*rcx]
subss xmm3, dword [rdx + 2*rdx]
subss xmm3, dword [rbx + 2*rbx]
subss xmm3, dword [rbp + 2*rbp]
subss xmm3, dword [rsi + 2*rsi]
subss xmm3, dword [rdi + 2*rdi]
subss xmm4, dword [rip + 0x13]
subss xmm4, dword [rip + 0x1235]
subss xmm4, dword [rip + 0x12345679]
subss xmm4, dword [rbx]
subss xmm4, dword [rcx + 0x14]
subss xmm4, dword [rdx + 0x15]
subss xmm4, dword [rbx + 0x1235]
subss xmm4, dword [rbx + 0x12345679]
subss xmm4, dword [rbx + rcx]
subss xmm4, dword [rbx + 4 * rcx]
subss xmm4, dword [rbx + rcx + 0x13]
subss xmm4, dword [rbx + rcx + 0x1235]
subss xmm4, dword [rbx + rcx + 0x12345679]
subss xmm4, dword [rbx + 4 * rcx + 0x13]
subss xmm4, dword [rbx + 4 * rcx + 0x1235]
subss xmm4, dword [rbx + 8 * rcx + 0x12345679]
subss xmm4, dword [4 * rcx]
subss xmm4, dword [4 * rcx + 0x13]
subss xmm4, dword [4 * rcx + 0x1235]
subss xmm4, dword [4 * rcx + 0x12345679]
subss xmm4, dword [rbp]
subss xmm4, dword [rbp + 0x12]
subss xmm4, dword [rbp + 0x1234]
subss xmm4, dword [rbp + 0x12345678]
subss xmm4, dword [4 * rbp]
subss xmm4, dword [4 * rbp + 0x12]
subss xmm4, dword [4 * rbp + 0x1234]
subss xmm4, dword [4 * rbp + 0x12345678]
subss xmm4, dword [rbx + 4 * rbp]
subss xmm4, dword [rbx + 4 * rbp + 0x12]
subss xmm4, dword [rbx + 4 * rbp + 0x1234]
subss xmm4, dword [rbx + 4 * rbp + 0x12345678]
subss xmm4, dword [rsp]
subss xmm4, dword [rsp + 0x12]
subss xmm4, dword [rsp + 0x1234]
subss xmm4, dword [rsp + 0x12345678]
subss xmm4, dword [rsp + rax]
subss xmm4, dword [rsp + rbp]
subss xmm4, dword [rsp + 2*rbp]
subss xmm4, dword [rsp + 4*rbp]
subss xmm4, dword [rsp + 8*rbp]
subss xmm4, dword [rax]
subss xmm4, dword [rcx]
subss xmm4, dword [rdx]
subss xmm4, dword [rbx]
subss xmm4, dword [rsp]
subss xmm4, dword [rbp]
subss xmm4, dword [rsi]
subss xmm4, dword [rdi]
subss xmm4, dword [rax + 2*rax]
subss xmm4, dword [rcx + 2*rcx]
subss xmm4, dword [rdx + 2*rdx]
subss xmm4, dword [rbx + 2*rbx]
subss xmm4, dword [rbp + 2*rbp]
subss xmm4, dword [rsi + 2*rsi]
subss xmm4, dword [rdi + 2*rdi]
subss xmm5, dword [rip + 0x13]
subss xmm5, dword [rip + 0x1235]
subss xmm5, dword [rip + 0x12345679]
subss xmm5, dword [rbx]
subss xmm5, dword [rcx + 0x14]
subss xmm5, dword [rdx + 0x15]
subss xmm5, dword [rbx + 0x1235]
subss xmm5, dword [rbx + 0x12345679]
subss xmm5, dword [rbx + rcx]
subss xmm5, dword [rbx + 4 * rcx]
subss xmm5, dword [rbx + rcx + 0x13]
subss xmm5, dword [rbx + rcx + 0x1235]
subss xmm5, dword [rbx + rcx + 0x12345679]
subss xmm5, dword [rbx + 4 * rcx + 0x13]
subss xmm5, dword [rbx + 4 * rcx + 0x1235]
subss xmm5, dword [rbx + 8 * rcx + 0x12345679]
subss xmm5, dword [4 * rcx]
subss xmm5, dword [4 * rcx + 0x13]
subss xmm5, dword [4 * rcx + 0x1235]
subss xmm5, dword [4 * rcx + 0x12345679]
subss xmm5, dword [rbp]
subss xmm5, dword [rbp + 0x12]
subss xmm5, dword [rbp + 0x1234]
subss xmm5, dword [rbp + 0x12345678]
subss xmm5, dword [4 * rbp]
subss xmm5, dword [4 * rbp + 0x12]
subss xmm5, dword [4 * rbp + 0x1234]
subss xmm5, dword [4 * rbp + 0x12345678]
subss xmm5, dword [rbx + 4 * rbp]
subss xmm5, dword [rbx + 4 * rbp + 0x12]
subss xmm5, dword [rbx + 4 * rbp + 0x1234]
subss xmm5, dword [rbx + 4 * rbp + 0x12345678]
subss xmm5, dword [rsp]
subss xmm5, dword [rsp + 0x12]
subss xmm5, dword [rsp + 0x1234]
subss xmm5, dword [rsp + 0x12345678]
subss xmm5, dword [rsp + rax]
subss xmm5, dword [rsp + rbp]
subss xmm5, dword [rsp + 2*rbp]
subss xmm5, dword [rsp + 4*rbp]
subss xmm5, dword [rsp + 8*rbp]
subss xmm5, dword [rax]
subss xmm5, dword [rcx]
subss xmm5, dword [rdx]
subss xmm5, dword [rbx]
subss xmm5, dword [rsp]
subss xmm5, dword [rbp]
subss xmm5, dword [rsi]
subss xmm5, dword [rdi]
subss xmm5, dword [rax + 2*rax]
subss xmm5, dword [rcx + 2*rcx]
subss xmm5, dword [rdx + 2*rdx]
subss xmm5, dword [rbx + 2*rbx]
subss xmm5, dword [rbp + 2*rbp]
subss xmm5, dword [rsi + 2*rsi]
subss xmm5, dword [rdi + 2*rdi]
subss xmm6, dword [rip + 0x13]
subss xmm6, dword [rip + 0x1235]
subss xmm6, dword [rip + 0x12345679]
subss xmm6, dword [rbx]
subss xmm6, dword [rcx + 0x14]
subss xmm6, dword [rdx + 0x15]
subss xmm6, dword [rbx + 0x1235]
subss xmm6, dword [rbx + 0x12345679]
subss xmm6, dword [rbx + rcx]
subss xmm6, dword [rbx + 4 * rcx]
subss xmm6, dword [rbx + rcx + 0x13]
subss xmm6, dword [rbx + rcx + 0x1235]
subss xmm6, dword [rbx + rcx + 0x12345679]
subss xmm6, dword [rbx + 4 * rcx + 0x13]
subss xmm6, dword [rbx + 4 * rcx + 0x1235]
subss xmm6, dword [rbx + 8 * rcx + 0x12345679]
subss xmm6, dword [4 * rcx]
subss xmm6, dword [4 * rcx + 0x13]
subss xmm6, dword [4 * rcx + 0x1235]
subss xmm6, dword [4 * rcx + 0x12345679]
subss xmm6, dword [rbp]
subss xmm6, dword [rbp + 0x12]
subss xmm6, dword [rbp + 0x1234]
subss xmm6, dword [rbp + 0x12345678]
subss xmm6, dword [4 * rbp]
subss xmm6, dword [4 * rbp + 0x12]
subss xmm6, dword [4 * rbp + 0x1234]
subss xmm6, dword [4 * rbp + 0x12345678]
subss xmm6, dword [rbx + 4 * rbp]
subss xmm6, dword [rbx + 4 * rbp + 0x12]
subss xmm6, dword [rbx + 4 * rbp + 0x1234]
subss xmm6, dword [rbx + 4 * rbp + 0x12345678]
subss xmm6, dword [rsp]
subss xmm6, dword [rsp + 0x12]
subss xmm6, dword [rsp + 0x1234]
subss xmm6, dword [rsp + 0x12345678]
subss xmm6, dword [rsp + rax]
subss xmm6, dword [rsp + rbp]
subss xmm6, dword [rsp + 2*rbp]
subss xmm6, dword [rsp + 4*rbp]
subss xmm6, dword [rsp + 8*rbp]
subss xmm6, dword [rax]
subss xmm6, dword [rcx]
subss xmm6, dword [rdx]
subss xmm6, dword [rbx]
subss xmm6, dword [rsp]
subss xmm6, dword [rbp]
subss xmm6, dword [rsi]
subss xmm6, dword [rdi]
subss xmm6, dword [rax + 2*rax]
subss xmm6, dword [rcx + 2*rcx]
subss xmm6, dword [rdx + 2*rdx]
subss xmm6, dword [rbx + 2*rbx]
subss xmm6, dword [rbp + 2*rbp]
subss xmm6, dword [rsi + 2*rsi]
subss xmm6, dword [rdi + 2*rdi]
subss xmm7, dword [rip + 0x13]
subss xmm7, dword [rip + 0x1235]
subss xmm7, dword [rip + 0x12345679]
subss xmm7, dword [rbx]
subss xmm7, dword [rcx + 0x14]
subss xmm7, dword [rdx + 0x15]
subss xmm7, dword [rbx + 0x1235]
subss xmm7, dword [rbx + 0x12345679]
subss xmm7, dword [rbx + rcx]
subss xmm7, dword [rbx + 4 * rcx]
subss xmm7, dword [rbx + rcx + 0x13]
subss xmm7, dword [rbx + rcx + 0x1235]
subss xmm7, dword [rbx + rcx + 0x12345679]
subss xmm7, dword [rbx + 4 * rcx + 0x13]
subss xmm7, dword [rbx + 4 * rcx + 0x1235]
subss xmm7, dword [rbx + 8 * rcx + 0x12345679]
subss xmm7, dword [4 * rcx]
subss xmm7, dword [4 * rcx + 0x13]
subss xmm7, dword [4 * rcx + 0x1235]
subss xmm7, dword [4 * rcx + 0x12345679]
subss xmm7, dword [rbp]
subss xmm7, dword [rbp + 0x12]
subss xmm7, dword [rbp + 0x1234]
subss xmm7, dword [rbp + 0x12345678]
subss xmm7, dword [4 * rbp]
subss xmm7, dword [4 * rbp + 0x12]
subss xmm7, dword [4 * rbp + 0x1234]
subss xmm7, dword [4 * rbp + 0x12345678]
subss xmm7, dword [rbx + 4 * rbp]
subss xmm7, dword [rbx + 4 * rbp + 0x12]
subss xmm7, dword [rbx + 4 * rbp + 0x1234]
subss xmm7, dword [rbx + 4 * rbp + 0x12345678]
subss xmm7, dword [rsp]
subss xmm7, dword [rsp + 0x12]
subss xmm7, dword [rsp + 0x1234]
subss xmm7, dword [rsp + 0x12345678]
subss xmm7, dword [rsp + rax]
subss xmm7, dword [rsp + rbp]
subss xmm7, dword [rsp + 2*rbp]
subss xmm7, dword [rsp + 4*rbp]
subss xmm7, dword [rsp + 8*rbp]
subss xmm7, dword [rax]
subss xmm7, dword [rcx]
subss xmm7, dword [rdx]
subss xmm7, dword [rbx]
subss xmm7, dword [rsp]
subss xmm7, dword [rbp]
subss xmm7, dword [rsi]
subss xmm7, dword [rdi]
subss xmm7, dword [rax + 2*rax]
subss xmm7, dword [rcx + 2*rcx]
subss xmm7, dword [rdx + 2*rdx]
subss xmm7, dword [rbx + 2*rbx]
subss xmm7, dword [rbp + 2*rbp]
subss xmm7, dword [rsi + 2*rsi]
subss xmm7, dword [rdi + 2*rdi]

