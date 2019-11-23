use64
; ------------------------------------------------------------------------------
; opcode xmm,m64
; ------------------------------------------------------------------------------
movhps xmm0, qword [rip + 0x13]
movhps xmm0, qword [rip + 0x1235]
movhps xmm0, qword [rip + 0x12345679]
movhps xmm0, qword [rbx]
movhps xmm0, qword [rcx + 0x14]
movhps xmm0, qword [rdx + 0x15]
movhps xmm0, qword [rbx + 0x1235]
movhps xmm0, qword [rbx + 0x12345679]
movhps xmm0, qword [rbx + rcx]
movhps xmm0, qword [rbx + 4 * rcx]
movhps xmm0, qword [rbx + rcx + 0x13]
movhps xmm0, qword [rbx + rcx + 0x1235]
movhps xmm0, qword [rbx + rcx + 0x12345679]
movhps xmm0, qword [rbx + 4 * rcx + 0x13]
movhps xmm0, qword [rbx + 4 * rcx + 0x1235]
movhps xmm0, qword [rbx + 8 * rcx + 0x12345679]
movhps xmm0, qword [4 * rcx]
movhps xmm0, qword [4 * rcx + 0x13]
movhps xmm0, qword [4 * rcx + 0x1235]
movhps xmm0, qword [4 * rcx + 0x12345679]
movhps xmm0, qword [rbp]
movhps xmm0, qword [rbp + 0x12]
movhps xmm0, qword [rbp + 0x1234]
movhps xmm0, qword [rbp + 0x12345678]
movhps xmm0, qword [4 * rbp]
movhps xmm0, qword [4 * rbp + 0x12]
movhps xmm0, qword [4 * rbp + 0x1234]
movhps xmm0, qword [4 * rbp + 0x12345678]
movhps xmm0, qword [rbx + 4 * rbp]
movhps xmm0, qword [rbx + 4 * rbp + 0x12]
movhps xmm0, qword [rbx + 4 * rbp + 0x1234]
movhps xmm0, qword [rbx + 4 * rbp + 0x12345678]
movhps xmm0, qword [rsp]
movhps xmm0, qword [rsp + 0x12]
movhps xmm0, qword [rsp + 0x1234]
movhps xmm0, qword [rsp + 0x12345678]
movhps xmm0, qword [rsp + rax]
movhps xmm0, qword [rsp + rbp]
movhps xmm0, qword [rsp + 2*rbp]
movhps xmm0, qword [rsp + 4*rbp]
movhps xmm0, qword [rsp + 8*rbp]
movhps xmm0, qword [rax]
movhps xmm0, qword [rcx]
movhps xmm0, qword [rdx]
movhps xmm0, qword [rbx]
movhps xmm0, qword [rsp]
movhps xmm0, qword [rbp]
movhps xmm0, qword [rsi]
movhps xmm0, qword [rdi]
movhps xmm0, qword [rax + 2*rax]
movhps xmm0, qword [rcx + 2*rcx]
movhps xmm0, qword [rdx + 2*rdx]
movhps xmm0, qword [rbx + 2*rbx]
movhps xmm0, qword [rbp + 2*rbp]
movhps xmm0, qword [rsi + 2*rsi]
movhps xmm0, qword [rdi + 2*rdi]
movhps xmm1, qword [rip + 0x13]
movhps xmm1, qword [rip + 0x1235]
movhps xmm1, qword [rip + 0x12345679]
movhps xmm1, qword [rbx]
movhps xmm1, qword [rcx + 0x14]
movhps xmm1, qword [rdx + 0x15]
movhps xmm1, qword [rbx + 0x1235]
movhps xmm1, qword [rbx + 0x12345679]
movhps xmm1, qword [rbx + rcx]
movhps xmm1, qword [rbx + 4 * rcx]
movhps xmm1, qword [rbx + rcx + 0x13]
movhps xmm1, qword [rbx + rcx + 0x1235]
movhps xmm1, qword [rbx + rcx + 0x12345679]
movhps xmm1, qword [rbx + 4 * rcx + 0x13]
movhps xmm1, qword [rbx + 4 * rcx + 0x1235]
movhps xmm1, qword [rbx + 8 * rcx + 0x12345679]
movhps xmm1, qword [4 * rcx]
movhps xmm1, qword [4 * rcx + 0x13]
movhps xmm1, qword [4 * rcx + 0x1235]
movhps xmm1, qword [4 * rcx + 0x12345679]
movhps xmm1, qword [rbp]
movhps xmm1, qword [rbp + 0x12]
movhps xmm1, qword [rbp + 0x1234]
movhps xmm1, qword [rbp + 0x12345678]
movhps xmm1, qword [4 * rbp]
movhps xmm1, qword [4 * rbp + 0x12]
movhps xmm1, qword [4 * rbp + 0x1234]
movhps xmm1, qword [4 * rbp + 0x12345678]
movhps xmm1, qword [rbx + 4 * rbp]
movhps xmm1, qword [rbx + 4 * rbp + 0x12]
movhps xmm1, qword [rbx + 4 * rbp + 0x1234]
movhps xmm1, qword [rbx + 4 * rbp + 0x12345678]
movhps xmm1, qword [rsp]
movhps xmm1, qword [rsp + 0x12]
movhps xmm1, qword [rsp + 0x1234]
movhps xmm1, qword [rsp + 0x12345678]
movhps xmm1, qword [rsp + rax]
movhps xmm1, qword [rsp + rbp]
movhps xmm1, qword [rsp + 2*rbp]
movhps xmm1, qword [rsp + 4*rbp]
movhps xmm1, qword [rsp + 8*rbp]
movhps xmm1, qword [rax]
movhps xmm1, qword [rcx]
movhps xmm1, qword [rdx]
movhps xmm1, qword [rbx]
movhps xmm1, qword [rsp]
movhps xmm1, qword [rbp]
movhps xmm1, qword [rsi]
movhps xmm1, qword [rdi]
movhps xmm1, qword [rax + 2*rax]
movhps xmm1, qword [rcx + 2*rcx]
movhps xmm1, qword [rdx + 2*rdx]
movhps xmm1, qword [rbx + 2*rbx]
movhps xmm1, qword [rbp + 2*rbp]
movhps xmm1, qword [rsi + 2*rsi]
movhps xmm1, qword [rdi + 2*rdi]
movhps xmm2, qword [rip + 0x13]
movhps xmm2, qword [rip + 0x1235]
movhps xmm2, qword [rip + 0x12345679]
movhps xmm2, qword [rbx]
movhps xmm2, qword [rcx + 0x14]
movhps xmm2, qword [rdx + 0x15]
movhps xmm2, qword [rbx + 0x1235]
movhps xmm2, qword [rbx + 0x12345679]
movhps xmm2, qword [rbx + rcx]
movhps xmm2, qword [rbx + 4 * rcx]
movhps xmm2, qword [rbx + rcx + 0x13]
movhps xmm2, qword [rbx + rcx + 0x1235]
movhps xmm2, qword [rbx + rcx + 0x12345679]
movhps xmm2, qword [rbx + 4 * rcx + 0x13]
movhps xmm2, qword [rbx + 4 * rcx + 0x1235]
movhps xmm2, qword [rbx + 8 * rcx + 0x12345679]
movhps xmm2, qword [4 * rcx]
movhps xmm2, qword [4 * rcx + 0x13]
movhps xmm2, qword [4 * rcx + 0x1235]
movhps xmm2, qword [4 * rcx + 0x12345679]
movhps xmm2, qword [rbp]
movhps xmm2, qword [rbp + 0x12]
movhps xmm2, qword [rbp + 0x1234]
movhps xmm2, qword [rbp + 0x12345678]
movhps xmm2, qword [4 * rbp]
movhps xmm2, qword [4 * rbp + 0x12]
movhps xmm2, qword [4 * rbp + 0x1234]
movhps xmm2, qword [4 * rbp + 0x12345678]
movhps xmm2, qword [rbx + 4 * rbp]
movhps xmm2, qword [rbx + 4 * rbp + 0x12]
movhps xmm2, qword [rbx + 4 * rbp + 0x1234]
movhps xmm2, qword [rbx + 4 * rbp + 0x12345678]
movhps xmm2, qword [rsp]
movhps xmm2, qword [rsp + 0x12]
movhps xmm2, qword [rsp + 0x1234]
movhps xmm2, qword [rsp + 0x12345678]
movhps xmm2, qword [rsp + rax]
movhps xmm2, qword [rsp + rbp]
movhps xmm2, qword [rsp + 2*rbp]
movhps xmm2, qword [rsp + 4*rbp]
movhps xmm2, qword [rsp + 8*rbp]
movhps xmm2, qword [rax]
movhps xmm2, qword [rcx]
movhps xmm2, qword [rdx]
movhps xmm2, qword [rbx]
movhps xmm2, qword [rsp]
movhps xmm2, qword [rbp]
movhps xmm2, qword [rsi]
movhps xmm2, qword [rdi]
movhps xmm2, qword [rax + 2*rax]
movhps xmm2, qword [rcx + 2*rcx]
movhps xmm2, qword [rdx + 2*rdx]
movhps xmm2, qword [rbx + 2*rbx]
movhps xmm2, qword [rbp + 2*rbp]
movhps xmm2, qword [rsi + 2*rsi]
movhps xmm2, qword [rdi + 2*rdi]
movhps xmm3, qword [rip + 0x13]
movhps xmm3, qword [rip + 0x1235]
movhps xmm3, qword [rip + 0x12345679]
movhps xmm3, qword [rbx]
movhps xmm3, qword [rcx + 0x14]
movhps xmm3, qword [rdx + 0x15]
movhps xmm3, qword [rbx + 0x1235]
movhps xmm3, qword [rbx + 0x12345679]
movhps xmm3, qword [rbx + rcx]
movhps xmm3, qword [rbx + 4 * rcx]
movhps xmm3, qword [rbx + rcx + 0x13]
movhps xmm3, qword [rbx + rcx + 0x1235]
movhps xmm3, qword [rbx + rcx + 0x12345679]
movhps xmm3, qword [rbx + 4 * rcx + 0x13]
movhps xmm3, qword [rbx + 4 * rcx + 0x1235]
movhps xmm3, qword [rbx + 8 * rcx + 0x12345679]
movhps xmm3, qword [4 * rcx]
movhps xmm3, qword [4 * rcx + 0x13]
movhps xmm3, qword [4 * rcx + 0x1235]
movhps xmm3, qword [4 * rcx + 0x12345679]
movhps xmm3, qword [rbp]
movhps xmm3, qword [rbp + 0x12]
movhps xmm3, qword [rbp + 0x1234]
movhps xmm3, qword [rbp + 0x12345678]
movhps xmm3, qword [4 * rbp]
movhps xmm3, qword [4 * rbp + 0x12]
movhps xmm3, qword [4 * rbp + 0x1234]
movhps xmm3, qword [4 * rbp + 0x12345678]
movhps xmm3, qword [rbx + 4 * rbp]
movhps xmm3, qword [rbx + 4 * rbp + 0x12]
movhps xmm3, qword [rbx + 4 * rbp + 0x1234]
movhps xmm3, qword [rbx + 4 * rbp + 0x12345678]
movhps xmm3, qword [rsp]
movhps xmm3, qword [rsp + 0x12]
movhps xmm3, qword [rsp + 0x1234]
movhps xmm3, qword [rsp + 0x12345678]
movhps xmm3, qword [rsp + rax]
movhps xmm3, qword [rsp + rbp]
movhps xmm3, qword [rsp + 2*rbp]
movhps xmm3, qword [rsp + 4*rbp]
movhps xmm3, qword [rsp + 8*rbp]
movhps xmm3, qword [rax]
movhps xmm3, qword [rcx]
movhps xmm3, qword [rdx]
movhps xmm3, qword [rbx]
movhps xmm3, qword [rsp]
movhps xmm3, qword [rbp]
movhps xmm3, qword [rsi]
movhps xmm3, qword [rdi]
movhps xmm3, qword [rax + 2*rax]
movhps xmm3, qword [rcx + 2*rcx]
movhps xmm3, qword [rdx + 2*rdx]
movhps xmm3, qword [rbx + 2*rbx]
movhps xmm3, qword [rbp + 2*rbp]
movhps xmm3, qword [rsi + 2*rsi]
movhps xmm3, qword [rdi + 2*rdi]
movhps xmm4, qword [rip + 0x13]
movhps xmm4, qword [rip + 0x1235]
movhps xmm4, qword [rip + 0x12345679]
movhps xmm4, qword [rbx]
movhps xmm4, qword [rcx + 0x14]
movhps xmm4, qword [rdx + 0x15]
movhps xmm4, qword [rbx + 0x1235]
movhps xmm4, qword [rbx + 0x12345679]
movhps xmm4, qword [rbx + rcx]
movhps xmm4, qword [rbx + 4 * rcx]
movhps xmm4, qword [rbx + rcx + 0x13]
movhps xmm4, qword [rbx + rcx + 0x1235]
movhps xmm4, qword [rbx + rcx + 0x12345679]
movhps xmm4, qword [rbx + 4 * rcx + 0x13]
movhps xmm4, qword [rbx + 4 * rcx + 0x1235]
movhps xmm4, qword [rbx + 8 * rcx + 0x12345679]
movhps xmm4, qword [4 * rcx]
movhps xmm4, qword [4 * rcx + 0x13]
movhps xmm4, qword [4 * rcx + 0x1235]
movhps xmm4, qword [4 * rcx + 0x12345679]
movhps xmm4, qword [rbp]
movhps xmm4, qword [rbp + 0x12]
movhps xmm4, qword [rbp + 0x1234]
movhps xmm4, qword [rbp + 0x12345678]
movhps xmm4, qword [4 * rbp]
movhps xmm4, qword [4 * rbp + 0x12]
movhps xmm4, qword [4 * rbp + 0x1234]
movhps xmm4, qword [4 * rbp + 0x12345678]
movhps xmm4, qword [rbx + 4 * rbp]
movhps xmm4, qword [rbx + 4 * rbp + 0x12]
movhps xmm4, qword [rbx + 4 * rbp + 0x1234]
movhps xmm4, qword [rbx + 4 * rbp + 0x12345678]
movhps xmm4, qword [rsp]
movhps xmm4, qword [rsp + 0x12]
movhps xmm4, qword [rsp + 0x1234]
movhps xmm4, qword [rsp + 0x12345678]
movhps xmm4, qword [rsp + rax]
movhps xmm4, qword [rsp + rbp]
movhps xmm4, qword [rsp + 2*rbp]
movhps xmm4, qword [rsp + 4*rbp]
movhps xmm4, qword [rsp + 8*rbp]
movhps xmm4, qword [rax]
movhps xmm4, qword [rcx]
movhps xmm4, qword [rdx]
movhps xmm4, qword [rbx]
movhps xmm4, qword [rsp]
movhps xmm4, qword [rbp]
movhps xmm4, qword [rsi]
movhps xmm4, qword [rdi]
movhps xmm4, qword [rax + 2*rax]
movhps xmm4, qword [rcx + 2*rcx]
movhps xmm4, qword [rdx + 2*rdx]
movhps xmm4, qword [rbx + 2*rbx]
movhps xmm4, qword [rbp + 2*rbp]
movhps xmm4, qword [rsi + 2*rsi]
movhps xmm4, qword [rdi + 2*rdi]
movhps xmm5, qword [rip + 0x13]
movhps xmm5, qword [rip + 0x1235]
movhps xmm5, qword [rip + 0x12345679]
movhps xmm5, qword [rbx]
movhps xmm5, qword [rcx + 0x14]
movhps xmm5, qword [rdx + 0x15]
movhps xmm5, qword [rbx + 0x1235]
movhps xmm5, qword [rbx + 0x12345679]
movhps xmm5, qword [rbx + rcx]
movhps xmm5, qword [rbx + 4 * rcx]
movhps xmm5, qword [rbx + rcx + 0x13]
movhps xmm5, qword [rbx + rcx + 0x1235]
movhps xmm5, qword [rbx + rcx + 0x12345679]
movhps xmm5, qword [rbx + 4 * rcx + 0x13]
movhps xmm5, qword [rbx + 4 * rcx + 0x1235]
movhps xmm5, qword [rbx + 8 * rcx + 0x12345679]
movhps xmm5, qword [4 * rcx]
movhps xmm5, qword [4 * rcx + 0x13]
movhps xmm5, qword [4 * rcx + 0x1235]
movhps xmm5, qword [4 * rcx + 0x12345679]
movhps xmm5, qword [rbp]
movhps xmm5, qword [rbp + 0x12]
movhps xmm5, qword [rbp + 0x1234]
movhps xmm5, qword [rbp + 0x12345678]
movhps xmm5, qword [4 * rbp]
movhps xmm5, qword [4 * rbp + 0x12]
movhps xmm5, qword [4 * rbp + 0x1234]
movhps xmm5, qword [4 * rbp + 0x12345678]
movhps xmm5, qword [rbx + 4 * rbp]
movhps xmm5, qword [rbx + 4 * rbp + 0x12]
movhps xmm5, qword [rbx + 4 * rbp + 0x1234]
movhps xmm5, qword [rbx + 4 * rbp + 0x12345678]
movhps xmm5, qword [rsp]
movhps xmm5, qword [rsp + 0x12]
movhps xmm5, qword [rsp + 0x1234]
movhps xmm5, qword [rsp + 0x12345678]
movhps xmm5, qword [rsp + rax]
movhps xmm5, qword [rsp + rbp]
movhps xmm5, qword [rsp + 2*rbp]
movhps xmm5, qword [rsp + 4*rbp]
movhps xmm5, qword [rsp + 8*rbp]
movhps xmm5, qword [rax]
movhps xmm5, qword [rcx]
movhps xmm5, qword [rdx]
movhps xmm5, qword [rbx]
movhps xmm5, qword [rsp]
movhps xmm5, qword [rbp]
movhps xmm5, qword [rsi]
movhps xmm5, qword [rdi]
movhps xmm5, qword [rax + 2*rax]
movhps xmm5, qword [rcx + 2*rcx]
movhps xmm5, qword [rdx + 2*rdx]
movhps xmm5, qword [rbx + 2*rbx]
movhps xmm5, qword [rbp + 2*rbp]
movhps xmm5, qword [rsi + 2*rsi]
movhps xmm5, qword [rdi + 2*rdi]
movhps xmm6, qword [rip + 0x13]
movhps xmm6, qword [rip + 0x1235]
movhps xmm6, qword [rip + 0x12345679]
movhps xmm6, qword [rbx]
movhps xmm6, qword [rcx + 0x14]
movhps xmm6, qword [rdx + 0x15]
movhps xmm6, qword [rbx + 0x1235]
movhps xmm6, qword [rbx + 0x12345679]
movhps xmm6, qword [rbx + rcx]
movhps xmm6, qword [rbx + 4 * rcx]
movhps xmm6, qword [rbx + rcx + 0x13]
movhps xmm6, qword [rbx + rcx + 0x1235]
movhps xmm6, qword [rbx + rcx + 0x12345679]
movhps xmm6, qword [rbx + 4 * rcx + 0x13]
movhps xmm6, qword [rbx + 4 * rcx + 0x1235]
movhps xmm6, qword [rbx + 8 * rcx + 0x12345679]
movhps xmm6, qword [4 * rcx]
movhps xmm6, qword [4 * rcx + 0x13]
movhps xmm6, qword [4 * rcx + 0x1235]
movhps xmm6, qword [4 * rcx + 0x12345679]
movhps xmm6, qword [rbp]
movhps xmm6, qword [rbp + 0x12]
movhps xmm6, qword [rbp + 0x1234]
movhps xmm6, qword [rbp + 0x12345678]
movhps xmm6, qword [4 * rbp]
movhps xmm6, qword [4 * rbp + 0x12]
movhps xmm6, qword [4 * rbp + 0x1234]
movhps xmm6, qword [4 * rbp + 0x12345678]
movhps xmm6, qword [rbx + 4 * rbp]
movhps xmm6, qword [rbx + 4 * rbp + 0x12]
movhps xmm6, qword [rbx + 4 * rbp + 0x1234]
movhps xmm6, qword [rbx + 4 * rbp + 0x12345678]
movhps xmm6, qword [rsp]
movhps xmm6, qword [rsp + 0x12]
movhps xmm6, qword [rsp + 0x1234]
movhps xmm6, qword [rsp + 0x12345678]
movhps xmm6, qword [rsp + rax]
movhps xmm6, qword [rsp + rbp]
movhps xmm6, qword [rsp + 2*rbp]
movhps xmm6, qword [rsp + 4*rbp]
movhps xmm6, qword [rsp + 8*rbp]
movhps xmm6, qword [rax]
movhps xmm6, qword [rcx]
movhps xmm6, qword [rdx]
movhps xmm6, qword [rbx]
movhps xmm6, qword [rsp]
movhps xmm6, qword [rbp]
movhps xmm6, qword [rsi]
movhps xmm6, qword [rdi]
movhps xmm6, qword [rax + 2*rax]
movhps xmm6, qword [rcx + 2*rcx]
movhps xmm6, qword [rdx + 2*rdx]
movhps xmm6, qword [rbx + 2*rbx]
movhps xmm6, qword [rbp + 2*rbp]
movhps xmm6, qword [rsi + 2*rsi]
movhps xmm6, qword [rdi + 2*rdi]
movhps xmm7, qword [rip + 0x13]
movhps xmm7, qword [rip + 0x1235]
movhps xmm7, qword [rip + 0x12345679]
movhps xmm7, qword [rbx]
movhps xmm7, qword [rcx + 0x14]
movhps xmm7, qword [rdx + 0x15]
movhps xmm7, qword [rbx + 0x1235]
movhps xmm7, qword [rbx + 0x12345679]
movhps xmm7, qword [rbx + rcx]
movhps xmm7, qword [rbx + 4 * rcx]
movhps xmm7, qword [rbx + rcx + 0x13]
movhps xmm7, qword [rbx + rcx + 0x1235]
movhps xmm7, qword [rbx + rcx + 0x12345679]
movhps xmm7, qword [rbx + 4 * rcx + 0x13]
movhps xmm7, qword [rbx + 4 * rcx + 0x1235]
movhps xmm7, qword [rbx + 8 * rcx + 0x12345679]
movhps xmm7, qword [4 * rcx]
movhps xmm7, qword [4 * rcx + 0x13]
movhps xmm7, qword [4 * rcx + 0x1235]
movhps xmm7, qword [4 * rcx + 0x12345679]
movhps xmm7, qword [rbp]
movhps xmm7, qword [rbp + 0x12]
movhps xmm7, qword [rbp + 0x1234]
movhps xmm7, qword [rbp + 0x12345678]
movhps xmm7, qword [4 * rbp]
movhps xmm7, qword [4 * rbp + 0x12]
movhps xmm7, qword [4 * rbp + 0x1234]
movhps xmm7, qword [4 * rbp + 0x12345678]
movhps xmm7, qword [rbx + 4 * rbp]
movhps xmm7, qword [rbx + 4 * rbp + 0x12]
movhps xmm7, qword [rbx + 4 * rbp + 0x1234]
movhps xmm7, qword [rbx + 4 * rbp + 0x12345678]
movhps xmm7, qword [rsp]
movhps xmm7, qword [rsp + 0x12]
movhps xmm7, qword [rsp + 0x1234]
movhps xmm7, qword [rsp + 0x12345678]
movhps xmm7, qword [rsp + rax]
movhps xmm7, qword [rsp + rbp]
movhps xmm7, qword [rsp + 2*rbp]
movhps xmm7, qword [rsp + 4*rbp]
movhps xmm7, qword [rsp + 8*rbp]
movhps xmm7, qword [rax]
movhps xmm7, qword [rcx]
movhps xmm7, qword [rdx]
movhps xmm7, qword [rbx]
movhps xmm7, qword [rsp]
movhps xmm7, qword [rbp]
movhps xmm7, qword [rsi]
movhps xmm7, qword [rdi]
movhps xmm7, qword [rax + 2*rax]
movhps xmm7, qword [rcx + 2*rcx]
movhps xmm7, qword [rdx + 2*rdx]
movhps xmm7, qword [rbx + 2*rbx]
movhps xmm7, qword [rbp + 2*rbp]
movhps xmm7, qword [rsi + 2*rsi]
movhps xmm7, qword [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode m64,xmm
; ------------------------------------------------------------------------------
movhps qword [rip + 0x13], xmm0
movhps qword [rip + 0x13], xmm1
movhps qword [rip + 0x13], xmm2
movhps qword [rip + 0x13], xmm3
movhps qword [rip + 0x13], xmm4
movhps qword [rip + 0x13], xmm5
movhps qword [rip + 0x13], xmm6
movhps qword [rip + 0x13], xmm7
movhps qword [rip + 0x1235], xmm0
movhps qword [rip + 0x1235], xmm1
movhps qword [rip + 0x1235], xmm2
movhps qword [rip + 0x1235], xmm3
movhps qword [rip + 0x1235], xmm4
movhps qword [rip + 0x1235], xmm5
movhps qword [rip + 0x1235], xmm6
movhps qword [rip + 0x1235], xmm7
movhps qword [rip + 0x12345679], xmm0
movhps qword [rip + 0x12345679], xmm1
movhps qword [rip + 0x12345679], xmm2
movhps qword [rip + 0x12345679], xmm3
movhps qword [rip + 0x12345679], xmm4
movhps qword [rip + 0x12345679], xmm5
movhps qword [rip + 0x12345679], xmm6
movhps qword [rip + 0x12345679], xmm7
movhps qword [rbx], xmm0
movhps qword [rbx], xmm1
movhps qword [rbx], xmm2
movhps qword [rbx], xmm3
movhps qword [rbx], xmm4
movhps qword [rbx], xmm5
movhps qword [rbx], xmm6
movhps qword [rbx], xmm7
movhps qword [rcx + 0x14], xmm0
movhps qword [rcx + 0x14], xmm1
movhps qword [rcx + 0x14], xmm2
movhps qword [rcx + 0x14], xmm3
movhps qword [rcx + 0x14], xmm4
movhps qword [rcx + 0x14], xmm5
movhps qword [rcx + 0x14], xmm6
movhps qword [rcx + 0x14], xmm7
movhps qword [rdx + 0x15], xmm0
movhps qword [rdx + 0x15], xmm1
movhps qword [rdx + 0x15], xmm2
movhps qword [rdx + 0x15], xmm3
movhps qword [rdx + 0x15], xmm4
movhps qword [rdx + 0x15], xmm5
movhps qword [rdx + 0x15], xmm6
movhps qword [rdx + 0x15], xmm7
movhps qword [rbx + 0x1235], xmm0
movhps qword [rbx + 0x1235], xmm1
movhps qword [rbx + 0x1235], xmm2
movhps qword [rbx + 0x1235], xmm3
movhps qword [rbx + 0x1235], xmm4
movhps qword [rbx + 0x1235], xmm5
movhps qword [rbx + 0x1235], xmm6
movhps qword [rbx + 0x1235], xmm7
movhps qword [rbx + 0x12345679], xmm0
movhps qword [rbx + 0x12345679], xmm1
movhps qword [rbx + 0x12345679], xmm2
movhps qword [rbx + 0x12345679], xmm3
movhps qword [rbx + 0x12345679], xmm4
movhps qword [rbx + 0x12345679], xmm5
movhps qword [rbx + 0x12345679], xmm6
movhps qword [rbx + 0x12345679], xmm7
movhps qword [rbx + rcx], xmm0
movhps qword [rbx + rcx], xmm1
movhps qword [rbx + rcx], xmm2
movhps qword [rbx + rcx], xmm3
movhps qword [rbx + rcx], xmm4
movhps qword [rbx + rcx], xmm5
movhps qword [rbx + rcx], xmm6
movhps qword [rbx + rcx], xmm7
movhps qword [rbx + 4 * rcx], xmm0
movhps qword [rbx + 4 * rcx], xmm1
movhps qword [rbx + 4 * rcx], xmm2
movhps qword [rbx + 4 * rcx], xmm3
movhps qword [rbx + 4 * rcx], xmm4
movhps qword [rbx + 4 * rcx], xmm5
movhps qword [rbx + 4 * rcx], xmm6
movhps qword [rbx + 4 * rcx], xmm7
movhps qword [rbx + rcx + 0x13], xmm0
movhps qword [rbx + rcx + 0x13], xmm1
movhps qword [rbx + rcx + 0x13], xmm2
movhps qword [rbx + rcx + 0x13], xmm3
movhps qword [rbx + rcx + 0x13], xmm4
movhps qword [rbx + rcx + 0x13], xmm5
movhps qword [rbx + rcx + 0x13], xmm6
movhps qword [rbx + rcx + 0x13], xmm7
movhps qword [rbx + rcx + 0x1235], xmm0
movhps qword [rbx + rcx + 0x1235], xmm1
movhps qword [rbx + rcx + 0x1235], xmm2
movhps qword [rbx + rcx + 0x1235], xmm3
movhps qword [rbx + rcx + 0x1235], xmm4
movhps qword [rbx + rcx + 0x1235], xmm5
movhps qword [rbx + rcx + 0x1235], xmm6
movhps qword [rbx + rcx + 0x1235], xmm7
movhps qword [rbx + rcx + 0x12345679], xmm0
movhps qword [rbx + rcx + 0x12345679], xmm1
movhps qword [rbx + rcx + 0x12345679], xmm2
movhps qword [rbx + rcx + 0x12345679], xmm3
movhps qword [rbx + rcx + 0x12345679], xmm4
movhps qword [rbx + rcx + 0x12345679], xmm5
movhps qword [rbx + rcx + 0x12345679], xmm6
movhps qword [rbx + rcx + 0x12345679], xmm7
movhps qword [rbx + 4 * rcx + 0x13], xmm0
movhps qword [rbx + 4 * rcx + 0x13], xmm1
movhps qword [rbx + 4 * rcx + 0x13], xmm2
movhps qword [rbx + 4 * rcx + 0x13], xmm3
movhps qword [rbx + 4 * rcx + 0x13], xmm4
movhps qword [rbx + 4 * rcx + 0x13], xmm5
movhps qword [rbx + 4 * rcx + 0x13], xmm6
movhps qword [rbx + 4 * rcx + 0x13], xmm7
movhps qword [rbx + 4 * rcx + 0x1235], xmm0
movhps qword [rbx + 4 * rcx + 0x1235], xmm1
movhps qword [rbx + 4 * rcx + 0x1235], xmm2
movhps qword [rbx + 4 * rcx + 0x1235], xmm3
movhps qword [rbx + 4 * rcx + 0x1235], xmm4
movhps qword [rbx + 4 * rcx + 0x1235], xmm5
movhps qword [rbx + 4 * rcx + 0x1235], xmm6
movhps qword [rbx + 4 * rcx + 0x1235], xmm7
movhps qword [rbx + 8 * rcx + 0x12345679], xmm0
movhps qword [rbx + 8 * rcx + 0x12345679], xmm1
movhps qword [rbx + 8 * rcx + 0x12345679], xmm2
movhps qword [rbx + 8 * rcx + 0x12345679], xmm3
movhps qword [rbx + 8 * rcx + 0x12345679], xmm4
movhps qword [rbx + 8 * rcx + 0x12345679], xmm5
movhps qword [rbx + 8 * rcx + 0x12345679], xmm6
movhps qword [rbx + 8 * rcx + 0x12345679], xmm7
movhps qword [4 * rcx], xmm0
movhps qword [4 * rcx], xmm1
movhps qword [4 * rcx], xmm2
movhps qword [4 * rcx], xmm3
movhps qword [4 * rcx], xmm4
movhps qword [4 * rcx], xmm5
movhps qword [4 * rcx], xmm6
movhps qword [4 * rcx], xmm7
movhps qword [4 * rcx + 0x13], xmm0
movhps qword [4 * rcx + 0x13], xmm1
movhps qword [4 * rcx + 0x13], xmm2
movhps qword [4 * rcx + 0x13], xmm3
movhps qword [4 * rcx + 0x13], xmm4
movhps qword [4 * rcx + 0x13], xmm5
movhps qword [4 * rcx + 0x13], xmm6
movhps qword [4 * rcx + 0x13], xmm7
movhps qword [4 * rcx + 0x1235], xmm0
movhps qword [4 * rcx + 0x1235], xmm1
movhps qword [4 * rcx + 0x1235], xmm2
movhps qword [4 * rcx + 0x1235], xmm3
movhps qword [4 * rcx + 0x1235], xmm4
movhps qword [4 * rcx + 0x1235], xmm5
movhps qword [4 * rcx + 0x1235], xmm6
movhps qword [4 * rcx + 0x1235], xmm7
movhps qword [4 * rcx + 0x12345679], xmm0
movhps qword [4 * rcx + 0x12345679], xmm1
movhps qword [4 * rcx + 0x12345679], xmm2
movhps qword [4 * rcx + 0x12345679], xmm3
movhps qword [4 * rcx + 0x12345679], xmm4
movhps qword [4 * rcx + 0x12345679], xmm5
movhps qword [4 * rcx + 0x12345679], xmm6
movhps qword [4 * rcx + 0x12345679], xmm7
movhps qword [rbp], xmm0
movhps qword [rbp], xmm1
movhps qword [rbp], xmm2
movhps qword [rbp], xmm3
movhps qword [rbp], xmm4
movhps qword [rbp], xmm5
movhps qword [rbp], xmm6
movhps qword [rbp], xmm7
movhps qword [rbp + 0x12], xmm0
movhps qword [rbp + 0x12], xmm1
movhps qword [rbp + 0x12], xmm2
movhps qword [rbp + 0x12], xmm3
movhps qword [rbp + 0x12], xmm4
movhps qword [rbp + 0x12], xmm5
movhps qword [rbp + 0x12], xmm6
movhps qword [rbp + 0x12], xmm7
movhps qword [rbp + 0x1234], xmm0
movhps qword [rbp + 0x1234], xmm1
movhps qword [rbp + 0x1234], xmm2
movhps qword [rbp + 0x1234], xmm3
movhps qword [rbp + 0x1234], xmm4
movhps qword [rbp + 0x1234], xmm5
movhps qword [rbp + 0x1234], xmm6
movhps qword [rbp + 0x1234], xmm7
movhps qword [rbp + 0x12345678], xmm0
movhps qword [rbp + 0x12345678], xmm1
movhps qword [rbp + 0x12345678], xmm2
movhps qword [rbp + 0x12345678], xmm3
movhps qword [rbp + 0x12345678], xmm4
movhps qword [rbp + 0x12345678], xmm5
movhps qword [rbp + 0x12345678], xmm6
movhps qword [rbp + 0x12345678], xmm7
movhps qword [4 * rbp], xmm0
movhps qword [4 * rbp], xmm1
movhps qword [4 * rbp], xmm2
movhps qword [4 * rbp], xmm3
movhps qword [4 * rbp], xmm4
movhps qword [4 * rbp], xmm5
movhps qword [4 * rbp], xmm6
movhps qword [4 * rbp], xmm7
movhps qword [4 * rbp + 0x12], xmm0
movhps qword [4 * rbp + 0x12], xmm1
movhps qword [4 * rbp + 0x12], xmm2
movhps qword [4 * rbp + 0x12], xmm3
movhps qword [4 * rbp + 0x12], xmm4
movhps qword [4 * rbp + 0x12], xmm5
movhps qword [4 * rbp + 0x12], xmm6
movhps qword [4 * rbp + 0x12], xmm7
movhps qword [4 * rbp + 0x1234], xmm0
movhps qword [4 * rbp + 0x1234], xmm1
movhps qword [4 * rbp + 0x1234], xmm2
movhps qword [4 * rbp + 0x1234], xmm3
movhps qword [4 * rbp + 0x1234], xmm4
movhps qword [4 * rbp + 0x1234], xmm5
movhps qword [4 * rbp + 0x1234], xmm6
movhps qword [4 * rbp + 0x1234], xmm7
movhps qword [4 * rbp + 0x12345678], xmm0
movhps qword [4 * rbp + 0x12345678], xmm1
movhps qword [4 * rbp + 0x12345678], xmm2
movhps qword [4 * rbp + 0x12345678], xmm3
movhps qword [4 * rbp + 0x12345678], xmm4
movhps qword [4 * rbp + 0x12345678], xmm5
movhps qword [4 * rbp + 0x12345678], xmm6
movhps qword [4 * rbp + 0x12345678], xmm7
movhps qword [rbx + 4 * rbp], xmm0
movhps qword [rbx + 4 * rbp], xmm1
movhps qword [rbx + 4 * rbp], xmm2
movhps qword [rbx + 4 * rbp], xmm3
movhps qword [rbx + 4 * rbp], xmm4
movhps qword [rbx + 4 * rbp], xmm5
movhps qword [rbx + 4 * rbp], xmm6
movhps qword [rbx + 4 * rbp], xmm7
movhps qword [rbx + 4 * rbp + 0x12], xmm0
movhps qword [rbx + 4 * rbp + 0x12], xmm1
movhps qword [rbx + 4 * rbp + 0x12], xmm2
movhps qword [rbx + 4 * rbp + 0x12], xmm3
movhps qword [rbx + 4 * rbp + 0x12], xmm4
movhps qword [rbx + 4 * rbp + 0x12], xmm5
movhps qword [rbx + 4 * rbp + 0x12], xmm6
movhps qword [rbx + 4 * rbp + 0x12], xmm7
movhps qword [rbx + 4 * rbp + 0x1234], xmm0
movhps qword [rbx + 4 * rbp + 0x1234], xmm1
movhps qword [rbx + 4 * rbp + 0x1234], xmm2
movhps qword [rbx + 4 * rbp + 0x1234], xmm3
movhps qword [rbx + 4 * rbp + 0x1234], xmm4
movhps qword [rbx + 4 * rbp + 0x1234], xmm5
movhps qword [rbx + 4 * rbp + 0x1234], xmm6
movhps qword [rbx + 4 * rbp + 0x1234], xmm7
movhps qword [rbx + 4 * rbp + 0x12345678], xmm0
movhps qword [rbx + 4 * rbp + 0x12345678], xmm1
movhps qword [rbx + 4 * rbp + 0x12345678], xmm2
movhps qword [rbx + 4 * rbp + 0x12345678], xmm3
movhps qword [rbx + 4 * rbp + 0x12345678], xmm4
movhps qword [rbx + 4 * rbp + 0x12345678], xmm5
movhps qword [rbx + 4 * rbp + 0x12345678], xmm6
movhps qword [rbx + 4 * rbp + 0x12345678], xmm7
movhps qword [rsp], xmm0
movhps qword [rsp], xmm1
movhps qword [rsp], xmm2
movhps qword [rsp], xmm3
movhps qword [rsp], xmm4
movhps qword [rsp], xmm5
movhps qword [rsp], xmm6
movhps qword [rsp], xmm7
movhps qword [rsp + 0x12], xmm0
movhps qword [rsp + 0x12], xmm1
movhps qword [rsp + 0x12], xmm2
movhps qword [rsp + 0x12], xmm3
movhps qword [rsp + 0x12], xmm4
movhps qword [rsp + 0x12], xmm5
movhps qword [rsp + 0x12], xmm6
movhps qword [rsp + 0x12], xmm7
movhps qword [rsp + 0x1234], xmm0
movhps qword [rsp + 0x1234], xmm1
movhps qword [rsp + 0x1234], xmm2
movhps qword [rsp + 0x1234], xmm3
movhps qword [rsp + 0x1234], xmm4
movhps qword [rsp + 0x1234], xmm5
movhps qword [rsp + 0x1234], xmm6
movhps qword [rsp + 0x1234], xmm7
movhps qword [rsp + 0x12345678], xmm0
movhps qword [rsp + 0x12345678], xmm1
movhps qword [rsp + 0x12345678], xmm2
movhps qword [rsp + 0x12345678], xmm3
movhps qword [rsp + 0x12345678], xmm4
movhps qword [rsp + 0x12345678], xmm5
movhps qword [rsp + 0x12345678], xmm6
movhps qword [rsp + 0x12345678], xmm7
movhps qword [rsp + rax], xmm0
movhps qword [rsp + rax], xmm1
movhps qword [rsp + rax], xmm2
movhps qword [rsp + rax], xmm3
movhps qword [rsp + rax], xmm4
movhps qword [rsp + rax], xmm5
movhps qword [rsp + rax], xmm6
movhps qword [rsp + rax], xmm7
movhps qword [rsp + rbp], xmm0
movhps qword [rsp + rbp], xmm1
movhps qword [rsp + rbp], xmm2
movhps qword [rsp + rbp], xmm3
movhps qword [rsp + rbp], xmm4
movhps qword [rsp + rbp], xmm5
movhps qword [rsp + rbp], xmm6
movhps qword [rsp + rbp], xmm7
movhps qword [rsp + 2*rbp], xmm0
movhps qword [rsp + 2*rbp], xmm1
movhps qword [rsp + 2*rbp], xmm2
movhps qword [rsp + 2*rbp], xmm3
movhps qword [rsp + 2*rbp], xmm4
movhps qword [rsp + 2*rbp], xmm5
movhps qword [rsp + 2*rbp], xmm6
movhps qword [rsp + 2*rbp], xmm7
movhps qword [rsp + 4*rbp], xmm0
movhps qword [rsp + 4*rbp], xmm1
movhps qword [rsp + 4*rbp], xmm2
movhps qword [rsp + 4*rbp], xmm3
movhps qword [rsp + 4*rbp], xmm4
movhps qword [rsp + 4*rbp], xmm5
movhps qword [rsp + 4*rbp], xmm6
movhps qword [rsp + 4*rbp], xmm7
movhps qword [rsp + 8*rbp], xmm0
movhps qword [rsp + 8*rbp], xmm1
movhps qword [rsp + 8*rbp], xmm2
movhps qword [rsp + 8*rbp], xmm3
movhps qword [rsp + 8*rbp], xmm4
movhps qword [rsp + 8*rbp], xmm5
movhps qword [rsp + 8*rbp], xmm6
movhps qword [rsp + 8*rbp], xmm7
movhps qword [rax], xmm0
movhps qword [rax], xmm1
movhps qword [rax], xmm2
movhps qword [rax], xmm3
movhps qword [rax], xmm4
movhps qword [rax], xmm5
movhps qword [rax], xmm6
movhps qword [rax], xmm7
movhps qword [rcx], xmm0
movhps qword [rcx], xmm1
movhps qword [rcx], xmm2
movhps qword [rcx], xmm3
movhps qword [rcx], xmm4
movhps qword [rcx], xmm5
movhps qword [rcx], xmm6
movhps qword [rcx], xmm7
movhps qword [rdx], xmm0
movhps qword [rdx], xmm1
movhps qword [rdx], xmm2
movhps qword [rdx], xmm3
movhps qword [rdx], xmm4
movhps qword [rdx], xmm5
movhps qword [rdx], xmm6
movhps qword [rdx], xmm7
movhps qword [rbx], xmm0
movhps qword [rbx], xmm1
movhps qword [rbx], xmm2
movhps qword [rbx], xmm3
movhps qword [rbx], xmm4
movhps qword [rbx], xmm5
movhps qword [rbx], xmm6
movhps qword [rbx], xmm7
movhps qword [rsp], xmm0
movhps qword [rsp], xmm1
movhps qword [rsp], xmm2
movhps qword [rsp], xmm3
movhps qword [rsp], xmm4
movhps qword [rsp], xmm5
movhps qword [rsp], xmm6
movhps qword [rsp], xmm7
movhps qword [rbp], xmm0
movhps qword [rbp], xmm1
movhps qword [rbp], xmm2
movhps qword [rbp], xmm3
movhps qword [rbp], xmm4
movhps qword [rbp], xmm5
movhps qword [rbp], xmm6
movhps qword [rbp], xmm7
movhps qword [rsi], xmm0
movhps qword [rsi], xmm1
movhps qword [rsi], xmm2
movhps qword [rsi], xmm3
movhps qword [rsi], xmm4
movhps qword [rsi], xmm5
movhps qword [rsi], xmm6
movhps qword [rsi], xmm7
movhps qword [rdi], xmm0
movhps qword [rdi], xmm1
movhps qword [rdi], xmm2
movhps qword [rdi], xmm3
movhps qword [rdi], xmm4
movhps qword [rdi], xmm5
movhps qword [rdi], xmm6
movhps qword [rdi], xmm7
movhps qword [rax + 2*rax], xmm0
movhps qword [rax + 2*rax], xmm1
movhps qword [rax + 2*rax], xmm2
movhps qword [rax + 2*rax], xmm3
movhps qword [rax + 2*rax], xmm4
movhps qword [rax + 2*rax], xmm5
movhps qword [rax + 2*rax], xmm6
movhps qword [rax + 2*rax], xmm7
movhps qword [rcx + 2*rcx], xmm0
movhps qword [rcx + 2*rcx], xmm1
movhps qword [rcx + 2*rcx], xmm2
movhps qword [rcx + 2*rcx], xmm3
movhps qword [rcx + 2*rcx], xmm4
movhps qword [rcx + 2*rcx], xmm5
movhps qword [rcx + 2*rcx], xmm6
movhps qword [rcx + 2*rcx], xmm7
movhps qword [rdx + 2*rdx], xmm0
movhps qword [rdx + 2*rdx], xmm1
movhps qword [rdx + 2*rdx], xmm2
movhps qword [rdx + 2*rdx], xmm3
movhps qword [rdx + 2*rdx], xmm4
movhps qword [rdx + 2*rdx], xmm5
movhps qword [rdx + 2*rdx], xmm6
movhps qword [rdx + 2*rdx], xmm7
movhps qword [rbx + 2*rbx], xmm0
movhps qword [rbx + 2*rbx], xmm1
movhps qword [rbx + 2*rbx], xmm2
movhps qword [rbx + 2*rbx], xmm3
movhps qword [rbx + 2*rbx], xmm4
movhps qword [rbx + 2*rbx], xmm5
movhps qword [rbx + 2*rbx], xmm6
movhps qword [rbx + 2*rbx], xmm7
movhps qword [rbp + 2*rbp], xmm0
movhps qword [rbp + 2*rbp], xmm1
movhps qword [rbp + 2*rbp], xmm2
movhps qword [rbp + 2*rbp], xmm3
movhps qword [rbp + 2*rbp], xmm4
movhps qword [rbp + 2*rbp], xmm5
movhps qword [rbp + 2*rbp], xmm6
movhps qword [rbp + 2*rbp], xmm7
movhps qword [rsi + 2*rsi], xmm0
movhps qword [rsi + 2*rsi], xmm1
movhps qword [rsi + 2*rsi], xmm2
movhps qword [rsi + 2*rsi], xmm3
movhps qword [rsi + 2*rsi], xmm4
movhps qword [rsi + 2*rsi], xmm5
movhps qword [rsi + 2*rsi], xmm6
movhps qword [rsi + 2*rsi], xmm7
movhps qword [rdi + 2*rdi], xmm0
movhps qword [rdi + 2*rdi], xmm1
movhps qword [rdi + 2*rdi], xmm2
movhps qword [rdi + 2*rdi], xmm3
movhps qword [rdi + 2*rdi], xmm4
movhps qword [rdi + 2*rdi], xmm5
movhps qword [rdi + 2*rdi], xmm6
movhps qword [rdi + 2*rdi], xmm7

