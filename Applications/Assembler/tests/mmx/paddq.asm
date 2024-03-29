use64
; ------------------------------------------------------------------------------
; opcode mm,mm
; ------------------------------------------------------------------------------
paddq mm0, mm0
paddq mm0, mm1
paddq mm0, mm2
paddq mm0, mm3
paddq mm0, mm4
paddq mm0, mm5
paddq mm0, mm6
paddq mm0, mm7
paddq mm1, mm0
paddq mm1, mm1
paddq mm1, mm2
paddq mm1, mm3
paddq mm1, mm4
paddq mm1, mm5
paddq mm1, mm6
paddq mm1, mm7
paddq mm2, mm0
paddq mm2, mm1
paddq mm2, mm2
paddq mm2, mm3
paddq mm2, mm4
paddq mm2, mm5
paddq mm2, mm6
paddq mm2, mm7
paddq mm3, mm0
paddq mm3, mm1
paddq mm3, mm2
paddq mm3, mm3
paddq mm3, mm4
paddq mm3, mm5
paddq mm3, mm6
paddq mm3, mm7
paddq mm4, mm0
paddq mm4, mm1
paddq mm4, mm2
paddq mm4, mm3
paddq mm4, mm4
paddq mm4, mm5
paddq mm4, mm6
paddq mm4, mm7
paddq mm5, mm0
paddq mm5, mm1
paddq mm5, mm2
paddq mm5, mm3
paddq mm5, mm4
paddq mm5, mm5
paddq mm5, mm6
paddq mm5, mm7
paddq mm6, mm0
paddq mm6, mm1
paddq mm6, mm2
paddq mm6, mm3
paddq mm6, mm4
paddq mm6, mm5
paddq mm6, mm6
paddq mm6, mm7
paddq mm7, mm0
paddq mm7, mm1
paddq mm7, mm2
paddq mm7, mm3
paddq mm7, mm4
paddq mm7, mm5
paddq mm7, mm6
paddq mm7, mm7

; ------------------------------------------------------------------------------
; opcode mm,m64
; ------------------------------------------------------------------------------
paddq mm0, qword [rip + 0x13]
paddq mm0, qword [rip + 0x1235]
paddq mm0, qword [rip + 0x12345679]
paddq mm0, qword [rbx]
paddq mm0, qword [rcx + 0x14]
paddq mm0, qword [rdx + 0x15]
paddq mm0, qword [rbx + 0x1235]
paddq mm0, qword [rbx + 0x12345679]
paddq mm0, qword [rbx + rcx]
paddq mm0, qword [rbx + 4 * rcx]
paddq mm0, qword [rbx + rcx + 0x13]
paddq mm0, qword [rbx + rcx + 0x1235]
paddq mm0, qword [rbx + rcx + 0x12345679]
paddq mm0, qword [rbx + 4 * rcx + 0x13]
paddq mm0, qword [rbx + 4 * rcx + 0x1235]
paddq mm0, qword [rbx + 8 * rcx + 0x12345679]
paddq mm0, qword [4 * rcx]
paddq mm0, qword [4 * rcx + 0x13]
paddq mm0, qword [4 * rcx + 0x1235]
paddq mm0, qword [4 * rcx + 0x12345679]
paddq mm0, qword [rbp]
paddq mm0, qword [rbp + 0x12]
paddq mm0, qword [rbp + 0x1234]
paddq mm0, qword [rbp + 0x12345678]
paddq mm0, qword [4 * rbp]
paddq mm0, qword [4 * rbp + 0x12]
paddq mm0, qword [4 * rbp + 0x1234]
paddq mm0, qword [4 * rbp + 0x12345678]
paddq mm0, qword [rbx + 4 * rbp]
paddq mm0, qword [rbx + 4 * rbp + 0x12]
paddq mm0, qword [rbx + 4 * rbp + 0x1234]
paddq mm0, qword [rbx + 4 * rbp + 0x12345678]
paddq mm0, qword [rsp]
paddq mm0, qword [rsp + 0x12]
paddq mm0, qword [rsp + 0x1234]
paddq mm0, qword [rsp + 0x12345678]
paddq mm0, qword [rsp + rax]
paddq mm0, qword [rsp + rbp]
paddq mm0, qword [rsp + 2*rbp]
paddq mm0, qword [rsp + 4*rbp]
paddq mm0, qword [rsp + 8*rbp]
paddq mm0, qword [rax]
paddq mm0, qword [rcx]
paddq mm0, qword [rdx]
paddq mm0, qword [rbx]
paddq mm0, qword [rsp]
paddq mm0, qword [rbp]
paddq mm0, qword [rsi]
paddq mm0, qword [rdi]
paddq mm0, qword [rax + 2*rax]
paddq mm0, qword [rcx + 2*rcx]
paddq mm0, qword [rdx + 2*rdx]
paddq mm0, qword [rbx + 2*rbx]
paddq mm0, qword [rbp + 2*rbp]
paddq mm0, qword [rsi + 2*rsi]
paddq mm0, qword [rdi + 2*rdi]
paddq mm1, qword [rip + 0x13]
paddq mm1, qword [rip + 0x1235]
paddq mm1, qword [rip + 0x12345679]
paddq mm1, qword [rbx]
paddq mm1, qword [rcx + 0x14]
paddq mm1, qword [rdx + 0x15]
paddq mm1, qword [rbx + 0x1235]
paddq mm1, qword [rbx + 0x12345679]
paddq mm1, qword [rbx + rcx]
paddq mm1, qword [rbx + 4 * rcx]
paddq mm1, qword [rbx + rcx + 0x13]
paddq mm1, qword [rbx + rcx + 0x1235]
paddq mm1, qword [rbx + rcx + 0x12345679]
paddq mm1, qword [rbx + 4 * rcx + 0x13]
paddq mm1, qword [rbx + 4 * rcx + 0x1235]
paddq mm1, qword [rbx + 8 * rcx + 0x12345679]
paddq mm1, qword [4 * rcx]
paddq mm1, qword [4 * rcx + 0x13]
paddq mm1, qword [4 * rcx + 0x1235]
paddq mm1, qword [4 * rcx + 0x12345679]
paddq mm1, qword [rbp]
paddq mm1, qword [rbp + 0x12]
paddq mm1, qword [rbp + 0x1234]
paddq mm1, qword [rbp + 0x12345678]
paddq mm1, qword [4 * rbp]
paddq mm1, qword [4 * rbp + 0x12]
paddq mm1, qword [4 * rbp + 0x1234]
paddq mm1, qword [4 * rbp + 0x12345678]
paddq mm1, qword [rbx + 4 * rbp]
paddq mm1, qword [rbx + 4 * rbp + 0x12]
paddq mm1, qword [rbx + 4 * rbp + 0x1234]
paddq mm1, qword [rbx + 4 * rbp + 0x12345678]
paddq mm1, qword [rsp]
paddq mm1, qword [rsp + 0x12]
paddq mm1, qword [rsp + 0x1234]
paddq mm1, qword [rsp + 0x12345678]
paddq mm1, qword [rsp + rax]
paddq mm1, qword [rsp + rbp]
paddq mm1, qword [rsp + 2*rbp]
paddq mm1, qword [rsp + 4*rbp]
paddq mm1, qword [rsp + 8*rbp]
paddq mm1, qword [rax]
paddq mm1, qword [rcx]
paddq mm1, qword [rdx]
paddq mm1, qword [rbx]
paddq mm1, qword [rsp]
paddq mm1, qword [rbp]
paddq mm1, qword [rsi]
paddq mm1, qword [rdi]
paddq mm1, qword [rax + 2*rax]
paddq mm1, qword [rcx + 2*rcx]
paddq mm1, qword [rdx + 2*rdx]
paddq mm1, qword [rbx + 2*rbx]
paddq mm1, qword [rbp + 2*rbp]
paddq mm1, qword [rsi + 2*rsi]
paddq mm1, qword [rdi + 2*rdi]
paddq mm2, qword [rip + 0x13]
paddq mm2, qword [rip + 0x1235]
paddq mm2, qword [rip + 0x12345679]
paddq mm2, qword [rbx]
paddq mm2, qword [rcx + 0x14]
paddq mm2, qword [rdx + 0x15]
paddq mm2, qword [rbx + 0x1235]
paddq mm2, qword [rbx + 0x12345679]
paddq mm2, qword [rbx + rcx]
paddq mm2, qword [rbx + 4 * rcx]
paddq mm2, qword [rbx + rcx + 0x13]
paddq mm2, qword [rbx + rcx + 0x1235]
paddq mm2, qword [rbx + rcx + 0x12345679]
paddq mm2, qword [rbx + 4 * rcx + 0x13]
paddq mm2, qword [rbx + 4 * rcx + 0x1235]
paddq mm2, qword [rbx + 8 * rcx + 0x12345679]
paddq mm2, qword [4 * rcx]
paddq mm2, qword [4 * rcx + 0x13]
paddq mm2, qword [4 * rcx + 0x1235]
paddq mm2, qword [4 * rcx + 0x12345679]
paddq mm2, qword [rbp]
paddq mm2, qword [rbp + 0x12]
paddq mm2, qword [rbp + 0x1234]
paddq mm2, qword [rbp + 0x12345678]
paddq mm2, qword [4 * rbp]
paddq mm2, qword [4 * rbp + 0x12]
paddq mm2, qword [4 * rbp + 0x1234]
paddq mm2, qword [4 * rbp + 0x12345678]
paddq mm2, qword [rbx + 4 * rbp]
paddq mm2, qword [rbx + 4 * rbp + 0x12]
paddq mm2, qword [rbx + 4 * rbp + 0x1234]
paddq mm2, qword [rbx + 4 * rbp + 0x12345678]
paddq mm2, qword [rsp]
paddq mm2, qword [rsp + 0x12]
paddq mm2, qword [rsp + 0x1234]
paddq mm2, qword [rsp + 0x12345678]
paddq mm2, qword [rsp + rax]
paddq mm2, qword [rsp + rbp]
paddq mm2, qword [rsp + 2*rbp]
paddq mm2, qword [rsp + 4*rbp]
paddq mm2, qword [rsp + 8*rbp]
paddq mm2, qword [rax]
paddq mm2, qword [rcx]
paddq mm2, qword [rdx]
paddq mm2, qword [rbx]
paddq mm2, qword [rsp]
paddq mm2, qword [rbp]
paddq mm2, qword [rsi]
paddq mm2, qword [rdi]
paddq mm2, qword [rax + 2*rax]
paddq mm2, qword [rcx + 2*rcx]
paddq mm2, qword [rdx + 2*rdx]
paddq mm2, qword [rbx + 2*rbx]
paddq mm2, qword [rbp + 2*rbp]
paddq mm2, qword [rsi + 2*rsi]
paddq mm2, qword [rdi + 2*rdi]
paddq mm3, qword [rip + 0x13]
paddq mm3, qword [rip + 0x1235]
paddq mm3, qword [rip + 0x12345679]
paddq mm3, qword [rbx]
paddq mm3, qword [rcx + 0x14]
paddq mm3, qword [rdx + 0x15]
paddq mm3, qword [rbx + 0x1235]
paddq mm3, qword [rbx + 0x12345679]
paddq mm3, qword [rbx + rcx]
paddq mm3, qword [rbx + 4 * rcx]
paddq mm3, qword [rbx + rcx + 0x13]
paddq mm3, qword [rbx + rcx + 0x1235]
paddq mm3, qword [rbx + rcx + 0x12345679]
paddq mm3, qword [rbx + 4 * rcx + 0x13]
paddq mm3, qword [rbx + 4 * rcx + 0x1235]
paddq mm3, qword [rbx + 8 * rcx + 0x12345679]
paddq mm3, qword [4 * rcx]
paddq mm3, qword [4 * rcx + 0x13]
paddq mm3, qword [4 * rcx + 0x1235]
paddq mm3, qword [4 * rcx + 0x12345679]
paddq mm3, qword [rbp]
paddq mm3, qword [rbp + 0x12]
paddq mm3, qword [rbp + 0x1234]
paddq mm3, qword [rbp + 0x12345678]
paddq mm3, qword [4 * rbp]
paddq mm3, qword [4 * rbp + 0x12]
paddq mm3, qword [4 * rbp + 0x1234]
paddq mm3, qword [4 * rbp + 0x12345678]
paddq mm3, qword [rbx + 4 * rbp]
paddq mm3, qword [rbx + 4 * rbp + 0x12]
paddq mm3, qword [rbx + 4 * rbp + 0x1234]
paddq mm3, qword [rbx + 4 * rbp + 0x12345678]
paddq mm3, qword [rsp]
paddq mm3, qword [rsp + 0x12]
paddq mm3, qword [rsp + 0x1234]
paddq mm3, qword [rsp + 0x12345678]
paddq mm3, qword [rsp + rax]
paddq mm3, qword [rsp + rbp]
paddq mm3, qword [rsp + 2*rbp]
paddq mm3, qword [rsp + 4*rbp]
paddq mm3, qword [rsp + 8*rbp]
paddq mm3, qword [rax]
paddq mm3, qword [rcx]
paddq mm3, qword [rdx]
paddq mm3, qword [rbx]
paddq mm3, qword [rsp]
paddq mm3, qword [rbp]
paddq mm3, qword [rsi]
paddq mm3, qword [rdi]
paddq mm3, qword [rax + 2*rax]
paddq mm3, qword [rcx + 2*rcx]
paddq mm3, qword [rdx + 2*rdx]
paddq mm3, qword [rbx + 2*rbx]
paddq mm3, qword [rbp + 2*rbp]
paddq mm3, qword [rsi + 2*rsi]
paddq mm3, qword [rdi + 2*rdi]
paddq mm4, qword [rip + 0x13]
paddq mm4, qword [rip + 0x1235]
paddq mm4, qword [rip + 0x12345679]
paddq mm4, qword [rbx]
paddq mm4, qword [rcx + 0x14]
paddq mm4, qword [rdx + 0x15]
paddq mm4, qword [rbx + 0x1235]
paddq mm4, qword [rbx + 0x12345679]
paddq mm4, qword [rbx + rcx]
paddq mm4, qword [rbx + 4 * rcx]
paddq mm4, qword [rbx + rcx + 0x13]
paddq mm4, qword [rbx + rcx + 0x1235]
paddq mm4, qword [rbx + rcx + 0x12345679]
paddq mm4, qword [rbx + 4 * rcx + 0x13]
paddq mm4, qword [rbx + 4 * rcx + 0x1235]
paddq mm4, qword [rbx + 8 * rcx + 0x12345679]
paddq mm4, qword [4 * rcx]
paddq mm4, qword [4 * rcx + 0x13]
paddq mm4, qword [4 * rcx + 0x1235]
paddq mm4, qword [4 * rcx + 0x12345679]
paddq mm4, qword [rbp]
paddq mm4, qword [rbp + 0x12]
paddq mm4, qword [rbp + 0x1234]
paddq mm4, qword [rbp + 0x12345678]
paddq mm4, qword [4 * rbp]
paddq mm4, qword [4 * rbp + 0x12]
paddq mm4, qword [4 * rbp + 0x1234]
paddq mm4, qword [4 * rbp + 0x12345678]
paddq mm4, qword [rbx + 4 * rbp]
paddq mm4, qword [rbx + 4 * rbp + 0x12]
paddq mm4, qword [rbx + 4 * rbp + 0x1234]
paddq mm4, qword [rbx + 4 * rbp + 0x12345678]
paddq mm4, qword [rsp]
paddq mm4, qword [rsp + 0x12]
paddq mm4, qword [rsp + 0x1234]
paddq mm4, qword [rsp + 0x12345678]
paddq mm4, qword [rsp + rax]
paddq mm4, qword [rsp + rbp]
paddq mm4, qword [rsp + 2*rbp]
paddq mm4, qword [rsp + 4*rbp]
paddq mm4, qword [rsp + 8*rbp]
paddq mm4, qword [rax]
paddq mm4, qword [rcx]
paddq mm4, qword [rdx]
paddq mm4, qword [rbx]
paddq mm4, qword [rsp]
paddq mm4, qword [rbp]
paddq mm4, qword [rsi]
paddq mm4, qword [rdi]
paddq mm4, qword [rax + 2*rax]
paddq mm4, qword [rcx + 2*rcx]
paddq mm4, qword [rdx + 2*rdx]
paddq mm4, qword [rbx + 2*rbx]
paddq mm4, qword [rbp + 2*rbp]
paddq mm4, qword [rsi + 2*rsi]
paddq mm4, qword [rdi + 2*rdi]
paddq mm5, qword [rip + 0x13]
paddq mm5, qword [rip + 0x1235]
paddq mm5, qword [rip + 0x12345679]
paddq mm5, qword [rbx]
paddq mm5, qword [rcx + 0x14]
paddq mm5, qword [rdx + 0x15]
paddq mm5, qword [rbx + 0x1235]
paddq mm5, qword [rbx + 0x12345679]
paddq mm5, qword [rbx + rcx]
paddq mm5, qword [rbx + 4 * rcx]
paddq mm5, qword [rbx + rcx + 0x13]
paddq mm5, qword [rbx + rcx + 0x1235]
paddq mm5, qword [rbx + rcx + 0x12345679]
paddq mm5, qword [rbx + 4 * rcx + 0x13]
paddq mm5, qword [rbx + 4 * rcx + 0x1235]
paddq mm5, qword [rbx + 8 * rcx + 0x12345679]
paddq mm5, qword [4 * rcx]
paddq mm5, qword [4 * rcx + 0x13]
paddq mm5, qword [4 * rcx + 0x1235]
paddq mm5, qword [4 * rcx + 0x12345679]
paddq mm5, qword [rbp]
paddq mm5, qword [rbp + 0x12]
paddq mm5, qword [rbp + 0x1234]
paddq mm5, qword [rbp + 0x12345678]
paddq mm5, qword [4 * rbp]
paddq mm5, qword [4 * rbp + 0x12]
paddq mm5, qword [4 * rbp + 0x1234]
paddq mm5, qword [4 * rbp + 0x12345678]
paddq mm5, qword [rbx + 4 * rbp]
paddq mm5, qword [rbx + 4 * rbp + 0x12]
paddq mm5, qword [rbx + 4 * rbp + 0x1234]
paddq mm5, qword [rbx + 4 * rbp + 0x12345678]
paddq mm5, qword [rsp]
paddq mm5, qword [rsp + 0x12]
paddq mm5, qword [rsp + 0x1234]
paddq mm5, qword [rsp + 0x12345678]
paddq mm5, qword [rsp + rax]
paddq mm5, qword [rsp + rbp]
paddq mm5, qword [rsp + 2*rbp]
paddq mm5, qword [rsp + 4*rbp]
paddq mm5, qword [rsp + 8*rbp]
paddq mm5, qword [rax]
paddq mm5, qword [rcx]
paddq mm5, qword [rdx]
paddq mm5, qword [rbx]
paddq mm5, qword [rsp]
paddq mm5, qword [rbp]
paddq mm5, qword [rsi]
paddq mm5, qword [rdi]
paddq mm5, qword [rax + 2*rax]
paddq mm5, qword [rcx + 2*rcx]
paddq mm5, qword [rdx + 2*rdx]
paddq mm5, qword [rbx + 2*rbx]
paddq mm5, qword [rbp + 2*rbp]
paddq mm5, qword [rsi + 2*rsi]
paddq mm5, qword [rdi + 2*rdi]
paddq mm6, qword [rip + 0x13]
paddq mm6, qword [rip + 0x1235]
paddq mm6, qword [rip + 0x12345679]
paddq mm6, qword [rbx]
paddq mm6, qword [rcx + 0x14]
paddq mm6, qword [rdx + 0x15]
paddq mm6, qword [rbx + 0x1235]
paddq mm6, qword [rbx + 0x12345679]
paddq mm6, qword [rbx + rcx]
paddq mm6, qword [rbx + 4 * rcx]
paddq mm6, qword [rbx + rcx + 0x13]
paddq mm6, qword [rbx + rcx + 0x1235]
paddq mm6, qword [rbx + rcx + 0x12345679]
paddq mm6, qword [rbx + 4 * rcx + 0x13]
paddq mm6, qword [rbx + 4 * rcx + 0x1235]
paddq mm6, qword [rbx + 8 * rcx + 0x12345679]
paddq mm6, qword [4 * rcx]
paddq mm6, qword [4 * rcx + 0x13]
paddq mm6, qword [4 * rcx + 0x1235]
paddq mm6, qword [4 * rcx + 0x12345679]
paddq mm6, qword [rbp]
paddq mm6, qword [rbp + 0x12]
paddq mm6, qword [rbp + 0x1234]
paddq mm6, qword [rbp + 0x12345678]
paddq mm6, qword [4 * rbp]
paddq mm6, qword [4 * rbp + 0x12]
paddq mm6, qword [4 * rbp + 0x1234]
paddq mm6, qword [4 * rbp + 0x12345678]
paddq mm6, qword [rbx + 4 * rbp]
paddq mm6, qword [rbx + 4 * rbp + 0x12]
paddq mm6, qword [rbx + 4 * rbp + 0x1234]
paddq mm6, qword [rbx + 4 * rbp + 0x12345678]
paddq mm6, qword [rsp]
paddq mm6, qword [rsp + 0x12]
paddq mm6, qword [rsp + 0x1234]
paddq mm6, qword [rsp + 0x12345678]
paddq mm6, qword [rsp + rax]
paddq mm6, qword [rsp + rbp]
paddq mm6, qword [rsp + 2*rbp]
paddq mm6, qword [rsp + 4*rbp]
paddq mm6, qword [rsp + 8*rbp]
paddq mm6, qword [rax]
paddq mm6, qword [rcx]
paddq mm6, qword [rdx]
paddq mm6, qword [rbx]
paddq mm6, qword [rsp]
paddq mm6, qword [rbp]
paddq mm6, qword [rsi]
paddq mm6, qword [rdi]
paddq mm6, qword [rax + 2*rax]
paddq mm6, qword [rcx + 2*rcx]
paddq mm6, qword [rdx + 2*rdx]
paddq mm6, qword [rbx + 2*rbx]
paddq mm6, qword [rbp + 2*rbp]
paddq mm6, qword [rsi + 2*rsi]
paddq mm6, qword [rdi + 2*rdi]
paddq mm7, qword [rip + 0x13]
paddq mm7, qword [rip + 0x1235]
paddq mm7, qword [rip + 0x12345679]
paddq mm7, qword [rbx]
paddq mm7, qword [rcx + 0x14]
paddq mm7, qword [rdx + 0x15]
paddq mm7, qword [rbx + 0x1235]
paddq mm7, qword [rbx + 0x12345679]
paddq mm7, qword [rbx + rcx]
paddq mm7, qword [rbx + 4 * rcx]
paddq mm7, qword [rbx + rcx + 0x13]
paddq mm7, qword [rbx + rcx + 0x1235]
paddq mm7, qword [rbx + rcx + 0x12345679]
paddq mm7, qword [rbx + 4 * rcx + 0x13]
paddq mm7, qword [rbx + 4 * rcx + 0x1235]
paddq mm7, qword [rbx + 8 * rcx + 0x12345679]
paddq mm7, qword [4 * rcx]
paddq mm7, qword [4 * rcx + 0x13]
paddq mm7, qword [4 * rcx + 0x1235]
paddq mm7, qword [4 * rcx + 0x12345679]
paddq mm7, qword [rbp]
paddq mm7, qword [rbp + 0x12]
paddq mm7, qword [rbp + 0x1234]
paddq mm7, qword [rbp + 0x12345678]
paddq mm7, qword [4 * rbp]
paddq mm7, qword [4 * rbp + 0x12]
paddq mm7, qword [4 * rbp + 0x1234]
paddq mm7, qword [4 * rbp + 0x12345678]
paddq mm7, qword [rbx + 4 * rbp]
paddq mm7, qword [rbx + 4 * rbp + 0x12]
paddq mm7, qword [rbx + 4 * rbp + 0x1234]
paddq mm7, qword [rbx + 4 * rbp + 0x12345678]
paddq mm7, qword [rsp]
paddq mm7, qword [rsp + 0x12]
paddq mm7, qword [rsp + 0x1234]
paddq mm7, qword [rsp + 0x12345678]
paddq mm7, qword [rsp + rax]
paddq mm7, qword [rsp + rbp]
paddq mm7, qword [rsp + 2*rbp]
paddq mm7, qword [rsp + 4*rbp]
paddq mm7, qword [rsp + 8*rbp]
paddq mm7, qword [rax]
paddq mm7, qword [rcx]
paddq mm7, qword [rdx]
paddq mm7, qword [rbx]
paddq mm7, qword [rsp]
paddq mm7, qword [rbp]
paddq mm7, qword [rsi]
paddq mm7, qword [rdi]
paddq mm7, qword [rax + 2*rax]
paddq mm7, qword [rcx + 2*rcx]
paddq mm7, qword [rdx + 2*rdx]
paddq mm7, qword [rbx + 2*rbx]
paddq mm7, qword [rbp + 2*rbp]
paddq mm7, qword [rsi + 2*rsi]
paddq mm7, qword [rdi + 2*rdi]

