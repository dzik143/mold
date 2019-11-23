use64
; ------------------------------------------------------------------------------
; opcode mm,mm
; ------------------------------------------------------------------------------
psrlw mm0, mm0
psrlw mm0, mm1
psrlw mm0, mm2
psrlw mm0, mm3
psrlw mm0, mm4
psrlw mm0, mm5
psrlw mm0, mm6
psrlw mm0, mm7
psrlw mm1, mm0
psrlw mm1, mm1
psrlw mm1, mm2
psrlw mm1, mm3
psrlw mm1, mm4
psrlw mm1, mm5
psrlw mm1, mm6
psrlw mm1, mm7
psrlw mm2, mm0
psrlw mm2, mm1
psrlw mm2, mm2
psrlw mm2, mm3
psrlw mm2, mm4
psrlw mm2, mm5
psrlw mm2, mm6
psrlw mm2, mm7
psrlw mm3, mm0
psrlw mm3, mm1
psrlw mm3, mm2
psrlw mm3, mm3
psrlw mm3, mm4
psrlw mm3, mm5
psrlw mm3, mm6
psrlw mm3, mm7
psrlw mm4, mm0
psrlw mm4, mm1
psrlw mm4, mm2
psrlw mm4, mm3
psrlw mm4, mm4
psrlw mm4, mm5
psrlw mm4, mm6
psrlw mm4, mm7
psrlw mm5, mm0
psrlw mm5, mm1
psrlw mm5, mm2
psrlw mm5, mm3
psrlw mm5, mm4
psrlw mm5, mm5
psrlw mm5, mm6
psrlw mm5, mm7
psrlw mm6, mm0
psrlw mm6, mm1
psrlw mm6, mm2
psrlw mm6, mm3
psrlw mm6, mm4
psrlw mm6, mm5
psrlw mm6, mm6
psrlw mm6, mm7
psrlw mm7, mm0
psrlw mm7, mm1
psrlw mm7, mm2
psrlw mm7, mm3
psrlw mm7, mm4
psrlw mm7, mm5
psrlw mm7, mm6
psrlw mm7, mm7

; ------------------------------------------------------------------------------
; opcode mm,m64
; ------------------------------------------------------------------------------
psrlw mm0, qword [rip + 0x13]
psrlw mm0, qword [rip + 0x1235]
psrlw mm0, qword [rip + 0x12345679]
psrlw mm0, qword [rbx]
psrlw mm0, qword [rcx + 0x14]
psrlw mm0, qword [rdx + 0x15]
psrlw mm0, qword [rbx + 0x1235]
psrlw mm0, qword [rbx + 0x12345679]
psrlw mm0, qword [rbx + rcx]
psrlw mm0, qword [rbx + 4 * rcx]
psrlw mm0, qword [rbx + rcx + 0x13]
psrlw mm0, qword [rbx + rcx + 0x1235]
psrlw mm0, qword [rbx + rcx + 0x12345679]
psrlw mm0, qword [rbx + 4 * rcx + 0x13]
psrlw mm0, qword [rbx + 4 * rcx + 0x1235]
psrlw mm0, qword [rbx + 8 * rcx + 0x12345679]
psrlw mm0, qword [4 * rcx]
psrlw mm0, qword [4 * rcx + 0x13]
psrlw mm0, qword [4 * rcx + 0x1235]
psrlw mm0, qword [4 * rcx + 0x12345679]
psrlw mm0, qword [rbp]
psrlw mm0, qword [rbp + 0x12]
psrlw mm0, qword [rbp + 0x1234]
psrlw mm0, qword [rbp + 0x12345678]
psrlw mm0, qword [4 * rbp]
psrlw mm0, qword [4 * rbp + 0x12]
psrlw mm0, qword [4 * rbp + 0x1234]
psrlw mm0, qword [4 * rbp + 0x12345678]
psrlw mm0, qword [rbx + 4 * rbp]
psrlw mm0, qword [rbx + 4 * rbp + 0x12]
psrlw mm0, qword [rbx + 4 * rbp + 0x1234]
psrlw mm0, qword [rbx + 4 * rbp + 0x12345678]
psrlw mm0, qword [rsp]
psrlw mm0, qword [rsp + 0x12]
psrlw mm0, qword [rsp + 0x1234]
psrlw mm0, qword [rsp + 0x12345678]
psrlw mm0, qword [rsp + rax]
psrlw mm0, qword [rsp + rbp]
psrlw mm0, qword [rsp + 2*rbp]
psrlw mm0, qword [rsp + 4*rbp]
psrlw mm0, qword [rsp + 8*rbp]
psrlw mm0, qword [rax]
psrlw mm0, qword [rcx]
psrlw mm0, qword [rdx]
psrlw mm0, qword [rbx]
psrlw mm0, qword [rsp]
psrlw mm0, qword [rbp]
psrlw mm0, qword [rsi]
psrlw mm0, qword [rdi]
psrlw mm0, qword [rax + 2*rax]
psrlw mm0, qword [rcx + 2*rcx]
psrlw mm0, qword [rdx + 2*rdx]
psrlw mm0, qword [rbx + 2*rbx]
psrlw mm0, qword [rbp + 2*rbp]
psrlw mm0, qword [rsi + 2*rsi]
psrlw mm0, qword [rdi + 2*rdi]
psrlw mm1, qword [rip + 0x13]
psrlw mm1, qword [rip + 0x1235]
psrlw mm1, qword [rip + 0x12345679]
psrlw mm1, qword [rbx]
psrlw mm1, qword [rcx + 0x14]
psrlw mm1, qword [rdx + 0x15]
psrlw mm1, qword [rbx + 0x1235]
psrlw mm1, qword [rbx + 0x12345679]
psrlw mm1, qword [rbx + rcx]
psrlw mm1, qword [rbx + 4 * rcx]
psrlw mm1, qword [rbx + rcx + 0x13]
psrlw mm1, qword [rbx + rcx + 0x1235]
psrlw mm1, qword [rbx + rcx + 0x12345679]
psrlw mm1, qword [rbx + 4 * rcx + 0x13]
psrlw mm1, qword [rbx + 4 * rcx + 0x1235]
psrlw mm1, qword [rbx + 8 * rcx + 0x12345679]
psrlw mm1, qword [4 * rcx]
psrlw mm1, qword [4 * rcx + 0x13]
psrlw mm1, qword [4 * rcx + 0x1235]
psrlw mm1, qword [4 * rcx + 0x12345679]
psrlw mm1, qword [rbp]
psrlw mm1, qword [rbp + 0x12]
psrlw mm1, qword [rbp + 0x1234]
psrlw mm1, qword [rbp + 0x12345678]
psrlw mm1, qword [4 * rbp]
psrlw mm1, qword [4 * rbp + 0x12]
psrlw mm1, qword [4 * rbp + 0x1234]
psrlw mm1, qword [4 * rbp + 0x12345678]
psrlw mm1, qword [rbx + 4 * rbp]
psrlw mm1, qword [rbx + 4 * rbp + 0x12]
psrlw mm1, qword [rbx + 4 * rbp + 0x1234]
psrlw mm1, qword [rbx + 4 * rbp + 0x12345678]
psrlw mm1, qword [rsp]
psrlw mm1, qword [rsp + 0x12]
psrlw mm1, qword [rsp + 0x1234]
psrlw mm1, qword [rsp + 0x12345678]
psrlw mm1, qword [rsp + rax]
psrlw mm1, qword [rsp + rbp]
psrlw mm1, qword [rsp + 2*rbp]
psrlw mm1, qword [rsp + 4*rbp]
psrlw mm1, qword [rsp + 8*rbp]
psrlw mm1, qword [rax]
psrlw mm1, qword [rcx]
psrlw mm1, qword [rdx]
psrlw mm1, qword [rbx]
psrlw mm1, qword [rsp]
psrlw mm1, qword [rbp]
psrlw mm1, qword [rsi]
psrlw mm1, qword [rdi]
psrlw mm1, qword [rax + 2*rax]
psrlw mm1, qword [rcx + 2*rcx]
psrlw mm1, qword [rdx + 2*rdx]
psrlw mm1, qword [rbx + 2*rbx]
psrlw mm1, qword [rbp + 2*rbp]
psrlw mm1, qword [rsi + 2*rsi]
psrlw mm1, qword [rdi + 2*rdi]
psrlw mm2, qword [rip + 0x13]
psrlw mm2, qword [rip + 0x1235]
psrlw mm2, qword [rip + 0x12345679]
psrlw mm2, qword [rbx]
psrlw mm2, qword [rcx + 0x14]
psrlw mm2, qword [rdx + 0x15]
psrlw mm2, qword [rbx + 0x1235]
psrlw mm2, qword [rbx + 0x12345679]
psrlw mm2, qword [rbx + rcx]
psrlw mm2, qword [rbx + 4 * rcx]
psrlw mm2, qword [rbx + rcx + 0x13]
psrlw mm2, qword [rbx + rcx + 0x1235]
psrlw mm2, qword [rbx + rcx + 0x12345679]
psrlw mm2, qword [rbx + 4 * rcx + 0x13]
psrlw mm2, qword [rbx + 4 * rcx + 0x1235]
psrlw mm2, qword [rbx + 8 * rcx + 0x12345679]
psrlw mm2, qword [4 * rcx]
psrlw mm2, qword [4 * rcx + 0x13]
psrlw mm2, qword [4 * rcx + 0x1235]
psrlw mm2, qword [4 * rcx + 0x12345679]
psrlw mm2, qword [rbp]
psrlw mm2, qword [rbp + 0x12]
psrlw mm2, qword [rbp + 0x1234]
psrlw mm2, qword [rbp + 0x12345678]
psrlw mm2, qword [4 * rbp]
psrlw mm2, qword [4 * rbp + 0x12]
psrlw mm2, qword [4 * rbp + 0x1234]
psrlw mm2, qword [4 * rbp + 0x12345678]
psrlw mm2, qword [rbx + 4 * rbp]
psrlw mm2, qword [rbx + 4 * rbp + 0x12]
psrlw mm2, qword [rbx + 4 * rbp + 0x1234]
psrlw mm2, qword [rbx + 4 * rbp + 0x12345678]
psrlw mm2, qword [rsp]
psrlw mm2, qword [rsp + 0x12]
psrlw mm2, qword [rsp + 0x1234]
psrlw mm2, qword [rsp + 0x12345678]
psrlw mm2, qword [rsp + rax]
psrlw mm2, qword [rsp + rbp]
psrlw mm2, qword [rsp + 2*rbp]
psrlw mm2, qword [rsp + 4*rbp]
psrlw mm2, qword [rsp + 8*rbp]
psrlw mm2, qword [rax]
psrlw mm2, qword [rcx]
psrlw mm2, qword [rdx]
psrlw mm2, qword [rbx]
psrlw mm2, qword [rsp]
psrlw mm2, qword [rbp]
psrlw mm2, qword [rsi]
psrlw mm2, qword [rdi]
psrlw mm2, qword [rax + 2*rax]
psrlw mm2, qword [rcx + 2*rcx]
psrlw mm2, qword [rdx + 2*rdx]
psrlw mm2, qword [rbx + 2*rbx]
psrlw mm2, qword [rbp + 2*rbp]
psrlw mm2, qword [rsi + 2*rsi]
psrlw mm2, qword [rdi + 2*rdi]
psrlw mm3, qword [rip + 0x13]
psrlw mm3, qword [rip + 0x1235]
psrlw mm3, qword [rip + 0x12345679]
psrlw mm3, qword [rbx]
psrlw mm3, qword [rcx + 0x14]
psrlw mm3, qword [rdx + 0x15]
psrlw mm3, qword [rbx + 0x1235]
psrlw mm3, qword [rbx + 0x12345679]
psrlw mm3, qword [rbx + rcx]
psrlw mm3, qword [rbx + 4 * rcx]
psrlw mm3, qword [rbx + rcx + 0x13]
psrlw mm3, qword [rbx + rcx + 0x1235]
psrlw mm3, qword [rbx + rcx + 0x12345679]
psrlw mm3, qword [rbx + 4 * rcx + 0x13]
psrlw mm3, qword [rbx + 4 * rcx + 0x1235]
psrlw mm3, qword [rbx + 8 * rcx + 0x12345679]
psrlw mm3, qword [4 * rcx]
psrlw mm3, qword [4 * rcx + 0x13]
psrlw mm3, qword [4 * rcx + 0x1235]
psrlw mm3, qword [4 * rcx + 0x12345679]
psrlw mm3, qword [rbp]
psrlw mm3, qword [rbp + 0x12]
psrlw mm3, qword [rbp + 0x1234]
psrlw mm3, qword [rbp + 0x12345678]
psrlw mm3, qword [4 * rbp]
psrlw mm3, qword [4 * rbp + 0x12]
psrlw mm3, qword [4 * rbp + 0x1234]
psrlw mm3, qword [4 * rbp + 0x12345678]
psrlw mm3, qword [rbx + 4 * rbp]
psrlw mm3, qword [rbx + 4 * rbp + 0x12]
psrlw mm3, qword [rbx + 4 * rbp + 0x1234]
psrlw mm3, qword [rbx + 4 * rbp + 0x12345678]
psrlw mm3, qword [rsp]
psrlw mm3, qword [rsp + 0x12]
psrlw mm3, qword [rsp + 0x1234]
psrlw mm3, qword [rsp + 0x12345678]
psrlw mm3, qword [rsp + rax]
psrlw mm3, qword [rsp + rbp]
psrlw mm3, qword [rsp + 2*rbp]
psrlw mm3, qword [rsp + 4*rbp]
psrlw mm3, qword [rsp + 8*rbp]
psrlw mm3, qword [rax]
psrlw mm3, qword [rcx]
psrlw mm3, qword [rdx]
psrlw mm3, qword [rbx]
psrlw mm3, qword [rsp]
psrlw mm3, qword [rbp]
psrlw mm3, qword [rsi]
psrlw mm3, qword [rdi]
psrlw mm3, qword [rax + 2*rax]
psrlw mm3, qword [rcx + 2*rcx]
psrlw mm3, qword [rdx + 2*rdx]
psrlw mm3, qword [rbx + 2*rbx]
psrlw mm3, qword [rbp + 2*rbp]
psrlw mm3, qword [rsi + 2*rsi]
psrlw mm3, qword [rdi + 2*rdi]
psrlw mm4, qword [rip + 0x13]
psrlw mm4, qword [rip + 0x1235]
psrlw mm4, qword [rip + 0x12345679]
psrlw mm4, qword [rbx]
psrlw mm4, qword [rcx + 0x14]
psrlw mm4, qword [rdx + 0x15]
psrlw mm4, qword [rbx + 0x1235]
psrlw mm4, qword [rbx + 0x12345679]
psrlw mm4, qword [rbx + rcx]
psrlw mm4, qword [rbx + 4 * rcx]
psrlw mm4, qword [rbx + rcx + 0x13]
psrlw mm4, qword [rbx + rcx + 0x1235]
psrlw mm4, qword [rbx + rcx + 0x12345679]
psrlw mm4, qword [rbx + 4 * rcx + 0x13]
psrlw mm4, qword [rbx + 4 * rcx + 0x1235]
psrlw mm4, qword [rbx + 8 * rcx + 0x12345679]
psrlw mm4, qword [4 * rcx]
psrlw mm4, qword [4 * rcx + 0x13]
psrlw mm4, qword [4 * rcx + 0x1235]
psrlw mm4, qword [4 * rcx + 0x12345679]
psrlw mm4, qword [rbp]
psrlw mm4, qword [rbp + 0x12]
psrlw mm4, qword [rbp + 0x1234]
psrlw mm4, qword [rbp + 0x12345678]
psrlw mm4, qword [4 * rbp]
psrlw mm4, qword [4 * rbp + 0x12]
psrlw mm4, qword [4 * rbp + 0x1234]
psrlw mm4, qword [4 * rbp + 0x12345678]
psrlw mm4, qword [rbx + 4 * rbp]
psrlw mm4, qword [rbx + 4 * rbp + 0x12]
psrlw mm4, qword [rbx + 4 * rbp + 0x1234]
psrlw mm4, qword [rbx + 4 * rbp + 0x12345678]
psrlw mm4, qword [rsp]
psrlw mm4, qword [rsp + 0x12]
psrlw mm4, qword [rsp + 0x1234]
psrlw mm4, qword [rsp + 0x12345678]
psrlw mm4, qword [rsp + rax]
psrlw mm4, qword [rsp + rbp]
psrlw mm4, qword [rsp + 2*rbp]
psrlw mm4, qword [rsp + 4*rbp]
psrlw mm4, qword [rsp + 8*rbp]
psrlw mm4, qword [rax]
psrlw mm4, qword [rcx]
psrlw mm4, qword [rdx]
psrlw mm4, qword [rbx]
psrlw mm4, qword [rsp]
psrlw mm4, qword [rbp]
psrlw mm4, qword [rsi]
psrlw mm4, qword [rdi]
psrlw mm4, qword [rax + 2*rax]
psrlw mm4, qword [rcx + 2*rcx]
psrlw mm4, qword [rdx + 2*rdx]
psrlw mm4, qword [rbx + 2*rbx]
psrlw mm4, qword [rbp + 2*rbp]
psrlw mm4, qword [rsi + 2*rsi]
psrlw mm4, qword [rdi + 2*rdi]
psrlw mm5, qword [rip + 0x13]
psrlw mm5, qword [rip + 0x1235]
psrlw mm5, qword [rip + 0x12345679]
psrlw mm5, qword [rbx]
psrlw mm5, qword [rcx + 0x14]
psrlw mm5, qword [rdx + 0x15]
psrlw mm5, qword [rbx + 0x1235]
psrlw mm5, qword [rbx + 0x12345679]
psrlw mm5, qword [rbx + rcx]
psrlw mm5, qword [rbx + 4 * rcx]
psrlw mm5, qword [rbx + rcx + 0x13]
psrlw mm5, qword [rbx + rcx + 0x1235]
psrlw mm5, qword [rbx + rcx + 0x12345679]
psrlw mm5, qword [rbx + 4 * rcx + 0x13]
psrlw mm5, qword [rbx + 4 * rcx + 0x1235]
psrlw mm5, qword [rbx + 8 * rcx + 0x12345679]
psrlw mm5, qword [4 * rcx]
psrlw mm5, qword [4 * rcx + 0x13]
psrlw mm5, qword [4 * rcx + 0x1235]
psrlw mm5, qword [4 * rcx + 0x12345679]
psrlw mm5, qword [rbp]
psrlw mm5, qword [rbp + 0x12]
psrlw mm5, qword [rbp + 0x1234]
psrlw mm5, qword [rbp + 0x12345678]
psrlw mm5, qword [4 * rbp]
psrlw mm5, qword [4 * rbp + 0x12]
psrlw mm5, qword [4 * rbp + 0x1234]
psrlw mm5, qword [4 * rbp + 0x12345678]
psrlw mm5, qword [rbx + 4 * rbp]
psrlw mm5, qword [rbx + 4 * rbp + 0x12]
psrlw mm5, qword [rbx + 4 * rbp + 0x1234]
psrlw mm5, qword [rbx + 4 * rbp + 0x12345678]
psrlw mm5, qword [rsp]
psrlw mm5, qword [rsp + 0x12]
psrlw mm5, qword [rsp + 0x1234]
psrlw mm5, qword [rsp + 0x12345678]
psrlw mm5, qword [rsp + rax]
psrlw mm5, qword [rsp + rbp]
psrlw mm5, qword [rsp + 2*rbp]
psrlw mm5, qword [rsp + 4*rbp]
psrlw mm5, qword [rsp + 8*rbp]
psrlw mm5, qword [rax]
psrlw mm5, qword [rcx]
psrlw mm5, qword [rdx]
psrlw mm5, qword [rbx]
psrlw mm5, qword [rsp]
psrlw mm5, qword [rbp]
psrlw mm5, qword [rsi]
psrlw mm5, qword [rdi]
psrlw mm5, qword [rax + 2*rax]
psrlw mm5, qword [rcx + 2*rcx]
psrlw mm5, qword [rdx + 2*rdx]
psrlw mm5, qword [rbx + 2*rbx]
psrlw mm5, qword [rbp + 2*rbp]
psrlw mm5, qword [rsi + 2*rsi]
psrlw mm5, qword [rdi + 2*rdi]
psrlw mm6, qword [rip + 0x13]
psrlw mm6, qword [rip + 0x1235]
psrlw mm6, qword [rip + 0x12345679]
psrlw mm6, qword [rbx]
psrlw mm6, qword [rcx + 0x14]
psrlw mm6, qword [rdx + 0x15]
psrlw mm6, qword [rbx + 0x1235]
psrlw mm6, qword [rbx + 0x12345679]
psrlw mm6, qword [rbx + rcx]
psrlw mm6, qword [rbx + 4 * rcx]
psrlw mm6, qword [rbx + rcx + 0x13]
psrlw mm6, qword [rbx + rcx + 0x1235]
psrlw mm6, qword [rbx + rcx + 0x12345679]
psrlw mm6, qword [rbx + 4 * rcx + 0x13]
psrlw mm6, qword [rbx + 4 * rcx + 0x1235]
psrlw mm6, qword [rbx + 8 * rcx + 0x12345679]
psrlw mm6, qword [4 * rcx]
psrlw mm6, qword [4 * rcx + 0x13]
psrlw mm6, qword [4 * rcx + 0x1235]
psrlw mm6, qword [4 * rcx + 0x12345679]
psrlw mm6, qword [rbp]
psrlw mm6, qword [rbp + 0x12]
psrlw mm6, qword [rbp + 0x1234]
psrlw mm6, qword [rbp + 0x12345678]
psrlw mm6, qword [4 * rbp]
psrlw mm6, qword [4 * rbp + 0x12]
psrlw mm6, qword [4 * rbp + 0x1234]
psrlw mm6, qword [4 * rbp + 0x12345678]
psrlw mm6, qword [rbx + 4 * rbp]
psrlw mm6, qword [rbx + 4 * rbp + 0x12]
psrlw mm6, qword [rbx + 4 * rbp + 0x1234]
psrlw mm6, qword [rbx + 4 * rbp + 0x12345678]
psrlw mm6, qword [rsp]
psrlw mm6, qword [rsp + 0x12]
psrlw mm6, qword [rsp + 0x1234]
psrlw mm6, qword [rsp + 0x12345678]
psrlw mm6, qword [rsp + rax]
psrlw mm6, qword [rsp + rbp]
psrlw mm6, qword [rsp + 2*rbp]
psrlw mm6, qword [rsp + 4*rbp]
psrlw mm6, qword [rsp + 8*rbp]
psrlw mm6, qword [rax]
psrlw mm6, qword [rcx]
psrlw mm6, qword [rdx]
psrlw mm6, qword [rbx]
psrlw mm6, qword [rsp]
psrlw mm6, qword [rbp]
psrlw mm6, qword [rsi]
psrlw mm6, qword [rdi]
psrlw mm6, qword [rax + 2*rax]
psrlw mm6, qword [rcx + 2*rcx]
psrlw mm6, qword [rdx + 2*rdx]
psrlw mm6, qword [rbx + 2*rbx]
psrlw mm6, qword [rbp + 2*rbp]
psrlw mm6, qword [rsi + 2*rsi]
psrlw mm6, qword [rdi + 2*rdi]
psrlw mm7, qword [rip + 0x13]
psrlw mm7, qword [rip + 0x1235]
psrlw mm7, qword [rip + 0x12345679]
psrlw mm7, qword [rbx]
psrlw mm7, qword [rcx + 0x14]
psrlw mm7, qword [rdx + 0x15]
psrlw mm7, qword [rbx + 0x1235]
psrlw mm7, qword [rbx + 0x12345679]
psrlw mm7, qword [rbx + rcx]
psrlw mm7, qword [rbx + 4 * rcx]
psrlw mm7, qword [rbx + rcx + 0x13]
psrlw mm7, qword [rbx + rcx + 0x1235]
psrlw mm7, qword [rbx + rcx + 0x12345679]
psrlw mm7, qword [rbx + 4 * rcx + 0x13]
psrlw mm7, qword [rbx + 4 * rcx + 0x1235]
psrlw mm7, qword [rbx + 8 * rcx + 0x12345679]
psrlw mm7, qword [4 * rcx]
psrlw mm7, qword [4 * rcx + 0x13]
psrlw mm7, qword [4 * rcx + 0x1235]
psrlw mm7, qword [4 * rcx + 0x12345679]
psrlw mm7, qword [rbp]
psrlw mm7, qword [rbp + 0x12]
psrlw mm7, qword [rbp + 0x1234]
psrlw mm7, qword [rbp + 0x12345678]
psrlw mm7, qword [4 * rbp]
psrlw mm7, qword [4 * rbp + 0x12]
psrlw mm7, qword [4 * rbp + 0x1234]
psrlw mm7, qword [4 * rbp + 0x12345678]
psrlw mm7, qword [rbx + 4 * rbp]
psrlw mm7, qword [rbx + 4 * rbp + 0x12]
psrlw mm7, qword [rbx + 4 * rbp + 0x1234]
psrlw mm7, qword [rbx + 4 * rbp + 0x12345678]
psrlw mm7, qword [rsp]
psrlw mm7, qword [rsp + 0x12]
psrlw mm7, qword [rsp + 0x1234]
psrlw mm7, qword [rsp + 0x12345678]
psrlw mm7, qword [rsp + rax]
psrlw mm7, qword [rsp + rbp]
psrlw mm7, qword [rsp + 2*rbp]
psrlw mm7, qword [rsp + 4*rbp]
psrlw mm7, qword [rsp + 8*rbp]
psrlw mm7, qword [rax]
psrlw mm7, qword [rcx]
psrlw mm7, qword [rdx]
psrlw mm7, qword [rbx]
psrlw mm7, qword [rsp]
psrlw mm7, qword [rbp]
psrlw mm7, qword [rsi]
psrlw mm7, qword [rdi]
psrlw mm7, qword [rax + 2*rax]
psrlw mm7, qword [rcx + 2*rcx]
psrlw mm7, qword [rdx + 2*rdx]
psrlw mm7, qword [rbx + 2*rbx]
psrlw mm7, qword [rbp + 2*rbp]
psrlw mm7, qword [rsi + 2*rsi]
psrlw mm7, qword [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode mm,imm8
; ------------------------------------------------------------------------------
psrlw mm0, 0
psrlw mm0, 1
psrlw mm0, 0x12
psrlw mm0, 127
psrlw mm0, 255
psrlw mm0, 0xff
psrlw mm1, 0
psrlw mm1, 1
psrlw mm1, 0x12
psrlw mm1, 127
psrlw mm1, 255
psrlw mm1, 0xff
psrlw mm2, 0
psrlw mm2, 1
psrlw mm2, 0x12
psrlw mm2, 127
psrlw mm2, 255
psrlw mm2, 0xff
psrlw mm3, 0
psrlw mm3, 1
psrlw mm3, 0x12
psrlw mm3, 127
psrlw mm3, 255
psrlw mm3, 0xff
psrlw mm4, 0
psrlw mm4, 1
psrlw mm4, 0x12
psrlw mm4, 127
psrlw mm4, 255
psrlw mm4, 0xff
psrlw mm5, 0
psrlw mm5, 1
psrlw mm5, 0x12
psrlw mm5, 127
psrlw mm5, 255
psrlw mm5, 0xff
psrlw mm6, 0
psrlw mm6, 1
psrlw mm6, 0x12
psrlw mm6, 127
psrlw mm6, 255
psrlw mm6, 0xff
psrlw mm7, 0
psrlw mm7, 1
psrlw mm7, 0x12
psrlw mm7, 127
psrlw mm7, 255
psrlw mm7, 0xff

