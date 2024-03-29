use64
; ------------------------------------------------------------------------------
; opcode mm,mm
; ------------------------------------------------------------------------------
phsubw mm0, mm0
phsubw mm0, mm1
phsubw mm0, mm2
phsubw mm0, mm3
phsubw mm0, mm4
phsubw mm0, mm5
phsubw mm0, mm6
phsubw mm0, mm7
phsubw mm1, mm0
phsubw mm1, mm1
phsubw mm1, mm2
phsubw mm1, mm3
phsubw mm1, mm4
phsubw mm1, mm5
phsubw mm1, mm6
phsubw mm1, mm7
phsubw mm2, mm0
phsubw mm2, mm1
phsubw mm2, mm2
phsubw mm2, mm3
phsubw mm2, mm4
phsubw mm2, mm5
phsubw mm2, mm6
phsubw mm2, mm7
phsubw mm3, mm0
phsubw mm3, mm1
phsubw mm3, mm2
phsubw mm3, mm3
phsubw mm3, mm4
phsubw mm3, mm5
phsubw mm3, mm6
phsubw mm3, mm7
phsubw mm4, mm0
phsubw mm4, mm1
phsubw mm4, mm2
phsubw mm4, mm3
phsubw mm4, mm4
phsubw mm4, mm5
phsubw mm4, mm6
phsubw mm4, mm7
phsubw mm5, mm0
phsubw mm5, mm1
phsubw mm5, mm2
phsubw mm5, mm3
phsubw mm5, mm4
phsubw mm5, mm5
phsubw mm5, mm6
phsubw mm5, mm7
phsubw mm6, mm0
phsubw mm6, mm1
phsubw mm6, mm2
phsubw mm6, mm3
phsubw mm6, mm4
phsubw mm6, mm5
phsubw mm6, mm6
phsubw mm6, mm7
phsubw mm7, mm0
phsubw mm7, mm1
phsubw mm7, mm2
phsubw mm7, mm3
phsubw mm7, mm4
phsubw mm7, mm5
phsubw mm7, mm6
phsubw mm7, mm7

; ------------------------------------------------------------------------------
; opcode mm,m64
; ------------------------------------------------------------------------------
phsubw mm0, qword [rip + 0x13]
phsubw mm0, qword [rip + 0x1235]
phsubw mm0, qword [rip + 0x12345679]
phsubw mm0, qword [rbx]
phsubw mm0, qword [rcx + 0x14]
phsubw mm0, qword [rdx + 0x15]
phsubw mm0, qword [rbx + 0x1235]
phsubw mm0, qword [rbx + 0x12345679]
phsubw mm0, qword [rbx + rcx]
phsubw mm0, qword [rbx + 4 * rcx]
phsubw mm0, qword [rbx + rcx + 0x13]
phsubw mm0, qword [rbx + rcx + 0x1235]
phsubw mm0, qword [rbx + rcx + 0x12345679]
phsubw mm0, qword [rbx + 4 * rcx + 0x13]
phsubw mm0, qword [rbx + 4 * rcx + 0x1235]
phsubw mm0, qword [rbx + 8 * rcx + 0x12345679]
phsubw mm0, qword [4 * rcx]
phsubw mm0, qword [4 * rcx + 0x13]
phsubw mm0, qword [4 * rcx + 0x1235]
phsubw mm0, qword [4 * rcx + 0x12345679]
phsubw mm0, qword [rbp]
phsubw mm0, qword [rbp + 0x12]
phsubw mm0, qword [rbp + 0x1234]
phsubw mm0, qword [rbp + 0x12345678]
phsubw mm0, qword [4 * rbp]
phsubw mm0, qword [4 * rbp + 0x12]
phsubw mm0, qword [4 * rbp + 0x1234]
phsubw mm0, qword [4 * rbp + 0x12345678]
phsubw mm0, qword [rbx + 4 * rbp]
phsubw mm0, qword [rbx + 4 * rbp + 0x12]
phsubw mm0, qword [rbx + 4 * rbp + 0x1234]
phsubw mm0, qword [rbx + 4 * rbp + 0x12345678]
phsubw mm0, qword [rsp]
phsubw mm0, qword [rsp + 0x12]
phsubw mm0, qword [rsp + 0x1234]
phsubw mm0, qword [rsp + 0x12345678]
phsubw mm0, qword [rsp + rax]
phsubw mm0, qword [rsp + rbp]
phsubw mm0, qword [rsp + 2*rbp]
phsubw mm0, qword [rsp + 4*rbp]
phsubw mm0, qword [rsp + 8*rbp]
phsubw mm0, qword [rax]
phsubw mm0, qword [rcx]
phsubw mm0, qword [rdx]
phsubw mm0, qword [rbx]
phsubw mm0, qword [rsp]
phsubw mm0, qword [rbp]
phsubw mm0, qword [rsi]
phsubw mm0, qword [rdi]
phsubw mm0, qword [rax + 2*rax]
phsubw mm0, qword [rcx + 2*rcx]
phsubw mm0, qword [rdx + 2*rdx]
phsubw mm0, qword [rbx + 2*rbx]
phsubw mm0, qword [rbp + 2*rbp]
phsubw mm0, qword [rsi + 2*rsi]
phsubw mm0, qword [rdi + 2*rdi]
phsubw mm1, qword [rip + 0x13]
phsubw mm1, qword [rip + 0x1235]
phsubw mm1, qword [rip + 0x12345679]
phsubw mm1, qword [rbx]
phsubw mm1, qword [rcx + 0x14]
phsubw mm1, qword [rdx + 0x15]
phsubw mm1, qword [rbx + 0x1235]
phsubw mm1, qword [rbx + 0x12345679]
phsubw mm1, qword [rbx + rcx]
phsubw mm1, qword [rbx + 4 * rcx]
phsubw mm1, qword [rbx + rcx + 0x13]
phsubw mm1, qword [rbx + rcx + 0x1235]
phsubw mm1, qword [rbx + rcx + 0x12345679]
phsubw mm1, qword [rbx + 4 * rcx + 0x13]
phsubw mm1, qword [rbx + 4 * rcx + 0x1235]
phsubw mm1, qword [rbx + 8 * rcx + 0x12345679]
phsubw mm1, qword [4 * rcx]
phsubw mm1, qword [4 * rcx + 0x13]
phsubw mm1, qword [4 * rcx + 0x1235]
phsubw mm1, qword [4 * rcx + 0x12345679]
phsubw mm1, qword [rbp]
phsubw mm1, qword [rbp + 0x12]
phsubw mm1, qword [rbp + 0x1234]
phsubw mm1, qword [rbp + 0x12345678]
phsubw mm1, qword [4 * rbp]
phsubw mm1, qword [4 * rbp + 0x12]
phsubw mm1, qword [4 * rbp + 0x1234]
phsubw mm1, qword [4 * rbp + 0x12345678]
phsubw mm1, qword [rbx + 4 * rbp]
phsubw mm1, qword [rbx + 4 * rbp + 0x12]
phsubw mm1, qword [rbx + 4 * rbp + 0x1234]
phsubw mm1, qword [rbx + 4 * rbp + 0x12345678]
phsubw mm1, qword [rsp]
phsubw mm1, qword [rsp + 0x12]
phsubw mm1, qword [rsp + 0x1234]
phsubw mm1, qword [rsp + 0x12345678]
phsubw mm1, qword [rsp + rax]
phsubw mm1, qword [rsp + rbp]
phsubw mm1, qword [rsp + 2*rbp]
phsubw mm1, qword [rsp + 4*rbp]
phsubw mm1, qword [rsp + 8*rbp]
phsubw mm1, qword [rax]
phsubw mm1, qword [rcx]
phsubw mm1, qword [rdx]
phsubw mm1, qword [rbx]
phsubw mm1, qword [rsp]
phsubw mm1, qword [rbp]
phsubw mm1, qword [rsi]
phsubw mm1, qword [rdi]
phsubw mm1, qword [rax + 2*rax]
phsubw mm1, qword [rcx + 2*rcx]
phsubw mm1, qword [rdx + 2*rdx]
phsubw mm1, qword [rbx + 2*rbx]
phsubw mm1, qword [rbp + 2*rbp]
phsubw mm1, qword [rsi + 2*rsi]
phsubw mm1, qword [rdi + 2*rdi]
phsubw mm2, qword [rip + 0x13]
phsubw mm2, qword [rip + 0x1235]
phsubw mm2, qword [rip + 0x12345679]
phsubw mm2, qword [rbx]
phsubw mm2, qword [rcx + 0x14]
phsubw mm2, qword [rdx + 0x15]
phsubw mm2, qword [rbx + 0x1235]
phsubw mm2, qword [rbx + 0x12345679]
phsubw mm2, qword [rbx + rcx]
phsubw mm2, qword [rbx + 4 * rcx]
phsubw mm2, qword [rbx + rcx + 0x13]
phsubw mm2, qword [rbx + rcx + 0x1235]
phsubw mm2, qword [rbx + rcx + 0x12345679]
phsubw mm2, qword [rbx + 4 * rcx + 0x13]
phsubw mm2, qword [rbx + 4 * rcx + 0x1235]
phsubw mm2, qword [rbx + 8 * rcx + 0x12345679]
phsubw mm2, qword [4 * rcx]
phsubw mm2, qword [4 * rcx + 0x13]
phsubw mm2, qword [4 * rcx + 0x1235]
phsubw mm2, qword [4 * rcx + 0x12345679]
phsubw mm2, qword [rbp]
phsubw mm2, qword [rbp + 0x12]
phsubw mm2, qword [rbp + 0x1234]
phsubw mm2, qword [rbp + 0x12345678]
phsubw mm2, qword [4 * rbp]
phsubw mm2, qword [4 * rbp + 0x12]
phsubw mm2, qword [4 * rbp + 0x1234]
phsubw mm2, qword [4 * rbp + 0x12345678]
phsubw mm2, qword [rbx + 4 * rbp]
phsubw mm2, qword [rbx + 4 * rbp + 0x12]
phsubw mm2, qword [rbx + 4 * rbp + 0x1234]
phsubw mm2, qword [rbx + 4 * rbp + 0x12345678]
phsubw mm2, qword [rsp]
phsubw mm2, qword [rsp + 0x12]
phsubw mm2, qword [rsp + 0x1234]
phsubw mm2, qword [rsp + 0x12345678]
phsubw mm2, qword [rsp + rax]
phsubw mm2, qword [rsp + rbp]
phsubw mm2, qword [rsp + 2*rbp]
phsubw mm2, qword [rsp + 4*rbp]
phsubw mm2, qword [rsp + 8*rbp]
phsubw mm2, qword [rax]
phsubw mm2, qword [rcx]
phsubw mm2, qword [rdx]
phsubw mm2, qword [rbx]
phsubw mm2, qword [rsp]
phsubw mm2, qword [rbp]
phsubw mm2, qword [rsi]
phsubw mm2, qword [rdi]
phsubw mm2, qword [rax + 2*rax]
phsubw mm2, qword [rcx + 2*rcx]
phsubw mm2, qword [rdx + 2*rdx]
phsubw mm2, qword [rbx + 2*rbx]
phsubw mm2, qword [rbp + 2*rbp]
phsubw mm2, qword [rsi + 2*rsi]
phsubw mm2, qword [rdi + 2*rdi]
phsubw mm3, qword [rip + 0x13]
phsubw mm3, qword [rip + 0x1235]
phsubw mm3, qword [rip + 0x12345679]
phsubw mm3, qword [rbx]
phsubw mm3, qword [rcx + 0x14]
phsubw mm3, qword [rdx + 0x15]
phsubw mm3, qword [rbx + 0x1235]
phsubw mm3, qword [rbx + 0x12345679]
phsubw mm3, qword [rbx + rcx]
phsubw mm3, qword [rbx + 4 * rcx]
phsubw mm3, qword [rbx + rcx + 0x13]
phsubw mm3, qword [rbx + rcx + 0x1235]
phsubw mm3, qword [rbx + rcx + 0x12345679]
phsubw mm3, qword [rbx + 4 * rcx + 0x13]
phsubw mm3, qword [rbx + 4 * rcx + 0x1235]
phsubw mm3, qword [rbx + 8 * rcx + 0x12345679]
phsubw mm3, qword [4 * rcx]
phsubw mm3, qword [4 * rcx + 0x13]
phsubw mm3, qword [4 * rcx + 0x1235]
phsubw mm3, qword [4 * rcx + 0x12345679]
phsubw mm3, qword [rbp]
phsubw mm3, qword [rbp + 0x12]
phsubw mm3, qword [rbp + 0x1234]
phsubw mm3, qword [rbp + 0x12345678]
phsubw mm3, qword [4 * rbp]
phsubw mm3, qword [4 * rbp + 0x12]
phsubw mm3, qword [4 * rbp + 0x1234]
phsubw mm3, qword [4 * rbp + 0x12345678]
phsubw mm3, qword [rbx + 4 * rbp]
phsubw mm3, qword [rbx + 4 * rbp + 0x12]
phsubw mm3, qword [rbx + 4 * rbp + 0x1234]
phsubw mm3, qword [rbx + 4 * rbp + 0x12345678]
phsubw mm3, qword [rsp]
phsubw mm3, qword [rsp + 0x12]
phsubw mm3, qword [rsp + 0x1234]
phsubw mm3, qword [rsp + 0x12345678]
phsubw mm3, qword [rsp + rax]
phsubw mm3, qword [rsp + rbp]
phsubw mm3, qword [rsp + 2*rbp]
phsubw mm3, qword [rsp + 4*rbp]
phsubw mm3, qword [rsp + 8*rbp]
phsubw mm3, qword [rax]
phsubw mm3, qword [rcx]
phsubw mm3, qword [rdx]
phsubw mm3, qword [rbx]
phsubw mm3, qword [rsp]
phsubw mm3, qword [rbp]
phsubw mm3, qword [rsi]
phsubw mm3, qword [rdi]
phsubw mm3, qword [rax + 2*rax]
phsubw mm3, qword [rcx + 2*rcx]
phsubw mm3, qword [rdx + 2*rdx]
phsubw mm3, qword [rbx + 2*rbx]
phsubw mm3, qword [rbp + 2*rbp]
phsubw mm3, qword [rsi + 2*rsi]
phsubw mm3, qword [rdi + 2*rdi]
phsubw mm4, qword [rip + 0x13]
phsubw mm4, qword [rip + 0x1235]
phsubw mm4, qword [rip + 0x12345679]
phsubw mm4, qword [rbx]
phsubw mm4, qword [rcx + 0x14]
phsubw mm4, qword [rdx + 0x15]
phsubw mm4, qword [rbx + 0x1235]
phsubw mm4, qword [rbx + 0x12345679]
phsubw mm4, qword [rbx + rcx]
phsubw mm4, qword [rbx + 4 * rcx]
phsubw mm4, qword [rbx + rcx + 0x13]
phsubw mm4, qword [rbx + rcx + 0x1235]
phsubw mm4, qword [rbx + rcx + 0x12345679]
phsubw mm4, qword [rbx + 4 * rcx + 0x13]
phsubw mm4, qword [rbx + 4 * rcx + 0x1235]
phsubw mm4, qword [rbx + 8 * rcx + 0x12345679]
phsubw mm4, qword [4 * rcx]
phsubw mm4, qword [4 * rcx + 0x13]
phsubw mm4, qword [4 * rcx + 0x1235]
phsubw mm4, qword [4 * rcx + 0x12345679]
phsubw mm4, qword [rbp]
phsubw mm4, qword [rbp + 0x12]
phsubw mm4, qword [rbp + 0x1234]
phsubw mm4, qword [rbp + 0x12345678]
phsubw mm4, qword [4 * rbp]
phsubw mm4, qword [4 * rbp + 0x12]
phsubw mm4, qword [4 * rbp + 0x1234]
phsubw mm4, qword [4 * rbp + 0x12345678]
phsubw mm4, qword [rbx + 4 * rbp]
phsubw mm4, qword [rbx + 4 * rbp + 0x12]
phsubw mm4, qword [rbx + 4 * rbp + 0x1234]
phsubw mm4, qword [rbx + 4 * rbp + 0x12345678]
phsubw mm4, qword [rsp]
phsubw mm4, qword [rsp + 0x12]
phsubw mm4, qword [rsp + 0x1234]
phsubw mm4, qword [rsp + 0x12345678]
phsubw mm4, qword [rsp + rax]
phsubw mm4, qword [rsp + rbp]
phsubw mm4, qword [rsp + 2*rbp]
phsubw mm4, qword [rsp + 4*rbp]
phsubw mm4, qword [rsp + 8*rbp]
phsubw mm4, qword [rax]
phsubw mm4, qword [rcx]
phsubw mm4, qword [rdx]
phsubw mm4, qword [rbx]
phsubw mm4, qword [rsp]
phsubw mm4, qword [rbp]
phsubw mm4, qword [rsi]
phsubw mm4, qword [rdi]
phsubw mm4, qword [rax + 2*rax]
phsubw mm4, qword [rcx + 2*rcx]
phsubw mm4, qword [rdx + 2*rdx]
phsubw mm4, qword [rbx + 2*rbx]
phsubw mm4, qword [rbp + 2*rbp]
phsubw mm4, qword [rsi + 2*rsi]
phsubw mm4, qword [rdi + 2*rdi]
phsubw mm5, qword [rip + 0x13]
phsubw mm5, qword [rip + 0x1235]
phsubw mm5, qword [rip + 0x12345679]
phsubw mm5, qword [rbx]
phsubw mm5, qword [rcx + 0x14]
phsubw mm5, qword [rdx + 0x15]
phsubw mm5, qword [rbx + 0x1235]
phsubw mm5, qword [rbx + 0x12345679]
phsubw mm5, qword [rbx + rcx]
phsubw mm5, qword [rbx + 4 * rcx]
phsubw mm5, qword [rbx + rcx + 0x13]
phsubw mm5, qword [rbx + rcx + 0x1235]
phsubw mm5, qword [rbx + rcx + 0x12345679]
phsubw mm5, qword [rbx + 4 * rcx + 0x13]
phsubw mm5, qword [rbx + 4 * rcx + 0x1235]
phsubw mm5, qword [rbx + 8 * rcx + 0x12345679]
phsubw mm5, qword [4 * rcx]
phsubw mm5, qword [4 * rcx + 0x13]
phsubw mm5, qword [4 * rcx + 0x1235]
phsubw mm5, qword [4 * rcx + 0x12345679]
phsubw mm5, qword [rbp]
phsubw mm5, qword [rbp + 0x12]
phsubw mm5, qword [rbp + 0x1234]
phsubw mm5, qword [rbp + 0x12345678]
phsubw mm5, qword [4 * rbp]
phsubw mm5, qword [4 * rbp + 0x12]
phsubw mm5, qword [4 * rbp + 0x1234]
phsubw mm5, qword [4 * rbp + 0x12345678]
phsubw mm5, qword [rbx + 4 * rbp]
phsubw mm5, qword [rbx + 4 * rbp + 0x12]
phsubw mm5, qword [rbx + 4 * rbp + 0x1234]
phsubw mm5, qword [rbx + 4 * rbp + 0x12345678]
phsubw mm5, qword [rsp]
phsubw mm5, qword [rsp + 0x12]
phsubw mm5, qword [rsp + 0x1234]
phsubw mm5, qword [rsp + 0x12345678]
phsubw mm5, qword [rsp + rax]
phsubw mm5, qword [rsp + rbp]
phsubw mm5, qword [rsp + 2*rbp]
phsubw mm5, qword [rsp + 4*rbp]
phsubw mm5, qword [rsp + 8*rbp]
phsubw mm5, qword [rax]
phsubw mm5, qword [rcx]
phsubw mm5, qword [rdx]
phsubw mm5, qword [rbx]
phsubw mm5, qword [rsp]
phsubw mm5, qword [rbp]
phsubw mm5, qword [rsi]
phsubw mm5, qword [rdi]
phsubw mm5, qword [rax + 2*rax]
phsubw mm5, qword [rcx + 2*rcx]
phsubw mm5, qword [rdx + 2*rdx]
phsubw mm5, qword [rbx + 2*rbx]
phsubw mm5, qword [rbp + 2*rbp]
phsubw mm5, qword [rsi + 2*rsi]
phsubw mm5, qword [rdi + 2*rdi]
phsubw mm6, qword [rip + 0x13]
phsubw mm6, qword [rip + 0x1235]
phsubw mm6, qword [rip + 0x12345679]
phsubw mm6, qword [rbx]
phsubw mm6, qword [rcx + 0x14]
phsubw mm6, qword [rdx + 0x15]
phsubw mm6, qword [rbx + 0x1235]
phsubw mm6, qword [rbx + 0x12345679]
phsubw mm6, qword [rbx + rcx]
phsubw mm6, qword [rbx + 4 * rcx]
phsubw mm6, qword [rbx + rcx + 0x13]
phsubw mm6, qword [rbx + rcx + 0x1235]
phsubw mm6, qword [rbx + rcx + 0x12345679]
phsubw mm6, qword [rbx + 4 * rcx + 0x13]
phsubw mm6, qword [rbx + 4 * rcx + 0x1235]
phsubw mm6, qword [rbx + 8 * rcx + 0x12345679]
phsubw mm6, qword [4 * rcx]
phsubw mm6, qword [4 * rcx + 0x13]
phsubw mm6, qword [4 * rcx + 0x1235]
phsubw mm6, qword [4 * rcx + 0x12345679]
phsubw mm6, qword [rbp]
phsubw mm6, qword [rbp + 0x12]
phsubw mm6, qword [rbp + 0x1234]
phsubw mm6, qword [rbp + 0x12345678]
phsubw mm6, qword [4 * rbp]
phsubw mm6, qword [4 * rbp + 0x12]
phsubw mm6, qword [4 * rbp + 0x1234]
phsubw mm6, qword [4 * rbp + 0x12345678]
phsubw mm6, qword [rbx + 4 * rbp]
phsubw mm6, qword [rbx + 4 * rbp + 0x12]
phsubw mm6, qword [rbx + 4 * rbp + 0x1234]
phsubw mm6, qword [rbx + 4 * rbp + 0x12345678]
phsubw mm6, qword [rsp]
phsubw mm6, qword [rsp + 0x12]
phsubw mm6, qword [rsp + 0x1234]
phsubw mm6, qword [rsp + 0x12345678]
phsubw mm6, qword [rsp + rax]
phsubw mm6, qword [rsp + rbp]
phsubw mm6, qword [rsp + 2*rbp]
phsubw mm6, qword [rsp + 4*rbp]
phsubw mm6, qword [rsp + 8*rbp]
phsubw mm6, qword [rax]
phsubw mm6, qword [rcx]
phsubw mm6, qword [rdx]
phsubw mm6, qword [rbx]
phsubw mm6, qword [rsp]
phsubw mm6, qword [rbp]
phsubw mm6, qword [rsi]
phsubw mm6, qword [rdi]
phsubw mm6, qword [rax + 2*rax]
phsubw mm6, qword [rcx + 2*rcx]
phsubw mm6, qword [rdx + 2*rdx]
phsubw mm6, qword [rbx + 2*rbx]
phsubw mm6, qword [rbp + 2*rbp]
phsubw mm6, qword [rsi + 2*rsi]
phsubw mm6, qword [rdi + 2*rdi]
phsubw mm7, qword [rip + 0x13]
phsubw mm7, qword [rip + 0x1235]
phsubw mm7, qword [rip + 0x12345679]
phsubw mm7, qword [rbx]
phsubw mm7, qword [rcx + 0x14]
phsubw mm7, qword [rdx + 0x15]
phsubw mm7, qword [rbx + 0x1235]
phsubw mm7, qword [rbx + 0x12345679]
phsubw mm7, qword [rbx + rcx]
phsubw mm7, qword [rbx + 4 * rcx]
phsubw mm7, qword [rbx + rcx + 0x13]
phsubw mm7, qword [rbx + rcx + 0x1235]
phsubw mm7, qword [rbx + rcx + 0x12345679]
phsubw mm7, qword [rbx + 4 * rcx + 0x13]
phsubw mm7, qword [rbx + 4 * rcx + 0x1235]
phsubw mm7, qword [rbx + 8 * rcx + 0x12345679]
phsubw mm7, qword [4 * rcx]
phsubw mm7, qword [4 * rcx + 0x13]
phsubw mm7, qword [4 * rcx + 0x1235]
phsubw mm7, qword [4 * rcx + 0x12345679]
phsubw mm7, qword [rbp]
phsubw mm7, qword [rbp + 0x12]
phsubw mm7, qword [rbp + 0x1234]
phsubw mm7, qword [rbp + 0x12345678]
phsubw mm7, qword [4 * rbp]
phsubw mm7, qword [4 * rbp + 0x12]
phsubw mm7, qword [4 * rbp + 0x1234]
phsubw mm7, qword [4 * rbp + 0x12345678]
phsubw mm7, qword [rbx + 4 * rbp]
phsubw mm7, qword [rbx + 4 * rbp + 0x12]
phsubw mm7, qword [rbx + 4 * rbp + 0x1234]
phsubw mm7, qword [rbx + 4 * rbp + 0x12345678]
phsubw mm7, qword [rsp]
phsubw mm7, qword [rsp + 0x12]
phsubw mm7, qword [rsp + 0x1234]
phsubw mm7, qword [rsp + 0x12345678]
phsubw mm7, qword [rsp + rax]
phsubw mm7, qword [rsp + rbp]
phsubw mm7, qword [rsp + 2*rbp]
phsubw mm7, qword [rsp + 4*rbp]
phsubw mm7, qword [rsp + 8*rbp]
phsubw mm7, qword [rax]
phsubw mm7, qword [rcx]
phsubw mm7, qword [rdx]
phsubw mm7, qword [rbx]
phsubw mm7, qword [rsp]
phsubw mm7, qword [rbp]
phsubw mm7, qword [rsi]
phsubw mm7, qword [rdi]
phsubw mm7, qword [rax + 2*rax]
phsubw mm7, qword [rcx + 2*rcx]
phsubw mm7, qword [rdx + 2*rdx]
phsubw mm7, qword [rbx + 2*rbx]
phsubw mm7, qword [rbp + 2*rbp]
phsubw mm7, qword [rsi + 2*rsi]
phsubw mm7, qword [rdi + 2*rdi]

