use64
; ------------------------------------------------------------------------------
; opcode mm,mm
; ------------------------------------------------------------------------------
pandn mm0, mm0
pandn mm0, mm1
pandn mm0, mm2
pandn mm0, mm3
pandn mm0, mm4
pandn mm0, mm5
pandn mm0, mm6
pandn mm0, mm7
pandn mm1, mm0
pandn mm1, mm1
pandn mm1, mm2
pandn mm1, mm3
pandn mm1, mm4
pandn mm1, mm5
pandn mm1, mm6
pandn mm1, mm7
pandn mm2, mm0
pandn mm2, mm1
pandn mm2, mm2
pandn mm2, mm3
pandn mm2, mm4
pandn mm2, mm5
pandn mm2, mm6
pandn mm2, mm7
pandn mm3, mm0
pandn mm3, mm1
pandn mm3, mm2
pandn mm3, mm3
pandn mm3, mm4
pandn mm3, mm5
pandn mm3, mm6
pandn mm3, mm7
pandn mm4, mm0
pandn mm4, mm1
pandn mm4, mm2
pandn mm4, mm3
pandn mm4, mm4
pandn mm4, mm5
pandn mm4, mm6
pandn mm4, mm7
pandn mm5, mm0
pandn mm5, mm1
pandn mm5, mm2
pandn mm5, mm3
pandn mm5, mm4
pandn mm5, mm5
pandn mm5, mm6
pandn mm5, mm7
pandn mm6, mm0
pandn mm6, mm1
pandn mm6, mm2
pandn mm6, mm3
pandn mm6, mm4
pandn mm6, mm5
pandn mm6, mm6
pandn mm6, mm7
pandn mm7, mm0
pandn mm7, mm1
pandn mm7, mm2
pandn mm7, mm3
pandn mm7, mm4
pandn mm7, mm5
pandn mm7, mm6
pandn mm7, mm7

; ------------------------------------------------------------------------------
; opcode mm,m64
; ------------------------------------------------------------------------------
pandn mm0, qword [rip + 0x13]
pandn mm0, qword [rip + 0x1235]
pandn mm0, qword [rip + 0x12345679]
pandn mm0, qword [rbx]
pandn mm0, qword [rcx + 0x14]
pandn mm0, qword [rdx + 0x15]
pandn mm0, qword [rbx + 0x1235]
pandn mm0, qword [rbx + 0x12345679]
pandn mm0, qword [rbx + rcx]
pandn mm0, qword [rbx + 4 * rcx]
pandn mm0, qword [rbx + rcx + 0x13]
pandn mm0, qword [rbx + rcx + 0x1235]
pandn mm0, qword [rbx + rcx + 0x12345679]
pandn mm0, qword [rbx + 4 * rcx + 0x13]
pandn mm0, qword [rbx + 4 * rcx + 0x1235]
pandn mm0, qword [rbx + 8 * rcx + 0x12345679]
pandn mm0, qword [4 * rcx]
pandn mm0, qword [4 * rcx + 0x13]
pandn mm0, qword [4 * rcx + 0x1235]
pandn mm0, qword [4 * rcx + 0x12345679]
pandn mm0, qword [rbp]
pandn mm0, qword [rbp + 0x12]
pandn mm0, qword [rbp + 0x1234]
pandn mm0, qword [rbp + 0x12345678]
pandn mm0, qword [4 * rbp]
pandn mm0, qword [4 * rbp + 0x12]
pandn mm0, qword [4 * rbp + 0x1234]
pandn mm0, qword [4 * rbp + 0x12345678]
pandn mm0, qword [rbx + 4 * rbp]
pandn mm0, qword [rbx + 4 * rbp + 0x12]
pandn mm0, qword [rbx + 4 * rbp + 0x1234]
pandn mm0, qword [rbx + 4 * rbp + 0x12345678]
pandn mm0, qword [rsp]
pandn mm0, qword [rsp + 0x12]
pandn mm0, qword [rsp + 0x1234]
pandn mm0, qword [rsp + 0x12345678]
pandn mm0, qword [rsp + rax]
pandn mm0, qword [rsp + rbp]
pandn mm0, qword [rsp + 2*rbp]
pandn mm0, qword [rsp + 4*rbp]
pandn mm0, qword [rsp + 8*rbp]
pandn mm0, qword [rax]
pandn mm0, qword [rcx]
pandn mm0, qword [rdx]
pandn mm0, qword [rbx]
pandn mm0, qword [rsp]
pandn mm0, qword [rbp]
pandn mm0, qword [rsi]
pandn mm0, qword [rdi]
pandn mm0, qword [rax + 2*rax]
pandn mm0, qword [rcx + 2*rcx]
pandn mm0, qword [rdx + 2*rdx]
pandn mm0, qword [rbx + 2*rbx]
pandn mm0, qword [rbp + 2*rbp]
pandn mm0, qword [rsi + 2*rsi]
pandn mm0, qword [rdi + 2*rdi]
pandn mm1, qword [rip + 0x13]
pandn mm1, qword [rip + 0x1235]
pandn mm1, qword [rip + 0x12345679]
pandn mm1, qword [rbx]
pandn mm1, qword [rcx + 0x14]
pandn mm1, qword [rdx + 0x15]
pandn mm1, qword [rbx + 0x1235]
pandn mm1, qword [rbx + 0x12345679]
pandn mm1, qword [rbx + rcx]
pandn mm1, qword [rbx + 4 * rcx]
pandn mm1, qword [rbx + rcx + 0x13]
pandn mm1, qword [rbx + rcx + 0x1235]
pandn mm1, qword [rbx + rcx + 0x12345679]
pandn mm1, qword [rbx + 4 * rcx + 0x13]
pandn mm1, qword [rbx + 4 * rcx + 0x1235]
pandn mm1, qword [rbx + 8 * rcx + 0x12345679]
pandn mm1, qword [4 * rcx]
pandn mm1, qword [4 * rcx + 0x13]
pandn mm1, qword [4 * rcx + 0x1235]
pandn mm1, qword [4 * rcx + 0x12345679]
pandn mm1, qword [rbp]
pandn mm1, qword [rbp + 0x12]
pandn mm1, qword [rbp + 0x1234]
pandn mm1, qword [rbp + 0x12345678]
pandn mm1, qword [4 * rbp]
pandn mm1, qword [4 * rbp + 0x12]
pandn mm1, qword [4 * rbp + 0x1234]
pandn mm1, qword [4 * rbp + 0x12345678]
pandn mm1, qword [rbx + 4 * rbp]
pandn mm1, qword [rbx + 4 * rbp + 0x12]
pandn mm1, qword [rbx + 4 * rbp + 0x1234]
pandn mm1, qword [rbx + 4 * rbp + 0x12345678]
pandn mm1, qword [rsp]
pandn mm1, qword [rsp + 0x12]
pandn mm1, qword [rsp + 0x1234]
pandn mm1, qword [rsp + 0x12345678]
pandn mm1, qword [rsp + rax]
pandn mm1, qword [rsp + rbp]
pandn mm1, qword [rsp + 2*rbp]
pandn mm1, qword [rsp + 4*rbp]
pandn mm1, qword [rsp + 8*rbp]
pandn mm1, qword [rax]
pandn mm1, qword [rcx]
pandn mm1, qword [rdx]
pandn mm1, qword [rbx]
pandn mm1, qword [rsp]
pandn mm1, qword [rbp]
pandn mm1, qword [rsi]
pandn mm1, qword [rdi]
pandn mm1, qword [rax + 2*rax]
pandn mm1, qword [rcx + 2*rcx]
pandn mm1, qword [rdx + 2*rdx]
pandn mm1, qword [rbx + 2*rbx]
pandn mm1, qword [rbp + 2*rbp]
pandn mm1, qword [rsi + 2*rsi]
pandn mm1, qword [rdi + 2*rdi]
pandn mm2, qword [rip + 0x13]
pandn mm2, qword [rip + 0x1235]
pandn mm2, qword [rip + 0x12345679]
pandn mm2, qword [rbx]
pandn mm2, qword [rcx + 0x14]
pandn mm2, qword [rdx + 0x15]
pandn mm2, qword [rbx + 0x1235]
pandn mm2, qword [rbx + 0x12345679]
pandn mm2, qword [rbx + rcx]
pandn mm2, qword [rbx + 4 * rcx]
pandn mm2, qword [rbx + rcx + 0x13]
pandn mm2, qword [rbx + rcx + 0x1235]
pandn mm2, qword [rbx + rcx + 0x12345679]
pandn mm2, qword [rbx + 4 * rcx + 0x13]
pandn mm2, qword [rbx + 4 * rcx + 0x1235]
pandn mm2, qword [rbx + 8 * rcx + 0x12345679]
pandn mm2, qword [4 * rcx]
pandn mm2, qword [4 * rcx + 0x13]
pandn mm2, qword [4 * rcx + 0x1235]
pandn mm2, qword [4 * rcx + 0x12345679]
pandn mm2, qword [rbp]
pandn mm2, qword [rbp + 0x12]
pandn mm2, qword [rbp + 0x1234]
pandn mm2, qword [rbp + 0x12345678]
pandn mm2, qword [4 * rbp]
pandn mm2, qword [4 * rbp + 0x12]
pandn mm2, qword [4 * rbp + 0x1234]
pandn mm2, qword [4 * rbp + 0x12345678]
pandn mm2, qword [rbx + 4 * rbp]
pandn mm2, qword [rbx + 4 * rbp + 0x12]
pandn mm2, qword [rbx + 4 * rbp + 0x1234]
pandn mm2, qword [rbx + 4 * rbp + 0x12345678]
pandn mm2, qword [rsp]
pandn mm2, qword [rsp + 0x12]
pandn mm2, qword [rsp + 0x1234]
pandn mm2, qword [rsp + 0x12345678]
pandn mm2, qword [rsp + rax]
pandn mm2, qword [rsp + rbp]
pandn mm2, qword [rsp + 2*rbp]
pandn mm2, qword [rsp + 4*rbp]
pandn mm2, qword [rsp + 8*rbp]
pandn mm2, qword [rax]
pandn mm2, qword [rcx]
pandn mm2, qword [rdx]
pandn mm2, qword [rbx]
pandn mm2, qword [rsp]
pandn mm2, qword [rbp]
pandn mm2, qword [rsi]
pandn mm2, qword [rdi]
pandn mm2, qword [rax + 2*rax]
pandn mm2, qword [rcx + 2*rcx]
pandn mm2, qword [rdx + 2*rdx]
pandn mm2, qword [rbx + 2*rbx]
pandn mm2, qword [rbp + 2*rbp]
pandn mm2, qword [rsi + 2*rsi]
pandn mm2, qword [rdi + 2*rdi]
pandn mm3, qword [rip + 0x13]
pandn mm3, qword [rip + 0x1235]
pandn mm3, qword [rip + 0x12345679]
pandn mm3, qword [rbx]
pandn mm3, qword [rcx + 0x14]
pandn mm3, qword [rdx + 0x15]
pandn mm3, qword [rbx + 0x1235]
pandn mm3, qword [rbx + 0x12345679]
pandn mm3, qword [rbx + rcx]
pandn mm3, qword [rbx + 4 * rcx]
pandn mm3, qword [rbx + rcx + 0x13]
pandn mm3, qword [rbx + rcx + 0x1235]
pandn mm3, qword [rbx + rcx + 0x12345679]
pandn mm3, qword [rbx + 4 * rcx + 0x13]
pandn mm3, qword [rbx + 4 * rcx + 0x1235]
pandn mm3, qword [rbx + 8 * rcx + 0x12345679]
pandn mm3, qword [4 * rcx]
pandn mm3, qword [4 * rcx + 0x13]
pandn mm3, qword [4 * rcx + 0x1235]
pandn mm3, qword [4 * rcx + 0x12345679]
pandn mm3, qword [rbp]
pandn mm3, qword [rbp + 0x12]
pandn mm3, qword [rbp + 0x1234]
pandn mm3, qword [rbp + 0x12345678]
pandn mm3, qword [4 * rbp]
pandn mm3, qword [4 * rbp + 0x12]
pandn mm3, qword [4 * rbp + 0x1234]
pandn mm3, qword [4 * rbp + 0x12345678]
pandn mm3, qword [rbx + 4 * rbp]
pandn mm3, qword [rbx + 4 * rbp + 0x12]
pandn mm3, qword [rbx + 4 * rbp + 0x1234]
pandn mm3, qword [rbx + 4 * rbp + 0x12345678]
pandn mm3, qword [rsp]
pandn mm3, qword [rsp + 0x12]
pandn mm3, qword [rsp + 0x1234]
pandn mm3, qword [rsp + 0x12345678]
pandn mm3, qword [rsp + rax]
pandn mm3, qword [rsp + rbp]
pandn mm3, qword [rsp + 2*rbp]
pandn mm3, qword [rsp + 4*rbp]
pandn mm3, qword [rsp + 8*rbp]
pandn mm3, qword [rax]
pandn mm3, qword [rcx]
pandn mm3, qword [rdx]
pandn mm3, qword [rbx]
pandn mm3, qword [rsp]
pandn mm3, qword [rbp]
pandn mm3, qword [rsi]
pandn mm3, qword [rdi]
pandn mm3, qword [rax + 2*rax]
pandn mm3, qword [rcx + 2*rcx]
pandn mm3, qword [rdx + 2*rdx]
pandn mm3, qword [rbx + 2*rbx]
pandn mm3, qword [rbp + 2*rbp]
pandn mm3, qword [rsi + 2*rsi]
pandn mm3, qword [rdi + 2*rdi]
pandn mm4, qword [rip + 0x13]
pandn mm4, qword [rip + 0x1235]
pandn mm4, qword [rip + 0x12345679]
pandn mm4, qword [rbx]
pandn mm4, qword [rcx + 0x14]
pandn mm4, qword [rdx + 0x15]
pandn mm4, qword [rbx + 0x1235]
pandn mm4, qword [rbx + 0x12345679]
pandn mm4, qword [rbx + rcx]
pandn mm4, qword [rbx + 4 * rcx]
pandn mm4, qword [rbx + rcx + 0x13]
pandn mm4, qword [rbx + rcx + 0x1235]
pandn mm4, qword [rbx + rcx + 0x12345679]
pandn mm4, qword [rbx + 4 * rcx + 0x13]
pandn mm4, qword [rbx + 4 * rcx + 0x1235]
pandn mm4, qword [rbx + 8 * rcx + 0x12345679]
pandn mm4, qword [4 * rcx]
pandn mm4, qword [4 * rcx + 0x13]
pandn mm4, qword [4 * rcx + 0x1235]
pandn mm4, qword [4 * rcx + 0x12345679]
pandn mm4, qword [rbp]
pandn mm4, qword [rbp + 0x12]
pandn mm4, qword [rbp + 0x1234]
pandn mm4, qword [rbp + 0x12345678]
pandn mm4, qword [4 * rbp]
pandn mm4, qword [4 * rbp + 0x12]
pandn mm4, qword [4 * rbp + 0x1234]
pandn mm4, qword [4 * rbp + 0x12345678]
pandn mm4, qword [rbx + 4 * rbp]
pandn mm4, qword [rbx + 4 * rbp + 0x12]
pandn mm4, qword [rbx + 4 * rbp + 0x1234]
pandn mm4, qword [rbx + 4 * rbp + 0x12345678]
pandn mm4, qword [rsp]
pandn mm4, qword [rsp + 0x12]
pandn mm4, qword [rsp + 0x1234]
pandn mm4, qword [rsp + 0x12345678]
pandn mm4, qword [rsp + rax]
pandn mm4, qword [rsp + rbp]
pandn mm4, qword [rsp + 2*rbp]
pandn mm4, qword [rsp + 4*rbp]
pandn mm4, qword [rsp + 8*rbp]
pandn mm4, qword [rax]
pandn mm4, qword [rcx]
pandn mm4, qword [rdx]
pandn mm4, qword [rbx]
pandn mm4, qword [rsp]
pandn mm4, qword [rbp]
pandn mm4, qword [rsi]
pandn mm4, qword [rdi]
pandn mm4, qword [rax + 2*rax]
pandn mm4, qword [rcx + 2*rcx]
pandn mm4, qword [rdx + 2*rdx]
pandn mm4, qword [rbx + 2*rbx]
pandn mm4, qword [rbp + 2*rbp]
pandn mm4, qword [rsi + 2*rsi]
pandn mm4, qword [rdi + 2*rdi]
pandn mm5, qword [rip + 0x13]
pandn mm5, qword [rip + 0x1235]
pandn mm5, qword [rip + 0x12345679]
pandn mm5, qword [rbx]
pandn mm5, qword [rcx + 0x14]
pandn mm5, qword [rdx + 0x15]
pandn mm5, qword [rbx + 0x1235]
pandn mm5, qword [rbx + 0x12345679]
pandn mm5, qword [rbx + rcx]
pandn mm5, qword [rbx + 4 * rcx]
pandn mm5, qword [rbx + rcx + 0x13]
pandn mm5, qword [rbx + rcx + 0x1235]
pandn mm5, qword [rbx + rcx + 0x12345679]
pandn mm5, qword [rbx + 4 * rcx + 0x13]
pandn mm5, qword [rbx + 4 * rcx + 0x1235]
pandn mm5, qword [rbx + 8 * rcx + 0x12345679]
pandn mm5, qword [4 * rcx]
pandn mm5, qword [4 * rcx + 0x13]
pandn mm5, qword [4 * rcx + 0x1235]
pandn mm5, qword [4 * rcx + 0x12345679]
pandn mm5, qword [rbp]
pandn mm5, qword [rbp + 0x12]
pandn mm5, qword [rbp + 0x1234]
pandn mm5, qword [rbp + 0x12345678]
pandn mm5, qword [4 * rbp]
pandn mm5, qword [4 * rbp + 0x12]
pandn mm5, qword [4 * rbp + 0x1234]
pandn mm5, qword [4 * rbp + 0x12345678]
pandn mm5, qword [rbx + 4 * rbp]
pandn mm5, qword [rbx + 4 * rbp + 0x12]
pandn mm5, qword [rbx + 4 * rbp + 0x1234]
pandn mm5, qword [rbx + 4 * rbp + 0x12345678]
pandn mm5, qword [rsp]
pandn mm5, qword [rsp + 0x12]
pandn mm5, qword [rsp + 0x1234]
pandn mm5, qword [rsp + 0x12345678]
pandn mm5, qword [rsp + rax]
pandn mm5, qword [rsp + rbp]
pandn mm5, qword [rsp + 2*rbp]
pandn mm5, qword [rsp + 4*rbp]
pandn mm5, qword [rsp + 8*rbp]
pandn mm5, qword [rax]
pandn mm5, qword [rcx]
pandn mm5, qword [rdx]
pandn mm5, qword [rbx]
pandn mm5, qword [rsp]
pandn mm5, qword [rbp]
pandn mm5, qword [rsi]
pandn mm5, qword [rdi]
pandn mm5, qword [rax + 2*rax]
pandn mm5, qword [rcx + 2*rcx]
pandn mm5, qword [rdx + 2*rdx]
pandn mm5, qword [rbx + 2*rbx]
pandn mm5, qword [rbp + 2*rbp]
pandn mm5, qword [rsi + 2*rsi]
pandn mm5, qword [rdi + 2*rdi]
pandn mm6, qword [rip + 0x13]
pandn mm6, qword [rip + 0x1235]
pandn mm6, qword [rip + 0x12345679]
pandn mm6, qword [rbx]
pandn mm6, qword [rcx + 0x14]
pandn mm6, qword [rdx + 0x15]
pandn mm6, qword [rbx + 0x1235]
pandn mm6, qword [rbx + 0x12345679]
pandn mm6, qword [rbx + rcx]
pandn mm6, qword [rbx + 4 * rcx]
pandn mm6, qword [rbx + rcx + 0x13]
pandn mm6, qword [rbx + rcx + 0x1235]
pandn mm6, qword [rbx + rcx + 0x12345679]
pandn mm6, qword [rbx + 4 * rcx + 0x13]
pandn mm6, qword [rbx + 4 * rcx + 0x1235]
pandn mm6, qword [rbx + 8 * rcx + 0x12345679]
pandn mm6, qword [4 * rcx]
pandn mm6, qword [4 * rcx + 0x13]
pandn mm6, qword [4 * rcx + 0x1235]
pandn mm6, qword [4 * rcx + 0x12345679]
pandn mm6, qword [rbp]
pandn mm6, qword [rbp + 0x12]
pandn mm6, qword [rbp + 0x1234]
pandn mm6, qword [rbp + 0x12345678]
pandn mm6, qword [4 * rbp]
pandn mm6, qword [4 * rbp + 0x12]
pandn mm6, qword [4 * rbp + 0x1234]
pandn mm6, qword [4 * rbp + 0x12345678]
pandn mm6, qword [rbx + 4 * rbp]
pandn mm6, qword [rbx + 4 * rbp + 0x12]
pandn mm6, qword [rbx + 4 * rbp + 0x1234]
pandn mm6, qword [rbx + 4 * rbp + 0x12345678]
pandn mm6, qword [rsp]
pandn mm6, qword [rsp + 0x12]
pandn mm6, qword [rsp + 0x1234]
pandn mm6, qword [rsp + 0x12345678]
pandn mm6, qword [rsp + rax]
pandn mm6, qword [rsp + rbp]
pandn mm6, qword [rsp + 2*rbp]
pandn mm6, qword [rsp + 4*rbp]
pandn mm6, qword [rsp + 8*rbp]
pandn mm6, qword [rax]
pandn mm6, qword [rcx]
pandn mm6, qword [rdx]
pandn mm6, qword [rbx]
pandn mm6, qword [rsp]
pandn mm6, qword [rbp]
pandn mm6, qword [rsi]
pandn mm6, qword [rdi]
pandn mm6, qword [rax + 2*rax]
pandn mm6, qword [rcx + 2*rcx]
pandn mm6, qword [rdx + 2*rdx]
pandn mm6, qword [rbx + 2*rbx]
pandn mm6, qword [rbp + 2*rbp]
pandn mm6, qword [rsi + 2*rsi]
pandn mm6, qword [rdi + 2*rdi]
pandn mm7, qword [rip + 0x13]
pandn mm7, qword [rip + 0x1235]
pandn mm7, qword [rip + 0x12345679]
pandn mm7, qword [rbx]
pandn mm7, qword [rcx + 0x14]
pandn mm7, qword [rdx + 0x15]
pandn mm7, qword [rbx + 0x1235]
pandn mm7, qword [rbx + 0x12345679]
pandn mm7, qword [rbx + rcx]
pandn mm7, qword [rbx + 4 * rcx]
pandn mm7, qword [rbx + rcx + 0x13]
pandn mm7, qword [rbx + rcx + 0x1235]
pandn mm7, qword [rbx + rcx + 0x12345679]
pandn mm7, qword [rbx + 4 * rcx + 0x13]
pandn mm7, qword [rbx + 4 * rcx + 0x1235]
pandn mm7, qword [rbx + 8 * rcx + 0x12345679]
pandn mm7, qword [4 * rcx]
pandn mm7, qword [4 * rcx + 0x13]
pandn mm7, qword [4 * rcx + 0x1235]
pandn mm7, qword [4 * rcx + 0x12345679]
pandn mm7, qword [rbp]
pandn mm7, qword [rbp + 0x12]
pandn mm7, qword [rbp + 0x1234]
pandn mm7, qword [rbp + 0x12345678]
pandn mm7, qword [4 * rbp]
pandn mm7, qword [4 * rbp + 0x12]
pandn mm7, qword [4 * rbp + 0x1234]
pandn mm7, qword [4 * rbp + 0x12345678]
pandn mm7, qword [rbx + 4 * rbp]
pandn mm7, qword [rbx + 4 * rbp + 0x12]
pandn mm7, qword [rbx + 4 * rbp + 0x1234]
pandn mm7, qword [rbx + 4 * rbp + 0x12345678]
pandn mm7, qword [rsp]
pandn mm7, qword [rsp + 0x12]
pandn mm7, qword [rsp + 0x1234]
pandn mm7, qword [rsp + 0x12345678]
pandn mm7, qword [rsp + rax]
pandn mm7, qword [rsp + rbp]
pandn mm7, qword [rsp + 2*rbp]
pandn mm7, qword [rsp + 4*rbp]
pandn mm7, qword [rsp + 8*rbp]
pandn mm7, qword [rax]
pandn mm7, qword [rcx]
pandn mm7, qword [rdx]
pandn mm7, qword [rbx]
pandn mm7, qword [rsp]
pandn mm7, qword [rbp]
pandn mm7, qword [rsi]
pandn mm7, qword [rdi]
pandn mm7, qword [rax + 2*rax]
pandn mm7, qword [rcx + 2*rcx]
pandn mm7, qword [rdx + 2*rdx]
pandn mm7, qword [rbx + 2*rbx]
pandn mm7, qword [rbp + 2*rbp]
pandn mm7, qword [rsi + 2*rsi]
pandn mm7, qword [rdi + 2*rdi]

