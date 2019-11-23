use64
; ------------------------------------------------------------------------------
; opcode mm,mm
; ------------------------------------------------------------------------------
psraw mm0, mm0
psraw mm0, mm1
psraw mm0, mm2
psraw mm0, mm3
psraw mm0, mm4
psraw mm0, mm5
psraw mm0, mm6
psraw mm0, mm7
psraw mm1, mm0
psraw mm1, mm1
psraw mm1, mm2
psraw mm1, mm3
psraw mm1, mm4
psraw mm1, mm5
psraw mm1, mm6
psraw mm1, mm7
psraw mm2, mm0
psraw mm2, mm1
psraw mm2, mm2
psraw mm2, mm3
psraw mm2, mm4
psraw mm2, mm5
psraw mm2, mm6
psraw mm2, mm7
psraw mm3, mm0
psraw mm3, mm1
psraw mm3, mm2
psraw mm3, mm3
psraw mm3, mm4
psraw mm3, mm5
psraw mm3, mm6
psraw mm3, mm7
psraw mm4, mm0
psraw mm4, mm1
psraw mm4, mm2
psraw mm4, mm3
psraw mm4, mm4
psraw mm4, mm5
psraw mm4, mm6
psraw mm4, mm7
psraw mm5, mm0
psraw mm5, mm1
psraw mm5, mm2
psraw mm5, mm3
psraw mm5, mm4
psraw mm5, mm5
psraw mm5, mm6
psraw mm5, mm7
psraw mm6, mm0
psraw mm6, mm1
psraw mm6, mm2
psraw mm6, mm3
psraw mm6, mm4
psraw mm6, mm5
psraw mm6, mm6
psraw mm6, mm7
psraw mm7, mm0
psraw mm7, mm1
psraw mm7, mm2
psraw mm7, mm3
psraw mm7, mm4
psraw mm7, mm5
psraw mm7, mm6
psraw mm7, mm7

; ------------------------------------------------------------------------------
; opcode mm,m64
; ------------------------------------------------------------------------------
psraw mm0, qword [rip + 0x13]
psraw mm0, qword [rip + 0x1235]
psraw mm0, qword [rip + 0x12345679]
psraw mm0, qword [rbx]
psraw mm0, qword [rcx + 0x14]
psraw mm0, qword [rdx + 0x15]
psraw mm0, qword [rbx + 0x1235]
psraw mm0, qword [rbx + 0x12345679]
psraw mm0, qword [rbx + rcx]
psraw mm0, qword [rbx + 4 * rcx]
psraw mm0, qword [rbx + rcx + 0x13]
psraw mm0, qword [rbx + rcx + 0x1235]
psraw mm0, qword [rbx + rcx + 0x12345679]
psraw mm0, qword [rbx + 4 * rcx + 0x13]
psraw mm0, qword [rbx + 4 * rcx + 0x1235]
psraw mm0, qword [rbx + 8 * rcx + 0x12345679]
psraw mm0, qword [4 * rcx]
psraw mm0, qword [4 * rcx + 0x13]
psraw mm0, qword [4 * rcx + 0x1235]
psraw mm0, qword [4 * rcx + 0x12345679]
psraw mm0, qword [rbp]
psraw mm0, qword [rbp + 0x12]
psraw mm0, qword [rbp + 0x1234]
psraw mm0, qword [rbp + 0x12345678]
psraw mm0, qword [4 * rbp]
psraw mm0, qword [4 * rbp + 0x12]
psraw mm0, qword [4 * rbp + 0x1234]
psraw mm0, qword [4 * rbp + 0x12345678]
psraw mm0, qword [rbx + 4 * rbp]
psraw mm0, qword [rbx + 4 * rbp + 0x12]
psraw mm0, qword [rbx + 4 * rbp + 0x1234]
psraw mm0, qword [rbx + 4 * rbp + 0x12345678]
psraw mm0, qword [rsp]
psraw mm0, qword [rsp + 0x12]
psraw mm0, qword [rsp + 0x1234]
psraw mm0, qword [rsp + 0x12345678]
psraw mm0, qword [rsp + rax]
psraw mm0, qword [rsp + rbp]
psraw mm0, qword [rsp + 2*rbp]
psraw mm0, qword [rsp + 4*rbp]
psraw mm0, qword [rsp + 8*rbp]
psraw mm0, qword [rax]
psraw mm0, qword [rcx]
psraw mm0, qword [rdx]
psraw mm0, qword [rbx]
psraw mm0, qword [rsp]
psraw mm0, qword [rbp]
psraw mm0, qword [rsi]
psraw mm0, qword [rdi]
psraw mm0, qword [rax + 2*rax]
psraw mm0, qword [rcx + 2*rcx]
psraw mm0, qword [rdx + 2*rdx]
psraw mm0, qword [rbx + 2*rbx]
psraw mm0, qword [rbp + 2*rbp]
psraw mm0, qword [rsi + 2*rsi]
psraw mm0, qword [rdi + 2*rdi]
psraw mm1, qword [rip + 0x13]
psraw mm1, qword [rip + 0x1235]
psraw mm1, qword [rip + 0x12345679]
psraw mm1, qword [rbx]
psraw mm1, qword [rcx + 0x14]
psraw mm1, qword [rdx + 0x15]
psraw mm1, qword [rbx + 0x1235]
psraw mm1, qword [rbx + 0x12345679]
psraw mm1, qword [rbx + rcx]
psraw mm1, qword [rbx + 4 * rcx]
psraw mm1, qword [rbx + rcx + 0x13]
psraw mm1, qword [rbx + rcx + 0x1235]
psraw mm1, qword [rbx + rcx + 0x12345679]
psraw mm1, qword [rbx + 4 * rcx + 0x13]
psraw mm1, qword [rbx + 4 * rcx + 0x1235]
psraw mm1, qword [rbx + 8 * rcx + 0x12345679]
psraw mm1, qword [4 * rcx]
psraw mm1, qword [4 * rcx + 0x13]
psraw mm1, qword [4 * rcx + 0x1235]
psraw mm1, qword [4 * rcx + 0x12345679]
psraw mm1, qword [rbp]
psraw mm1, qword [rbp + 0x12]
psraw mm1, qword [rbp + 0x1234]
psraw mm1, qword [rbp + 0x12345678]
psraw mm1, qword [4 * rbp]
psraw mm1, qword [4 * rbp + 0x12]
psraw mm1, qword [4 * rbp + 0x1234]
psraw mm1, qword [4 * rbp + 0x12345678]
psraw mm1, qword [rbx + 4 * rbp]
psraw mm1, qword [rbx + 4 * rbp + 0x12]
psraw mm1, qword [rbx + 4 * rbp + 0x1234]
psraw mm1, qword [rbx + 4 * rbp + 0x12345678]
psraw mm1, qword [rsp]
psraw mm1, qword [rsp + 0x12]
psraw mm1, qword [rsp + 0x1234]
psraw mm1, qword [rsp + 0x12345678]
psraw mm1, qword [rsp + rax]
psraw mm1, qword [rsp + rbp]
psraw mm1, qword [rsp + 2*rbp]
psraw mm1, qword [rsp + 4*rbp]
psraw mm1, qword [rsp + 8*rbp]
psraw mm1, qword [rax]
psraw mm1, qword [rcx]
psraw mm1, qword [rdx]
psraw mm1, qword [rbx]
psraw mm1, qword [rsp]
psraw mm1, qword [rbp]
psraw mm1, qword [rsi]
psraw mm1, qword [rdi]
psraw mm1, qword [rax + 2*rax]
psraw mm1, qword [rcx + 2*rcx]
psraw mm1, qword [rdx + 2*rdx]
psraw mm1, qword [rbx + 2*rbx]
psraw mm1, qword [rbp + 2*rbp]
psraw mm1, qword [rsi + 2*rsi]
psraw mm1, qword [rdi + 2*rdi]
psraw mm2, qword [rip + 0x13]
psraw mm2, qword [rip + 0x1235]
psraw mm2, qword [rip + 0x12345679]
psraw mm2, qword [rbx]
psraw mm2, qword [rcx + 0x14]
psraw mm2, qword [rdx + 0x15]
psraw mm2, qword [rbx + 0x1235]
psraw mm2, qword [rbx + 0x12345679]
psraw mm2, qword [rbx + rcx]
psraw mm2, qword [rbx + 4 * rcx]
psraw mm2, qword [rbx + rcx + 0x13]
psraw mm2, qword [rbx + rcx + 0x1235]
psraw mm2, qword [rbx + rcx + 0x12345679]
psraw mm2, qword [rbx + 4 * rcx + 0x13]
psraw mm2, qword [rbx + 4 * rcx + 0x1235]
psraw mm2, qword [rbx + 8 * rcx + 0x12345679]
psraw mm2, qword [4 * rcx]
psraw mm2, qword [4 * rcx + 0x13]
psraw mm2, qword [4 * rcx + 0x1235]
psraw mm2, qword [4 * rcx + 0x12345679]
psraw mm2, qword [rbp]
psraw mm2, qword [rbp + 0x12]
psraw mm2, qword [rbp + 0x1234]
psraw mm2, qword [rbp + 0x12345678]
psraw mm2, qword [4 * rbp]
psraw mm2, qword [4 * rbp + 0x12]
psraw mm2, qword [4 * rbp + 0x1234]
psraw mm2, qword [4 * rbp + 0x12345678]
psraw mm2, qword [rbx + 4 * rbp]
psraw mm2, qword [rbx + 4 * rbp + 0x12]
psraw mm2, qword [rbx + 4 * rbp + 0x1234]
psraw mm2, qword [rbx + 4 * rbp + 0x12345678]
psraw mm2, qword [rsp]
psraw mm2, qword [rsp + 0x12]
psraw mm2, qword [rsp + 0x1234]
psraw mm2, qword [rsp + 0x12345678]
psraw mm2, qword [rsp + rax]
psraw mm2, qword [rsp + rbp]
psraw mm2, qword [rsp + 2*rbp]
psraw mm2, qword [rsp + 4*rbp]
psraw mm2, qword [rsp + 8*rbp]
psraw mm2, qword [rax]
psraw mm2, qword [rcx]
psraw mm2, qword [rdx]
psraw mm2, qword [rbx]
psraw mm2, qword [rsp]
psraw mm2, qword [rbp]
psraw mm2, qword [rsi]
psraw mm2, qword [rdi]
psraw mm2, qword [rax + 2*rax]
psraw mm2, qword [rcx + 2*rcx]
psraw mm2, qword [rdx + 2*rdx]
psraw mm2, qword [rbx + 2*rbx]
psraw mm2, qword [rbp + 2*rbp]
psraw mm2, qword [rsi + 2*rsi]
psraw mm2, qword [rdi + 2*rdi]
psraw mm3, qword [rip + 0x13]
psraw mm3, qword [rip + 0x1235]
psraw mm3, qword [rip + 0x12345679]
psraw mm3, qword [rbx]
psraw mm3, qword [rcx + 0x14]
psraw mm3, qword [rdx + 0x15]
psraw mm3, qword [rbx + 0x1235]
psraw mm3, qword [rbx + 0x12345679]
psraw mm3, qword [rbx + rcx]
psraw mm3, qword [rbx + 4 * rcx]
psraw mm3, qword [rbx + rcx + 0x13]
psraw mm3, qword [rbx + rcx + 0x1235]
psraw mm3, qword [rbx + rcx + 0x12345679]
psraw mm3, qword [rbx + 4 * rcx + 0x13]
psraw mm3, qword [rbx + 4 * rcx + 0x1235]
psraw mm3, qword [rbx + 8 * rcx + 0x12345679]
psraw mm3, qword [4 * rcx]
psraw mm3, qword [4 * rcx + 0x13]
psraw mm3, qword [4 * rcx + 0x1235]
psraw mm3, qword [4 * rcx + 0x12345679]
psraw mm3, qword [rbp]
psraw mm3, qword [rbp + 0x12]
psraw mm3, qword [rbp + 0x1234]
psraw mm3, qword [rbp + 0x12345678]
psraw mm3, qword [4 * rbp]
psraw mm3, qword [4 * rbp + 0x12]
psraw mm3, qword [4 * rbp + 0x1234]
psraw mm3, qword [4 * rbp + 0x12345678]
psraw mm3, qword [rbx + 4 * rbp]
psraw mm3, qword [rbx + 4 * rbp + 0x12]
psraw mm3, qword [rbx + 4 * rbp + 0x1234]
psraw mm3, qword [rbx + 4 * rbp + 0x12345678]
psraw mm3, qword [rsp]
psraw mm3, qword [rsp + 0x12]
psraw mm3, qword [rsp + 0x1234]
psraw mm3, qword [rsp + 0x12345678]
psraw mm3, qword [rsp + rax]
psraw mm3, qword [rsp + rbp]
psraw mm3, qword [rsp + 2*rbp]
psraw mm3, qword [rsp + 4*rbp]
psraw mm3, qword [rsp + 8*rbp]
psraw mm3, qword [rax]
psraw mm3, qword [rcx]
psraw mm3, qword [rdx]
psraw mm3, qword [rbx]
psraw mm3, qword [rsp]
psraw mm3, qword [rbp]
psraw mm3, qword [rsi]
psraw mm3, qword [rdi]
psraw mm3, qword [rax + 2*rax]
psraw mm3, qword [rcx + 2*rcx]
psraw mm3, qword [rdx + 2*rdx]
psraw mm3, qword [rbx + 2*rbx]
psraw mm3, qword [rbp + 2*rbp]
psraw mm3, qword [rsi + 2*rsi]
psraw mm3, qword [rdi + 2*rdi]
psraw mm4, qword [rip + 0x13]
psraw mm4, qword [rip + 0x1235]
psraw mm4, qword [rip + 0x12345679]
psraw mm4, qword [rbx]
psraw mm4, qword [rcx + 0x14]
psraw mm4, qword [rdx + 0x15]
psraw mm4, qword [rbx + 0x1235]
psraw mm4, qword [rbx + 0x12345679]
psraw mm4, qword [rbx + rcx]
psraw mm4, qword [rbx + 4 * rcx]
psraw mm4, qword [rbx + rcx + 0x13]
psraw mm4, qword [rbx + rcx + 0x1235]
psraw mm4, qword [rbx + rcx + 0x12345679]
psraw mm4, qword [rbx + 4 * rcx + 0x13]
psraw mm4, qword [rbx + 4 * rcx + 0x1235]
psraw mm4, qword [rbx + 8 * rcx + 0x12345679]
psraw mm4, qword [4 * rcx]
psraw mm4, qword [4 * rcx + 0x13]
psraw mm4, qword [4 * rcx + 0x1235]
psraw mm4, qword [4 * rcx + 0x12345679]
psraw mm4, qword [rbp]
psraw mm4, qword [rbp + 0x12]
psraw mm4, qword [rbp + 0x1234]
psraw mm4, qword [rbp + 0x12345678]
psraw mm4, qword [4 * rbp]
psraw mm4, qword [4 * rbp + 0x12]
psraw mm4, qword [4 * rbp + 0x1234]
psraw mm4, qword [4 * rbp + 0x12345678]
psraw mm4, qword [rbx + 4 * rbp]
psraw mm4, qword [rbx + 4 * rbp + 0x12]
psraw mm4, qword [rbx + 4 * rbp + 0x1234]
psraw mm4, qword [rbx + 4 * rbp + 0x12345678]
psraw mm4, qword [rsp]
psraw mm4, qword [rsp + 0x12]
psraw mm4, qword [rsp + 0x1234]
psraw mm4, qword [rsp + 0x12345678]
psraw mm4, qword [rsp + rax]
psraw mm4, qword [rsp + rbp]
psraw mm4, qword [rsp + 2*rbp]
psraw mm4, qword [rsp + 4*rbp]
psraw mm4, qword [rsp + 8*rbp]
psraw mm4, qword [rax]
psraw mm4, qword [rcx]
psraw mm4, qword [rdx]
psraw mm4, qword [rbx]
psraw mm4, qword [rsp]
psraw mm4, qword [rbp]
psraw mm4, qword [rsi]
psraw mm4, qword [rdi]
psraw mm4, qword [rax + 2*rax]
psraw mm4, qword [rcx + 2*rcx]
psraw mm4, qword [rdx + 2*rdx]
psraw mm4, qword [rbx + 2*rbx]
psraw mm4, qword [rbp + 2*rbp]
psraw mm4, qword [rsi + 2*rsi]
psraw mm4, qword [rdi + 2*rdi]
psraw mm5, qword [rip + 0x13]
psraw mm5, qword [rip + 0x1235]
psraw mm5, qword [rip + 0x12345679]
psraw mm5, qword [rbx]
psraw mm5, qword [rcx + 0x14]
psraw mm5, qword [rdx + 0x15]
psraw mm5, qword [rbx + 0x1235]
psraw mm5, qword [rbx + 0x12345679]
psraw mm5, qword [rbx + rcx]
psraw mm5, qword [rbx + 4 * rcx]
psraw mm5, qword [rbx + rcx + 0x13]
psraw mm5, qword [rbx + rcx + 0x1235]
psraw mm5, qword [rbx + rcx + 0x12345679]
psraw mm5, qword [rbx + 4 * rcx + 0x13]
psraw mm5, qword [rbx + 4 * rcx + 0x1235]
psraw mm5, qword [rbx + 8 * rcx + 0x12345679]
psraw mm5, qword [4 * rcx]
psraw mm5, qword [4 * rcx + 0x13]
psraw mm5, qword [4 * rcx + 0x1235]
psraw mm5, qword [4 * rcx + 0x12345679]
psraw mm5, qword [rbp]
psraw mm5, qword [rbp + 0x12]
psraw mm5, qword [rbp + 0x1234]
psraw mm5, qword [rbp + 0x12345678]
psraw mm5, qword [4 * rbp]
psraw mm5, qword [4 * rbp + 0x12]
psraw mm5, qword [4 * rbp + 0x1234]
psraw mm5, qword [4 * rbp + 0x12345678]
psraw mm5, qword [rbx + 4 * rbp]
psraw mm5, qword [rbx + 4 * rbp + 0x12]
psraw mm5, qword [rbx + 4 * rbp + 0x1234]
psraw mm5, qword [rbx + 4 * rbp + 0x12345678]
psraw mm5, qword [rsp]
psraw mm5, qword [rsp + 0x12]
psraw mm5, qword [rsp + 0x1234]
psraw mm5, qword [rsp + 0x12345678]
psraw mm5, qword [rsp + rax]
psraw mm5, qword [rsp + rbp]
psraw mm5, qword [rsp + 2*rbp]
psraw mm5, qword [rsp + 4*rbp]
psraw mm5, qword [rsp + 8*rbp]
psraw mm5, qword [rax]
psraw mm5, qword [rcx]
psraw mm5, qword [rdx]
psraw mm5, qword [rbx]
psraw mm5, qword [rsp]
psraw mm5, qword [rbp]
psraw mm5, qword [rsi]
psraw mm5, qword [rdi]
psraw mm5, qword [rax + 2*rax]
psraw mm5, qword [rcx + 2*rcx]
psraw mm5, qword [rdx + 2*rdx]
psraw mm5, qword [rbx + 2*rbx]
psraw mm5, qword [rbp + 2*rbp]
psraw mm5, qword [rsi + 2*rsi]
psraw mm5, qword [rdi + 2*rdi]
psraw mm6, qword [rip + 0x13]
psraw mm6, qword [rip + 0x1235]
psraw mm6, qword [rip + 0x12345679]
psraw mm6, qword [rbx]
psraw mm6, qword [rcx + 0x14]
psraw mm6, qword [rdx + 0x15]
psraw mm6, qword [rbx + 0x1235]
psraw mm6, qword [rbx + 0x12345679]
psraw mm6, qword [rbx + rcx]
psraw mm6, qword [rbx + 4 * rcx]
psraw mm6, qword [rbx + rcx + 0x13]
psraw mm6, qword [rbx + rcx + 0x1235]
psraw mm6, qword [rbx + rcx + 0x12345679]
psraw mm6, qword [rbx + 4 * rcx + 0x13]
psraw mm6, qword [rbx + 4 * rcx + 0x1235]
psraw mm6, qword [rbx + 8 * rcx + 0x12345679]
psraw mm6, qword [4 * rcx]
psraw mm6, qword [4 * rcx + 0x13]
psraw mm6, qword [4 * rcx + 0x1235]
psraw mm6, qword [4 * rcx + 0x12345679]
psraw mm6, qword [rbp]
psraw mm6, qword [rbp + 0x12]
psraw mm6, qword [rbp + 0x1234]
psraw mm6, qword [rbp + 0x12345678]
psraw mm6, qword [4 * rbp]
psraw mm6, qword [4 * rbp + 0x12]
psraw mm6, qword [4 * rbp + 0x1234]
psraw mm6, qword [4 * rbp + 0x12345678]
psraw mm6, qword [rbx + 4 * rbp]
psraw mm6, qword [rbx + 4 * rbp + 0x12]
psraw mm6, qword [rbx + 4 * rbp + 0x1234]
psraw mm6, qword [rbx + 4 * rbp + 0x12345678]
psraw mm6, qword [rsp]
psraw mm6, qword [rsp + 0x12]
psraw mm6, qword [rsp + 0x1234]
psraw mm6, qword [rsp + 0x12345678]
psraw mm6, qword [rsp + rax]
psraw mm6, qword [rsp + rbp]
psraw mm6, qword [rsp + 2*rbp]
psraw mm6, qword [rsp + 4*rbp]
psraw mm6, qword [rsp + 8*rbp]
psraw mm6, qword [rax]
psraw mm6, qword [rcx]
psraw mm6, qword [rdx]
psraw mm6, qword [rbx]
psraw mm6, qword [rsp]
psraw mm6, qword [rbp]
psraw mm6, qword [rsi]
psraw mm6, qword [rdi]
psraw mm6, qword [rax + 2*rax]
psraw mm6, qword [rcx + 2*rcx]
psraw mm6, qword [rdx + 2*rdx]
psraw mm6, qword [rbx + 2*rbx]
psraw mm6, qword [rbp + 2*rbp]
psraw mm6, qword [rsi + 2*rsi]
psraw mm6, qword [rdi + 2*rdi]
psraw mm7, qword [rip + 0x13]
psraw mm7, qword [rip + 0x1235]
psraw mm7, qword [rip + 0x12345679]
psraw mm7, qword [rbx]
psraw mm7, qword [rcx + 0x14]
psraw mm7, qword [rdx + 0x15]
psraw mm7, qword [rbx + 0x1235]
psraw mm7, qword [rbx + 0x12345679]
psraw mm7, qword [rbx + rcx]
psraw mm7, qword [rbx + 4 * rcx]
psraw mm7, qword [rbx + rcx + 0x13]
psraw mm7, qword [rbx + rcx + 0x1235]
psraw mm7, qword [rbx + rcx + 0x12345679]
psraw mm7, qword [rbx + 4 * rcx + 0x13]
psraw mm7, qword [rbx + 4 * rcx + 0x1235]
psraw mm7, qword [rbx + 8 * rcx + 0x12345679]
psraw mm7, qword [4 * rcx]
psraw mm7, qword [4 * rcx + 0x13]
psraw mm7, qword [4 * rcx + 0x1235]
psraw mm7, qword [4 * rcx + 0x12345679]
psraw mm7, qword [rbp]
psraw mm7, qword [rbp + 0x12]
psraw mm7, qword [rbp + 0x1234]
psraw mm7, qword [rbp + 0x12345678]
psraw mm7, qword [4 * rbp]
psraw mm7, qword [4 * rbp + 0x12]
psraw mm7, qword [4 * rbp + 0x1234]
psraw mm7, qword [4 * rbp + 0x12345678]
psraw mm7, qword [rbx + 4 * rbp]
psraw mm7, qword [rbx + 4 * rbp + 0x12]
psraw mm7, qword [rbx + 4 * rbp + 0x1234]
psraw mm7, qword [rbx + 4 * rbp + 0x12345678]
psraw mm7, qword [rsp]
psraw mm7, qword [rsp + 0x12]
psraw mm7, qword [rsp + 0x1234]
psraw mm7, qword [rsp + 0x12345678]
psraw mm7, qword [rsp + rax]
psraw mm7, qword [rsp + rbp]
psraw mm7, qword [rsp + 2*rbp]
psraw mm7, qword [rsp + 4*rbp]
psraw mm7, qword [rsp + 8*rbp]
psraw mm7, qword [rax]
psraw mm7, qword [rcx]
psraw mm7, qword [rdx]
psraw mm7, qword [rbx]
psraw mm7, qword [rsp]
psraw mm7, qword [rbp]
psraw mm7, qword [rsi]
psraw mm7, qword [rdi]
psraw mm7, qword [rax + 2*rax]
psraw mm7, qword [rcx + 2*rcx]
psraw mm7, qword [rdx + 2*rdx]
psraw mm7, qword [rbx + 2*rbx]
psraw mm7, qword [rbp + 2*rbp]
psraw mm7, qword [rsi + 2*rsi]
psraw mm7, qword [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode mm,imm8
; ------------------------------------------------------------------------------
psraw mm0, 0
psraw mm0, 1
psraw mm0, 0x12
psraw mm0, 127
psraw mm0, 255
psraw mm0, 0xff
psraw mm1, 0
psraw mm1, 1
psraw mm1, 0x12
psraw mm1, 127
psraw mm1, 255
psraw mm1, 0xff
psraw mm2, 0
psraw mm2, 1
psraw mm2, 0x12
psraw mm2, 127
psraw mm2, 255
psraw mm2, 0xff
psraw mm3, 0
psraw mm3, 1
psraw mm3, 0x12
psraw mm3, 127
psraw mm3, 255
psraw mm3, 0xff
psraw mm4, 0
psraw mm4, 1
psraw mm4, 0x12
psraw mm4, 127
psraw mm4, 255
psraw mm4, 0xff
psraw mm5, 0
psraw mm5, 1
psraw mm5, 0x12
psraw mm5, 127
psraw mm5, 255
psraw mm5, 0xff
psraw mm6, 0
psraw mm6, 1
psraw mm6, 0x12
psraw mm6, 127
psraw mm6, 255
psraw mm6, 0xff
psraw mm7, 0
psraw mm7, 1
psraw mm7, 0x12
psraw mm7, 127
psraw mm7, 255
psraw mm7, 0xff

