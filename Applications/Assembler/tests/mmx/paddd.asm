use64
; ------------------------------------------------------------------------------
; opcode mm,mm
; ------------------------------------------------------------------------------
paddd mm0, mm0
paddd mm0, mm1
paddd mm0, mm2
paddd mm0, mm3
paddd mm0, mm4
paddd mm0, mm5
paddd mm0, mm6
paddd mm0, mm7
paddd mm1, mm0
paddd mm1, mm1
paddd mm1, mm2
paddd mm1, mm3
paddd mm1, mm4
paddd mm1, mm5
paddd mm1, mm6
paddd mm1, mm7
paddd mm2, mm0
paddd mm2, mm1
paddd mm2, mm2
paddd mm2, mm3
paddd mm2, mm4
paddd mm2, mm5
paddd mm2, mm6
paddd mm2, mm7
paddd mm3, mm0
paddd mm3, mm1
paddd mm3, mm2
paddd mm3, mm3
paddd mm3, mm4
paddd mm3, mm5
paddd mm3, mm6
paddd mm3, mm7
paddd mm4, mm0
paddd mm4, mm1
paddd mm4, mm2
paddd mm4, mm3
paddd mm4, mm4
paddd mm4, mm5
paddd mm4, mm6
paddd mm4, mm7
paddd mm5, mm0
paddd mm5, mm1
paddd mm5, mm2
paddd mm5, mm3
paddd mm5, mm4
paddd mm5, mm5
paddd mm5, mm6
paddd mm5, mm7
paddd mm6, mm0
paddd mm6, mm1
paddd mm6, mm2
paddd mm6, mm3
paddd mm6, mm4
paddd mm6, mm5
paddd mm6, mm6
paddd mm6, mm7
paddd mm7, mm0
paddd mm7, mm1
paddd mm7, mm2
paddd mm7, mm3
paddd mm7, mm4
paddd mm7, mm5
paddd mm7, mm6
paddd mm7, mm7

; ------------------------------------------------------------------------------
; opcode mm,m64
; ------------------------------------------------------------------------------
paddd mm0, qword [rip + 0x13]
paddd mm0, qword [rip + 0x1235]
paddd mm0, qword [rip + 0x12345679]
paddd mm0, qword [rbx]
paddd mm0, qword [rcx + 0x14]
paddd mm0, qword [rdx + 0x15]
paddd mm0, qword [rbx + 0x1235]
paddd mm0, qword [rbx + 0x12345679]
paddd mm0, qword [rbx + rcx]
paddd mm0, qword [rbx + 4 * rcx]
paddd mm0, qword [rbx + rcx + 0x13]
paddd mm0, qword [rbx + rcx + 0x1235]
paddd mm0, qword [rbx + rcx + 0x12345679]
paddd mm0, qword [rbx + 4 * rcx + 0x13]
paddd mm0, qword [rbx + 4 * rcx + 0x1235]
paddd mm0, qword [rbx + 8 * rcx + 0x12345679]
paddd mm0, qword [4 * rcx]
paddd mm0, qword [4 * rcx + 0x13]
paddd mm0, qword [4 * rcx + 0x1235]
paddd mm0, qword [4 * rcx + 0x12345679]
paddd mm0, qword [rbp]
paddd mm0, qword [rbp + 0x12]
paddd mm0, qword [rbp + 0x1234]
paddd mm0, qword [rbp + 0x12345678]
paddd mm0, qword [4 * rbp]
paddd mm0, qword [4 * rbp + 0x12]
paddd mm0, qword [4 * rbp + 0x1234]
paddd mm0, qword [4 * rbp + 0x12345678]
paddd mm0, qword [rbx + 4 * rbp]
paddd mm0, qword [rbx + 4 * rbp + 0x12]
paddd mm0, qword [rbx + 4 * rbp + 0x1234]
paddd mm0, qword [rbx + 4 * rbp + 0x12345678]
paddd mm0, qword [rsp]
paddd mm0, qword [rsp + 0x12]
paddd mm0, qword [rsp + 0x1234]
paddd mm0, qword [rsp + 0x12345678]
paddd mm0, qword [rsp + rax]
paddd mm0, qword [rsp + rbp]
paddd mm0, qword [rsp + 2*rbp]
paddd mm0, qword [rsp + 4*rbp]
paddd mm0, qword [rsp + 8*rbp]
paddd mm0, qword [rax]
paddd mm0, qword [rcx]
paddd mm0, qword [rdx]
paddd mm0, qword [rbx]
paddd mm0, qword [rsp]
paddd mm0, qword [rbp]
paddd mm0, qword [rsi]
paddd mm0, qword [rdi]
paddd mm0, qword [rax + 2*rax]
paddd mm0, qword [rcx + 2*rcx]
paddd mm0, qword [rdx + 2*rdx]
paddd mm0, qword [rbx + 2*rbx]
paddd mm0, qword [rbp + 2*rbp]
paddd mm0, qword [rsi + 2*rsi]
paddd mm0, qword [rdi + 2*rdi]
paddd mm1, qword [rip + 0x13]
paddd mm1, qword [rip + 0x1235]
paddd mm1, qword [rip + 0x12345679]
paddd mm1, qword [rbx]
paddd mm1, qword [rcx + 0x14]
paddd mm1, qword [rdx + 0x15]
paddd mm1, qword [rbx + 0x1235]
paddd mm1, qword [rbx + 0x12345679]
paddd mm1, qword [rbx + rcx]
paddd mm1, qword [rbx + 4 * rcx]
paddd mm1, qword [rbx + rcx + 0x13]
paddd mm1, qword [rbx + rcx + 0x1235]
paddd mm1, qword [rbx + rcx + 0x12345679]
paddd mm1, qword [rbx + 4 * rcx + 0x13]
paddd mm1, qword [rbx + 4 * rcx + 0x1235]
paddd mm1, qword [rbx + 8 * rcx + 0x12345679]
paddd mm1, qword [4 * rcx]
paddd mm1, qword [4 * rcx + 0x13]
paddd mm1, qword [4 * rcx + 0x1235]
paddd mm1, qword [4 * rcx + 0x12345679]
paddd mm1, qword [rbp]
paddd mm1, qword [rbp + 0x12]
paddd mm1, qword [rbp + 0x1234]
paddd mm1, qword [rbp + 0x12345678]
paddd mm1, qword [4 * rbp]
paddd mm1, qword [4 * rbp + 0x12]
paddd mm1, qword [4 * rbp + 0x1234]
paddd mm1, qword [4 * rbp + 0x12345678]
paddd mm1, qword [rbx + 4 * rbp]
paddd mm1, qword [rbx + 4 * rbp + 0x12]
paddd mm1, qword [rbx + 4 * rbp + 0x1234]
paddd mm1, qword [rbx + 4 * rbp + 0x12345678]
paddd mm1, qword [rsp]
paddd mm1, qword [rsp + 0x12]
paddd mm1, qword [rsp + 0x1234]
paddd mm1, qword [rsp + 0x12345678]
paddd mm1, qword [rsp + rax]
paddd mm1, qword [rsp + rbp]
paddd mm1, qword [rsp + 2*rbp]
paddd mm1, qword [rsp + 4*rbp]
paddd mm1, qword [rsp + 8*rbp]
paddd mm1, qword [rax]
paddd mm1, qword [rcx]
paddd mm1, qword [rdx]
paddd mm1, qword [rbx]
paddd mm1, qword [rsp]
paddd mm1, qword [rbp]
paddd mm1, qword [rsi]
paddd mm1, qword [rdi]
paddd mm1, qword [rax + 2*rax]
paddd mm1, qword [rcx + 2*rcx]
paddd mm1, qword [rdx + 2*rdx]
paddd mm1, qword [rbx + 2*rbx]
paddd mm1, qword [rbp + 2*rbp]
paddd mm1, qword [rsi + 2*rsi]
paddd mm1, qword [rdi + 2*rdi]
paddd mm2, qword [rip + 0x13]
paddd mm2, qword [rip + 0x1235]
paddd mm2, qword [rip + 0x12345679]
paddd mm2, qword [rbx]
paddd mm2, qword [rcx + 0x14]
paddd mm2, qword [rdx + 0x15]
paddd mm2, qword [rbx + 0x1235]
paddd mm2, qword [rbx + 0x12345679]
paddd mm2, qword [rbx + rcx]
paddd mm2, qword [rbx + 4 * rcx]
paddd mm2, qword [rbx + rcx + 0x13]
paddd mm2, qword [rbx + rcx + 0x1235]
paddd mm2, qword [rbx + rcx + 0x12345679]
paddd mm2, qword [rbx + 4 * rcx + 0x13]
paddd mm2, qword [rbx + 4 * rcx + 0x1235]
paddd mm2, qword [rbx + 8 * rcx + 0x12345679]
paddd mm2, qword [4 * rcx]
paddd mm2, qword [4 * rcx + 0x13]
paddd mm2, qword [4 * rcx + 0x1235]
paddd mm2, qword [4 * rcx + 0x12345679]
paddd mm2, qword [rbp]
paddd mm2, qword [rbp + 0x12]
paddd mm2, qword [rbp + 0x1234]
paddd mm2, qword [rbp + 0x12345678]
paddd mm2, qword [4 * rbp]
paddd mm2, qword [4 * rbp + 0x12]
paddd mm2, qword [4 * rbp + 0x1234]
paddd mm2, qword [4 * rbp + 0x12345678]
paddd mm2, qword [rbx + 4 * rbp]
paddd mm2, qword [rbx + 4 * rbp + 0x12]
paddd mm2, qword [rbx + 4 * rbp + 0x1234]
paddd mm2, qword [rbx + 4 * rbp + 0x12345678]
paddd mm2, qword [rsp]
paddd mm2, qword [rsp + 0x12]
paddd mm2, qword [rsp + 0x1234]
paddd mm2, qword [rsp + 0x12345678]
paddd mm2, qword [rsp + rax]
paddd mm2, qword [rsp + rbp]
paddd mm2, qword [rsp + 2*rbp]
paddd mm2, qword [rsp + 4*rbp]
paddd mm2, qword [rsp + 8*rbp]
paddd mm2, qword [rax]
paddd mm2, qword [rcx]
paddd mm2, qword [rdx]
paddd mm2, qword [rbx]
paddd mm2, qword [rsp]
paddd mm2, qword [rbp]
paddd mm2, qword [rsi]
paddd mm2, qword [rdi]
paddd mm2, qword [rax + 2*rax]
paddd mm2, qword [rcx + 2*rcx]
paddd mm2, qword [rdx + 2*rdx]
paddd mm2, qword [rbx + 2*rbx]
paddd mm2, qword [rbp + 2*rbp]
paddd mm2, qword [rsi + 2*rsi]
paddd mm2, qword [rdi + 2*rdi]
paddd mm3, qword [rip + 0x13]
paddd mm3, qword [rip + 0x1235]
paddd mm3, qword [rip + 0x12345679]
paddd mm3, qword [rbx]
paddd mm3, qword [rcx + 0x14]
paddd mm3, qword [rdx + 0x15]
paddd mm3, qword [rbx + 0x1235]
paddd mm3, qword [rbx + 0x12345679]
paddd mm3, qword [rbx + rcx]
paddd mm3, qword [rbx + 4 * rcx]
paddd mm3, qword [rbx + rcx + 0x13]
paddd mm3, qword [rbx + rcx + 0x1235]
paddd mm3, qword [rbx + rcx + 0x12345679]
paddd mm3, qword [rbx + 4 * rcx + 0x13]
paddd mm3, qword [rbx + 4 * rcx + 0x1235]
paddd mm3, qword [rbx + 8 * rcx + 0x12345679]
paddd mm3, qword [4 * rcx]
paddd mm3, qword [4 * rcx + 0x13]
paddd mm3, qword [4 * rcx + 0x1235]
paddd mm3, qword [4 * rcx + 0x12345679]
paddd mm3, qword [rbp]
paddd mm3, qword [rbp + 0x12]
paddd mm3, qword [rbp + 0x1234]
paddd mm3, qword [rbp + 0x12345678]
paddd mm3, qword [4 * rbp]
paddd mm3, qword [4 * rbp + 0x12]
paddd mm3, qword [4 * rbp + 0x1234]
paddd mm3, qword [4 * rbp + 0x12345678]
paddd mm3, qword [rbx + 4 * rbp]
paddd mm3, qword [rbx + 4 * rbp + 0x12]
paddd mm3, qword [rbx + 4 * rbp + 0x1234]
paddd mm3, qword [rbx + 4 * rbp + 0x12345678]
paddd mm3, qword [rsp]
paddd mm3, qword [rsp + 0x12]
paddd mm3, qword [rsp + 0x1234]
paddd mm3, qword [rsp + 0x12345678]
paddd mm3, qword [rsp + rax]
paddd mm3, qword [rsp + rbp]
paddd mm3, qword [rsp + 2*rbp]
paddd mm3, qword [rsp + 4*rbp]
paddd mm3, qword [rsp + 8*rbp]
paddd mm3, qword [rax]
paddd mm3, qword [rcx]
paddd mm3, qword [rdx]
paddd mm3, qword [rbx]
paddd mm3, qword [rsp]
paddd mm3, qword [rbp]
paddd mm3, qword [rsi]
paddd mm3, qword [rdi]
paddd mm3, qword [rax + 2*rax]
paddd mm3, qword [rcx + 2*rcx]
paddd mm3, qword [rdx + 2*rdx]
paddd mm3, qword [rbx + 2*rbx]
paddd mm3, qword [rbp + 2*rbp]
paddd mm3, qword [rsi + 2*rsi]
paddd mm3, qword [rdi + 2*rdi]
paddd mm4, qword [rip + 0x13]
paddd mm4, qword [rip + 0x1235]
paddd mm4, qword [rip + 0x12345679]
paddd mm4, qword [rbx]
paddd mm4, qword [rcx + 0x14]
paddd mm4, qword [rdx + 0x15]
paddd mm4, qword [rbx + 0x1235]
paddd mm4, qword [rbx + 0x12345679]
paddd mm4, qword [rbx + rcx]
paddd mm4, qword [rbx + 4 * rcx]
paddd mm4, qword [rbx + rcx + 0x13]
paddd mm4, qword [rbx + rcx + 0x1235]
paddd mm4, qword [rbx + rcx + 0x12345679]
paddd mm4, qword [rbx + 4 * rcx + 0x13]
paddd mm4, qword [rbx + 4 * rcx + 0x1235]
paddd mm4, qword [rbx + 8 * rcx + 0x12345679]
paddd mm4, qword [4 * rcx]
paddd mm4, qword [4 * rcx + 0x13]
paddd mm4, qword [4 * rcx + 0x1235]
paddd mm4, qword [4 * rcx + 0x12345679]
paddd mm4, qword [rbp]
paddd mm4, qword [rbp + 0x12]
paddd mm4, qword [rbp + 0x1234]
paddd mm4, qword [rbp + 0x12345678]
paddd mm4, qword [4 * rbp]
paddd mm4, qword [4 * rbp + 0x12]
paddd mm4, qword [4 * rbp + 0x1234]
paddd mm4, qword [4 * rbp + 0x12345678]
paddd mm4, qword [rbx + 4 * rbp]
paddd mm4, qword [rbx + 4 * rbp + 0x12]
paddd mm4, qword [rbx + 4 * rbp + 0x1234]
paddd mm4, qword [rbx + 4 * rbp + 0x12345678]
paddd mm4, qword [rsp]
paddd mm4, qword [rsp + 0x12]
paddd mm4, qword [rsp + 0x1234]
paddd mm4, qword [rsp + 0x12345678]
paddd mm4, qword [rsp + rax]
paddd mm4, qword [rsp + rbp]
paddd mm4, qword [rsp + 2*rbp]
paddd mm4, qword [rsp + 4*rbp]
paddd mm4, qword [rsp + 8*rbp]
paddd mm4, qword [rax]
paddd mm4, qword [rcx]
paddd mm4, qword [rdx]
paddd mm4, qword [rbx]
paddd mm4, qword [rsp]
paddd mm4, qword [rbp]
paddd mm4, qword [rsi]
paddd mm4, qword [rdi]
paddd mm4, qword [rax + 2*rax]
paddd mm4, qword [rcx + 2*rcx]
paddd mm4, qword [rdx + 2*rdx]
paddd mm4, qword [rbx + 2*rbx]
paddd mm4, qword [rbp + 2*rbp]
paddd mm4, qword [rsi + 2*rsi]
paddd mm4, qword [rdi + 2*rdi]
paddd mm5, qword [rip + 0x13]
paddd mm5, qword [rip + 0x1235]
paddd mm5, qword [rip + 0x12345679]
paddd mm5, qword [rbx]
paddd mm5, qword [rcx + 0x14]
paddd mm5, qword [rdx + 0x15]
paddd mm5, qword [rbx + 0x1235]
paddd mm5, qword [rbx + 0x12345679]
paddd mm5, qword [rbx + rcx]
paddd mm5, qword [rbx + 4 * rcx]
paddd mm5, qword [rbx + rcx + 0x13]
paddd mm5, qword [rbx + rcx + 0x1235]
paddd mm5, qword [rbx + rcx + 0x12345679]
paddd mm5, qword [rbx + 4 * rcx + 0x13]
paddd mm5, qword [rbx + 4 * rcx + 0x1235]
paddd mm5, qword [rbx + 8 * rcx + 0x12345679]
paddd mm5, qword [4 * rcx]
paddd mm5, qword [4 * rcx + 0x13]
paddd mm5, qword [4 * rcx + 0x1235]
paddd mm5, qword [4 * rcx + 0x12345679]
paddd mm5, qword [rbp]
paddd mm5, qword [rbp + 0x12]
paddd mm5, qword [rbp + 0x1234]
paddd mm5, qword [rbp + 0x12345678]
paddd mm5, qword [4 * rbp]
paddd mm5, qword [4 * rbp + 0x12]
paddd mm5, qword [4 * rbp + 0x1234]
paddd mm5, qword [4 * rbp + 0x12345678]
paddd mm5, qword [rbx + 4 * rbp]
paddd mm5, qword [rbx + 4 * rbp + 0x12]
paddd mm5, qword [rbx + 4 * rbp + 0x1234]
paddd mm5, qword [rbx + 4 * rbp + 0x12345678]
paddd mm5, qword [rsp]
paddd mm5, qword [rsp + 0x12]
paddd mm5, qword [rsp + 0x1234]
paddd mm5, qword [rsp + 0x12345678]
paddd mm5, qword [rsp + rax]
paddd mm5, qword [rsp + rbp]
paddd mm5, qword [rsp + 2*rbp]
paddd mm5, qword [rsp + 4*rbp]
paddd mm5, qword [rsp + 8*rbp]
paddd mm5, qword [rax]
paddd mm5, qword [rcx]
paddd mm5, qword [rdx]
paddd mm5, qword [rbx]
paddd mm5, qword [rsp]
paddd mm5, qword [rbp]
paddd mm5, qword [rsi]
paddd mm5, qword [rdi]
paddd mm5, qword [rax + 2*rax]
paddd mm5, qword [rcx + 2*rcx]
paddd mm5, qword [rdx + 2*rdx]
paddd mm5, qword [rbx + 2*rbx]
paddd mm5, qword [rbp + 2*rbp]
paddd mm5, qword [rsi + 2*rsi]
paddd mm5, qword [rdi + 2*rdi]
paddd mm6, qword [rip + 0x13]
paddd mm6, qword [rip + 0x1235]
paddd mm6, qword [rip + 0x12345679]
paddd mm6, qword [rbx]
paddd mm6, qword [rcx + 0x14]
paddd mm6, qword [rdx + 0x15]
paddd mm6, qword [rbx + 0x1235]
paddd mm6, qword [rbx + 0x12345679]
paddd mm6, qword [rbx + rcx]
paddd mm6, qword [rbx + 4 * rcx]
paddd mm6, qword [rbx + rcx + 0x13]
paddd mm6, qword [rbx + rcx + 0x1235]
paddd mm6, qword [rbx + rcx + 0x12345679]
paddd mm6, qword [rbx + 4 * rcx + 0x13]
paddd mm6, qword [rbx + 4 * rcx + 0x1235]
paddd mm6, qword [rbx + 8 * rcx + 0x12345679]
paddd mm6, qword [4 * rcx]
paddd mm6, qword [4 * rcx + 0x13]
paddd mm6, qword [4 * rcx + 0x1235]
paddd mm6, qword [4 * rcx + 0x12345679]
paddd mm6, qword [rbp]
paddd mm6, qword [rbp + 0x12]
paddd mm6, qword [rbp + 0x1234]
paddd mm6, qword [rbp + 0x12345678]
paddd mm6, qword [4 * rbp]
paddd mm6, qword [4 * rbp + 0x12]
paddd mm6, qword [4 * rbp + 0x1234]
paddd mm6, qword [4 * rbp + 0x12345678]
paddd mm6, qword [rbx + 4 * rbp]
paddd mm6, qword [rbx + 4 * rbp + 0x12]
paddd mm6, qword [rbx + 4 * rbp + 0x1234]
paddd mm6, qword [rbx + 4 * rbp + 0x12345678]
paddd mm6, qword [rsp]
paddd mm6, qword [rsp + 0x12]
paddd mm6, qword [rsp + 0x1234]
paddd mm6, qword [rsp + 0x12345678]
paddd mm6, qword [rsp + rax]
paddd mm6, qword [rsp + rbp]
paddd mm6, qword [rsp + 2*rbp]
paddd mm6, qword [rsp + 4*rbp]
paddd mm6, qword [rsp + 8*rbp]
paddd mm6, qword [rax]
paddd mm6, qword [rcx]
paddd mm6, qword [rdx]
paddd mm6, qword [rbx]
paddd mm6, qword [rsp]
paddd mm6, qword [rbp]
paddd mm6, qword [rsi]
paddd mm6, qword [rdi]
paddd mm6, qword [rax + 2*rax]
paddd mm6, qword [rcx + 2*rcx]
paddd mm6, qword [rdx + 2*rdx]
paddd mm6, qword [rbx + 2*rbx]
paddd mm6, qword [rbp + 2*rbp]
paddd mm6, qword [rsi + 2*rsi]
paddd mm6, qword [rdi + 2*rdi]
paddd mm7, qword [rip + 0x13]
paddd mm7, qword [rip + 0x1235]
paddd mm7, qword [rip + 0x12345679]
paddd mm7, qword [rbx]
paddd mm7, qword [rcx + 0x14]
paddd mm7, qword [rdx + 0x15]
paddd mm7, qword [rbx + 0x1235]
paddd mm7, qword [rbx + 0x12345679]
paddd mm7, qword [rbx + rcx]
paddd mm7, qword [rbx + 4 * rcx]
paddd mm7, qword [rbx + rcx + 0x13]
paddd mm7, qword [rbx + rcx + 0x1235]
paddd mm7, qword [rbx + rcx + 0x12345679]
paddd mm7, qword [rbx + 4 * rcx + 0x13]
paddd mm7, qword [rbx + 4 * rcx + 0x1235]
paddd mm7, qword [rbx + 8 * rcx + 0x12345679]
paddd mm7, qword [4 * rcx]
paddd mm7, qword [4 * rcx + 0x13]
paddd mm7, qword [4 * rcx + 0x1235]
paddd mm7, qword [4 * rcx + 0x12345679]
paddd mm7, qword [rbp]
paddd mm7, qword [rbp + 0x12]
paddd mm7, qword [rbp + 0x1234]
paddd mm7, qword [rbp + 0x12345678]
paddd mm7, qword [4 * rbp]
paddd mm7, qword [4 * rbp + 0x12]
paddd mm7, qword [4 * rbp + 0x1234]
paddd mm7, qword [4 * rbp + 0x12345678]
paddd mm7, qword [rbx + 4 * rbp]
paddd mm7, qword [rbx + 4 * rbp + 0x12]
paddd mm7, qword [rbx + 4 * rbp + 0x1234]
paddd mm7, qword [rbx + 4 * rbp + 0x12345678]
paddd mm7, qword [rsp]
paddd mm7, qword [rsp + 0x12]
paddd mm7, qword [rsp + 0x1234]
paddd mm7, qword [rsp + 0x12345678]
paddd mm7, qword [rsp + rax]
paddd mm7, qword [rsp + rbp]
paddd mm7, qword [rsp + 2*rbp]
paddd mm7, qword [rsp + 4*rbp]
paddd mm7, qword [rsp + 8*rbp]
paddd mm7, qword [rax]
paddd mm7, qword [rcx]
paddd mm7, qword [rdx]
paddd mm7, qword [rbx]
paddd mm7, qword [rsp]
paddd mm7, qword [rbp]
paddd mm7, qword [rsi]
paddd mm7, qword [rdi]
paddd mm7, qword [rax + 2*rax]
paddd mm7, qword [rcx + 2*rcx]
paddd mm7, qword [rdx + 2*rdx]
paddd mm7, qword [rbx + 2*rbx]
paddd mm7, qword [rbp + 2*rbp]
paddd mm7, qword [rsi + 2*rsi]
paddd mm7, qword [rdi + 2*rdi]

