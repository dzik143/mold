use64
; ------------------------------------------------------------------------------
; opcode mm,mm
; ------------------------------------------------------------------------------
pmaddwd mm0, mm0
pmaddwd mm0, mm1
pmaddwd mm0, mm2
pmaddwd mm0, mm3
pmaddwd mm0, mm4
pmaddwd mm0, mm5
pmaddwd mm0, mm6
pmaddwd mm0, mm7
pmaddwd mm1, mm0
pmaddwd mm1, mm1
pmaddwd mm1, mm2
pmaddwd mm1, mm3
pmaddwd mm1, mm4
pmaddwd mm1, mm5
pmaddwd mm1, mm6
pmaddwd mm1, mm7
pmaddwd mm2, mm0
pmaddwd mm2, mm1
pmaddwd mm2, mm2
pmaddwd mm2, mm3
pmaddwd mm2, mm4
pmaddwd mm2, mm5
pmaddwd mm2, mm6
pmaddwd mm2, mm7
pmaddwd mm3, mm0
pmaddwd mm3, mm1
pmaddwd mm3, mm2
pmaddwd mm3, mm3
pmaddwd mm3, mm4
pmaddwd mm3, mm5
pmaddwd mm3, mm6
pmaddwd mm3, mm7
pmaddwd mm4, mm0
pmaddwd mm4, mm1
pmaddwd mm4, mm2
pmaddwd mm4, mm3
pmaddwd mm4, mm4
pmaddwd mm4, mm5
pmaddwd mm4, mm6
pmaddwd mm4, mm7
pmaddwd mm5, mm0
pmaddwd mm5, mm1
pmaddwd mm5, mm2
pmaddwd mm5, mm3
pmaddwd mm5, mm4
pmaddwd mm5, mm5
pmaddwd mm5, mm6
pmaddwd mm5, mm7
pmaddwd mm6, mm0
pmaddwd mm6, mm1
pmaddwd mm6, mm2
pmaddwd mm6, mm3
pmaddwd mm6, mm4
pmaddwd mm6, mm5
pmaddwd mm6, mm6
pmaddwd mm6, mm7
pmaddwd mm7, mm0
pmaddwd mm7, mm1
pmaddwd mm7, mm2
pmaddwd mm7, mm3
pmaddwd mm7, mm4
pmaddwd mm7, mm5
pmaddwd mm7, mm6
pmaddwd mm7, mm7

; ------------------------------------------------------------------------------
; opcode mm,m64
; ------------------------------------------------------------------------------
pmaddwd mm0, qword [rip + 0x13]
pmaddwd mm0, qword [rip + 0x1235]
pmaddwd mm0, qword [rip + 0x12345679]
pmaddwd mm0, qword [rbx]
pmaddwd mm0, qword [rcx + 0x14]
pmaddwd mm0, qword [rdx + 0x15]
pmaddwd mm0, qword [rbx + 0x1235]
pmaddwd mm0, qword [rbx + 0x12345679]
pmaddwd mm0, qword [rbx + rcx]
pmaddwd mm0, qword [rbx + 4 * rcx]
pmaddwd mm0, qword [rbx + rcx + 0x13]
pmaddwd mm0, qword [rbx + rcx + 0x1235]
pmaddwd mm0, qword [rbx + rcx + 0x12345679]
pmaddwd mm0, qword [rbx + 4 * rcx + 0x13]
pmaddwd mm0, qword [rbx + 4 * rcx + 0x1235]
pmaddwd mm0, qword [rbx + 8 * rcx + 0x12345679]
pmaddwd mm0, qword [4 * rcx]
pmaddwd mm0, qword [4 * rcx + 0x13]
pmaddwd mm0, qword [4 * rcx + 0x1235]
pmaddwd mm0, qword [4 * rcx + 0x12345679]
pmaddwd mm0, qword [rbp]
pmaddwd mm0, qword [rbp + 0x12]
pmaddwd mm0, qword [rbp + 0x1234]
pmaddwd mm0, qword [rbp + 0x12345678]
pmaddwd mm0, qword [4 * rbp]
pmaddwd mm0, qword [4 * rbp + 0x12]
pmaddwd mm0, qword [4 * rbp + 0x1234]
pmaddwd mm0, qword [4 * rbp + 0x12345678]
pmaddwd mm0, qword [rbx + 4 * rbp]
pmaddwd mm0, qword [rbx + 4 * rbp + 0x12]
pmaddwd mm0, qword [rbx + 4 * rbp + 0x1234]
pmaddwd mm0, qword [rbx + 4 * rbp + 0x12345678]
pmaddwd mm0, qword [rsp]
pmaddwd mm0, qword [rsp + 0x12]
pmaddwd mm0, qword [rsp + 0x1234]
pmaddwd mm0, qword [rsp + 0x12345678]
pmaddwd mm0, qword [rsp + rax]
pmaddwd mm0, qword [rsp + rbp]
pmaddwd mm0, qword [rsp + 2*rbp]
pmaddwd mm0, qword [rsp + 4*rbp]
pmaddwd mm0, qword [rsp + 8*rbp]
pmaddwd mm0, qword [rax]
pmaddwd mm0, qword [rcx]
pmaddwd mm0, qword [rdx]
pmaddwd mm0, qword [rbx]
pmaddwd mm0, qword [rsp]
pmaddwd mm0, qword [rbp]
pmaddwd mm0, qword [rsi]
pmaddwd mm0, qword [rdi]
pmaddwd mm0, qword [rax + 2*rax]
pmaddwd mm0, qword [rcx + 2*rcx]
pmaddwd mm0, qword [rdx + 2*rdx]
pmaddwd mm0, qword [rbx + 2*rbx]
pmaddwd mm0, qword [rbp + 2*rbp]
pmaddwd mm0, qword [rsi + 2*rsi]
pmaddwd mm0, qword [rdi + 2*rdi]
pmaddwd mm1, qword [rip + 0x13]
pmaddwd mm1, qword [rip + 0x1235]
pmaddwd mm1, qword [rip + 0x12345679]
pmaddwd mm1, qword [rbx]
pmaddwd mm1, qword [rcx + 0x14]
pmaddwd mm1, qword [rdx + 0x15]
pmaddwd mm1, qword [rbx + 0x1235]
pmaddwd mm1, qword [rbx + 0x12345679]
pmaddwd mm1, qword [rbx + rcx]
pmaddwd mm1, qword [rbx + 4 * rcx]
pmaddwd mm1, qword [rbx + rcx + 0x13]
pmaddwd mm1, qword [rbx + rcx + 0x1235]
pmaddwd mm1, qword [rbx + rcx + 0x12345679]
pmaddwd mm1, qword [rbx + 4 * rcx + 0x13]
pmaddwd mm1, qword [rbx + 4 * rcx + 0x1235]
pmaddwd mm1, qword [rbx + 8 * rcx + 0x12345679]
pmaddwd mm1, qword [4 * rcx]
pmaddwd mm1, qword [4 * rcx + 0x13]
pmaddwd mm1, qword [4 * rcx + 0x1235]
pmaddwd mm1, qword [4 * rcx + 0x12345679]
pmaddwd mm1, qword [rbp]
pmaddwd mm1, qword [rbp + 0x12]
pmaddwd mm1, qword [rbp + 0x1234]
pmaddwd mm1, qword [rbp + 0x12345678]
pmaddwd mm1, qword [4 * rbp]
pmaddwd mm1, qword [4 * rbp + 0x12]
pmaddwd mm1, qword [4 * rbp + 0x1234]
pmaddwd mm1, qword [4 * rbp + 0x12345678]
pmaddwd mm1, qword [rbx + 4 * rbp]
pmaddwd mm1, qword [rbx + 4 * rbp + 0x12]
pmaddwd mm1, qword [rbx + 4 * rbp + 0x1234]
pmaddwd mm1, qword [rbx + 4 * rbp + 0x12345678]
pmaddwd mm1, qword [rsp]
pmaddwd mm1, qword [rsp + 0x12]
pmaddwd mm1, qword [rsp + 0x1234]
pmaddwd mm1, qword [rsp + 0x12345678]
pmaddwd mm1, qword [rsp + rax]
pmaddwd mm1, qword [rsp + rbp]
pmaddwd mm1, qword [rsp + 2*rbp]
pmaddwd mm1, qword [rsp + 4*rbp]
pmaddwd mm1, qword [rsp + 8*rbp]
pmaddwd mm1, qword [rax]
pmaddwd mm1, qword [rcx]
pmaddwd mm1, qword [rdx]
pmaddwd mm1, qword [rbx]
pmaddwd mm1, qword [rsp]
pmaddwd mm1, qword [rbp]
pmaddwd mm1, qword [rsi]
pmaddwd mm1, qword [rdi]
pmaddwd mm1, qword [rax + 2*rax]
pmaddwd mm1, qword [rcx + 2*rcx]
pmaddwd mm1, qword [rdx + 2*rdx]
pmaddwd mm1, qword [rbx + 2*rbx]
pmaddwd mm1, qword [rbp + 2*rbp]
pmaddwd mm1, qword [rsi + 2*rsi]
pmaddwd mm1, qword [rdi + 2*rdi]
pmaddwd mm2, qword [rip + 0x13]
pmaddwd mm2, qword [rip + 0x1235]
pmaddwd mm2, qword [rip + 0x12345679]
pmaddwd mm2, qword [rbx]
pmaddwd mm2, qword [rcx + 0x14]
pmaddwd mm2, qword [rdx + 0x15]
pmaddwd mm2, qword [rbx + 0x1235]
pmaddwd mm2, qword [rbx + 0x12345679]
pmaddwd mm2, qword [rbx + rcx]
pmaddwd mm2, qword [rbx + 4 * rcx]
pmaddwd mm2, qword [rbx + rcx + 0x13]
pmaddwd mm2, qword [rbx + rcx + 0x1235]
pmaddwd mm2, qword [rbx + rcx + 0x12345679]
pmaddwd mm2, qword [rbx + 4 * rcx + 0x13]
pmaddwd mm2, qword [rbx + 4 * rcx + 0x1235]
pmaddwd mm2, qword [rbx + 8 * rcx + 0x12345679]
pmaddwd mm2, qword [4 * rcx]
pmaddwd mm2, qword [4 * rcx + 0x13]
pmaddwd mm2, qword [4 * rcx + 0x1235]
pmaddwd mm2, qword [4 * rcx + 0x12345679]
pmaddwd mm2, qword [rbp]
pmaddwd mm2, qword [rbp + 0x12]
pmaddwd mm2, qword [rbp + 0x1234]
pmaddwd mm2, qword [rbp + 0x12345678]
pmaddwd mm2, qword [4 * rbp]
pmaddwd mm2, qword [4 * rbp + 0x12]
pmaddwd mm2, qword [4 * rbp + 0x1234]
pmaddwd mm2, qword [4 * rbp + 0x12345678]
pmaddwd mm2, qword [rbx + 4 * rbp]
pmaddwd mm2, qword [rbx + 4 * rbp + 0x12]
pmaddwd mm2, qword [rbx + 4 * rbp + 0x1234]
pmaddwd mm2, qword [rbx + 4 * rbp + 0x12345678]
pmaddwd mm2, qword [rsp]
pmaddwd mm2, qword [rsp + 0x12]
pmaddwd mm2, qword [rsp + 0x1234]
pmaddwd mm2, qword [rsp + 0x12345678]
pmaddwd mm2, qword [rsp + rax]
pmaddwd mm2, qword [rsp + rbp]
pmaddwd mm2, qword [rsp + 2*rbp]
pmaddwd mm2, qword [rsp + 4*rbp]
pmaddwd mm2, qword [rsp + 8*rbp]
pmaddwd mm2, qword [rax]
pmaddwd mm2, qword [rcx]
pmaddwd mm2, qword [rdx]
pmaddwd mm2, qword [rbx]
pmaddwd mm2, qword [rsp]
pmaddwd mm2, qword [rbp]
pmaddwd mm2, qword [rsi]
pmaddwd mm2, qword [rdi]
pmaddwd mm2, qword [rax + 2*rax]
pmaddwd mm2, qword [rcx + 2*rcx]
pmaddwd mm2, qword [rdx + 2*rdx]
pmaddwd mm2, qword [rbx + 2*rbx]
pmaddwd mm2, qword [rbp + 2*rbp]
pmaddwd mm2, qword [rsi + 2*rsi]
pmaddwd mm2, qword [rdi + 2*rdi]
pmaddwd mm3, qword [rip + 0x13]
pmaddwd mm3, qword [rip + 0x1235]
pmaddwd mm3, qword [rip + 0x12345679]
pmaddwd mm3, qword [rbx]
pmaddwd mm3, qword [rcx + 0x14]
pmaddwd mm3, qword [rdx + 0x15]
pmaddwd mm3, qword [rbx + 0x1235]
pmaddwd mm3, qword [rbx + 0x12345679]
pmaddwd mm3, qword [rbx + rcx]
pmaddwd mm3, qword [rbx + 4 * rcx]
pmaddwd mm3, qword [rbx + rcx + 0x13]
pmaddwd mm3, qword [rbx + rcx + 0x1235]
pmaddwd mm3, qword [rbx + rcx + 0x12345679]
pmaddwd mm3, qword [rbx + 4 * rcx + 0x13]
pmaddwd mm3, qword [rbx + 4 * rcx + 0x1235]
pmaddwd mm3, qword [rbx + 8 * rcx + 0x12345679]
pmaddwd mm3, qword [4 * rcx]
pmaddwd mm3, qword [4 * rcx + 0x13]
pmaddwd mm3, qword [4 * rcx + 0x1235]
pmaddwd mm3, qword [4 * rcx + 0x12345679]
pmaddwd mm3, qword [rbp]
pmaddwd mm3, qword [rbp + 0x12]
pmaddwd mm3, qword [rbp + 0x1234]
pmaddwd mm3, qword [rbp + 0x12345678]
pmaddwd mm3, qword [4 * rbp]
pmaddwd mm3, qword [4 * rbp + 0x12]
pmaddwd mm3, qword [4 * rbp + 0x1234]
pmaddwd mm3, qword [4 * rbp + 0x12345678]
pmaddwd mm3, qword [rbx + 4 * rbp]
pmaddwd mm3, qword [rbx + 4 * rbp + 0x12]
pmaddwd mm3, qword [rbx + 4 * rbp + 0x1234]
pmaddwd mm3, qword [rbx + 4 * rbp + 0x12345678]
pmaddwd mm3, qword [rsp]
pmaddwd mm3, qword [rsp + 0x12]
pmaddwd mm3, qword [rsp + 0x1234]
pmaddwd mm3, qword [rsp + 0x12345678]
pmaddwd mm3, qword [rsp + rax]
pmaddwd mm3, qword [rsp + rbp]
pmaddwd mm3, qword [rsp + 2*rbp]
pmaddwd mm3, qword [rsp + 4*rbp]
pmaddwd mm3, qword [rsp + 8*rbp]
pmaddwd mm3, qword [rax]
pmaddwd mm3, qword [rcx]
pmaddwd mm3, qword [rdx]
pmaddwd mm3, qword [rbx]
pmaddwd mm3, qword [rsp]
pmaddwd mm3, qword [rbp]
pmaddwd mm3, qword [rsi]
pmaddwd mm3, qword [rdi]
pmaddwd mm3, qword [rax + 2*rax]
pmaddwd mm3, qword [rcx + 2*rcx]
pmaddwd mm3, qword [rdx + 2*rdx]
pmaddwd mm3, qword [rbx + 2*rbx]
pmaddwd mm3, qword [rbp + 2*rbp]
pmaddwd mm3, qword [rsi + 2*rsi]
pmaddwd mm3, qword [rdi + 2*rdi]
pmaddwd mm4, qword [rip + 0x13]
pmaddwd mm4, qword [rip + 0x1235]
pmaddwd mm4, qword [rip + 0x12345679]
pmaddwd mm4, qword [rbx]
pmaddwd mm4, qword [rcx + 0x14]
pmaddwd mm4, qword [rdx + 0x15]
pmaddwd mm4, qword [rbx + 0x1235]
pmaddwd mm4, qword [rbx + 0x12345679]
pmaddwd mm4, qword [rbx + rcx]
pmaddwd mm4, qword [rbx + 4 * rcx]
pmaddwd mm4, qword [rbx + rcx + 0x13]
pmaddwd mm4, qword [rbx + rcx + 0x1235]
pmaddwd mm4, qword [rbx + rcx + 0x12345679]
pmaddwd mm4, qword [rbx + 4 * rcx + 0x13]
pmaddwd mm4, qword [rbx + 4 * rcx + 0x1235]
pmaddwd mm4, qword [rbx + 8 * rcx + 0x12345679]
pmaddwd mm4, qword [4 * rcx]
pmaddwd mm4, qword [4 * rcx + 0x13]
pmaddwd mm4, qword [4 * rcx + 0x1235]
pmaddwd mm4, qword [4 * rcx + 0x12345679]
pmaddwd mm4, qword [rbp]
pmaddwd mm4, qword [rbp + 0x12]
pmaddwd mm4, qword [rbp + 0x1234]
pmaddwd mm4, qword [rbp + 0x12345678]
pmaddwd mm4, qword [4 * rbp]
pmaddwd mm4, qword [4 * rbp + 0x12]
pmaddwd mm4, qword [4 * rbp + 0x1234]
pmaddwd mm4, qword [4 * rbp + 0x12345678]
pmaddwd mm4, qword [rbx + 4 * rbp]
pmaddwd mm4, qword [rbx + 4 * rbp + 0x12]
pmaddwd mm4, qword [rbx + 4 * rbp + 0x1234]
pmaddwd mm4, qword [rbx + 4 * rbp + 0x12345678]
pmaddwd mm4, qword [rsp]
pmaddwd mm4, qword [rsp + 0x12]
pmaddwd mm4, qword [rsp + 0x1234]
pmaddwd mm4, qword [rsp + 0x12345678]
pmaddwd mm4, qword [rsp + rax]
pmaddwd mm4, qword [rsp + rbp]
pmaddwd mm4, qword [rsp + 2*rbp]
pmaddwd mm4, qword [rsp + 4*rbp]
pmaddwd mm4, qword [rsp + 8*rbp]
pmaddwd mm4, qword [rax]
pmaddwd mm4, qword [rcx]
pmaddwd mm4, qword [rdx]
pmaddwd mm4, qword [rbx]
pmaddwd mm4, qword [rsp]
pmaddwd mm4, qword [rbp]
pmaddwd mm4, qword [rsi]
pmaddwd mm4, qword [rdi]
pmaddwd mm4, qword [rax + 2*rax]
pmaddwd mm4, qword [rcx + 2*rcx]
pmaddwd mm4, qword [rdx + 2*rdx]
pmaddwd mm4, qword [rbx + 2*rbx]
pmaddwd mm4, qword [rbp + 2*rbp]
pmaddwd mm4, qword [rsi + 2*rsi]
pmaddwd mm4, qword [rdi + 2*rdi]
pmaddwd mm5, qword [rip + 0x13]
pmaddwd mm5, qword [rip + 0x1235]
pmaddwd mm5, qword [rip + 0x12345679]
pmaddwd mm5, qword [rbx]
pmaddwd mm5, qword [rcx + 0x14]
pmaddwd mm5, qword [rdx + 0x15]
pmaddwd mm5, qword [rbx + 0x1235]
pmaddwd mm5, qword [rbx + 0x12345679]
pmaddwd mm5, qword [rbx + rcx]
pmaddwd mm5, qword [rbx + 4 * rcx]
pmaddwd mm5, qword [rbx + rcx + 0x13]
pmaddwd mm5, qword [rbx + rcx + 0x1235]
pmaddwd mm5, qword [rbx + rcx + 0x12345679]
pmaddwd mm5, qword [rbx + 4 * rcx + 0x13]
pmaddwd mm5, qword [rbx + 4 * rcx + 0x1235]
pmaddwd mm5, qword [rbx + 8 * rcx + 0x12345679]
pmaddwd mm5, qword [4 * rcx]
pmaddwd mm5, qword [4 * rcx + 0x13]
pmaddwd mm5, qword [4 * rcx + 0x1235]
pmaddwd mm5, qword [4 * rcx + 0x12345679]
pmaddwd mm5, qword [rbp]
pmaddwd mm5, qword [rbp + 0x12]
pmaddwd mm5, qword [rbp + 0x1234]
pmaddwd mm5, qword [rbp + 0x12345678]
pmaddwd mm5, qword [4 * rbp]
pmaddwd mm5, qword [4 * rbp + 0x12]
pmaddwd mm5, qword [4 * rbp + 0x1234]
pmaddwd mm5, qword [4 * rbp + 0x12345678]
pmaddwd mm5, qword [rbx + 4 * rbp]
pmaddwd mm5, qword [rbx + 4 * rbp + 0x12]
pmaddwd mm5, qword [rbx + 4 * rbp + 0x1234]
pmaddwd mm5, qword [rbx + 4 * rbp + 0x12345678]
pmaddwd mm5, qword [rsp]
pmaddwd mm5, qword [rsp + 0x12]
pmaddwd mm5, qword [rsp + 0x1234]
pmaddwd mm5, qword [rsp + 0x12345678]
pmaddwd mm5, qword [rsp + rax]
pmaddwd mm5, qword [rsp + rbp]
pmaddwd mm5, qword [rsp + 2*rbp]
pmaddwd mm5, qword [rsp + 4*rbp]
pmaddwd mm5, qword [rsp + 8*rbp]
pmaddwd mm5, qword [rax]
pmaddwd mm5, qword [rcx]
pmaddwd mm5, qword [rdx]
pmaddwd mm5, qword [rbx]
pmaddwd mm5, qword [rsp]
pmaddwd mm5, qword [rbp]
pmaddwd mm5, qword [rsi]
pmaddwd mm5, qword [rdi]
pmaddwd mm5, qword [rax + 2*rax]
pmaddwd mm5, qword [rcx + 2*rcx]
pmaddwd mm5, qword [rdx + 2*rdx]
pmaddwd mm5, qword [rbx + 2*rbx]
pmaddwd mm5, qword [rbp + 2*rbp]
pmaddwd mm5, qword [rsi + 2*rsi]
pmaddwd mm5, qword [rdi + 2*rdi]
pmaddwd mm6, qword [rip + 0x13]
pmaddwd mm6, qword [rip + 0x1235]
pmaddwd mm6, qword [rip + 0x12345679]
pmaddwd mm6, qword [rbx]
pmaddwd mm6, qword [rcx + 0x14]
pmaddwd mm6, qword [rdx + 0x15]
pmaddwd mm6, qword [rbx + 0x1235]
pmaddwd mm6, qword [rbx + 0x12345679]
pmaddwd mm6, qword [rbx + rcx]
pmaddwd mm6, qword [rbx + 4 * rcx]
pmaddwd mm6, qword [rbx + rcx + 0x13]
pmaddwd mm6, qword [rbx + rcx + 0x1235]
pmaddwd mm6, qword [rbx + rcx + 0x12345679]
pmaddwd mm6, qword [rbx + 4 * rcx + 0x13]
pmaddwd mm6, qword [rbx + 4 * rcx + 0x1235]
pmaddwd mm6, qword [rbx + 8 * rcx + 0x12345679]
pmaddwd mm6, qword [4 * rcx]
pmaddwd mm6, qword [4 * rcx + 0x13]
pmaddwd mm6, qword [4 * rcx + 0x1235]
pmaddwd mm6, qword [4 * rcx + 0x12345679]
pmaddwd mm6, qword [rbp]
pmaddwd mm6, qword [rbp + 0x12]
pmaddwd mm6, qword [rbp + 0x1234]
pmaddwd mm6, qword [rbp + 0x12345678]
pmaddwd mm6, qword [4 * rbp]
pmaddwd mm6, qword [4 * rbp + 0x12]
pmaddwd mm6, qword [4 * rbp + 0x1234]
pmaddwd mm6, qword [4 * rbp + 0x12345678]
pmaddwd mm6, qword [rbx + 4 * rbp]
pmaddwd mm6, qword [rbx + 4 * rbp + 0x12]
pmaddwd mm6, qword [rbx + 4 * rbp + 0x1234]
pmaddwd mm6, qword [rbx + 4 * rbp + 0x12345678]
pmaddwd mm6, qword [rsp]
pmaddwd mm6, qword [rsp + 0x12]
pmaddwd mm6, qword [rsp + 0x1234]
pmaddwd mm6, qword [rsp + 0x12345678]
pmaddwd mm6, qword [rsp + rax]
pmaddwd mm6, qword [rsp + rbp]
pmaddwd mm6, qword [rsp + 2*rbp]
pmaddwd mm6, qword [rsp + 4*rbp]
pmaddwd mm6, qword [rsp + 8*rbp]
pmaddwd mm6, qword [rax]
pmaddwd mm6, qword [rcx]
pmaddwd mm6, qword [rdx]
pmaddwd mm6, qword [rbx]
pmaddwd mm6, qword [rsp]
pmaddwd mm6, qword [rbp]
pmaddwd mm6, qword [rsi]
pmaddwd mm6, qword [rdi]
pmaddwd mm6, qword [rax + 2*rax]
pmaddwd mm6, qword [rcx + 2*rcx]
pmaddwd mm6, qword [rdx + 2*rdx]
pmaddwd mm6, qword [rbx + 2*rbx]
pmaddwd mm6, qword [rbp + 2*rbp]
pmaddwd mm6, qword [rsi + 2*rsi]
pmaddwd mm6, qword [rdi + 2*rdi]
pmaddwd mm7, qword [rip + 0x13]
pmaddwd mm7, qword [rip + 0x1235]
pmaddwd mm7, qword [rip + 0x12345679]
pmaddwd mm7, qword [rbx]
pmaddwd mm7, qword [rcx + 0x14]
pmaddwd mm7, qword [rdx + 0x15]
pmaddwd mm7, qword [rbx + 0x1235]
pmaddwd mm7, qword [rbx + 0x12345679]
pmaddwd mm7, qword [rbx + rcx]
pmaddwd mm7, qword [rbx + 4 * rcx]
pmaddwd mm7, qword [rbx + rcx + 0x13]
pmaddwd mm7, qword [rbx + rcx + 0x1235]
pmaddwd mm7, qword [rbx + rcx + 0x12345679]
pmaddwd mm7, qword [rbx + 4 * rcx + 0x13]
pmaddwd mm7, qword [rbx + 4 * rcx + 0x1235]
pmaddwd mm7, qword [rbx + 8 * rcx + 0x12345679]
pmaddwd mm7, qword [4 * rcx]
pmaddwd mm7, qword [4 * rcx + 0x13]
pmaddwd mm7, qword [4 * rcx + 0x1235]
pmaddwd mm7, qword [4 * rcx + 0x12345679]
pmaddwd mm7, qword [rbp]
pmaddwd mm7, qword [rbp + 0x12]
pmaddwd mm7, qword [rbp + 0x1234]
pmaddwd mm7, qword [rbp + 0x12345678]
pmaddwd mm7, qword [4 * rbp]
pmaddwd mm7, qword [4 * rbp + 0x12]
pmaddwd mm7, qword [4 * rbp + 0x1234]
pmaddwd mm7, qword [4 * rbp + 0x12345678]
pmaddwd mm7, qword [rbx + 4 * rbp]
pmaddwd mm7, qword [rbx + 4 * rbp + 0x12]
pmaddwd mm7, qword [rbx + 4 * rbp + 0x1234]
pmaddwd mm7, qword [rbx + 4 * rbp + 0x12345678]
pmaddwd mm7, qword [rsp]
pmaddwd mm7, qword [rsp + 0x12]
pmaddwd mm7, qword [rsp + 0x1234]
pmaddwd mm7, qword [rsp + 0x12345678]
pmaddwd mm7, qword [rsp + rax]
pmaddwd mm7, qword [rsp + rbp]
pmaddwd mm7, qword [rsp + 2*rbp]
pmaddwd mm7, qword [rsp + 4*rbp]
pmaddwd mm7, qword [rsp + 8*rbp]
pmaddwd mm7, qword [rax]
pmaddwd mm7, qword [rcx]
pmaddwd mm7, qword [rdx]
pmaddwd mm7, qword [rbx]
pmaddwd mm7, qword [rsp]
pmaddwd mm7, qword [rbp]
pmaddwd mm7, qword [rsi]
pmaddwd mm7, qword [rdi]
pmaddwd mm7, qword [rax + 2*rax]
pmaddwd mm7, qword [rcx + 2*rcx]
pmaddwd mm7, qword [rdx + 2*rdx]
pmaddwd mm7, qword [rbx + 2*rbx]
pmaddwd mm7, qword [rbp + 2*rbp]
pmaddwd mm7, qword [rsi + 2*rsi]
pmaddwd mm7, qword [rdi + 2*rdi]

