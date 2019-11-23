use64
; ------------------------------------------------------------------------------
; opcode mm,mm
; ------------------------------------------------------------------------------
pslld mm0, mm0
pslld mm0, mm1
pslld mm0, mm2
pslld mm0, mm3
pslld mm0, mm4
pslld mm0, mm5
pslld mm0, mm6
pslld mm0, mm7
pslld mm1, mm0
pslld mm1, mm1
pslld mm1, mm2
pslld mm1, mm3
pslld mm1, mm4
pslld mm1, mm5
pslld mm1, mm6
pslld mm1, mm7
pslld mm2, mm0
pslld mm2, mm1
pslld mm2, mm2
pslld mm2, mm3
pslld mm2, mm4
pslld mm2, mm5
pslld mm2, mm6
pslld mm2, mm7
pslld mm3, mm0
pslld mm3, mm1
pslld mm3, mm2
pslld mm3, mm3
pslld mm3, mm4
pslld mm3, mm5
pslld mm3, mm6
pslld mm3, mm7
pslld mm4, mm0
pslld mm4, mm1
pslld mm4, mm2
pslld mm4, mm3
pslld mm4, mm4
pslld mm4, mm5
pslld mm4, mm6
pslld mm4, mm7
pslld mm5, mm0
pslld mm5, mm1
pslld mm5, mm2
pslld mm5, mm3
pslld mm5, mm4
pslld mm5, mm5
pslld mm5, mm6
pslld mm5, mm7
pslld mm6, mm0
pslld mm6, mm1
pslld mm6, mm2
pslld mm6, mm3
pslld mm6, mm4
pslld mm6, mm5
pslld mm6, mm6
pslld mm6, mm7
pslld mm7, mm0
pslld mm7, mm1
pslld mm7, mm2
pslld mm7, mm3
pslld mm7, mm4
pslld mm7, mm5
pslld mm7, mm6
pslld mm7, mm7

; ------------------------------------------------------------------------------
; opcode mm,m64
; ------------------------------------------------------------------------------
pslld mm0, qword [rip + 0x13]
pslld mm0, qword [rip + 0x1235]
pslld mm0, qword [rip + 0x12345679]
pslld mm0, qword [rbx]
pslld mm0, qword [rcx + 0x14]
pslld mm0, qword [rdx + 0x15]
pslld mm0, qword [rbx + 0x1235]
pslld mm0, qword [rbx + 0x12345679]
pslld mm0, qword [rbx + rcx]
pslld mm0, qword [rbx + 4 * rcx]
pslld mm0, qword [rbx + rcx + 0x13]
pslld mm0, qword [rbx + rcx + 0x1235]
pslld mm0, qword [rbx + rcx + 0x12345679]
pslld mm0, qword [rbx + 4 * rcx + 0x13]
pslld mm0, qword [rbx + 4 * rcx + 0x1235]
pslld mm0, qword [rbx + 8 * rcx + 0x12345679]
pslld mm0, qword [4 * rcx]
pslld mm0, qword [4 * rcx + 0x13]
pslld mm0, qword [4 * rcx + 0x1235]
pslld mm0, qword [4 * rcx + 0x12345679]
pslld mm0, qword [rbp]
pslld mm0, qword [rbp + 0x12]
pslld mm0, qword [rbp + 0x1234]
pslld mm0, qword [rbp + 0x12345678]
pslld mm0, qword [4 * rbp]
pslld mm0, qword [4 * rbp + 0x12]
pslld mm0, qword [4 * rbp + 0x1234]
pslld mm0, qword [4 * rbp + 0x12345678]
pslld mm0, qword [rbx + 4 * rbp]
pslld mm0, qword [rbx + 4 * rbp + 0x12]
pslld mm0, qword [rbx + 4 * rbp + 0x1234]
pslld mm0, qword [rbx + 4 * rbp + 0x12345678]
pslld mm0, qword [rsp]
pslld mm0, qword [rsp + 0x12]
pslld mm0, qword [rsp + 0x1234]
pslld mm0, qword [rsp + 0x12345678]
pslld mm0, qword [rsp + rax]
pslld mm0, qword [rsp + rbp]
pslld mm0, qword [rsp + 2*rbp]
pslld mm0, qword [rsp + 4*rbp]
pslld mm0, qword [rsp + 8*rbp]
pslld mm0, qword [rax]
pslld mm0, qword [rcx]
pslld mm0, qword [rdx]
pslld mm0, qword [rbx]
pslld mm0, qword [rsp]
pslld mm0, qword [rbp]
pslld mm0, qword [rsi]
pslld mm0, qword [rdi]
pslld mm0, qword [rax + 2*rax]
pslld mm0, qword [rcx + 2*rcx]
pslld mm0, qword [rdx + 2*rdx]
pslld mm0, qword [rbx + 2*rbx]
pslld mm0, qword [rbp + 2*rbp]
pslld mm0, qword [rsi + 2*rsi]
pslld mm0, qword [rdi + 2*rdi]
pslld mm1, qword [rip + 0x13]
pslld mm1, qword [rip + 0x1235]
pslld mm1, qword [rip + 0x12345679]
pslld mm1, qword [rbx]
pslld mm1, qword [rcx + 0x14]
pslld mm1, qword [rdx + 0x15]
pslld mm1, qword [rbx + 0x1235]
pslld mm1, qword [rbx + 0x12345679]
pslld mm1, qword [rbx + rcx]
pslld mm1, qword [rbx + 4 * rcx]
pslld mm1, qword [rbx + rcx + 0x13]
pslld mm1, qword [rbx + rcx + 0x1235]
pslld mm1, qword [rbx + rcx + 0x12345679]
pslld mm1, qword [rbx + 4 * rcx + 0x13]
pslld mm1, qword [rbx + 4 * rcx + 0x1235]
pslld mm1, qword [rbx + 8 * rcx + 0x12345679]
pslld mm1, qword [4 * rcx]
pslld mm1, qword [4 * rcx + 0x13]
pslld mm1, qword [4 * rcx + 0x1235]
pslld mm1, qword [4 * rcx + 0x12345679]
pslld mm1, qword [rbp]
pslld mm1, qword [rbp + 0x12]
pslld mm1, qword [rbp + 0x1234]
pslld mm1, qword [rbp + 0x12345678]
pslld mm1, qword [4 * rbp]
pslld mm1, qword [4 * rbp + 0x12]
pslld mm1, qword [4 * rbp + 0x1234]
pslld mm1, qword [4 * rbp + 0x12345678]
pslld mm1, qword [rbx + 4 * rbp]
pslld mm1, qword [rbx + 4 * rbp + 0x12]
pslld mm1, qword [rbx + 4 * rbp + 0x1234]
pslld mm1, qword [rbx + 4 * rbp + 0x12345678]
pslld mm1, qword [rsp]
pslld mm1, qword [rsp + 0x12]
pslld mm1, qword [rsp + 0x1234]
pslld mm1, qword [rsp + 0x12345678]
pslld mm1, qword [rsp + rax]
pslld mm1, qword [rsp + rbp]
pslld mm1, qword [rsp + 2*rbp]
pslld mm1, qword [rsp + 4*rbp]
pslld mm1, qword [rsp + 8*rbp]
pslld mm1, qword [rax]
pslld mm1, qword [rcx]
pslld mm1, qword [rdx]
pslld mm1, qword [rbx]
pslld mm1, qword [rsp]
pslld mm1, qword [rbp]
pslld mm1, qword [rsi]
pslld mm1, qword [rdi]
pslld mm1, qword [rax + 2*rax]
pslld mm1, qword [rcx + 2*rcx]
pslld mm1, qword [rdx + 2*rdx]
pslld mm1, qword [rbx + 2*rbx]
pslld mm1, qword [rbp + 2*rbp]
pslld mm1, qword [rsi + 2*rsi]
pslld mm1, qword [rdi + 2*rdi]
pslld mm2, qword [rip + 0x13]
pslld mm2, qword [rip + 0x1235]
pslld mm2, qword [rip + 0x12345679]
pslld mm2, qword [rbx]
pslld mm2, qword [rcx + 0x14]
pslld mm2, qword [rdx + 0x15]
pslld mm2, qword [rbx + 0x1235]
pslld mm2, qword [rbx + 0x12345679]
pslld mm2, qword [rbx + rcx]
pslld mm2, qword [rbx + 4 * rcx]
pslld mm2, qword [rbx + rcx + 0x13]
pslld mm2, qword [rbx + rcx + 0x1235]
pslld mm2, qword [rbx + rcx + 0x12345679]
pslld mm2, qword [rbx + 4 * rcx + 0x13]
pslld mm2, qword [rbx + 4 * rcx + 0x1235]
pslld mm2, qword [rbx + 8 * rcx + 0x12345679]
pslld mm2, qword [4 * rcx]
pslld mm2, qword [4 * rcx + 0x13]
pslld mm2, qword [4 * rcx + 0x1235]
pslld mm2, qword [4 * rcx + 0x12345679]
pslld mm2, qword [rbp]
pslld mm2, qword [rbp + 0x12]
pslld mm2, qword [rbp + 0x1234]
pslld mm2, qword [rbp + 0x12345678]
pslld mm2, qword [4 * rbp]
pslld mm2, qword [4 * rbp + 0x12]
pslld mm2, qword [4 * rbp + 0x1234]
pslld mm2, qword [4 * rbp + 0x12345678]
pslld mm2, qword [rbx + 4 * rbp]
pslld mm2, qword [rbx + 4 * rbp + 0x12]
pslld mm2, qword [rbx + 4 * rbp + 0x1234]
pslld mm2, qword [rbx + 4 * rbp + 0x12345678]
pslld mm2, qword [rsp]
pslld mm2, qword [rsp + 0x12]
pslld mm2, qword [rsp + 0x1234]
pslld mm2, qword [rsp + 0x12345678]
pslld mm2, qword [rsp + rax]
pslld mm2, qword [rsp + rbp]
pslld mm2, qword [rsp + 2*rbp]
pslld mm2, qword [rsp + 4*rbp]
pslld mm2, qword [rsp + 8*rbp]
pslld mm2, qword [rax]
pslld mm2, qword [rcx]
pslld mm2, qword [rdx]
pslld mm2, qword [rbx]
pslld mm2, qword [rsp]
pslld mm2, qword [rbp]
pslld mm2, qword [rsi]
pslld mm2, qword [rdi]
pslld mm2, qword [rax + 2*rax]
pslld mm2, qword [rcx + 2*rcx]
pslld mm2, qword [rdx + 2*rdx]
pslld mm2, qword [rbx + 2*rbx]
pslld mm2, qword [rbp + 2*rbp]
pslld mm2, qword [rsi + 2*rsi]
pslld mm2, qword [rdi + 2*rdi]
pslld mm3, qword [rip + 0x13]
pslld mm3, qword [rip + 0x1235]
pslld mm3, qword [rip + 0x12345679]
pslld mm3, qword [rbx]
pslld mm3, qword [rcx + 0x14]
pslld mm3, qword [rdx + 0x15]
pslld mm3, qword [rbx + 0x1235]
pslld mm3, qword [rbx + 0x12345679]
pslld mm3, qword [rbx + rcx]
pslld mm3, qword [rbx + 4 * rcx]
pslld mm3, qword [rbx + rcx + 0x13]
pslld mm3, qword [rbx + rcx + 0x1235]
pslld mm3, qword [rbx + rcx + 0x12345679]
pslld mm3, qword [rbx + 4 * rcx + 0x13]
pslld mm3, qword [rbx + 4 * rcx + 0x1235]
pslld mm3, qword [rbx + 8 * rcx + 0x12345679]
pslld mm3, qword [4 * rcx]
pslld mm3, qword [4 * rcx + 0x13]
pslld mm3, qword [4 * rcx + 0x1235]
pslld mm3, qword [4 * rcx + 0x12345679]
pslld mm3, qword [rbp]
pslld mm3, qword [rbp + 0x12]
pslld mm3, qword [rbp + 0x1234]
pslld mm3, qword [rbp + 0x12345678]
pslld mm3, qword [4 * rbp]
pslld mm3, qword [4 * rbp + 0x12]
pslld mm3, qword [4 * rbp + 0x1234]
pslld mm3, qword [4 * rbp + 0x12345678]
pslld mm3, qword [rbx + 4 * rbp]
pslld mm3, qword [rbx + 4 * rbp + 0x12]
pslld mm3, qword [rbx + 4 * rbp + 0x1234]
pslld mm3, qword [rbx + 4 * rbp + 0x12345678]
pslld mm3, qword [rsp]
pslld mm3, qword [rsp + 0x12]
pslld mm3, qword [rsp + 0x1234]
pslld mm3, qword [rsp + 0x12345678]
pslld mm3, qword [rsp + rax]
pslld mm3, qword [rsp + rbp]
pslld mm3, qword [rsp + 2*rbp]
pslld mm3, qword [rsp + 4*rbp]
pslld mm3, qword [rsp + 8*rbp]
pslld mm3, qword [rax]
pslld mm3, qword [rcx]
pslld mm3, qword [rdx]
pslld mm3, qword [rbx]
pslld mm3, qword [rsp]
pslld mm3, qword [rbp]
pslld mm3, qword [rsi]
pslld mm3, qword [rdi]
pslld mm3, qword [rax + 2*rax]
pslld mm3, qword [rcx + 2*rcx]
pslld mm3, qword [rdx + 2*rdx]
pslld mm3, qword [rbx + 2*rbx]
pslld mm3, qword [rbp + 2*rbp]
pslld mm3, qword [rsi + 2*rsi]
pslld mm3, qword [rdi + 2*rdi]
pslld mm4, qword [rip + 0x13]
pslld mm4, qword [rip + 0x1235]
pslld mm4, qword [rip + 0x12345679]
pslld mm4, qword [rbx]
pslld mm4, qword [rcx + 0x14]
pslld mm4, qword [rdx + 0x15]
pslld mm4, qword [rbx + 0x1235]
pslld mm4, qword [rbx + 0x12345679]
pslld mm4, qword [rbx + rcx]
pslld mm4, qword [rbx + 4 * rcx]
pslld mm4, qword [rbx + rcx + 0x13]
pslld mm4, qword [rbx + rcx + 0x1235]
pslld mm4, qword [rbx + rcx + 0x12345679]
pslld mm4, qword [rbx + 4 * rcx + 0x13]
pslld mm4, qword [rbx + 4 * rcx + 0x1235]
pslld mm4, qword [rbx + 8 * rcx + 0x12345679]
pslld mm4, qword [4 * rcx]
pslld mm4, qword [4 * rcx + 0x13]
pslld mm4, qword [4 * rcx + 0x1235]
pslld mm4, qword [4 * rcx + 0x12345679]
pslld mm4, qword [rbp]
pslld mm4, qword [rbp + 0x12]
pslld mm4, qword [rbp + 0x1234]
pslld mm4, qword [rbp + 0x12345678]
pslld mm4, qword [4 * rbp]
pslld mm4, qword [4 * rbp + 0x12]
pslld mm4, qword [4 * rbp + 0x1234]
pslld mm4, qword [4 * rbp + 0x12345678]
pslld mm4, qword [rbx + 4 * rbp]
pslld mm4, qword [rbx + 4 * rbp + 0x12]
pslld mm4, qword [rbx + 4 * rbp + 0x1234]
pslld mm4, qword [rbx + 4 * rbp + 0x12345678]
pslld mm4, qword [rsp]
pslld mm4, qword [rsp + 0x12]
pslld mm4, qword [rsp + 0x1234]
pslld mm4, qword [rsp + 0x12345678]
pslld mm4, qword [rsp + rax]
pslld mm4, qword [rsp + rbp]
pslld mm4, qword [rsp + 2*rbp]
pslld mm4, qword [rsp + 4*rbp]
pslld mm4, qword [rsp + 8*rbp]
pslld mm4, qword [rax]
pslld mm4, qword [rcx]
pslld mm4, qword [rdx]
pslld mm4, qword [rbx]
pslld mm4, qword [rsp]
pslld mm4, qword [rbp]
pslld mm4, qword [rsi]
pslld mm4, qword [rdi]
pslld mm4, qword [rax + 2*rax]
pslld mm4, qword [rcx + 2*rcx]
pslld mm4, qword [rdx + 2*rdx]
pslld mm4, qword [rbx + 2*rbx]
pslld mm4, qword [rbp + 2*rbp]
pslld mm4, qword [rsi + 2*rsi]
pslld mm4, qword [rdi + 2*rdi]
pslld mm5, qword [rip + 0x13]
pslld mm5, qword [rip + 0x1235]
pslld mm5, qword [rip + 0x12345679]
pslld mm5, qword [rbx]
pslld mm5, qword [rcx + 0x14]
pslld mm5, qword [rdx + 0x15]
pslld mm5, qword [rbx + 0x1235]
pslld mm5, qword [rbx + 0x12345679]
pslld mm5, qword [rbx + rcx]
pslld mm5, qword [rbx + 4 * rcx]
pslld mm5, qword [rbx + rcx + 0x13]
pslld mm5, qword [rbx + rcx + 0x1235]
pslld mm5, qword [rbx + rcx + 0x12345679]
pslld mm5, qword [rbx + 4 * rcx + 0x13]
pslld mm5, qword [rbx + 4 * rcx + 0x1235]
pslld mm5, qword [rbx + 8 * rcx + 0x12345679]
pslld mm5, qword [4 * rcx]
pslld mm5, qword [4 * rcx + 0x13]
pslld mm5, qword [4 * rcx + 0x1235]
pslld mm5, qword [4 * rcx + 0x12345679]
pslld mm5, qword [rbp]
pslld mm5, qword [rbp + 0x12]
pslld mm5, qword [rbp + 0x1234]
pslld mm5, qword [rbp + 0x12345678]
pslld mm5, qword [4 * rbp]
pslld mm5, qword [4 * rbp + 0x12]
pslld mm5, qword [4 * rbp + 0x1234]
pslld mm5, qword [4 * rbp + 0x12345678]
pslld mm5, qword [rbx + 4 * rbp]
pslld mm5, qword [rbx + 4 * rbp + 0x12]
pslld mm5, qword [rbx + 4 * rbp + 0x1234]
pslld mm5, qword [rbx + 4 * rbp + 0x12345678]
pslld mm5, qword [rsp]
pslld mm5, qword [rsp + 0x12]
pslld mm5, qword [rsp + 0x1234]
pslld mm5, qword [rsp + 0x12345678]
pslld mm5, qword [rsp + rax]
pslld mm5, qword [rsp + rbp]
pslld mm5, qword [rsp + 2*rbp]
pslld mm5, qword [rsp + 4*rbp]
pslld mm5, qword [rsp + 8*rbp]
pslld mm5, qword [rax]
pslld mm5, qword [rcx]
pslld mm5, qword [rdx]
pslld mm5, qword [rbx]
pslld mm5, qword [rsp]
pslld mm5, qword [rbp]
pslld mm5, qword [rsi]
pslld mm5, qword [rdi]
pslld mm5, qword [rax + 2*rax]
pslld mm5, qword [rcx + 2*rcx]
pslld mm5, qword [rdx + 2*rdx]
pslld mm5, qword [rbx + 2*rbx]
pslld mm5, qword [rbp + 2*rbp]
pslld mm5, qword [rsi + 2*rsi]
pslld mm5, qword [rdi + 2*rdi]
pslld mm6, qword [rip + 0x13]
pslld mm6, qword [rip + 0x1235]
pslld mm6, qword [rip + 0x12345679]
pslld mm6, qword [rbx]
pslld mm6, qword [rcx + 0x14]
pslld mm6, qword [rdx + 0x15]
pslld mm6, qword [rbx + 0x1235]
pslld mm6, qword [rbx + 0x12345679]
pslld mm6, qword [rbx + rcx]
pslld mm6, qword [rbx + 4 * rcx]
pslld mm6, qword [rbx + rcx + 0x13]
pslld mm6, qword [rbx + rcx + 0x1235]
pslld mm6, qword [rbx + rcx + 0x12345679]
pslld mm6, qword [rbx + 4 * rcx + 0x13]
pslld mm6, qword [rbx + 4 * rcx + 0x1235]
pslld mm6, qword [rbx + 8 * rcx + 0x12345679]
pslld mm6, qword [4 * rcx]
pslld mm6, qword [4 * rcx + 0x13]
pslld mm6, qword [4 * rcx + 0x1235]
pslld mm6, qword [4 * rcx + 0x12345679]
pslld mm6, qword [rbp]
pslld mm6, qword [rbp + 0x12]
pslld mm6, qword [rbp + 0x1234]
pslld mm6, qword [rbp + 0x12345678]
pslld mm6, qword [4 * rbp]
pslld mm6, qword [4 * rbp + 0x12]
pslld mm6, qword [4 * rbp + 0x1234]
pslld mm6, qword [4 * rbp + 0x12345678]
pslld mm6, qword [rbx + 4 * rbp]
pslld mm6, qword [rbx + 4 * rbp + 0x12]
pslld mm6, qword [rbx + 4 * rbp + 0x1234]
pslld mm6, qword [rbx + 4 * rbp + 0x12345678]
pslld mm6, qword [rsp]
pslld mm6, qword [rsp + 0x12]
pslld mm6, qword [rsp + 0x1234]
pslld mm6, qword [rsp + 0x12345678]
pslld mm6, qword [rsp + rax]
pslld mm6, qword [rsp + rbp]
pslld mm6, qword [rsp + 2*rbp]
pslld mm6, qword [rsp + 4*rbp]
pslld mm6, qword [rsp + 8*rbp]
pslld mm6, qword [rax]
pslld mm6, qword [rcx]
pslld mm6, qword [rdx]
pslld mm6, qword [rbx]
pslld mm6, qword [rsp]
pslld mm6, qword [rbp]
pslld mm6, qword [rsi]
pslld mm6, qword [rdi]
pslld mm6, qword [rax + 2*rax]
pslld mm6, qword [rcx + 2*rcx]
pslld mm6, qword [rdx + 2*rdx]
pslld mm6, qword [rbx + 2*rbx]
pslld mm6, qword [rbp + 2*rbp]
pslld mm6, qword [rsi + 2*rsi]
pslld mm6, qword [rdi + 2*rdi]
pslld mm7, qword [rip + 0x13]
pslld mm7, qword [rip + 0x1235]
pslld mm7, qword [rip + 0x12345679]
pslld mm7, qword [rbx]
pslld mm7, qword [rcx + 0x14]
pslld mm7, qword [rdx + 0x15]
pslld mm7, qword [rbx + 0x1235]
pslld mm7, qword [rbx + 0x12345679]
pslld mm7, qword [rbx + rcx]
pslld mm7, qword [rbx + 4 * rcx]
pslld mm7, qword [rbx + rcx + 0x13]
pslld mm7, qword [rbx + rcx + 0x1235]
pslld mm7, qword [rbx + rcx + 0x12345679]
pslld mm7, qword [rbx + 4 * rcx + 0x13]
pslld mm7, qword [rbx + 4 * rcx + 0x1235]
pslld mm7, qword [rbx + 8 * rcx + 0x12345679]
pslld mm7, qword [4 * rcx]
pslld mm7, qword [4 * rcx + 0x13]
pslld mm7, qword [4 * rcx + 0x1235]
pslld mm7, qword [4 * rcx + 0x12345679]
pslld mm7, qword [rbp]
pslld mm7, qword [rbp + 0x12]
pslld mm7, qword [rbp + 0x1234]
pslld mm7, qword [rbp + 0x12345678]
pslld mm7, qword [4 * rbp]
pslld mm7, qword [4 * rbp + 0x12]
pslld mm7, qword [4 * rbp + 0x1234]
pslld mm7, qword [4 * rbp + 0x12345678]
pslld mm7, qword [rbx + 4 * rbp]
pslld mm7, qword [rbx + 4 * rbp + 0x12]
pslld mm7, qword [rbx + 4 * rbp + 0x1234]
pslld mm7, qword [rbx + 4 * rbp + 0x12345678]
pslld mm7, qword [rsp]
pslld mm7, qword [rsp + 0x12]
pslld mm7, qword [rsp + 0x1234]
pslld mm7, qword [rsp + 0x12345678]
pslld mm7, qword [rsp + rax]
pslld mm7, qword [rsp + rbp]
pslld mm7, qword [rsp + 2*rbp]
pslld mm7, qword [rsp + 4*rbp]
pslld mm7, qword [rsp + 8*rbp]
pslld mm7, qword [rax]
pslld mm7, qword [rcx]
pslld mm7, qword [rdx]
pslld mm7, qword [rbx]
pslld mm7, qword [rsp]
pslld mm7, qword [rbp]
pslld mm7, qword [rsi]
pslld mm7, qword [rdi]
pslld mm7, qword [rax + 2*rax]
pslld mm7, qword [rcx + 2*rcx]
pslld mm7, qword [rdx + 2*rdx]
pslld mm7, qword [rbx + 2*rbx]
pslld mm7, qword [rbp + 2*rbp]
pslld mm7, qword [rsi + 2*rsi]
pslld mm7, qword [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode mm,imm8
; ------------------------------------------------------------------------------
pslld mm0, 0
pslld mm0, 1
pslld mm0, 0x12
pslld mm0, 127
pslld mm0, 255
pslld mm0, 0xff
pslld mm1, 0
pslld mm1, 1
pslld mm1, 0x12
pslld mm1, 127
pslld mm1, 255
pslld mm1, 0xff
pslld mm2, 0
pslld mm2, 1
pslld mm2, 0x12
pslld mm2, 127
pslld mm2, 255
pslld mm2, 0xff
pslld mm3, 0
pslld mm3, 1
pslld mm3, 0x12
pslld mm3, 127
pslld mm3, 255
pslld mm3, 0xff
pslld mm4, 0
pslld mm4, 1
pslld mm4, 0x12
pslld mm4, 127
pslld mm4, 255
pslld mm4, 0xff
pslld mm5, 0
pslld mm5, 1
pslld mm5, 0x12
pslld mm5, 127
pslld mm5, 255
pslld mm5, 0xff
pslld mm6, 0
pslld mm6, 1
pslld mm6, 0x12
pslld mm6, 127
pslld mm6, 255
pslld mm6, 0xff
pslld mm7, 0
pslld mm7, 1
pslld mm7, 0x12
pslld mm7, 127
pslld mm7, 255
pslld mm7, 0xff

