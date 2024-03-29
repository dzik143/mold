use64
; ------------------------------------------------------------------------------
; opcode mm,mm
; ------------------------------------------------------------------------------
phaddsw mm0, mm0
phaddsw mm0, mm1
phaddsw mm0, mm2
phaddsw mm0, mm3
phaddsw mm0, mm4
phaddsw mm0, mm5
phaddsw mm0, mm6
phaddsw mm0, mm7
phaddsw mm1, mm0
phaddsw mm1, mm1
phaddsw mm1, mm2
phaddsw mm1, mm3
phaddsw mm1, mm4
phaddsw mm1, mm5
phaddsw mm1, mm6
phaddsw mm1, mm7
phaddsw mm2, mm0
phaddsw mm2, mm1
phaddsw mm2, mm2
phaddsw mm2, mm3
phaddsw mm2, mm4
phaddsw mm2, mm5
phaddsw mm2, mm6
phaddsw mm2, mm7
phaddsw mm3, mm0
phaddsw mm3, mm1
phaddsw mm3, mm2
phaddsw mm3, mm3
phaddsw mm3, mm4
phaddsw mm3, mm5
phaddsw mm3, mm6
phaddsw mm3, mm7
phaddsw mm4, mm0
phaddsw mm4, mm1
phaddsw mm4, mm2
phaddsw mm4, mm3
phaddsw mm4, mm4
phaddsw mm4, mm5
phaddsw mm4, mm6
phaddsw mm4, mm7
phaddsw mm5, mm0
phaddsw mm5, mm1
phaddsw mm5, mm2
phaddsw mm5, mm3
phaddsw mm5, mm4
phaddsw mm5, mm5
phaddsw mm5, mm6
phaddsw mm5, mm7
phaddsw mm6, mm0
phaddsw mm6, mm1
phaddsw mm6, mm2
phaddsw mm6, mm3
phaddsw mm6, mm4
phaddsw mm6, mm5
phaddsw mm6, mm6
phaddsw mm6, mm7
phaddsw mm7, mm0
phaddsw mm7, mm1
phaddsw mm7, mm2
phaddsw mm7, mm3
phaddsw mm7, mm4
phaddsw mm7, mm5
phaddsw mm7, mm6
phaddsw mm7, mm7

; ------------------------------------------------------------------------------
; opcode mm,m64
; ------------------------------------------------------------------------------
phaddsw mm0, qword [rip + 0x13]
phaddsw mm0, qword [rip + 0x1235]
phaddsw mm0, qword [rip + 0x12345679]
phaddsw mm0, qword [rbx]
phaddsw mm0, qword [rcx + 0x14]
phaddsw mm0, qword [rdx + 0x15]
phaddsw mm0, qword [rbx + 0x1235]
phaddsw mm0, qword [rbx + 0x12345679]
phaddsw mm0, qword [rbx + rcx]
phaddsw mm0, qword [rbx + 4 * rcx]
phaddsw mm0, qword [rbx + rcx + 0x13]
phaddsw mm0, qword [rbx + rcx + 0x1235]
phaddsw mm0, qword [rbx + rcx + 0x12345679]
phaddsw mm0, qword [rbx + 4 * rcx + 0x13]
phaddsw mm0, qword [rbx + 4 * rcx + 0x1235]
phaddsw mm0, qword [rbx + 8 * rcx + 0x12345679]
phaddsw mm0, qword [4 * rcx]
phaddsw mm0, qword [4 * rcx + 0x13]
phaddsw mm0, qword [4 * rcx + 0x1235]
phaddsw mm0, qword [4 * rcx + 0x12345679]
phaddsw mm0, qword [rbp]
phaddsw mm0, qword [rbp + 0x12]
phaddsw mm0, qword [rbp + 0x1234]
phaddsw mm0, qword [rbp + 0x12345678]
phaddsw mm0, qword [4 * rbp]
phaddsw mm0, qword [4 * rbp + 0x12]
phaddsw mm0, qword [4 * rbp + 0x1234]
phaddsw mm0, qword [4 * rbp + 0x12345678]
phaddsw mm0, qword [rbx + 4 * rbp]
phaddsw mm0, qword [rbx + 4 * rbp + 0x12]
phaddsw mm0, qword [rbx + 4 * rbp + 0x1234]
phaddsw mm0, qword [rbx + 4 * rbp + 0x12345678]
phaddsw mm0, qword [rsp]
phaddsw mm0, qword [rsp + 0x12]
phaddsw mm0, qword [rsp + 0x1234]
phaddsw mm0, qword [rsp + 0x12345678]
phaddsw mm0, qword [rsp + rax]
phaddsw mm0, qword [rsp + rbp]
phaddsw mm0, qword [rsp + 2*rbp]
phaddsw mm0, qword [rsp + 4*rbp]
phaddsw mm0, qword [rsp + 8*rbp]
phaddsw mm0, qword [rax]
phaddsw mm0, qword [rcx]
phaddsw mm0, qword [rdx]
phaddsw mm0, qword [rbx]
phaddsw mm0, qword [rsp]
phaddsw mm0, qword [rbp]
phaddsw mm0, qword [rsi]
phaddsw mm0, qword [rdi]
phaddsw mm0, qword [rax + 2*rax]
phaddsw mm0, qword [rcx + 2*rcx]
phaddsw mm0, qword [rdx + 2*rdx]
phaddsw mm0, qword [rbx + 2*rbx]
phaddsw mm0, qword [rbp + 2*rbp]
phaddsw mm0, qword [rsi + 2*rsi]
phaddsw mm0, qword [rdi + 2*rdi]
phaddsw mm1, qword [rip + 0x13]
phaddsw mm1, qword [rip + 0x1235]
phaddsw mm1, qword [rip + 0x12345679]
phaddsw mm1, qword [rbx]
phaddsw mm1, qword [rcx + 0x14]
phaddsw mm1, qword [rdx + 0x15]
phaddsw mm1, qword [rbx + 0x1235]
phaddsw mm1, qword [rbx + 0x12345679]
phaddsw mm1, qword [rbx + rcx]
phaddsw mm1, qword [rbx + 4 * rcx]
phaddsw mm1, qword [rbx + rcx + 0x13]
phaddsw mm1, qword [rbx + rcx + 0x1235]
phaddsw mm1, qword [rbx + rcx + 0x12345679]
phaddsw mm1, qword [rbx + 4 * rcx + 0x13]
phaddsw mm1, qword [rbx + 4 * rcx + 0x1235]
phaddsw mm1, qword [rbx + 8 * rcx + 0x12345679]
phaddsw mm1, qword [4 * rcx]
phaddsw mm1, qword [4 * rcx + 0x13]
phaddsw mm1, qword [4 * rcx + 0x1235]
phaddsw mm1, qword [4 * rcx + 0x12345679]
phaddsw mm1, qword [rbp]
phaddsw mm1, qword [rbp + 0x12]
phaddsw mm1, qword [rbp + 0x1234]
phaddsw mm1, qword [rbp + 0x12345678]
phaddsw mm1, qword [4 * rbp]
phaddsw mm1, qword [4 * rbp + 0x12]
phaddsw mm1, qword [4 * rbp + 0x1234]
phaddsw mm1, qword [4 * rbp + 0x12345678]
phaddsw mm1, qword [rbx + 4 * rbp]
phaddsw mm1, qword [rbx + 4 * rbp + 0x12]
phaddsw mm1, qword [rbx + 4 * rbp + 0x1234]
phaddsw mm1, qword [rbx + 4 * rbp + 0x12345678]
phaddsw mm1, qword [rsp]
phaddsw mm1, qword [rsp + 0x12]
phaddsw mm1, qword [rsp + 0x1234]
phaddsw mm1, qword [rsp + 0x12345678]
phaddsw mm1, qword [rsp + rax]
phaddsw mm1, qword [rsp + rbp]
phaddsw mm1, qword [rsp + 2*rbp]
phaddsw mm1, qword [rsp + 4*rbp]
phaddsw mm1, qword [rsp + 8*rbp]
phaddsw mm1, qword [rax]
phaddsw mm1, qword [rcx]
phaddsw mm1, qword [rdx]
phaddsw mm1, qword [rbx]
phaddsw mm1, qword [rsp]
phaddsw mm1, qword [rbp]
phaddsw mm1, qword [rsi]
phaddsw mm1, qword [rdi]
phaddsw mm1, qword [rax + 2*rax]
phaddsw mm1, qword [rcx + 2*rcx]
phaddsw mm1, qword [rdx + 2*rdx]
phaddsw mm1, qword [rbx + 2*rbx]
phaddsw mm1, qword [rbp + 2*rbp]
phaddsw mm1, qword [rsi + 2*rsi]
phaddsw mm1, qword [rdi + 2*rdi]
phaddsw mm2, qword [rip + 0x13]
phaddsw mm2, qword [rip + 0x1235]
phaddsw mm2, qword [rip + 0x12345679]
phaddsw mm2, qword [rbx]
phaddsw mm2, qword [rcx + 0x14]
phaddsw mm2, qword [rdx + 0x15]
phaddsw mm2, qword [rbx + 0x1235]
phaddsw mm2, qword [rbx + 0x12345679]
phaddsw mm2, qword [rbx + rcx]
phaddsw mm2, qword [rbx + 4 * rcx]
phaddsw mm2, qword [rbx + rcx + 0x13]
phaddsw mm2, qword [rbx + rcx + 0x1235]
phaddsw mm2, qword [rbx + rcx + 0x12345679]
phaddsw mm2, qword [rbx + 4 * rcx + 0x13]
phaddsw mm2, qword [rbx + 4 * rcx + 0x1235]
phaddsw mm2, qword [rbx + 8 * rcx + 0x12345679]
phaddsw mm2, qword [4 * rcx]
phaddsw mm2, qword [4 * rcx + 0x13]
phaddsw mm2, qword [4 * rcx + 0x1235]
phaddsw mm2, qword [4 * rcx + 0x12345679]
phaddsw mm2, qword [rbp]
phaddsw mm2, qword [rbp + 0x12]
phaddsw mm2, qword [rbp + 0x1234]
phaddsw mm2, qword [rbp + 0x12345678]
phaddsw mm2, qword [4 * rbp]
phaddsw mm2, qword [4 * rbp + 0x12]
phaddsw mm2, qword [4 * rbp + 0x1234]
phaddsw mm2, qword [4 * rbp + 0x12345678]
phaddsw mm2, qword [rbx + 4 * rbp]
phaddsw mm2, qword [rbx + 4 * rbp + 0x12]
phaddsw mm2, qword [rbx + 4 * rbp + 0x1234]
phaddsw mm2, qword [rbx + 4 * rbp + 0x12345678]
phaddsw mm2, qword [rsp]
phaddsw mm2, qword [rsp + 0x12]
phaddsw mm2, qword [rsp + 0x1234]
phaddsw mm2, qword [rsp + 0x12345678]
phaddsw mm2, qword [rsp + rax]
phaddsw mm2, qword [rsp + rbp]
phaddsw mm2, qword [rsp + 2*rbp]
phaddsw mm2, qword [rsp + 4*rbp]
phaddsw mm2, qword [rsp + 8*rbp]
phaddsw mm2, qword [rax]
phaddsw mm2, qword [rcx]
phaddsw mm2, qword [rdx]
phaddsw mm2, qword [rbx]
phaddsw mm2, qword [rsp]
phaddsw mm2, qword [rbp]
phaddsw mm2, qword [rsi]
phaddsw mm2, qword [rdi]
phaddsw mm2, qword [rax + 2*rax]
phaddsw mm2, qword [rcx + 2*rcx]
phaddsw mm2, qword [rdx + 2*rdx]
phaddsw mm2, qword [rbx + 2*rbx]
phaddsw mm2, qword [rbp + 2*rbp]
phaddsw mm2, qword [rsi + 2*rsi]
phaddsw mm2, qword [rdi + 2*rdi]
phaddsw mm3, qword [rip + 0x13]
phaddsw mm3, qword [rip + 0x1235]
phaddsw mm3, qword [rip + 0x12345679]
phaddsw mm3, qword [rbx]
phaddsw mm3, qword [rcx + 0x14]
phaddsw mm3, qword [rdx + 0x15]
phaddsw mm3, qword [rbx + 0x1235]
phaddsw mm3, qword [rbx + 0x12345679]
phaddsw mm3, qword [rbx + rcx]
phaddsw mm3, qword [rbx + 4 * rcx]
phaddsw mm3, qword [rbx + rcx + 0x13]
phaddsw mm3, qword [rbx + rcx + 0x1235]
phaddsw mm3, qword [rbx + rcx + 0x12345679]
phaddsw mm3, qword [rbx + 4 * rcx + 0x13]
phaddsw mm3, qword [rbx + 4 * rcx + 0x1235]
phaddsw mm3, qword [rbx + 8 * rcx + 0x12345679]
phaddsw mm3, qword [4 * rcx]
phaddsw mm3, qword [4 * rcx + 0x13]
phaddsw mm3, qword [4 * rcx + 0x1235]
phaddsw mm3, qword [4 * rcx + 0x12345679]
phaddsw mm3, qword [rbp]
phaddsw mm3, qword [rbp + 0x12]
phaddsw mm3, qword [rbp + 0x1234]
phaddsw mm3, qword [rbp + 0x12345678]
phaddsw mm3, qword [4 * rbp]
phaddsw mm3, qword [4 * rbp + 0x12]
phaddsw mm3, qword [4 * rbp + 0x1234]
phaddsw mm3, qword [4 * rbp + 0x12345678]
phaddsw mm3, qword [rbx + 4 * rbp]
phaddsw mm3, qword [rbx + 4 * rbp + 0x12]
phaddsw mm3, qword [rbx + 4 * rbp + 0x1234]
phaddsw mm3, qword [rbx + 4 * rbp + 0x12345678]
phaddsw mm3, qword [rsp]
phaddsw mm3, qword [rsp + 0x12]
phaddsw mm3, qword [rsp + 0x1234]
phaddsw mm3, qword [rsp + 0x12345678]
phaddsw mm3, qword [rsp + rax]
phaddsw mm3, qword [rsp + rbp]
phaddsw mm3, qword [rsp + 2*rbp]
phaddsw mm3, qword [rsp + 4*rbp]
phaddsw mm3, qword [rsp + 8*rbp]
phaddsw mm3, qword [rax]
phaddsw mm3, qword [rcx]
phaddsw mm3, qword [rdx]
phaddsw mm3, qword [rbx]
phaddsw mm3, qword [rsp]
phaddsw mm3, qword [rbp]
phaddsw mm3, qword [rsi]
phaddsw mm3, qword [rdi]
phaddsw mm3, qword [rax + 2*rax]
phaddsw mm3, qword [rcx + 2*rcx]
phaddsw mm3, qword [rdx + 2*rdx]
phaddsw mm3, qword [rbx + 2*rbx]
phaddsw mm3, qword [rbp + 2*rbp]
phaddsw mm3, qword [rsi + 2*rsi]
phaddsw mm3, qword [rdi + 2*rdi]
phaddsw mm4, qword [rip + 0x13]
phaddsw mm4, qword [rip + 0x1235]
phaddsw mm4, qword [rip + 0x12345679]
phaddsw mm4, qword [rbx]
phaddsw mm4, qword [rcx + 0x14]
phaddsw mm4, qword [rdx + 0x15]
phaddsw mm4, qword [rbx + 0x1235]
phaddsw mm4, qword [rbx + 0x12345679]
phaddsw mm4, qword [rbx + rcx]
phaddsw mm4, qword [rbx + 4 * rcx]
phaddsw mm4, qword [rbx + rcx + 0x13]
phaddsw mm4, qword [rbx + rcx + 0x1235]
phaddsw mm4, qword [rbx + rcx + 0x12345679]
phaddsw mm4, qword [rbx + 4 * rcx + 0x13]
phaddsw mm4, qword [rbx + 4 * rcx + 0x1235]
phaddsw mm4, qword [rbx + 8 * rcx + 0x12345679]
phaddsw mm4, qword [4 * rcx]
phaddsw mm4, qword [4 * rcx + 0x13]
phaddsw mm4, qword [4 * rcx + 0x1235]
phaddsw mm4, qword [4 * rcx + 0x12345679]
phaddsw mm4, qword [rbp]
phaddsw mm4, qword [rbp + 0x12]
phaddsw mm4, qword [rbp + 0x1234]
phaddsw mm4, qword [rbp + 0x12345678]
phaddsw mm4, qword [4 * rbp]
phaddsw mm4, qword [4 * rbp + 0x12]
phaddsw mm4, qword [4 * rbp + 0x1234]
phaddsw mm4, qword [4 * rbp + 0x12345678]
phaddsw mm4, qword [rbx + 4 * rbp]
phaddsw mm4, qword [rbx + 4 * rbp + 0x12]
phaddsw mm4, qword [rbx + 4 * rbp + 0x1234]
phaddsw mm4, qword [rbx + 4 * rbp + 0x12345678]
phaddsw mm4, qword [rsp]
phaddsw mm4, qword [rsp + 0x12]
phaddsw mm4, qword [rsp + 0x1234]
phaddsw mm4, qword [rsp + 0x12345678]
phaddsw mm4, qword [rsp + rax]
phaddsw mm4, qword [rsp + rbp]
phaddsw mm4, qword [rsp + 2*rbp]
phaddsw mm4, qword [rsp + 4*rbp]
phaddsw mm4, qword [rsp + 8*rbp]
phaddsw mm4, qword [rax]
phaddsw mm4, qword [rcx]
phaddsw mm4, qword [rdx]
phaddsw mm4, qword [rbx]
phaddsw mm4, qword [rsp]
phaddsw mm4, qword [rbp]
phaddsw mm4, qword [rsi]
phaddsw mm4, qword [rdi]
phaddsw mm4, qword [rax + 2*rax]
phaddsw mm4, qword [rcx + 2*rcx]
phaddsw mm4, qword [rdx + 2*rdx]
phaddsw mm4, qword [rbx + 2*rbx]
phaddsw mm4, qword [rbp + 2*rbp]
phaddsw mm4, qword [rsi + 2*rsi]
phaddsw mm4, qword [rdi + 2*rdi]
phaddsw mm5, qword [rip + 0x13]
phaddsw mm5, qword [rip + 0x1235]
phaddsw mm5, qword [rip + 0x12345679]
phaddsw mm5, qword [rbx]
phaddsw mm5, qword [rcx + 0x14]
phaddsw mm5, qword [rdx + 0x15]
phaddsw mm5, qword [rbx + 0x1235]
phaddsw mm5, qword [rbx + 0x12345679]
phaddsw mm5, qword [rbx + rcx]
phaddsw mm5, qword [rbx + 4 * rcx]
phaddsw mm5, qword [rbx + rcx + 0x13]
phaddsw mm5, qword [rbx + rcx + 0x1235]
phaddsw mm5, qword [rbx + rcx + 0x12345679]
phaddsw mm5, qword [rbx + 4 * rcx + 0x13]
phaddsw mm5, qword [rbx + 4 * rcx + 0x1235]
phaddsw mm5, qword [rbx + 8 * rcx + 0x12345679]
phaddsw mm5, qword [4 * rcx]
phaddsw mm5, qword [4 * rcx + 0x13]
phaddsw mm5, qword [4 * rcx + 0x1235]
phaddsw mm5, qword [4 * rcx + 0x12345679]
phaddsw mm5, qword [rbp]
phaddsw mm5, qword [rbp + 0x12]
phaddsw mm5, qword [rbp + 0x1234]
phaddsw mm5, qword [rbp + 0x12345678]
phaddsw mm5, qword [4 * rbp]
phaddsw mm5, qword [4 * rbp + 0x12]
phaddsw mm5, qword [4 * rbp + 0x1234]
phaddsw mm5, qword [4 * rbp + 0x12345678]
phaddsw mm5, qword [rbx + 4 * rbp]
phaddsw mm5, qword [rbx + 4 * rbp + 0x12]
phaddsw mm5, qword [rbx + 4 * rbp + 0x1234]
phaddsw mm5, qword [rbx + 4 * rbp + 0x12345678]
phaddsw mm5, qword [rsp]
phaddsw mm5, qword [rsp + 0x12]
phaddsw mm5, qword [rsp + 0x1234]
phaddsw mm5, qword [rsp + 0x12345678]
phaddsw mm5, qword [rsp + rax]
phaddsw mm5, qword [rsp + rbp]
phaddsw mm5, qword [rsp + 2*rbp]
phaddsw mm5, qword [rsp + 4*rbp]
phaddsw mm5, qword [rsp + 8*rbp]
phaddsw mm5, qword [rax]
phaddsw mm5, qword [rcx]
phaddsw mm5, qword [rdx]
phaddsw mm5, qword [rbx]
phaddsw mm5, qword [rsp]
phaddsw mm5, qword [rbp]
phaddsw mm5, qword [rsi]
phaddsw mm5, qword [rdi]
phaddsw mm5, qword [rax + 2*rax]
phaddsw mm5, qword [rcx + 2*rcx]
phaddsw mm5, qword [rdx + 2*rdx]
phaddsw mm5, qword [rbx + 2*rbx]
phaddsw mm5, qword [rbp + 2*rbp]
phaddsw mm5, qword [rsi + 2*rsi]
phaddsw mm5, qword [rdi + 2*rdi]
phaddsw mm6, qword [rip + 0x13]
phaddsw mm6, qword [rip + 0x1235]
phaddsw mm6, qword [rip + 0x12345679]
phaddsw mm6, qword [rbx]
phaddsw mm6, qword [rcx + 0x14]
phaddsw mm6, qword [rdx + 0x15]
phaddsw mm6, qword [rbx + 0x1235]
phaddsw mm6, qword [rbx + 0x12345679]
phaddsw mm6, qword [rbx + rcx]
phaddsw mm6, qword [rbx + 4 * rcx]
phaddsw mm6, qword [rbx + rcx + 0x13]
phaddsw mm6, qword [rbx + rcx + 0x1235]
phaddsw mm6, qword [rbx + rcx + 0x12345679]
phaddsw mm6, qword [rbx + 4 * rcx + 0x13]
phaddsw mm6, qword [rbx + 4 * rcx + 0x1235]
phaddsw mm6, qword [rbx + 8 * rcx + 0x12345679]
phaddsw mm6, qword [4 * rcx]
phaddsw mm6, qword [4 * rcx + 0x13]
phaddsw mm6, qword [4 * rcx + 0x1235]
phaddsw mm6, qword [4 * rcx + 0x12345679]
phaddsw mm6, qword [rbp]
phaddsw mm6, qword [rbp + 0x12]
phaddsw mm6, qword [rbp + 0x1234]
phaddsw mm6, qword [rbp + 0x12345678]
phaddsw mm6, qword [4 * rbp]
phaddsw mm6, qword [4 * rbp + 0x12]
phaddsw mm6, qword [4 * rbp + 0x1234]
phaddsw mm6, qword [4 * rbp + 0x12345678]
phaddsw mm6, qword [rbx + 4 * rbp]
phaddsw mm6, qword [rbx + 4 * rbp + 0x12]
phaddsw mm6, qword [rbx + 4 * rbp + 0x1234]
phaddsw mm6, qword [rbx + 4 * rbp + 0x12345678]
phaddsw mm6, qword [rsp]
phaddsw mm6, qword [rsp + 0x12]
phaddsw mm6, qword [rsp + 0x1234]
phaddsw mm6, qword [rsp + 0x12345678]
phaddsw mm6, qword [rsp + rax]
phaddsw mm6, qword [rsp + rbp]
phaddsw mm6, qword [rsp + 2*rbp]
phaddsw mm6, qword [rsp + 4*rbp]
phaddsw mm6, qword [rsp + 8*rbp]
phaddsw mm6, qword [rax]
phaddsw mm6, qword [rcx]
phaddsw mm6, qword [rdx]
phaddsw mm6, qword [rbx]
phaddsw mm6, qword [rsp]
phaddsw mm6, qword [rbp]
phaddsw mm6, qword [rsi]
phaddsw mm6, qword [rdi]
phaddsw mm6, qword [rax + 2*rax]
phaddsw mm6, qword [rcx + 2*rcx]
phaddsw mm6, qword [rdx + 2*rdx]
phaddsw mm6, qword [rbx + 2*rbx]
phaddsw mm6, qword [rbp + 2*rbp]
phaddsw mm6, qword [rsi + 2*rsi]
phaddsw mm6, qword [rdi + 2*rdi]
phaddsw mm7, qword [rip + 0x13]
phaddsw mm7, qword [rip + 0x1235]
phaddsw mm7, qword [rip + 0x12345679]
phaddsw mm7, qword [rbx]
phaddsw mm7, qword [rcx + 0x14]
phaddsw mm7, qword [rdx + 0x15]
phaddsw mm7, qword [rbx + 0x1235]
phaddsw mm7, qword [rbx + 0x12345679]
phaddsw mm7, qword [rbx + rcx]
phaddsw mm7, qword [rbx + 4 * rcx]
phaddsw mm7, qword [rbx + rcx + 0x13]
phaddsw mm7, qword [rbx + rcx + 0x1235]
phaddsw mm7, qword [rbx + rcx + 0x12345679]
phaddsw mm7, qword [rbx + 4 * rcx + 0x13]
phaddsw mm7, qword [rbx + 4 * rcx + 0x1235]
phaddsw mm7, qword [rbx + 8 * rcx + 0x12345679]
phaddsw mm7, qword [4 * rcx]
phaddsw mm7, qword [4 * rcx + 0x13]
phaddsw mm7, qword [4 * rcx + 0x1235]
phaddsw mm7, qword [4 * rcx + 0x12345679]
phaddsw mm7, qword [rbp]
phaddsw mm7, qword [rbp + 0x12]
phaddsw mm7, qword [rbp + 0x1234]
phaddsw mm7, qword [rbp + 0x12345678]
phaddsw mm7, qword [4 * rbp]
phaddsw mm7, qword [4 * rbp + 0x12]
phaddsw mm7, qword [4 * rbp + 0x1234]
phaddsw mm7, qword [4 * rbp + 0x12345678]
phaddsw mm7, qword [rbx + 4 * rbp]
phaddsw mm7, qword [rbx + 4 * rbp + 0x12]
phaddsw mm7, qword [rbx + 4 * rbp + 0x1234]
phaddsw mm7, qword [rbx + 4 * rbp + 0x12345678]
phaddsw mm7, qword [rsp]
phaddsw mm7, qword [rsp + 0x12]
phaddsw mm7, qword [rsp + 0x1234]
phaddsw mm7, qword [rsp + 0x12345678]
phaddsw mm7, qword [rsp + rax]
phaddsw mm7, qword [rsp + rbp]
phaddsw mm7, qword [rsp + 2*rbp]
phaddsw mm7, qword [rsp + 4*rbp]
phaddsw mm7, qword [rsp + 8*rbp]
phaddsw mm7, qword [rax]
phaddsw mm7, qword [rcx]
phaddsw mm7, qword [rdx]
phaddsw mm7, qword [rbx]
phaddsw mm7, qword [rsp]
phaddsw mm7, qword [rbp]
phaddsw mm7, qword [rsi]
phaddsw mm7, qword [rdi]
phaddsw mm7, qword [rax + 2*rax]
phaddsw mm7, qword [rcx + 2*rcx]
phaddsw mm7, qword [rdx + 2*rdx]
phaddsw mm7, qword [rbx + 2*rbx]
phaddsw mm7, qword [rbp + 2*rbp]
phaddsw mm7, qword [rsi + 2*rsi]
phaddsw mm7, qword [rdi + 2*rdi]

