use64
; ------------------------------------------------------------------------------
; opcode xmm,m64
; ------------------------------------------------------------------------------
movlps xmm0, qword [rip + 0x13]
movlps xmm0, qword [rip + 0x1235]
movlps xmm0, qword [rip + 0x12345679]
movlps xmm0, qword [rbx]
movlps xmm0, qword [rcx + 0x14]
movlps xmm0, qword [rdx + 0x15]
movlps xmm0, qword [rbx + 0x1235]
movlps xmm0, qword [rbx + 0x12345679]
movlps xmm0, qword [rbx + rcx]
movlps xmm0, qword [rbx + 4 * rcx]
movlps xmm0, qword [rbx + rcx + 0x13]
movlps xmm0, qword [rbx + rcx + 0x1235]
movlps xmm0, qword [rbx + rcx + 0x12345679]
movlps xmm0, qword [rbx + 4 * rcx + 0x13]
movlps xmm0, qword [rbx + 4 * rcx + 0x1235]
movlps xmm0, qword [rbx + 8 * rcx + 0x12345679]
movlps xmm0, qword [4 * rcx]
movlps xmm0, qword [4 * rcx + 0x13]
movlps xmm0, qword [4 * rcx + 0x1235]
movlps xmm0, qword [4 * rcx + 0x12345679]
movlps xmm0, qword [rbp]
movlps xmm0, qword [rbp + 0x12]
movlps xmm0, qword [rbp + 0x1234]
movlps xmm0, qword [rbp + 0x12345678]
movlps xmm0, qword [4 * rbp]
movlps xmm0, qword [4 * rbp + 0x12]
movlps xmm0, qword [4 * rbp + 0x1234]
movlps xmm0, qword [4 * rbp + 0x12345678]
movlps xmm0, qword [rbx + 4 * rbp]
movlps xmm0, qword [rbx + 4 * rbp + 0x12]
movlps xmm0, qword [rbx + 4 * rbp + 0x1234]
movlps xmm0, qword [rbx + 4 * rbp + 0x12345678]
movlps xmm0, qword [rsp]
movlps xmm0, qword [rsp + 0x12]
movlps xmm0, qword [rsp + 0x1234]
movlps xmm0, qword [rsp + 0x12345678]
movlps xmm0, qword [rsp + rax]
movlps xmm0, qword [rsp + rbp]
movlps xmm0, qword [rsp + 2*rbp]
movlps xmm0, qword [rsp + 4*rbp]
movlps xmm0, qword [rsp + 8*rbp]
movlps xmm0, qword [rax]
movlps xmm0, qword [rcx]
movlps xmm0, qword [rdx]
movlps xmm0, qword [rbx]
movlps xmm0, qword [rsp]
movlps xmm0, qword [rbp]
movlps xmm0, qword [rsi]
movlps xmm0, qword [rdi]
movlps xmm0, qword [rax + 2*rax]
movlps xmm0, qword [rcx + 2*rcx]
movlps xmm0, qword [rdx + 2*rdx]
movlps xmm0, qword [rbx + 2*rbx]
movlps xmm0, qword [rbp + 2*rbp]
movlps xmm0, qword [rsi + 2*rsi]
movlps xmm0, qword [rdi + 2*rdi]
movlps xmm1, qword [rip + 0x13]
movlps xmm1, qword [rip + 0x1235]
movlps xmm1, qword [rip + 0x12345679]
movlps xmm1, qword [rbx]
movlps xmm1, qword [rcx + 0x14]
movlps xmm1, qword [rdx + 0x15]
movlps xmm1, qword [rbx + 0x1235]
movlps xmm1, qword [rbx + 0x12345679]
movlps xmm1, qword [rbx + rcx]
movlps xmm1, qword [rbx + 4 * rcx]
movlps xmm1, qword [rbx + rcx + 0x13]
movlps xmm1, qword [rbx + rcx + 0x1235]
movlps xmm1, qword [rbx + rcx + 0x12345679]
movlps xmm1, qword [rbx + 4 * rcx + 0x13]
movlps xmm1, qword [rbx + 4 * rcx + 0x1235]
movlps xmm1, qword [rbx + 8 * rcx + 0x12345679]
movlps xmm1, qword [4 * rcx]
movlps xmm1, qword [4 * rcx + 0x13]
movlps xmm1, qword [4 * rcx + 0x1235]
movlps xmm1, qword [4 * rcx + 0x12345679]
movlps xmm1, qword [rbp]
movlps xmm1, qword [rbp + 0x12]
movlps xmm1, qword [rbp + 0x1234]
movlps xmm1, qword [rbp + 0x12345678]
movlps xmm1, qword [4 * rbp]
movlps xmm1, qword [4 * rbp + 0x12]
movlps xmm1, qword [4 * rbp + 0x1234]
movlps xmm1, qword [4 * rbp + 0x12345678]
movlps xmm1, qword [rbx + 4 * rbp]
movlps xmm1, qword [rbx + 4 * rbp + 0x12]
movlps xmm1, qword [rbx + 4 * rbp + 0x1234]
movlps xmm1, qword [rbx + 4 * rbp + 0x12345678]
movlps xmm1, qword [rsp]
movlps xmm1, qword [rsp + 0x12]
movlps xmm1, qword [rsp + 0x1234]
movlps xmm1, qword [rsp + 0x12345678]
movlps xmm1, qword [rsp + rax]
movlps xmm1, qword [rsp + rbp]
movlps xmm1, qword [rsp + 2*rbp]
movlps xmm1, qword [rsp + 4*rbp]
movlps xmm1, qword [rsp + 8*rbp]
movlps xmm1, qword [rax]
movlps xmm1, qword [rcx]
movlps xmm1, qword [rdx]
movlps xmm1, qword [rbx]
movlps xmm1, qword [rsp]
movlps xmm1, qword [rbp]
movlps xmm1, qword [rsi]
movlps xmm1, qword [rdi]
movlps xmm1, qword [rax + 2*rax]
movlps xmm1, qword [rcx + 2*rcx]
movlps xmm1, qword [rdx + 2*rdx]
movlps xmm1, qword [rbx + 2*rbx]
movlps xmm1, qword [rbp + 2*rbp]
movlps xmm1, qword [rsi + 2*rsi]
movlps xmm1, qword [rdi + 2*rdi]
movlps xmm2, qword [rip + 0x13]
movlps xmm2, qword [rip + 0x1235]
movlps xmm2, qword [rip + 0x12345679]
movlps xmm2, qword [rbx]
movlps xmm2, qword [rcx + 0x14]
movlps xmm2, qword [rdx + 0x15]
movlps xmm2, qword [rbx + 0x1235]
movlps xmm2, qword [rbx + 0x12345679]
movlps xmm2, qword [rbx + rcx]
movlps xmm2, qword [rbx + 4 * rcx]
movlps xmm2, qword [rbx + rcx + 0x13]
movlps xmm2, qword [rbx + rcx + 0x1235]
movlps xmm2, qword [rbx + rcx + 0x12345679]
movlps xmm2, qword [rbx + 4 * rcx + 0x13]
movlps xmm2, qword [rbx + 4 * rcx + 0x1235]
movlps xmm2, qword [rbx + 8 * rcx + 0x12345679]
movlps xmm2, qword [4 * rcx]
movlps xmm2, qword [4 * rcx + 0x13]
movlps xmm2, qword [4 * rcx + 0x1235]
movlps xmm2, qword [4 * rcx + 0x12345679]
movlps xmm2, qword [rbp]
movlps xmm2, qword [rbp + 0x12]
movlps xmm2, qword [rbp + 0x1234]
movlps xmm2, qword [rbp + 0x12345678]
movlps xmm2, qword [4 * rbp]
movlps xmm2, qword [4 * rbp + 0x12]
movlps xmm2, qword [4 * rbp + 0x1234]
movlps xmm2, qword [4 * rbp + 0x12345678]
movlps xmm2, qword [rbx + 4 * rbp]
movlps xmm2, qword [rbx + 4 * rbp + 0x12]
movlps xmm2, qword [rbx + 4 * rbp + 0x1234]
movlps xmm2, qword [rbx + 4 * rbp + 0x12345678]
movlps xmm2, qword [rsp]
movlps xmm2, qword [rsp + 0x12]
movlps xmm2, qword [rsp + 0x1234]
movlps xmm2, qword [rsp + 0x12345678]
movlps xmm2, qword [rsp + rax]
movlps xmm2, qword [rsp + rbp]
movlps xmm2, qword [rsp + 2*rbp]
movlps xmm2, qword [rsp + 4*rbp]
movlps xmm2, qword [rsp + 8*rbp]
movlps xmm2, qword [rax]
movlps xmm2, qword [rcx]
movlps xmm2, qword [rdx]
movlps xmm2, qword [rbx]
movlps xmm2, qword [rsp]
movlps xmm2, qword [rbp]
movlps xmm2, qword [rsi]
movlps xmm2, qword [rdi]
movlps xmm2, qword [rax + 2*rax]
movlps xmm2, qword [rcx + 2*rcx]
movlps xmm2, qword [rdx + 2*rdx]
movlps xmm2, qword [rbx + 2*rbx]
movlps xmm2, qword [rbp + 2*rbp]
movlps xmm2, qword [rsi + 2*rsi]
movlps xmm2, qword [rdi + 2*rdi]
movlps xmm3, qword [rip + 0x13]
movlps xmm3, qword [rip + 0x1235]
movlps xmm3, qword [rip + 0x12345679]
movlps xmm3, qword [rbx]
movlps xmm3, qword [rcx + 0x14]
movlps xmm3, qword [rdx + 0x15]
movlps xmm3, qword [rbx + 0x1235]
movlps xmm3, qword [rbx + 0x12345679]
movlps xmm3, qword [rbx + rcx]
movlps xmm3, qword [rbx + 4 * rcx]
movlps xmm3, qword [rbx + rcx + 0x13]
movlps xmm3, qword [rbx + rcx + 0x1235]
movlps xmm3, qword [rbx + rcx + 0x12345679]
movlps xmm3, qword [rbx + 4 * rcx + 0x13]
movlps xmm3, qword [rbx + 4 * rcx + 0x1235]
movlps xmm3, qword [rbx + 8 * rcx + 0x12345679]
movlps xmm3, qword [4 * rcx]
movlps xmm3, qword [4 * rcx + 0x13]
movlps xmm3, qword [4 * rcx + 0x1235]
movlps xmm3, qword [4 * rcx + 0x12345679]
movlps xmm3, qword [rbp]
movlps xmm3, qword [rbp + 0x12]
movlps xmm3, qword [rbp + 0x1234]
movlps xmm3, qword [rbp + 0x12345678]
movlps xmm3, qword [4 * rbp]
movlps xmm3, qword [4 * rbp + 0x12]
movlps xmm3, qword [4 * rbp + 0x1234]
movlps xmm3, qword [4 * rbp + 0x12345678]
movlps xmm3, qword [rbx + 4 * rbp]
movlps xmm3, qword [rbx + 4 * rbp + 0x12]
movlps xmm3, qword [rbx + 4 * rbp + 0x1234]
movlps xmm3, qword [rbx + 4 * rbp + 0x12345678]
movlps xmm3, qword [rsp]
movlps xmm3, qword [rsp + 0x12]
movlps xmm3, qword [rsp + 0x1234]
movlps xmm3, qword [rsp + 0x12345678]
movlps xmm3, qword [rsp + rax]
movlps xmm3, qword [rsp + rbp]
movlps xmm3, qword [rsp + 2*rbp]
movlps xmm3, qword [rsp + 4*rbp]
movlps xmm3, qword [rsp + 8*rbp]
movlps xmm3, qword [rax]
movlps xmm3, qword [rcx]
movlps xmm3, qword [rdx]
movlps xmm3, qword [rbx]
movlps xmm3, qword [rsp]
movlps xmm3, qword [rbp]
movlps xmm3, qword [rsi]
movlps xmm3, qword [rdi]
movlps xmm3, qword [rax + 2*rax]
movlps xmm3, qword [rcx + 2*rcx]
movlps xmm3, qword [rdx + 2*rdx]
movlps xmm3, qword [rbx + 2*rbx]
movlps xmm3, qword [rbp + 2*rbp]
movlps xmm3, qword [rsi + 2*rsi]
movlps xmm3, qword [rdi + 2*rdi]
movlps xmm4, qword [rip + 0x13]
movlps xmm4, qword [rip + 0x1235]
movlps xmm4, qword [rip + 0x12345679]
movlps xmm4, qword [rbx]
movlps xmm4, qword [rcx + 0x14]
movlps xmm4, qword [rdx + 0x15]
movlps xmm4, qword [rbx + 0x1235]
movlps xmm4, qword [rbx + 0x12345679]
movlps xmm4, qword [rbx + rcx]
movlps xmm4, qword [rbx + 4 * rcx]
movlps xmm4, qword [rbx + rcx + 0x13]
movlps xmm4, qword [rbx + rcx + 0x1235]
movlps xmm4, qword [rbx + rcx + 0x12345679]
movlps xmm4, qword [rbx + 4 * rcx + 0x13]
movlps xmm4, qword [rbx + 4 * rcx + 0x1235]
movlps xmm4, qword [rbx + 8 * rcx + 0x12345679]
movlps xmm4, qword [4 * rcx]
movlps xmm4, qword [4 * rcx + 0x13]
movlps xmm4, qword [4 * rcx + 0x1235]
movlps xmm4, qword [4 * rcx + 0x12345679]
movlps xmm4, qword [rbp]
movlps xmm4, qword [rbp + 0x12]
movlps xmm4, qword [rbp + 0x1234]
movlps xmm4, qword [rbp + 0x12345678]
movlps xmm4, qword [4 * rbp]
movlps xmm4, qword [4 * rbp + 0x12]
movlps xmm4, qword [4 * rbp + 0x1234]
movlps xmm4, qword [4 * rbp + 0x12345678]
movlps xmm4, qword [rbx + 4 * rbp]
movlps xmm4, qword [rbx + 4 * rbp + 0x12]
movlps xmm4, qword [rbx + 4 * rbp + 0x1234]
movlps xmm4, qword [rbx + 4 * rbp + 0x12345678]
movlps xmm4, qword [rsp]
movlps xmm4, qword [rsp + 0x12]
movlps xmm4, qword [rsp + 0x1234]
movlps xmm4, qword [rsp + 0x12345678]
movlps xmm4, qword [rsp + rax]
movlps xmm4, qword [rsp + rbp]
movlps xmm4, qword [rsp + 2*rbp]
movlps xmm4, qword [rsp + 4*rbp]
movlps xmm4, qword [rsp + 8*rbp]
movlps xmm4, qword [rax]
movlps xmm4, qword [rcx]
movlps xmm4, qword [rdx]
movlps xmm4, qword [rbx]
movlps xmm4, qword [rsp]
movlps xmm4, qword [rbp]
movlps xmm4, qword [rsi]
movlps xmm4, qword [rdi]
movlps xmm4, qword [rax + 2*rax]
movlps xmm4, qword [rcx + 2*rcx]
movlps xmm4, qword [rdx + 2*rdx]
movlps xmm4, qword [rbx + 2*rbx]
movlps xmm4, qword [rbp + 2*rbp]
movlps xmm4, qword [rsi + 2*rsi]
movlps xmm4, qword [rdi + 2*rdi]
movlps xmm5, qword [rip + 0x13]
movlps xmm5, qword [rip + 0x1235]
movlps xmm5, qword [rip + 0x12345679]
movlps xmm5, qword [rbx]
movlps xmm5, qword [rcx + 0x14]
movlps xmm5, qword [rdx + 0x15]
movlps xmm5, qword [rbx + 0x1235]
movlps xmm5, qword [rbx + 0x12345679]
movlps xmm5, qword [rbx + rcx]
movlps xmm5, qword [rbx + 4 * rcx]
movlps xmm5, qword [rbx + rcx + 0x13]
movlps xmm5, qword [rbx + rcx + 0x1235]
movlps xmm5, qword [rbx + rcx + 0x12345679]
movlps xmm5, qword [rbx + 4 * rcx + 0x13]
movlps xmm5, qword [rbx + 4 * rcx + 0x1235]
movlps xmm5, qword [rbx + 8 * rcx + 0x12345679]
movlps xmm5, qword [4 * rcx]
movlps xmm5, qword [4 * rcx + 0x13]
movlps xmm5, qword [4 * rcx + 0x1235]
movlps xmm5, qword [4 * rcx + 0x12345679]
movlps xmm5, qword [rbp]
movlps xmm5, qword [rbp + 0x12]
movlps xmm5, qword [rbp + 0x1234]
movlps xmm5, qword [rbp + 0x12345678]
movlps xmm5, qword [4 * rbp]
movlps xmm5, qword [4 * rbp + 0x12]
movlps xmm5, qword [4 * rbp + 0x1234]
movlps xmm5, qword [4 * rbp + 0x12345678]
movlps xmm5, qword [rbx + 4 * rbp]
movlps xmm5, qword [rbx + 4 * rbp + 0x12]
movlps xmm5, qword [rbx + 4 * rbp + 0x1234]
movlps xmm5, qword [rbx + 4 * rbp + 0x12345678]
movlps xmm5, qword [rsp]
movlps xmm5, qword [rsp + 0x12]
movlps xmm5, qword [rsp + 0x1234]
movlps xmm5, qword [rsp + 0x12345678]
movlps xmm5, qword [rsp + rax]
movlps xmm5, qword [rsp + rbp]
movlps xmm5, qword [rsp + 2*rbp]
movlps xmm5, qword [rsp + 4*rbp]
movlps xmm5, qword [rsp + 8*rbp]
movlps xmm5, qword [rax]
movlps xmm5, qword [rcx]
movlps xmm5, qword [rdx]
movlps xmm5, qword [rbx]
movlps xmm5, qword [rsp]
movlps xmm5, qword [rbp]
movlps xmm5, qword [rsi]
movlps xmm5, qword [rdi]
movlps xmm5, qword [rax + 2*rax]
movlps xmm5, qword [rcx + 2*rcx]
movlps xmm5, qword [rdx + 2*rdx]
movlps xmm5, qword [rbx + 2*rbx]
movlps xmm5, qword [rbp + 2*rbp]
movlps xmm5, qword [rsi + 2*rsi]
movlps xmm5, qword [rdi + 2*rdi]
movlps xmm6, qword [rip + 0x13]
movlps xmm6, qword [rip + 0x1235]
movlps xmm6, qword [rip + 0x12345679]
movlps xmm6, qword [rbx]
movlps xmm6, qword [rcx + 0x14]
movlps xmm6, qword [rdx + 0x15]
movlps xmm6, qword [rbx + 0x1235]
movlps xmm6, qword [rbx + 0x12345679]
movlps xmm6, qword [rbx + rcx]
movlps xmm6, qword [rbx + 4 * rcx]
movlps xmm6, qword [rbx + rcx + 0x13]
movlps xmm6, qword [rbx + rcx + 0x1235]
movlps xmm6, qword [rbx + rcx + 0x12345679]
movlps xmm6, qword [rbx + 4 * rcx + 0x13]
movlps xmm6, qword [rbx + 4 * rcx + 0x1235]
movlps xmm6, qword [rbx + 8 * rcx + 0x12345679]
movlps xmm6, qword [4 * rcx]
movlps xmm6, qword [4 * rcx + 0x13]
movlps xmm6, qword [4 * rcx + 0x1235]
movlps xmm6, qword [4 * rcx + 0x12345679]
movlps xmm6, qword [rbp]
movlps xmm6, qword [rbp + 0x12]
movlps xmm6, qword [rbp + 0x1234]
movlps xmm6, qword [rbp + 0x12345678]
movlps xmm6, qword [4 * rbp]
movlps xmm6, qword [4 * rbp + 0x12]
movlps xmm6, qword [4 * rbp + 0x1234]
movlps xmm6, qword [4 * rbp + 0x12345678]
movlps xmm6, qword [rbx + 4 * rbp]
movlps xmm6, qword [rbx + 4 * rbp + 0x12]
movlps xmm6, qword [rbx + 4 * rbp + 0x1234]
movlps xmm6, qword [rbx + 4 * rbp + 0x12345678]
movlps xmm6, qword [rsp]
movlps xmm6, qword [rsp + 0x12]
movlps xmm6, qword [rsp + 0x1234]
movlps xmm6, qword [rsp + 0x12345678]
movlps xmm6, qword [rsp + rax]
movlps xmm6, qword [rsp + rbp]
movlps xmm6, qword [rsp + 2*rbp]
movlps xmm6, qword [rsp + 4*rbp]
movlps xmm6, qword [rsp + 8*rbp]
movlps xmm6, qword [rax]
movlps xmm6, qword [rcx]
movlps xmm6, qword [rdx]
movlps xmm6, qword [rbx]
movlps xmm6, qword [rsp]
movlps xmm6, qword [rbp]
movlps xmm6, qword [rsi]
movlps xmm6, qword [rdi]
movlps xmm6, qword [rax + 2*rax]
movlps xmm6, qword [rcx + 2*rcx]
movlps xmm6, qword [rdx + 2*rdx]
movlps xmm6, qword [rbx + 2*rbx]
movlps xmm6, qword [rbp + 2*rbp]
movlps xmm6, qword [rsi + 2*rsi]
movlps xmm6, qword [rdi + 2*rdi]
movlps xmm7, qword [rip + 0x13]
movlps xmm7, qword [rip + 0x1235]
movlps xmm7, qword [rip + 0x12345679]
movlps xmm7, qword [rbx]
movlps xmm7, qword [rcx + 0x14]
movlps xmm7, qword [rdx + 0x15]
movlps xmm7, qword [rbx + 0x1235]
movlps xmm7, qword [rbx + 0x12345679]
movlps xmm7, qword [rbx + rcx]
movlps xmm7, qword [rbx + 4 * rcx]
movlps xmm7, qword [rbx + rcx + 0x13]
movlps xmm7, qword [rbx + rcx + 0x1235]
movlps xmm7, qword [rbx + rcx + 0x12345679]
movlps xmm7, qword [rbx + 4 * rcx + 0x13]
movlps xmm7, qword [rbx + 4 * rcx + 0x1235]
movlps xmm7, qword [rbx + 8 * rcx + 0x12345679]
movlps xmm7, qword [4 * rcx]
movlps xmm7, qword [4 * rcx + 0x13]
movlps xmm7, qword [4 * rcx + 0x1235]
movlps xmm7, qword [4 * rcx + 0x12345679]
movlps xmm7, qword [rbp]
movlps xmm7, qword [rbp + 0x12]
movlps xmm7, qword [rbp + 0x1234]
movlps xmm7, qword [rbp + 0x12345678]
movlps xmm7, qword [4 * rbp]
movlps xmm7, qword [4 * rbp + 0x12]
movlps xmm7, qword [4 * rbp + 0x1234]
movlps xmm7, qword [4 * rbp + 0x12345678]
movlps xmm7, qword [rbx + 4 * rbp]
movlps xmm7, qword [rbx + 4 * rbp + 0x12]
movlps xmm7, qword [rbx + 4 * rbp + 0x1234]
movlps xmm7, qword [rbx + 4 * rbp + 0x12345678]
movlps xmm7, qword [rsp]
movlps xmm7, qword [rsp + 0x12]
movlps xmm7, qword [rsp + 0x1234]
movlps xmm7, qword [rsp + 0x12345678]
movlps xmm7, qword [rsp + rax]
movlps xmm7, qword [rsp + rbp]
movlps xmm7, qword [rsp + 2*rbp]
movlps xmm7, qword [rsp + 4*rbp]
movlps xmm7, qword [rsp + 8*rbp]
movlps xmm7, qword [rax]
movlps xmm7, qword [rcx]
movlps xmm7, qword [rdx]
movlps xmm7, qword [rbx]
movlps xmm7, qword [rsp]
movlps xmm7, qword [rbp]
movlps xmm7, qword [rsi]
movlps xmm7, qword [rdi]
movlps xmm7, qword [rax + 2*rax]
movlps xmm7, qword [rcx + 2*rcx]
movlps xmm7, qword [rdx + 2*rdx]
movlps xmm7, qword [rbx + 2*rbx]
movlps xmm7, qword [rbp + 2*rbp]
movlps xmm7, qword [rsi + 2*rsi]
movlps xmm7, qword [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode m64,xmm
; ------------------------------------------------------------------------------
movlps qword [rip + 0x13], xmm0
movlps qword [rip + 0x13], xmm1
movlps qword [rip + 0x13], xmm2
movlps qword [rip + 0x13], xmm3
movlps qword [rip + 0x13], xmm4
movlps qword [rip + 0x13], xmm5
movlps qword [rip + 0x13], xmm6
movlps qword [rip + 0x13], xmm7
movlps qword [rip + 0x1235], xmm0
movlps qword [rip + 0x1235], xmm1
movlps qword [rip + 0x1235], xmm2
movlps qword [rip + 0x1235], xmm3
movlps qword [rip + 0x1235], xmm4
movlps qword [rip + 0x1235], xmm5
movlps qword [rip + 0x1235], xmm6
movlps qword [rip + 0x1235], xmm7
movlps qword [rip + 0x12345679], xmm0
movlps qword [rip + 0x12345679], xmm1
movlps qword [rip + 0x12345679], xmm2
movlps qword [rip + 0x12345679], xmm3
movlps qword [rip + 0x12345679], xmm4
movlps qword [rip + 0x12345679], xmm5
movlps qword [rip + 0x12345679], xmm6
movlps qword [rip + 0x12345679], xmm7
movlps qword [rbx], xmm0
movlps qword [rbx], xmm1
movlps qword [rbx], xmm2
movlps qword [rbx], xmm3
movlps qword [rbx], xmm4
movlps qword [rbx], xmm5
movlps qword [rbx], xmm6
movlps qword [rbx], xmm7
movlps qword [rcx + 0x14], xmm0
movlps qword [rcx + 0x14], xmm1
movlps qword [rcx + 0x14], xmm2
movlps qword [rcx + 0x14], xmm3
movlps qword [rcx + 0x14], xmm4
movlps qword [rcx + 0x14], xmm5
movlps qword [rcx + 0x14], xmm6
movlps qword [rcx + 0x14], xmm7
movlps qword [rdx + 0x15], xmm0
movlps qword [rdx + 0x15], xmm1
movlps qword [rdx + 0x15], xmm2
movlps qword [rdx + 0x15], xmm3
movlps qword [rdx + 0x15], xmm4
movlps qword [rdx + 0x15], xmm5
movlps qword [rdx + 0x15], xmm6
movlps qword [rdx + 0x15], xmm7
movlps qword [rbx + 0x1235], xmm0
movlps qword [rbx + 0x1235], xmm1
movlps qword [rbx + 0x1235], xmm2
movlps qword [rbx + 0x1235], xmm3
movlps qword [rbx + 0x1235], xmm4
movlps qword [rbx + 0x1235], xmm5
movlps qword [rbx + 0x1235], xmm6
movlps qword [rbx + 0x1235], xmm7
movlps qword [rbx + 0x12345679], xmm0
movlps qword [rbx + 0x12345679], xmm1
movlps qword [rbx + 0x12345679], xmm2
movlps qword [rbx + 0x12345679], xmm3
movlps qword [rbx + 0x12345679], xmm4
movlps qword [rbx + 0x12345679], xmm5
movlps qword [rbx + 0x12345679], xmm6
movlps qword [rbx + 0x12345679], xmm7
movlps qword [rbx + rcx], xmm0
movlps qword [rbx + rcx], xmm1
movlps qword [rbx + rcx], xmm2
movlps qword [rbx + rcx], xmm3
movlps qword [rbx + rcx], xmm4
movlps qword [rbx + rcx], xmm5
movlps qword [rbx + rcx], xmm6
movlps qword [rbx + rcx], xmm7
movlps qword [rbx + 4 * rcx], xmm0
movlps qword [rbx + 4 * rcx], xmm1
movlps qword [rbx + 4 * rcx], xmm2
movlps qword [rbx + 4 * rcx], xmm3
movlps qword [rbx + 4 * rcx], xmm4
movlps qword [rbx + 4 * rcx], xmm5
movlps qword [rbx + 4 * rcx], xmm6
movlps qword [rbx + 4 * rcx], xmm7
movlps qword [rbx + rcx + 0x13], xmm0
movlps qword [rbx + rcx + 0x13], xmm1
movlps qword [rbx + rcx + 0x13], xmm2
movlps qword [rbx + rcx + 0x13], xmm3
movlps qword [rbx + rcx + 0x13], xmm4
movlps qword [rbx + rcx + 0x13], xmm5
movlps qword [rbx + rcx + 0x13], xmm6
movlps qword [rbx + rcx + 0x13], xmm7
movlps qword [rbx + rcx + 0x1235], xmm0
movlps qword [rbx + rcx + 0x1235], xmm1
movlps qword [rbx + rcx + 0x1235], xmm2
movlps qword [rbx + rcx + 0x1235], xmm3
movlps qword [rbx + rcx + 0x1235], xmm4
movlps qword [rbx + rcx + 0x1235], xmm5
movlps qword [rbx + rcx + 0x1235], xmm6
movlps qword [rbx + rcx + 0x1235], xmm7
movlps qword [rbx + rcx + 0x12345679], xmm0
movlps qword [rbx + rcx + 0x12345679], xmm1
movlps qword [rbx + rcx + 0x12345679], xmm2
movlps qword [rbx + rcx + 0x12345679], xmm3
movlps qword [rbx + rcx + 0x12345679], xmm4
movlps qword [rbx + rcx + 0x12345679], xmm5
movlps qword [rbx + rcx + 0x12345679], xmm6
movlps qword [rbx + rcx + 0x12345679], xmm7
movlps qword [rbx + 4 * rcx + 0x13], xmm0
movlps qword [rbx + 4 * rcx + 0x13], xmm1
movlps qword [rbx + 4 * rcx + 0x13], xmm2
movlps qword [rbx + 4 * rcx + 0x13], xmm3
movlps qword [rbx + 4 * rcx + 0x13], xmm4
movlps qword [rbx + 4 * rcx + 0x13], xmm5
movlps qword [rbx + 4 * rcx + 0x13], xmm6
movlps qword [rbx + 4 * rcx + 0x13], xmm7
movlps qword [rbx + 4 * rcx + 0x1235], xmm0
movlps qword [rbx + 4 * rcx + 0x1235], xmm1
movlps qword [rbx + 4 * rcx + 0x1235], xmm2
movlps qword [rbx + 4 * rcx + 0x1235], xmm3
movlps qword [rbx + 4 * rcx + 0x1235], xmm4
movlps qword [rbx + 4 * rcx + 0x1235], xmm5
movlps qword [rbx + 4 * rcx + 0x1235], xmm6
movlps qword [rbx + 4 * rcx + 0x1235], xmm7
movlps qword [rbx + 8 * rcx + 0x12345679], xmm0
movlps qword [rbx + 8 * rcx + 0x12345679], xmm1
movlps qword [rbx + 8 * rcx + 0x12345679], xmm2
movlps qword [rbx + 8 * rcx + 0x12345679], xmm3
movlps qword [rbx + 8 * rcx + 0x12345679], xmm4
movlps qword [rbx + 8 * rcx + 0x12345679], xmm5
movlps qword [rbx + 8 * rcx + 0x12345679], xmm6
movlps qword [rbx + 8 * rcx + 0x12345679], xmm7
movlps qword [4 * rcx], xmm0
movlps qword [4 * rcx], xmm1
movlps qword [4 * rcx], xmm2
movlps qword [4 * rcx], xmm3
movlps qword [4 * rcx], xmm4
movlps qword [4 * rcx], xmm5
movlps qword [4 * rcx], xmm6
movlps qword [4 * rcx], xmm7
movlps qword [4 * rcx + 0x13], xmm0
movlps qword [4 * rcx + 0x13], xmm1
movlps qword [4 * rcx + 0x13], xmm2
movlps qword [4 * rcx + 0x13], xmm3
movlps qword [4 * rcx + 0x13], xmm4
movlps qword [4 * rcx + 0x13], xmm5
movlps qword [4 * rcx + 0x13], xmm6
movlps qword [4 * rcx + 0x13], xmm7
movlps qword [4 * rcx + 0x1235], xmm0
movlps qword [4 * rcx + 0x1235], xmm1
movlps qword [4 * rcx + 0x1235], xmm2
movlps qword [4 * rcx + 0x1235], xmm3
movlps qword [4 * rcx + 0x1235], xmm4
movlps qword [4 * rcx + 0x1235], xmm5
movlps qword [4 * rcx + 0x1235], xmm6
movlps qword [4 * rcx + 0x1235], xmm7
movlps qword [4 * rcx + 0x12345679], xmm0
movlps qword [4 * rcx + 0x12345679], xmm1
movlps qword [4 * rcx + 0x12345679], xmm2
movlps qword [4 * rcx + 0x12345679], xmm3
movlps qword [4 * rcx + 0x12345679], xmm4
movlps qword [4 * rcx + 0x12345679], xmm5
movlps qword [4 * rcx + 0x12345679], xmm6
movlps qword [4 * rcx + 0x12345679], xmm7
movlps qword [rbp], xmm0
movlps qword [rbp], xmm1
movlps qword [rbp], xmm2
movlps qword [rbp], xmm3
movlps qword [rbp], xmm4
movlps qword [rbp], xmm5
movlps qword [rbp], xmm6
movlps qword [rbp], xmm7
movlps qword [rbp + 0x12], xmm0
movlps qword [rbp + 0x12], xmm1
movlps qword [rbp + 0x12], xmm2
movlps qword [rbp + 0x12], xmm3
movlps qword [rbp + 0x12], xmm4
movlps qword [rbp + 0x12], xmm5
movlps qword [rbp + 0x12], xmm6
movlps qword [rbp + 0x12], xmm7
movlps qword [rbp + 0x1234], xmm0
movlps qword [rbp + 0x1234], xmm1
movlps qword [rbp + 0x1234], xmm2
movlps qword [rbp + 0x1234], xmm3
movlps qword [rbp + 0x1234], xmm4
movlps qword [rbp + 0x1234], xmm5
movlps qword [rbp + 0x1234], xmm6
movlps qword [rbp + 0x1234], xmm7
movlps qword [rbp + 0x12345678], xmm0
movlps qword [rbp + 0x12345678], xmm1
movlps qword [rbp + 0x12345678], xmm2
movlps qword [rbp + 0x12345678], xmm3
movlps qword [rbp + 0x12345678], xmm4
movlps qword [rbp + 0x12345678], xmm5
movlps qword [rbp + 0x12345678], xmm6
movlps qword [rbp + 0x12345678], xmm7
movlps qword [4 * rbp], xmm0
movlps qword [4 * rbp], xmm1
movlps qword [4 * rbp], xmm2
movlps qword [4 * rbp], xmm3
movlps qword [4 * rbp], xmm4
movlps qword [4 * rbp], xmm5
movlps qword [4 * rbp], xmm6
movlps qword [4 * rbp], xmm7
movlps qword [4 * rbp + 0x12], xmm0
movlps qword [4 * rbp + 0x12], xmm1
movlps qword [4 * rbp + 0x12], xmm2
movlps qword [4 * rbp + 0x12], xmm3
movlps qword [4 * rbp + 0x12], xmm4
movlps qword [4 * rbp + 0x12], xmm5
movlps qword [4 * rbp + 0x12], xmm6
movlps qword [4 * rbp + 0x12], xmm7
movlps qword [4 * rbp + 0x1234], xmm0
movlps qword [4 * rbp + 0x1234], xmm1
movlps qword [4 * rbp + 0x1234], xmm2
movlps qword [4 * rbp + 0x1234], xmm3
movlps qword [4 * rbp + 0x1234], xmm4
movlps qword [4 * rbp + 0x1234], xmm5
movlps qword [4 * rbp + 0x1234], xmm6
movlps qword [4 * rbp + 0x1234], xmm7
movlps qword [4 * rbp + 0x12345678], xmm0
movlps qword [4 * rbp + 0x12345678], xmm1
movlps qword [4 * rbp + 0x12345678], xmm2
movlps qword [4 * rbp + 0x12345678], xmm3
movlps qword [4 * rbp + 0x12345678], xmm4
movlps qword [4 * rbp + 0x12345678], xmm5
movlps qword [4 * rbp + 0x12345678], xmm6
movlps qword [4 * rbp + 0x12345678], xmm7
movlps qword [rbx + 4 * rbp], xmm0
movlps qword [rbx + 4 * rbp], xmm1
movlps qword [rbx + 4 * rbp], xmm2
movlps qword [rbx + 4 * rbp], xmm3
movlps qword [rbx + 4 * rbp], xmm4
movlps qword [rbx + 4 * rbp], xmm5
movlps qword [rbx + 4 * rbp], xmm6
movlps qword [rbx + 4 * rbp], xmm7
movlps qword [rbx + 4 * rbp + 0x12], xmm0
movlps qword [rbx + 4 * rbp + 0x12], xmm1
movlps qword [rbx + 4 * rbp + 0x12], xmm2
movlps qword [rbx + 4 * rbp + 0x12], xmm3
movlps qword [rbx + 4 * rbp + 0x12], xmm4
movlps qword [rbx + 4 * rbp + 0x12], xmm5
movlps qword [rbx + 4 * rbp + 0x12], xmm6
movlps qword [rbx + 4 * rbp + 0x12], xmm7
movlps qword [rbx + 4 * rbp + 0x1234], xmm0
movlps qword [rbx + 4 * rbp + 0x1234], xmm1
movlps qword [rbx + 4 * rbp + 0x1234], xmm2
movlps qword [rbx + 4 * rbp + 0x1234], xmm3
movlps qword [rbx + 4 * rbp + 0x1234], xmm4
movlps qword [rbx + 4 * rbp + 0x1234], xmm5
movlps qword [rbx + 4 * rbp + 0x1234], xmm6
movlps qword [rbx + 4 * rbp + 0x1234], xmm7
movlps qword [rbx + 4 * rbp + 0x12345678], xmm0
movlps qword [rbx + 4 * rbp + 0x12345678], xmm1
movlps qword [rbx + 4 * rbp + 0x12345678], xmm2
movlps qword [rbx + 4 * rbp + 0x12345678], xmm3
movlps qword [rbx + 4 * rbp + 0x12345678], xmm4
movlps qword [rbx + 4 * rbp + 0x12345678], xmm5
movlps qword [rbx + 4 * rbp + 0x12345678], xmm6
movlps qword [rbx + 4 * rbp + 0x12345678], xmm7
movlps qword [rsp], xmm0
movlps qword [rsp], xmm1
movlps qword [rsp], xmm2
movlps qword [rsp], xmm3
movlps qword [rsp], xmm4
movlps qword [rsp], xmm5
movlps qword [rsp], xmm6
movlps qword [rsp], xmm7
movlps qword [rsp + 0x12], xmm0
movlps qword [rsp + 0x12], xmm1
movlps qword [rsp + 0x12], xmm2
movlps qword [rsp + 0x12], xmm3
movlps qword [rsp + 0x12], xmm4
movlps qword [rsp + 0x12], xmm5
movlps qword [rsp + 0x12], xmm6
movlps qword [rsp + 0x12], xmm7
movlps qword [rsp + 0x1234], xmm0
movlps qword [rsp + 0x1234], xmm1
movlps qword [rsp + 0x1234], xmm2
movlps qword [rsp + 0x1234], xmm3
movlps qword [rsp + 0x1234], xmm4
movlps qword [rsp + 0x1234], xmm5
movlps qword [rsp + 0x1234], xmm6
movlps qword [rsp + 0x1234], xmm7
movlps qword [rsp + 0x12345678], xmm0
movlps qword [rsp + 0x12345678], xmm1
movlps qword [rsp + 0x12345678], xmm2
movlps qword [rsp + 0x12345678], xmm3
movlps qword [rsp + 0x12345678], xmm4
movlps qword [rsp + 0x12345678], xmm5
movlps qword [rsp + 0x12345678], xmm6
movlps qword [rsp + 0x12345678], xmm7
movlps qword [rsp + rax], xmm0
movlps qword [rsp + rax], xmm1
movlps qword [rsp + rax], xmm2
movlps qword [rsp + rax], xmm3
movlps qword [rsp + rax], xmm4
movlps qword [rsp + rax], xmm5
movlps qword [rsp + rax], xmm6
movlps qword [rsp + rax], xmm7
movlps qword [rsp + rbp], xmm0
movlps qword [rsp + rbp], xmm1
movlps qword [rsp + rbp], xmm2
movlps qword [rsp + rbp], xmm3
movlps qword [rsp + rbp], xmm4
movlps qword [rsp + rbp], xmm5
movlps qword [rsp + rbp], xmm6
movlps qword [rsp + rbp], xmm7
movlps qword [rsp + 2*rbp], xmm0
movlps qword [rsp + 2*rbp], xmm1
movlps qword [rsp + 2*rbp], xmm2
movlps qword [rsp + 2*rbp], xmm3
movlps qword [rsp + 2*rbp], xmm4
movlps qword [rsp + 2*rbp], xmm5
movlps qword [rsp + 2*rbp], xmm6
movlps qword [rsp + 2*rbp], xmm7
movlps qword [rsp + 4*rbp], xmm0
movlps qword [rsp + 4*rbp], xmm1
movlps qword [rsp + 4*rbp], xmm2
movlps qword [rsp + 4*rbp], xmm3
movlps qword [rsp + 4*rbp], xmm4
movlps qword [rsp + 4*rbp], xmm5
movlps qword [rsp + 4*rbp], xmm6
movlps qword [rsp + 4*rbp], xmm7
movlps qword [rsp + 8*rbp], xmm0
movlps qword [rsp + 8*rbp], xmm1
movlps qword [rsp + 8*rbp], xmm2
movlps qword [rsp + 8*rbp], xmm3
movlps qword [rsp + 8*rbp], xmm4
movlps qword [rsp + 8*rbp], xmm5
movlps qword [rsp + 8*rbp], xmm6
movlps qword [rsp + 8*rbp], xmm7
movlps qword [rax], xmm0
movlps qword [rax], xmm1
movlps qword [rax], xmm2
movlps qword [rax], xmm3
movlps qword [rax], xmm4
movlps qword [rax], xmm5
movlps qword [rax], xmm6
movlps qword [rax], xmm7
movlps qword [rcx], xmm0
movlps qword [rcx], xmm1
movlps qword [rcx], xmm2
movlps qword [rcx], xmm3
movlps qword [rcx], xmm4
movlps qword [rcx], xmm5
movlps qword [rcx], xmm6
movlps qword [rcx], xmm7
movlps qword [rdx], xmm0
movlps qword [rdx], xmm1
movlps qword [rdx], xmm2
movlps qword [rdx], xmm3
movlps qword [rdx], xmm4
movlps qword [rdx], xmm5
movlps qword [rdx], xmm6
movlps qword [rdx], xmm7
movlps qword [rbx], xmm0
movlps qword [rbx], xmm1
movlps qword [rbx], xmm2
movlps qword [rbx], xmm3
movlps qword [rbx], xmm4
movlps qword [rbx], xmm5
movlps qword [rbx], xmm6
movlps qword [rbx], xmm7
movlps qword [rsp], xmm0
movlps qword [rsp], xmm1
movlps qword [rsp], xmm2
movlps qword [rsp], xmm3
movlps qword [rsp], xmm4
movlps qword [rsp], xmm5
movlps qword [rsp], xmm6
movlps qword [rsp], xmm7
movlps qword [rbp], xmm0
movlps qword [rbp], xmm1
movlps qword [rbp], xmm2
movlps qword [rbp], xmm3
movlps qword [rbp], xmm4
movlps qword [rbp], xmm5
movlps qword [rbp], xmm6
movlps qword [rbp], xmm7
movlps qword [rsi], xmm0
movlps qword [rsi], xmm1
movlps qword [rsi], xmm2
movlps qword [rsi], xmm3
movlps qword [rsi], xmm4
movlps qword [rsi], xmm5
movlps qword [rsi], xmm6
movlps qword [rsi], xmm7
movlps qword [rdi], xmm0
movlps qword [rdi], xmm1
movlps qword [rdi], xmm2
movlps qword [rdi], xmm3
movlps qword [rdi], xmm4
movlps qword [rdi], xmm5
movlps qword [rdi], xmm6
movlps qword [rdi], xmm7
movlps qword [rax + 2*rax], xmm0
movlps qword [rax + 2*rax], xmm1
movlps qword [rax + 2*rax], xmm2
movlps qword [rax + 2*rax], xmm3
movlps qword [rax + 2*rax], xmm4
movlps qword [rax + 2*rax], xmm5
movlps qword [rax + 2*rax], xmm6
movlps qword [rax + 2*rax], xmm7
movlps qword [rcx + 2*rcx], xmm0
movlps qword [rcx + 2*rcx], xmm1
movlps qword [rcx + 2*rcx], xmm2
movlps qword [rcx + 2*rcx], xmm3
movlps qword [rcx + 2*rcx], xmm4
movlps qword [rcx + 2*rcx], xmm5
movlps qword [rcx + 2*rcx], xmm6
movlps qword [rcx + 2*rcx], xmm7
movlps qword [rdx + 2*rdx], xmm0
movlps qword [rdx + 2*rdx], xmm1
movlps qword [rdx + 2*rdx], xmm2
movlps qword [rdx + 2*rdx], xmm3
movlps qword [rdx + 2*rdx], xmm4
movlps qword [rdx + 2*rdx], xmm5
movlps qword [rdx + 2*rdx], xmm6
movlps qword [rdx + 2*rdx], xmm7
movlps qword [rbx + 2*rbx], xmm0
movlps qword [rbx + 2*rbx], xmm1
movlps qword [rbx + 2*rbx], xmm2
movlps qword [rbx + 2*rbx], xmm3
movlps qword [rbx + 2*rbx], xmm4
movlps qword [rbx + 2*rbx], xmm5
movlps qword [rbx + 2*rbx], xmm6
movlps qword [rbx + 2*rbx], xmm7
movlps qword [rbp + 2*rbp], xmm0
movlps qword [rbp + 2*rbp], xmm1
movlps qword [rbp + 2*rbp], xmm2
movlps qword [rbp + 2*rbp], xmm3
movlps qword [rbp + 2*rbp], xmm4
movlps qword [rbp + 2*rbp], xmm5
movlps qword [rbp + 2*rbp], xmm6
movlps qword [rbp + 2*rbp], xmm7
movlps qword [rsi + 2*rsi], xmm0
movlps qword [rsi + 2*rsi], xmm1
movlps qword [rsi + 2*rsi], xmm2
movlps qword [rsi + 2*rsi], xmm3
movlps qword [rsi + 2*rsi], xmm4
movlps qword [rsi + 2*rsi], xmm5
movlps qword [rsi + 2*rsi], xmm6
movlps qword [rsi + 2*rsi], xmm7
movlps qword [rdi + 2*rdi], xmm0
movlps qword [rdi + 2*rdi], xmm1
movlps qword [rdi + 2*rdi], xmm2
movlps qword [rdi + 2*rdi], xmm3
movlps qword [rdi + 2*rdi], xmm4
movlps qword [rdi + 2*rdi], xmm5
movlps qword [rdi + 2*rdi], xmm6
movlps qword [rdi + 2*rdi], xmm7

