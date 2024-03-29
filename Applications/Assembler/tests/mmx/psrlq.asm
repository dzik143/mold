use64
; ------------------------------------------------------------------------------
; opcode mm,mm
; ------------------------------------------------------------------------------
psrlq mm0, mm0
psrlq mm0, mm1
psrlq mm0, mm2
psrlq mm0, mm3
psrlq mm0, mm4
psrlq mm0, mm5
psrlq mm0, mm6
psrlq mm0, mm7
psrlq mm1, mm0
psrlq mm1, mm1
psrlq mm1, mm2
psrlq mm1, mm3
psrlq mm1, mm4
psrlq mm1, mm5
psrlq mm1, mm6
psrlq mm1, mm7
psrlq mm2, mm0
psrlq mm2, mm1
psrlq mm2, mm2
psrlq mm2, mm3
psrlq mm2, mm4
psrlq mm2, mm5
psrlq mm2, mm6
psrlq mm2, mm7
psrlq mm3, mm0
psrlq mm3, mm1
psrlq mm3, mm2
psrlq mm3, mm3
psrlq mm3, mm4
psrlq mm3, mm5
psrlq mm3, mm6
psrlq mm3, mm7
psrlq mm4, mm0
psrlq mm4, mm1
psrlq mm4, mm2
psrlq mm4, mm3
psrlq mm4, mm4
psrlq mm4, mm5
psrlq mm4, mm6
psrlq mm4, mm7
psrlq mm5, mm0
psrlq mm5, mm1
psrlq mm5, mm2
psrlq mm5, mm3
psrlq mm5, mm4
psrlq mm5, mm5
psrlq mm5, mm6
psrlq mm5, mm7
psrlq mm6, mm0
psrlq mm6, mm1
psrlq mm6, mm2
psrlq mm6, mm3
psrlq mm6, mm4
psrlq mm6, mm5
psrlq mm6, mm6
psrlq mm6, mm7
psrlq mm7, mm0
psrlq mm7, mm1
psrlq mm7, mm2
psrlq mm7, mm3
psrlq mm7, mm4
psrlq mm7, mm5
psrlq mm7, mm6
psrlq mm7, mm7

; ------------------------------------------------------------------------------
; opcode mm,m64
; ------------------------------------------------------------------------------
psrlq mm0, qword [rip + 0x13]
psrlq mm0, qword [rip + 0x1235]
psrlq mm0, qword [rip + 0x12345679]
psrlq mm0, qword [rbx]
psrlq mm0, qword [rcx + 0x14]
psrlq mm0, qword [rdx + 0x15]
psrlq mm0, qword [rbx + 0x1235]
psrlq mm0, qword [rbx + 0x12345679]
psrlq mm0, qword [rbx + rcx]
psrlq mm0, qword [rbx + 4 * rcx]
psrlq mm0, qword [rbx + rcx + 0x13]
psrlq mm0, qword [rbx + rcx + 0x1235]
psrlq mm0, qword [rbx + rcx + 0x12345679]
psrlq mm0, qword [rbx + 4 * rcx + 0x13]
psrlq mm0, qword [rbx + 4 * rcx + 0x1235]
psrlq mm0, qword [rbx + 8 * rcx + 0x12345679]
psrlq mm0, qword [4 * rcx]
psrlq mm0, qword [4 * rcx + 0x13]
psrlq mm0, qword [4 * rcx + 0x1235]
psrlq mm0, qword [4 * rcx + 0x12345679]
psrlq mm0, qword [rbp]
psrlq mm0, qword [rbp + 0x12]
psrlq mm0, qword [rbp + 0x1234]
psrlq mm0, qword [rbp + 0x12345678]
psrlq mm0, qword [4 * rbp]
psrlq mm0, qword [4 * rbp + 0x12]
psrlq mm0, qword [4 * rbp + 0x1234]
psrlq mm0, qword [4 * rbp + 0x12345678]
psrlq mm0, qword [rbx + 4 * rbp]
psrlq mm0, qword [rbx + 4 * rbp + 0x12]
psrlq mm0, qword [rbx + 4 * rbp + 0x1234]
psrlq mm0, qword [rbx + 4 * rbp + 0x12345678]
psrlq mm0, qword [rsp]
psrlq mm0, qword [rsp + 0x12]
psrlq mm0, qword [rsp + 0x1234]
psrlq mm0, qword [rsp + 0x12345678]
psrlq mm0, qword [rsp + rax]
psrlq mm0, qword [rsp + rbp]
psrlq mm0, qword [rsp + 2*rbp]
psrlq mm0, qword [rsp + 4*rbp]
psrlq mm0, qword [rsp + 8*rbp]
psrlq mm0, qword [rax]
psrlq mm0, qword [rcx]
psrlq mm0, qword [rdx]
psrlq mm0, qword [rbx]
psrlq mm0, qword [rsp]
psrlq mm0, qword [rbp]
psrlq mm0, qword [rsi]
psrlq mm0, qword [rdi]
psrlq mm0, qword [rax + 2*rax]
psrlq mm0, qword [rcx + 2*rcx]
psrlq mm0, qword [rdx + 2*rdx]
psrlq mm0, qword [rbx + 2*rbx]
psrlq mm0, qword [rbp + 2*rbp]
psrlq mm0, qword [rsi + 2*rsi]
psrlq mm0, qword [rdi + 2*rdi]
psrlq mm1, qword [rip + 0x13]
psrlq mm1, qword [rip + 0x1235]
psrlq mm1, qword [rip + 0x12345679]
psrlq mm1, qword [rbx]
psrlq mm1, qword [rcx + 0x14]
psrlq mm1, qword [rdx + 0x15]
psrlq mm1, qword [rbx + 0x1235]
psrlq mm1, qword [rbx + 0x12345679]
psrlq mm1, qword [rbx + rcx]
psrlq mm1, qword [rbx + 4 * rcx]
psrlq mm1, qword [rbx + rcx + 0x13]
psrlq mm1, qword [rbx + rcx + 0x1235]
psrlq mm1, qword [rbx + rcx + 0x12345679]
psrlq mm1, qword [rbx + 4 * rcx + 0x13]
psrlq mm1, qword [rbx + 4 * rcx + 0x1235]
psrlq mm1, qword [rbx + 8 * rcx + 0x12345679]
psrlq mm1, qword [4 * rcx]
psrlq mm1, qword [4 * rcx + 0x13]
psrlq mm1, qword [4 * rcx + 0x1235]
psrlq mm1, qword [4 * rcx + 0x12345679]
psrlq mm1, qword [rbp]
psrlq mm1, qword [rbp + 0x12]
psrlq mm1, qword [rbp + 0x1234]
psrlq mm1, qword [rbp + 0x12345678]
psrlq mm1, qword [4 * rbp]
psrlq mm1, qword [4 * rbp + 0x12]
psrlq mm1, qword [4 * rbp + 0x1234]
psrlq mm1, qword [4 * rbp + 0x12345678]
psrlq mm1, qword [rbx + 4 * rbp]
psrlq mm1, qword [rbx + 4 * rbp + 0x12]
psrlq mm1, qword [rbx + 4 * rbp + 0x1234]
psrlq mm1, qword [rbx + 4 * rbp + 0x12345678]
psrlq mm1, qword [rsp]
psrlq mm1, qword [rsp + 0x12]
psrlq mm1, qword [rsp + 0x1234]
psrlq mm1, qword [rsp + 0x12345678]
psrlq mm1, qword [rsp + rax]
psrlq mm1, qword [rsp + rbp]
psrlq mm1, qword [rsp + 2*rbp]
psrlq mm1, qword [rsp + 4*rbp]
psrlq mm1, qword [rsp + 8*rbp]
psrlq mm1, qword [rax]
psrlq mm1, qword [rcx]
psrlq mm1, qword [rdx]
psrlq mm1, qword [rbx]
psrlq mm1, qword [rsp]
psrlq mm1, qword [rbp]
psrlq mm1, qword [rsi]
psrlq mm1, qword [rdi]
psrlq mm1, qword [rax + 2*rax]
psrlq mm1, qword [rcx + 2*rcx]
psrlq mm1, qword [rdx + 2*rdx]
psrlq mm1, qword [rbx + 2*rbx]
psrlq mm1, qword [rbp + 2*rbp]
psrlq mm1, qword [rsi + 2*rsi]
psrlq mm1, qword [rdi + 2*rdi]
psrlq mm2, qword [rip + 0x13]
psrlq mm2, qword [rip + 0x1235]
psrlq mm2, qword [rip + 0x12345679]
psrlq mm2, qword [rbx]
psrlq mm2, qword [rcx + 0x14]
psrlq mm2, qword [rdx + 0x15]
psrlq mm2, qword [rbx + 0x1235]
psrlq mm2, qword [rbx + 0x12345679]
psrlq mm2, qword [rbx + rcx]
psrlq mm2, qword [rbx + 4 * rcx]
psrlq mm2, qword [rbx + rcx + 0x13]
psrlq mm2, qword [rbx + rcx + 0x1235]
psrlq mm2, qword [rbx + rcx + 0x12345679]
psrlq mm2, qword [rbx + 4 * rcx + 0x13]
psrlq mm2, qword [rbx + 4 * rcx + 0x1235]
psrlq mm2, qword [rbx + 8 * rcx + 0x12345679]
psrlq mm2, qword [4 * rcx]
psrlq mm2, qword [4 * rcx + 0x13]
psrlq mm2, qword [4 * rcx + 0x1235]
psrlq mm2, qword [4 * rcx + 0x12345679]
psrlq mm2, qword [rbp]
psrlq mm2, qword [rbp + 0x12]
psrlq mm2, qword [rbp + 0x1234]
psrlq mm2, qword [rbp + 0x12345678]
psrlq mm2, qword [4 * rbp]
psrlq mm2, qword [4 * rbp + 0x12]
psrlq mm2, qword [4 * rbp + 0x1234]
psrlq mm2, qword [4 * rbp + 0x12345678]
psrlq mm2, qword [rbx + 4 * rbp]
psrlq mm2, qword [rbx + 4 * rbp + 0x12]
psrlq mm2, qword [rbx + 4 * rbp + 0x1234]
psrlq mm2, qword [rbx + 4 * rbp + 0x12345678]
psrlq mm2, qword [rsp]
psrlq mm2, qword [rsp + 0x12]
psrlq mm2, qword [rsp + 0x1234]
psrlq mm2, qword [rsp + 0x12345678]
psrlq mm2, qword [rsp + rax]
psrlq mm2, qword [rsp + rbp]
psrlq mm2, qword [rsp + 2*rbp]
psrlq mm2, qword [rsp + 4*rbp]
psrlq mm2, qword [rsp + 8*rbp]
psrlq mm2, qword [rax]
psrlq mm2, qword [rcx]
psrlq mm2, qword [rdx]
psrlq mm2, qword [rbx]
psrlq mm2, qword [rsp]
psrlq mm2, qword [rbp]
psrlq mm2, qword [rsi]
psrlq mm2, qword [rdi]
psrlq mm2, qword [rax + 2*rax]
psrlq mm2, qword [rcx + 2*rcx]
psrlq mm2, qword [rdx + 2*rdx]
psrlq mm2, qword [rbx + 2*rbx]
psrlq mm2, qword [rbp + 2*rbp]
psrlq mm2, qword [rsi + 2*rsi]
psrlq mm2, qword [rdi + 2*rdi]
psrlq mm3, qword [rip + 0x13]
psrlq mm3, qword [rip + 0x1235]
psrlq mm3, qword [rip + 0x12345679]
psrlq mm3, qword [rbx]
psrlq mm3, qword [rcx + 0x14]
psrlq mm3, qword [rdx + 0x15]
psrlq mm3, qword [rbx + 0x1235]
psrlq mm3, qword [rbx + 0x12345679]
psrlq mm3, qword [rbx + rcx]
psrlq mm3, qword [rbx + 4 * rcx]
psrlq mm3, qword [rbx + rcx + 0x13]
psrlq mm3, qword [rbx + rcx + 0x1235]
psrlq mm3, qword [rbx + rcx + 0x12345679]
psrlq mm3, qword [rbx + 4 * rcx + 0x13]
psrlq mm3, qword [rbx + 4 * rcx + 0x1235]
psrlq mm3, qword [rbx + 8 * rcx + 0x12345679]
psrlq mm3, qword [4 * rcx]
psrlq mm3, qword [4 * rcx + 0x13]
psrlq mm3, qword [4 * rcx + 0x1235]
psrlq mm3, qword [4 * rcx + 0x12345679]
psrlq mm3, qword [rbp]
psrlq mm3, qword [rbp + 0x12]
psrlq mm3, qword [rbp + 0x1234]
psrlq mm3, qword [rbp + 0x12345678]
psrlq mm3, qword [4 * rbp]
psrlq mm3, qword [4 * rbp + 0x12]
psrlq mm3, qword [4 * rbp + 0x1234]
psrlq mm3, qword [4 * rbp + 0x12345678]
psrlq mm3, qword [rbx + 4 * rbp]
psrlq mm3, qword [rbx + 4 * rbp + 0x12]
psrlq mm3, qword [rbx + 4 * rbp + 0x1234]
psrlq mm3, qword [rbx + 4 * rbp + 0x12345678]
psrlq mm3, qword [rsp]
psrlq mm3, qword [rsp + 0x12]
psrlq mm3, qword [rsp + 0x1234]
psrlq mm3, qword [rsp + 0x12345678]
psrlq mm3, qword [rsp + rax]
psrlq mm3, qword [rsp + rbp]
psrlq mm3, qword [rsp + 2*rbp]
psrlq mm3, qword [rsp + 4*rbp]
psrlq mm3, qword [rsp + 8*rbp]
psrlq mm3, qword [rax]
psrlq mm3, qword [rcx]
psrlq mm3, qword [rdx]
psrlq mm3, qword [rbx]
psrlq mm3, qword [rsp]
psrlq mm3, qword [rbp]
psrlq mm3, qword [rsi]
psrlq mm3, qword [rdi]
psrlq mm3, qword [rax + 2*rax]
psrlq mm3, qword [rcx + 2*rcx]
psrlq mm3, qword [rdx + 2*rdx]
psrlq mm3, qword [rbx + 2*rbx]
psrlq mm3, qword [rbp + 2*rbp]
psrlq mm3, qword [rsi + 2*rsi]
psrlq mm3, qword [rdi + 2*rdi]
psrlq mm4, qword [rip + 0x13]
psrlq mm4, qword [rip + 0x1235]
psrlq mm4, qword [rip + 0x12345679]
psrlq mm4, qword [rbx]
psrlq mm4, qword [rcx + 0x14]
psrlq mm4, qword [rdx + 0x15]
psrlq mm4, qword [rbx + 0x1235]
psrlq mm4, qword [rbx + 0x12345679]
psrlq mm4, qword [rbx + rcx]
psrlq mm4, qword [rbx + 4 * rcx]
psrlq mm4, qword [rbx + rcx + 0x13]
psrlq mm4, qword [rbx + rcx + 0x1235]
psrlq mm4, qword [rbx + rcx + 0x12345679]
psrlq mm4, qword [rbx + 4 * rcx + 0x13]
psrlq mm4, qword [rbx + 4 * rcx + 0x1235]
psrlq mm4, qword [rbx + 8 * rcx + 0x12345679]
psrlq mm4, qword [4 * rcx]
psrlq mm4, qword [4 * rcx + 0x13]
psrlq mm4, qword [4 * rcx + 0x1235]
psrlq mm4, qword [4 * rcx + 0x12345679]
psrlq mm4, qword [rbp]
psrlq mm4, qword [rbp + 0x12]
psrlq mm4, qword [rbp + 0x1234]
psrlq mm4, qword [rbp + 0x12345678]
psrlq mm4, qword [4 * rbp]
psrlq mm4, qword [4 * rbp + 0x12]
psrlq mm4, qword [4 * rbp + 0x1234]
psrlq mm4, qword [4 * rbp + 0x12345678]
psrlq mm4, qword [rbx + 4 * rbp]
psrlq mm4, qword [rbx + 4 * rbp + 0x12]
psrlq mm4, qword [rbx + 4 * rbp + 0x1234]
psrlq mm4, qword [rbx + 4 * rbp + 0x12345678]
psrlq mm4, qword [rsp]
psrlq mm4, qword [rsp + 0x12]
psrlq mm4, qword [rsp + 0x1234]
psrlq mm4, qword [rsp + 0x12345678]
psrlq mm4, qword [rsp + rax]
psrlq mm4, qword [rsp + rbp]
psrlq mm4, qword [rsp + 2*rbp]
psrlq mm4, qword [rsp + 4*rbp]
psrlq mm4, qword [rsp + 8*rbp]
psrlq mm4, qword [rax]
psrlq mm4, qword [rcx]
psrlq mm4, qword [rdx]
psrlq mm4, qword [rbx]
psrlq mm4, qword [rsp]
psrlq mm4, qword [rbp]
psrlq mm4, qword [rsi]
psrlq mm4, qword [rdi]
psrlq mm4, qword [rax + 2*rax]
psrlq mm4, qword [rcx + 2*rcx]
psrlq mm4, qword [rdx + 2*rdx]
psrlq mm4, qword [rbx + 2*rbx]
psrlq mm4, qword [rbp + 2*rbp]
psrlq mm4, qword [rsi + 2*rsi]
psrlq mm4, qword [rdi + 2*rdi]
psrlq mm5, qword [rip + 0x13]
psrlq mm5, qword [rip + 0x1235]
psrlq mm5, qword [rip + 0x12345679]
psrlq mm5, qword [rbx]
psrlq mm5, qword [rcx + 0x14]
psrlq mm5, qword [rdx + 0x15]
psrlq mm5, qword [rbx + 0x1235]
psrlq mm5, qword [rbx + 0x12345679]
psrlq mm5, qword [rbx + rcx]
psrlq mm5, qword [rbx + 4 * rcx]
psrlq mm5, qword [rbx + rcx + 0x13]
psrlq mm5, qword [rbx + rcx + 0x1235]
psrlq mm5, qword [rbx + rcx + 0x12345679]
psrlq mm5, qword [rbx + 4 * rcx + 0x13]
psrlq mm5, qword [rbx + 4 * rcx + 0x1235]
psrlq mm5, qword [rbx + 8 * rcx + 0x12345679]
psrlq mm5, qword [4 * rcx]
psrlq mm5, qword [4 * rcx + 0x13]
psrlq mm5, qword [4 * rcx + 0x1235]
psrlq mm5, qword [4 * rcx + 0x12345679]
psrlq mm5, qword [rbp]
psrlq mm5, qword [rbp + 0x12]
psrlq mm5, qword [rbp + 0x1234]
psrlq mm5, qword [rbp + 0x12345678]
psrlq mm5, qword [4 * rbp]
psrlq mm5, qword [4 * rbp + 0x12]
psrlq mm5, qword [4 * rbp + 0x1234]
psrlq mm5, qword [4 * rbp + 0x12345678]
psrlq mm5, qword [rbx + 4 * rbp]
psrlq mm5, qword [rbx + 4 * rbp + 0x12]
psrlq mm5, qword [rbx + 4 * rbp + 0x1234]
psrlq mm5, qword [rbx + 4 * rbp + 0x12345678]
psrlq mm5, qword [rsp]
psrlq mm5, qword [rsp + 0x12]
psrlq mm5, qword [rsp + 0x1234]
psrlq mm5, qword [rsp + 0x12345678]
psrlq mm5, qword [rsp + rax]
psrlq mm5, qword [rsp + rbp]
psrlq mm5, qword [rsp + 2*rbp]
psrlq mm5, qword [rsp + 4*rbp]
psrlq mm5, qword [rsp + 8*rbp]
psrlq mm5, qword [rax]
psrlq mm5, qword [rcx]
psrlq mm5, qword [rdx]
psrlq mm5, qword [rbx]
psrlq mm5, qword [rsp]
psrlq mm5, qword [rbp]
psrlq mm5, qword [rsi]
psrlq mm5, qword [rdi]
psrlq mm5, qword [rax + 2*rax]
psrlq mm5, qword [rcx + 2*rcx]
psrlq mm5, qword [rdx + 2*rdx]
psrlq mm5, qword [rbx + 2*rbx]
psrlq mm5, qword [rbp + 2*rbp]
psrlq mm5, qword [rsi + 2*rsi]
psrlq mm5, qword [rdi + 2*rdi]
psrlq mm6, qword [rip + 0x13]
psrlq mm6, qword [rip + 0x1235]
psrlq mm6, qword [rip + 0x12345679]
psrlq mm6, qword [rbx]
psrlq mm6, qword [rcx + 0x14]
psrlq mm6, qword [rdx + 0x15]
psrlq mm6, qword [rbx + 0x1235]
psrlq mm6, qword [rbx + 0x12345679]
psrlq mm6, qword [rbx + rcx]
psrlq mm6, qword [rbx + 4 * rcx]
psrlq mm6, qword [rbx + rcx + 0x13]
psrlq mm6, qword [rbx + rcx + 0x1235]
psrlq mm6, qword [rbx + rcx + 0x12345679]
psrlq mm6, qword [rbx + 4 * rcx + 0x13]
psrlq mm6, qword [rbx + 4 * rcx + 0x1235]
psrlq mm6, qword [rbx + 8 * rcx + 0x12345679]
psrlq mm6, qword [4 * rcx]
psrlq mm6, qword [4 * rcx + 0x13]
psrlq mm6, qword [4 * rcx + 0x1235]
psrlq mm6, qword [4 * rcx + 0x12345679]
psrlq mm6, qword [rbp]
psrlq mm6, qword [rbp + 0x12]
psrlq mm6, qword [rbp + 0x1234]
psrlq mm6, qword [rbp + 0x12345678]
psrlq mm6, qword [4 * rbp]
psrlq mm6, qword [4 * rbp + 0x12]
psrlq mm6, qword [4 * rbp + 0x1234]
psrlq mm6, qword [4 * rbp + 0x12345678]
psrlq mm6, qword [rbx + 4 * rbp]
psrlq mm6, qword [rbx + 4 * rbp + 0x12]
psrlq mm6, qword [rbx + 4 * rbp + 0x1234]
psrlq mm6, qword [rbx + 4 * rbp + 0x12345678]
psrlq mm6, qword [rsp]
psrlq mm6, qword [rsp + 0x12]
psrlq mm6, qword [rsp + 0x1234]
psrlq mm6, qword [rsp + 0x12345678]
psrlq mm6, qword [rsp + rax]
psrlq mm6, qword [rsp + rbp]
psrlq mm6, qword [rsp + 2*rbp]
psrlq mm6, qword [rsp + 4*rbp]
psrlq mm6, qword [rsp + 8*rbp]
psrlq mm6, qword [rax]
psrlq mm6, qword [rcx]
psrlq mm6, qword [rdx]
psrlq mm6, qword [rbx]
psrlq mm6, qword [rsp]
psrlq mm6, qword [rbp]
psrlq mm6, qword [rsi]
psrlq mm6, qword [rdi]
psrlq mm6, qword [rax + 2*rax]
psrlq mm6, qword [rcx + 2*rcx]
psrlq mm6, qword [rdx + 2*rdx]
psrlq mm6, qword [rbx + 2*rbx]
psrlq mm6, qword [rbp + 2*rbp]
psrlq mm6, qword [rsi + 2*rsi]
psrlq mm6, qword [rdi + 2*rdi]
psrlq mm7, qword [rip + 0x13]
psrlq mm7, qword [rip + 0x1235]
psrlq mm7, qword [rip + 0x12345679]
psrlq mm7, qword [rbx]
psrlq mm7, qword [rcx + 0x14]
psrlq mm7, qword [rdx + 0x15]
psrlq mm7, qword [rbx + 0x1235]
psrlq mm7, qword [rbx + 0x12345679]
psrlq mm7, qword [rbx + rcx]
psrlq mm7, qword [rbx + 4 * rcx]
psrlq mm7, qword [rbx + rcx + 0x13]
psrlq mm7, qword [rbx + rcx + 0x1235]
psrlq mm7, qword [rbx + rcx + 0x12345679]
psrlq mm7, qword [rbx + 4 * rcx + 0x13]
psrlq mm7, qword [rbx + 4 * rcx + 0x1235]
psrlq mm7, qword [rbx + 8 * rcx + 0x12345679]
psrlq mm7, qword [4 * rcx]
psrlq mm7, qword [4 * rcx + 0x13]
psrlq mm7, qword [4 * rcx + 0x1235]
psrlq mm7, qword [4 * rcx + 0x12345679]
psrlq mm7, qword [rbp]
psrlq mm7, qword [rbp + 0x12]
psrlq mm7, qword [rbp + 0x1234]
psrlq mm7, qword [rbp + 0x12345678]
psrlq mm7, qword [4 * rbp]
psrlq mm7, qword [4 * rbp + 0x12]
psrlq mm7, qword [4 * rbp + 0x1234]
psrlq mm7, qword [4 * rbp + 0x12345678]
psrlq mm7, qword [rbx + 4 * rbp]
psrlq mm7, qword [rbx + 4 * rbp + 0x12]
psrlq mm7, qword [rbx + 4 * rbp + 0x1234]
psrlq mm7, qword [rbx + 4 * rbp + 0x12345678]
psrlq mm7, qword [rsp]
psrlq mm7, qword [rsp + 0x12]
psrlq mm7, qword [rsp + 0x1234]
psrlq mm7, qword [rsp + 0x12345678]
psrlq mm7, qword [rsp + rax]
psrlq mm7, qword [rsp + rbp]
psrlq mm7, qword [rsp + 2*rbp]
psrlq mm7, qword [rsp + 4*rbp]
psrlq mm7, qword [rsp + 8*rbp]
psrlq mm7, qword [rax]
psrlq mm7, qword [rcx]
psrlq mm7, qword [rdx]
psrlq mm7, qword [rbx]
psrlq mm7, qword [rsp]
psrlq mm7, qword [rbp]
psrlq mm7, qword [rsi]
psrlq mm7, qword [rdi]
psrlq mm7, qword [rax + 2*rax]
psrlq mm7, qword [rcx + 2*rcx]
psrlq mm7, qword [rdx + 2*rdx]
psrlq mm7, qword [rbx + 2*rbx]
psrlq mm7, qword [rbp + 2*rbp]
psrlq mm7, qword [rsi + 2*rsi]
psrlq mm7, qword [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode mm,imm8
; ------------------------------------------------------------------------------
psrlq mm0, 0
psrlq mm0, 1
psrlq mm0, 0x12
psrlq mm0, 127
psrlq mm0, 255
psrlq mm0, 0xff
psrlq mm1, 0
psrlq mm1, 1
psrlq mm1, 0x12
psrlq mm1, 127
psrlq mm1, 255
psrlq mm1, 0xff
psrlq mm2, 0
psrlq mm2, 1
psrlq mm2, 0x12
psrlq mm2, 127
psrlq mm2, 255
psrlq mm2, 0xff
psrlq mm3, 0
psrlq mm3, 1
psrlq mm3, 0x12
psrlq mm3, 127
psrlq mm3, 255
psrlq mm3, 0xff
psrlq mm4, 0
psrlq mm4, 1
psrlq mm4, 0x12
psrlq mm4, 127
psrlq mm4, 255
psrlq mm4, 0xff
psrlq mm5, 0
psrlq mm5, 1
psrlq mm5, 0x12
psrlq mm5, 127
psrlq mm5, 255
psrlq mm5, 0xff
psrlq mm6, 0
psrlq mm6, 1
psrlq mm6, 0x12
psrlq mm6, 127
psrlq mm6, 255
psrlq mm6, 0xff
psrlq mm7, 0
psrlq mm7, 1
psrlq mm7, 0x12
psrlq mm7, 127
psrlq mm7, 255
psrlq mm7, 0xff

