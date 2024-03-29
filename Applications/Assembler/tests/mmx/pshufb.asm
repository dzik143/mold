use64
; ------------------------------------------------------------------------------
; opcode mm,mm
; ------------------------------------------------------------------------------
pshufb mm0, mm0
pshufb mm0, mm1
pshufb mm0, mm2
pshufb mm0, mm3
pshufb mm0, mm4
pshufb mm0, mm5
pshufb mm0, mm6
pshufb mm0, mm7
pshufb mm1, mm0
pshufb mm1, mm1
pshufb mm1, mm2
pshufb mm1, mm3
pshufb mm1, mm4
pshufb mm1, mm5
pshufb mm1, mm6
pshufb mm1, mm7
pshufb mm2, mm0
pshufb mm2, mm1
pshufb mm2, mm2
pshufb mm2, mm3
pshufb mm2, mm4
pshufb mm2, mm5
pshufb mm2, mm6
pshufb mm2, mm7
pshufb mm3, mm0
pshufb mm3, mm1
pshufb mm3, mm2
pshufb mm3, mm3
pshufb mm3, mm4
pshufb mm3, mm5
pshufb mm3, mm6
pshufb mm3, mm7
pshufb mm4, mm0
pshufb mm4, mm1
pshufb mm4, mm2
pshufb mm4, mm3
pshufb mm4, mm4
pshufb mm4, mm5
pshufb mm4, mm6
pshufb mm4, mm7
pshufb mm5, mm0
pshufb mm5, mm1
pshufb mm5, mm2
pshufb mm5, mm3
pshufb mm5, mm4
pshufb mm5, mm5
pshufb mm5, mm6
pshufb mm5, mm7
pshufb mm6, mm0
pshufb mm6, mm1
pshufb mm6, mm2
pshufb mm6, mm3
pshufb mm6, mm4
pshufb mm6, mm5
pshufb mm6, mm6
pshufb mm6, mm7
pshufb mm7, mm0
pshufb mm7, mm1
pshufb mm7, mm2
pshufb mm7, mm3
pshufb mm7, mm4
pshufb mm7, mm5
pshufb mm7, mm6
pshufb mm7, mm7

; ------------------------------------------------------------------------------
; opcode mm,m64
; ------------------------------------------------------------------------------
pshufb mm0, qword [rip + 0x13]
pshufb mm0, qword [rip + 0x1235]
pshufb mm0, qword [rip + 0x12345679]
pshufb mm0, qword [rbx]
pshufb mm0, qword [rcx + 0x14]
pshufb mm0, qword [rdx + 0x15]
pshufb mm0, qword [rbx + 0x1235]
pshufb mm0, qword [rbx + 0x12345679]
pshufb mm0, qword [rbx + rcx]
pshufb mm0, qword [rbx + 4 * rcx]
pshufb mm0, qword [rbx + rcx + 0x13]
pshufb mm0, qword [rbx + rcx + 0x1235]
pshufb mm0, qword [rbx + rcx + 0x12345679]
pshufb mm0, qword [rbx + 4 * rcx + 0x13]
pshufb mm0, qword [rbx + 4 * rcx + 0x1235]
pshufb mm0, qword [rbx + 8 * rcx + 0x12345679]
pshufb mm0, qword [4 * rcx]
pshufb mm0, qword [4 * rcx + 0x13]
pshufb mm0, qword [4 * rcx + 0x1235]
pshufb mm0, qword [4 * rcx + 0x12345679]
pshufb mm0, qword [rbp]
pshufb mm0, qword [rbp + 0x12]
pshufb mm0, qword [rbp + 0x1234]
pshufb mm0, qword [rbp + 0x12345678]
pshufb mm0, qword [4 * rbp]
pshufb mm0, qword [4 * rbp + 0x12]
pshufb mm0, qword [4 * rbp + 0x1234]
pshufb mm0, qword [4 * rbp + 0x12345678]
pshufb mm0, qword [rbx + 4 * rbp]
pshufb mm0, qword [rbx + 4 * rbp + 0x12]
pshufb mm0, qword [rbx + 4 * rbp + 0x1234]
pshufb mm0, qword [rbx + 4 * rbp + 0x12345678]
pshufb mm0, qword [rsp]
pshufb mm0, qword [rsp + 0x12]
pshufb mm0, qword [rsp + 0x1234]
pshufb mm0, qword [rsp + 0x12345678]
pshufb mm0, qword [rsp + rax]
pshufb mm0, qword [rsp + rbp]
pshufb mm0, qword [rsp + 2*rbp]
pshufb mm0, qword [rsp + 4*rbp]
pshufb mm0, qword [rsp + 8*rbp]
pshufb mm0, qword [rax]
pshufb mm0, qword [rcx]
pshufb mm0, qword [rdx]
pshufb mm0, qword [rbx]
pshufb mm0, qword [rsp]
pshufb mm0, qword [rbp]
pshufb mm0, qword [rsi]
pshufb mm0, qword [rdi]
pshufb mm0, qword [rax + 2*rax]
pshufb mm0, qword [rcx + 2*rcx]
pshufb mm0, qword [rdx + 2*rdx]
pshufb mm0, qword [rbx + 2*rbx]
pshufb mm0, qword [rbp + 2*rbp]
pshufb mm0, qword [rsi + 2*rsi]
pshufb mm0, qword [rdi + 2*rdi]
pshufb mm1, qword [rip + 0x13]
pshufb mm1, qword [rip + 0x1235]
pshufb mm1, qword [rip + 0x12345679]
pshufb mm1, qword [rbx]
pshufb mm1, qword [rcx + 0x14]
pshufb mm1, qword [rdx + 0x15]
pshufb mm1, qword [rbx + 0x1235]
pshufb mm1, qword [rbx + 0x12345679]
pshufb mm1, qword [rbx + rcx]
pshufb mm1, qword [rbx + 4 * rcx]
pshufb mm1, qword [rbx + rcx + 0x13]
pshufb mm1, qword [rbx + rcx + 0x1235]
pshufb mm1, qword [rbx + rcx + 0x12345679]
pshufb mm1, qword [rbx + 4 * rcx + 0x13]
pshufb mm1, qword [rbx + 4 * rcx + 0x1235]
pshufb mm1, qword [rbx + 8 * rcx + 0x12345679]
pshufb mm1, qword [4 * rcx]
pshufb mm1, qword [4 * rcx + 0x13]
pshufb mm1, qword [4 * rcx + 0x1235]
pshufb mm1, qword [4 * rcx + 0x12345679]
pshufb mm1, qword [rbp]
pshufb mm1, qword [rbp + 0x12]
pshufb mm1, qword [rbp + 0x1234]
pshufb mm1, qword [rbp + 0x12345678]
pshufb mm1, qword [4 * rbp]
pshufb mm1, qword [4 * rbp + 0x12]
pshufb mm1, qword [4 * rbp + 0x1234]
pshufb mm1, qword [4 * rbp + 0x12345678]
pshufb mm1, qword [rbx + 4 * rbp]
pshufb mm1, qword [rbx + 4 * rbp + 0x12]
pshufb mm1, qword [rbx + 4 * rbp + 0x1234]
pshufb mm1, qword [rbx + 4 * rbp + 0x12345678]
pshufb mm1, qword [rsp]
pshufb mm1, qword [rsp + 0x12]
pshufb mm1, qword [rsp + 0x1234]
pshufb mm1, qword [rsp + 0x12345678]
pshufb mm1, qword [rsp + rax]
pshufb mm1, qword [rsp + rbp]
pshufb mm1, qword [rsp + 2*rbp]
pshufb mm1, qword [rsp + 4*rbp]
pshufb mm1, qword [rsp + 8*rbp]
pshufb mm1, qword [rax]
pshufb mm1, qword [rcx]
pshufb mm1, qword [rdx]
pshufb mm1, qword [rbx]
pshufb mm1, qword [rsp]
pshufb mm1, qword [rbp]
pshufb mm1, qword [rsi]
pshufb mm1, qword [rdi]
pshufb mm1, qword [rax + 2*rax]
pshufb mm1, qword [rcx + 2*rcx]
pshufb mm1, qword [rdx + 2*rdx]
pshufb mm1, qword [rbx + 2*rbx]
pshufb mm1, qword [rbp + 2*rbp]
pshufb mm1, qword [rsi + 2*rsi]
pshufb mm1, qword [rdi + 2*rdi]
pshufb mm2, qword [rip + 0x13]
pshufb mm2, qword [rip + 0x1235]
pshufb mm2, qword [rip + 0x12345679]
pshufb mm2, qword [rbx]
pshufb mm2, qword [rcx + 0x14]
pshufb mm2, qword [rdx + 0x15]
pshufb mm2, qword [rbx + 0x1235]
pshufb mm2, qword [rbx + 0x12345679]
pshufb mm2, qword [rbx + rcx]
pshufb mm2, qword [rbx + 4 * rcx]
pshufb mm2, qword [rbx + rcx + 0x13]
pshufb mm2, qword [rbx + rcx + 0x1235]
pshufb mm2, qword [rbx + rcx + 0x12345679]
pshufb mm2, qword [rbx + 4 * rcx + 0x13]
pshufb mm2, qword [rbx + 4 * rcx + 0x1235]
pshufb mm2, qword [rbx + 8 * rcx + 0x12345679]
pshufb mm2, qword [4 * rcx]
pshufb mm2, qword [4 * rcx + 0x13]
pshufb mm2, qword [4 * rcx + 0x1235]
pshufb mm2, qword [4 * rcx + 0x12345679]
pshufb mm2, qword [rbp]
pshufb mm2, qword [rbp + 0x12]
pshufb mm2, qword [rbp + 0x1234]
pshufb mm2, qword [rbp + 0x12345678]
pshufb mm2, qword [4 * rbp]
pshufb mm2, qword [4 * rbp + 0x12]
pshufb mm2, qword [4 * rbp + 0x1234]
pshufb mm2, qword [4 * rbp + 0x12345678]
pshufb mm2, qword [rbx + 4 * rbp]
pshufb mm2, qword [rbx + 4 * rbp + 0x12]
pshufb mm2, qword [rbx + 4 * rbp + 0x1234]
pshufb mm2, qword [rbx + 4 * rbp + 0x12345678]
pshufb mm2, qword [rsp]
pshufb mm2, qword [rsp + 0x12]
pshufb mm2, qword [rsp + 0x1234]
pshufb mm2, qword [rsp + 0x12345678]
pshufb mm2, qword [rsp + rax]
pshufb mm2, qword [rsp + rbp]
pshufb mm2, qword [rsp + 2*rbp]
pshufb mm2, qword [rsp + 4*rbp]
pshufb mm2, qword [rsp + 8*rbp]
pshufb mm2, qword [rax]
pshufb mm2, qword [rcx]
pshufb mm2, qword [rdx]
pshufb mm2, qword [rbx]
pshufb mm2, qword [rsp]
pshufb mm2, qword [rbp]
pshufb mm2, qword [rsi]
pshufb mm2, qword [rdi]
pshufb mm2, qword [rax + 2*rax]
pshufb mm2, qword [rcx + 2*rcx]
pshufb mm2, qword [rdx + 2*rdx]
pshufb mm2, qword [rbx + 2*rbx]
pshufb mm2, qword [rbp + 2*rbp]
pshufb mm2, qword [rsi + 2*rsi]
pshufb mm2, qword [rdi + 2*rdi]
pshufb mm3, qword [rip + 0x13]
pshufb mm3, qword [rip + 0x1235]
pshufb mm3, qword [rip + 0x12345679]
pshufb mm3, qword [rbx]
pshufb mm3, qword [rcx + 0x14]
pshufb mm3, qword [rdx + 0x15]
pshufb mm3, qword [rbx + 0x1235]
pshufb mm3, qword [rbx + 0x12345679]
pshufb mm3, qword [rbx + rcx]
pshufb mm3, qword [rbx + 4 * rcx]
pshufb mm3, qword [rbx + rcx + 0x13]
pshufb mm3, qword [rbx + rcx + 0x1235]
pshufb mm3, qword [rbx + rcx + 0x12345679]
pshufb mm3, qword [rbx + 4 * rcx + 0x13]
pshufb mm3, qword [rbx + 4 * rcx + 0x1235]
pshufb mm3, qword [rbx + 8 * rcx + 0x12345679]
pshufb mm3, qword [4 * rcx]
pshufb mm3, qword [4 * rcx + 0x13]
pshufb mm3, qword [4 * rcx + 0x1235]
pshufb mm3, qword [4 * rcx + 0x12345679]
pshufb mm3, qword [rbp]
pshufb mm3, qword [rbp + 0x12]
pshufb mm3, qword [rbp + 0x1234]
pshufb mm3, qword [rbp + 0x12345678]
pshufb mm3, qword [4 * rbp]
pshufb mm3, qword [4 * rbp + 0x12]
pshufb mm3, qword [4 * rbp + 0x1234]
pshufb mm3, qword [4 * rbp + 0x12345678]
pshufb mm3, qword [rbx + 4 * rbp]
pshufb mm3, qword [rbx + 4 * rbp + 0x12]
pshufb mm3, qword [rbx + 4 * rbp + 0x1234]
pshufb mm3, qword [rbx + 4 * rbp + 0x12345678]
pshufb mm3, qword [rsp]
pshufb mm3, qword [rsp + 0x12]
pshufb mm3, qword [rsp + 0x1234]
pshufb mm3, qword [rsp + 0x12345678]
pshufb mm3, qword [rsp + rax]
pshufb mm3, qword [rsp + rbp]
pshufb mm3, qword [rsp + 2*rbp]
pshufb mm3, qword [rsp + 4*rbp]
pshufb mm3, qword [rsp + 8*rbp]
pshufb mm3, qword [rax]
pshufb mm3, qword [rcx]
pshufb mm3, qword [rdx]
pshufb mm3, qword [rbx]
pshufb mm3, qword [rsp]
pshufb mm3, qword [rbp]
pshufb mm3, qword [rsi]
pshufb mm3, qword [rdi]
pshufb mm3, qword [rax + 2*rax]
pshufb mm3, qword [rcx + 2*rcx]
pshufb mm3, qword [rdx + 2*rdx]
pshufb mm3, qword [rbx + 2*rbx]
pshufb mm3, qword [rbp + 2*rbp]
pshufb mm3, qword [rsi + 2*rsi]
pshufb mm3, qword [rdi + 2*rdi]
pshufb mm4, qword [rip + 0x13]
pshufb mm4, qword [rip + 0x1235]
pshufb mm4, qword [rip + 0x12345679]
pshufb mm4, qword [rbx]
pshufb mm4, qword [rcx + 0x14]
pshufb mm4, qword [rdx + 0x15]
pshufb mm4, qword [rbx + 0x1235]
pshufb mm4, qword [rbx + 0x12345679]
pshufb mm4, qword [rbx + rcx]
pshufb mm4, qword [rbx + 4 * rcx]
pshufb mm4, qword [rbx + rcx + 0x13]
pshufb mm4, qword [rbx + rcx + 0x1235]
pshufb mm4, qword [rbx + rcx + 0x12345679]
pshufb mm4, qword [rbx + 4 * rcx + 0x13]
pshufb mm4, qword [rbx + 4 * rcx + 0x1235]
pshufb mm4, qword [rbx + 8 * rcx + 0x12345679]
pshufb mm4, qword [4 * rcx]
pshufb mm4, qword [4 * rcx + 0x13]
pshufb mm4, qword [4 * rcx + 0x1235]
pshufb mm4, qword [4 * rcx + 0x12345679]
pshufb mm4, qword [rbp]
pshufb mm4, qword [rbp + 0x12]
pshufb mm4, qword [rbp + 0x1234]
pshufb mm4, qword [rbp + 0x12345678]
pshufb mm4, qword [4 * rbp]
pshufb mm4, qword [4 * rbp + 0x12]
pshufb mm4, qword [4 * rbp + 0x1234]
pshufb mm4, qword [4 * rbp + 0x12345678]
pshufb mm4, qword [rbx + 4 * rbp]
pshufb mm4, qword [rbx + 4 * rbp + 0x12]
pshufb mm4, qword [rbx + 4 * rbp + 0x1234]
pshufb mm4, qword [rbx + 4 * rbp + 0x12345678]
pshufb mm4, qword [rsp]
pshufb mm4, qword [rsp + 0x12]
pshufb mm4, qword [rsp + 0x1234]
pshufb mm4, qword [rsp + 0x12345678]
pshufb mm4, qword [rsp + rax]
pshufb mm4, qword [rsp + rbp]
pshufb mm4, qword [rsp + 2*rbp]
pshufb mm4, qword [rsp + 4*rbp]
pshufb mm4, qword [rsp + 8*rbp]
pshufb mm4, qword [rax]
pshufb mm4, qword [rcx]
pshufb mm4, qword [rdx]
pshufb mm4, qword [rbx]
pshufb mm4, qword [rsp]
pshufb mm4, qword [rbp]
pshufb mm4, qword [rsi]
pshufb mm4, qword [rdi]
pshufb mm4, qword [rax + 2*rax]
pshufb mm4, qword [rcx + 2*rcx]
pshufb mm4, qword [rdx + 2*rdx]
pshufb mm4, qword [rbx + 2*rbx]
pshufb mm4, qword [rbp + 2*rbp]
pshufb mm4, qword [rsi + 2*rsi]
pshufb mm4, qword [rdi + 2*rdi]
pshufb mm5, qword [rip + 0x13]
pshufb mm5, qword [rip + 0x1235]
pshufb mm5, qword [rip + 0x12345679]
pshufb mm5, qword [rbx]
pshufb mm5, qword [rcx + 0x14]
pshufb mm5, qword [rdx + 0x15]
pshufb mm5, qword [rbx + 0x1235]
pshufb mm5, qword [rbx + 0x12345679]
pshufb mm5, qword [rbx + rcx]
pshufb mm5, qword [rbx + 4 * rcx]
pshufb mm5, qword [rbx + rcx + 0x13]
pshufb mm5, qword [rbx + rcx + 0x1235]
pshufb mm5, qword [rbx + rcx + 0x12345679]
pshufb mm5, qword [rbx + 4 * rcx + 0x13]
pshufb mm5, qword [rbx + 4 * rcx + 0x1235]
pshufb mm5, qword [rbx + 8 * rcx + 0x12345679]
pshufb mm5, qword [4 * rcx]
pshufb mm5, qword [4 * rcx + 0x13]
pshufb mm5, qword [4 * rcx + 0x1235]
pshufb mm5, qword [4 * rcx + 0x12345679]
pshufb mm5, qword [rbp]
pshufb mm5, qword [rbp + 0x12]
pshufb mm5, qword [rbp + 0x1234]
pshufb mm5, qword [rbp + 0x12345678]
pshufb mm5, qword [4 * rbp]
pshufb mm5, qword [4 * rbp + 0x12]
pshufb mm5, qword [4 * rbp + 0x1234]
pshufb mm5, qword [4 * rbp + 0x12345678]
pshufb mm5, qword [rbx + 4 * rbp]
pshufb mm5, qword [rbx + 4 * rbp + 0x12]
pshufb mm5, qword [rbx + 4 * rbp + 0x1234]
pshufb mm5, qword [rbx + 4 * rbp + 0x12345678]
pshufb mm5, qword [rsp]
pshufb mm5, qword [rsp + 0x12]
pshufb mm5, qword [rsp + 0x1234]
pshufb mm5, qword [rsp + 0x12345678]
pshufb mm5, qword [rsp + rax]
pshufb mm5, qword [rsp + rbp]
pshufb mm5, qword [rsp + 2*rbp]
pshufb mm5, qword [rsp + 4*rbp]
pshufb mm5, qword [rsp + 8*rbp]
pshufb mm5, qword [rax]
pshufb mm5, qword [rcx]
pshufb mm5, qword [rdx]
pshufb mm5, qword [rbx]
pshufb mm5, qword [rsp]
pshufb mm5, qword [rbp]
pshufb mm5, qword [rsi]
pshufb mm5, qword [rdi]
pshufb mm5, qword [rax + 2*rax]
pshufb mm5, qword [rcx + 2*rcx]
pshufb mm5, qword [rdx + 2*rdx]
pshufb mm5, qword [rbx + 2*rbx]
pshufb mm5, qword [rbp + 2*rbp]
pshufb mm5, qword [rsi + 2*rsi]
pshufb mm5, qword [rdi + 2*rdi]
pshufb mm6, qword [rip + 0x13]
pshufb mm6, qword [rip + 0x1235]
pshufb mm6, qword [rip + 0x12345679]
pshufb mm6, qword [rbx]
pshufb mm6, qword [rcx + 0x14]
pshufb mm6, qword [rdx + 0x15]
pshufb mm6, qword [rbx + 0x1235]
pshufb mm6, qword [rbx + 0x12345679]
pshufb mm6, qword [rbx + rcx]
pshufb mm6, qword [rbx + 4 * rcx]
pshufb mm6, qword [rbx + rcx + 0x13]
pshufb mm6, qword [rbx + rcx + 0x1235]
pshufb mm6, qword [rbx + rcx + 0x12345679]
pshufb mm6, qword [rbx + 4 * rcx + 0x13]
pshufb mm6, qword [rbx + 4 * rcx + 0x1235]
pshufb mm6, qword [rbx + 8 * rcx + 0x12345679]
pshufb mm6, qword [4 * rcx]
pshufb mm6, qword [4 * rcx + 0x13]
pshufb mm6, qword [4 * rcx + 0x1235]
pshufb mm6, qword [4 * rcx + 0x12345679]
pshufb mm6, qword [rbp]
pshufb mm6, qword [rbp + 0x12]
pshufb mm6, qword [rbp + 0x1234]
pshufb mm6, qword [rbp + 0x12345678]
pshufb mm6, qword [4 * rbp]
pshufb mm6, qword [4 * rbp + 0x12]
pshufb mm6, qword [4 * rbp + 0x1234]
pshufb mm6, qword [4 * rbp + 0x12345678]
pshufb mm6, qword [rbx + 4 * rbp]
pshufb mm6, qword [rbx + 4 * rbp + 0x12]
pshufb mm6, qword [rbx + 4 * rbp + 0x1234]
pshufb mm6, qword [rbx + 4 * rbp + 0x12345678]
pshufb mm6, qword [rsp]
pshufb mm6, qword [rsp + 0x12]
pshufb mm6, qword [rsp + 0x1234]
pshufb mm6, qword [rsp + 0x12345678]
pshufb mm6, qword [rsp + rax]
pshufb mm6, qword [rsp + rbp]
pshufb mm6, qword [rsp + 2*rbp]
pshufb mm6, qword [rsp + 4*rbp]
pshufb mm6, qword [rsp + 8*rbp]
pshufb mm6, qword [rax]
pshufb mm6, qword [rcx]
pshufb mm6, qword [rdx]
pshufb mm6, qword [rbx]
pshufb mm6, qword [rsp]
pshufb mm6, qword [rbp]
pshufb mm6, qword [rsi]
pshufb mm6, qword [rdi]
pshufb mm6, qword [rax + 2*rax]
pshufb mm6, qword [rcx + 2*rcx]
pshufb mm6, qword [rdx + 2*rdx]
pshufb mm6, qword [rbx + 2*rbx]
pshufb mm6, qword [rbp + 2*rbp]
pshufb mm6, qword [rsi + 2*rsi]
pshufb mm6, qword [rdi + 2*rdi]
pshufb mm7, qword [rip + 0x13]
pshufb mm7, qword [rip + 0x1235]
pshufb mm7, qword [rip + 0x12345679]
pshufb mm7, qword [rbx]
pshufb mm7, qword [rcx + 0x14]
pshufb mm7, qword [rdx + 0x15]
pshufb mm7, qword [rbx + 0x1235]
pshufb mm7, qword [rbx + 0x12345679]
pshufb mm7, qword [rbx + rcx]
pshufb mm7, qword [rbx + 4 * rcx]
pshufb mm7, qword [rbx + rcx + 0x13]
pshufb mm7, qword [rbx + rcx + 0x1235]
pshufb mm7, qword [rbx + rcx + 0x12345679]
pshufb mm7, qword [rbx + 4 * rcx + 0x13]
pshufb mm7, qword [rbx + 4 * rcx + 0x1235]
pshufb mm7, qword [rbx + 8 * rcx + 0x12345679]
pshufb mm7, qword [4 * rcx]
pshufb mm7, qword [4 * rcx + 0x13]
pshufb mm7, qword [4 * rcx + 0x1235]
pshufb mm7, qword [4 * rcx + 0x12345679]
pshufb mm7, qword [rbp]
pshufb mm7, qword [rbp + 0x12]
pshufb mm7, qword [rbp + 0x1234]
pshufb mm7, qword [rbp + 0x12345678]
pshufb mm7, qword [4 * rbp]
pshufb mm7, qword [4 * rbp + 0x12]
pshufb mm7, qword [4 * rbp + 0x1234]
pshufb mm7, qword [4 * rbp + 0x12345678]
pshufb mm7, qword [rbx + 4 * rbp]
pshufb mm7, qword [rbx + 4 * rbp + 0x12]
pshufb mm7, qword [rbx + 4 * rbp + 0x1234]
pshufb mm7, qword [rbx + 4 * rbp + 0x12345678]
pshufb mm7, qword [rsp]
pshufb mm7, qword [rsp + 0x12]
pshufb mm7, qword [rsp + 0x1234]
pshufb mm7, qword [rsp + 0x12345678]
pshufb mm7, qword [rsp + rax]
pshufb mm7, qword [rsp + rbp]
pshufb mm7, qword [rsp + 2*rbp]
pshufb mm7, qword [rsp + 4*rbp]
pshufb mm7, qword [rsp + 8*rbp]
pshufb mm7, qword [rax]
pshufb mm7, qword [rcx]
pshufb mm7, qword [rdx]
pshufb mm7, qword [rbx]
pshufb mm7, qword [rsp]
pshufb mm7, qword [rbp]
pshufb mm7, qword [rsi]
pshufb mm7, qword [rdi]
pshufb mm7, qword [rax + 2*rax]
pshufb mm7, qword [rcx + 2*rcx]
pshufb mm7, qword [rdx + 2*rdx]
pshufb mm7, qword [rbx + 2*rbx]
pshufb mm7, qword [rbp + 2*rbp]
pshufb mm7, qword [rsi + 2*rsi]
pshufb mm7, qword [rdi + 2*rdi]

