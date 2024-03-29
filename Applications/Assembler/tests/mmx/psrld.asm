use64
; ------------------------------------------------------------------------------
; opcode mm,mm
; ------------------------------------------------------------------------------
psrld mm0, mm0
psrld mm0, mm1
psrld mm0, mm2
psrld mm0, mm3
psrld mm0, mm4
psrld mm0, mm5
psrld mm0, mm6
psrld mm0, mm7
psrld mm1, mm0
psrld mm1, mm1
psrld mm1, mm2
psrld mm1, mm3
psrld mm1, mm4
psrld mm1, mm5
psrld mm1, mm6
psrld mm1, mm7
psrld mm2, mm0
psrld mm2, mm1
psrld mm2, mm2
psrld mm2, mm3
psrld mm2, mm4
psrld mm2, mm5
psrld mm2, mm6
psrld mm2, mm7
psrld mm3, mm0
psrld mm3, mm1
psrld mm3, mm2
psrld mm3, mm3
psrld mm3, mm4
psrld mm3, mm5
psrld mm3, mm6
psrld mm3, mm7
psrld mm4, mm0
psrld mm4, mm1
psrld mm4, mm2
psrld mm4, mm3
psrld mm4, mm4
psrld mm4, mm5
psrld mm4, mm6
psrld mm4, mm7
psrld mm5, mm0
psrld mm5, mm1
psrld mm5, mm2
psrld mm5, mm3
psrld mm5, mm4
psrld mm5, mm5
psrld mm5, mm6
psrld mm5, mm7
psrld mm6, mm0
psrld mm6, mm1
psrld mm6, mm2
psrld mm6, mm3
psrld mm6, mm4
psrld mm6, mm5
psrld mm6, mm6
psrld mm6, mm7
psrld mm7, mm0
psrld mm7, mm1
psrld mm7, mm2
psrld mm7, mm3
psrld mm7, mm4
psrld mm7, mm5
psrld mm7, mm6
psrld mm7, mm7

; ------------------------------------------------------------------------------
; opcode mm,m64
; ------------------------------------------------------------------------------
psrld mm0, qword [rip + 0x13]
psrld mm0, qword [rip + 0x1235]
psrld mm0, qword [rip + 0x12345679]
psrld mm0, qword [rbx]
psrld mm0, qword [rcx + 0x14]
psrld mm0, qword [rdx + 0x15]
psrld mm0, qword [rbx + 0x1235]
psrld mm0, qword [rbx + 0x12345679]
psrld mm0, qword [rbx + rcx]
psrld mm0, qword [rbx + 4 * rcx]
psrld mm0, qword [rbx + rcx + 0x13]
psrld mm0, qword [rbx + rcx + 0x1235]
psrld mm0, qword [rbx + rcx + 0x12345679]
psrld mm0, qword [rbx + 4 * rcx + 0x13]
psrld mm0, qword [rbx + 4 * rcx + 0x1235]
psrld mm0, qword [rbx + 8 * rcx + 0x12345679]
psrld mm0, qword [4 * rcx]
psrld mm0, qword [4 * rcx + 0x13]
psrld mm0, qword [4 * rcx + 0x1235]
psrld mm0, qword [4 * rcx + 0x12345679]
psrld mm0, qword [rbp]
psrld mm0, qword [rbp + 0x12]
psrld mm0, qword [rbp + 0x1234]
psrld mm0, qword [rbp + 0x12345678]
psrld mm0, qword [4 * rbp]
psrld mm0, qword [4 * rbp + 0x12]
psrld mm0, qword [4 * rbp + 0x1234]
psrld mm0, qword [4 * rbp + 0x12345678]
psrld mm0, qword [rbx + 4 * rbp]
psrld mm0, qword [rbx + 4 * rbp + 0x12]
psrld mm0, qword [rbx + 4 * rbp + 0x1234]
psrld mm0, qword [rbx + 4 * rbp + 0x12345678]
psrld mm0, qword [rsp]
psrld mm0, qword [rsp + 0x12]
psrld mm0, qword [rsp + 0x1234]
psrld mm0, qword [rsp + 0x12345678]
psrld mm0, qword [rsp + rax]
psrld mm0, qword [rsp + rbp]
psrld mm0, qword [rsp + 2*rbp]
psrld mm0, qword [rsp + 4*rbp]
psrld mm0, qword [rsp + 8*rbp]
psrld mm0, qword [rax]
psrld mm0, qword [rcx]
psrld mm0, qword [rdx]
psrld mm0, qword [rbx]
psrld mm0, qword [rsp]
psrld mm0, qword [rbp]
psrld mm0, qword [rsi]
psrld mm0, qword [rdi]
psrld mm0, qword [rax + 2*rax]
psrld mm0, qword [rcx + 2*rcx]
psrld mm0, qword [rdx + 2*rdx]
psrld mm0, qword [rbx + 2*rbx]
psrld mm0, qword [rbp + 2*rbp]
psrld mm0, qword [rsi + 2*rsi]
psrld mm0, qword [rdi + 2*rdi]
psrld mm1, qword [rip + 0x13]
psrld mm1, qword [rip + 0x1235]
psrld mm1, qword [rip + 0x12345679]
psrld mm1, qword [rbx]
psrld mm1, qword [rcx + 0x14]
psrld mm1, qword [rdx + 0x15]
psrld mm1, qword [rbx + 0x1235]
psrld mm1, qword [rbx + 0x12345679]
psrld mm1, qword [rbx + rcx]
psrld mm1, qword [rbx + 4 * rcx]
psrld mm1, qword [rbx + rcx + 0x13]
psrld mm1, qword [rbx + rcx + 0x1235]
psrld mm1, qword [rbx + rcx + 0x12345679]
psrld mm1, qword [rbx + 4 * rcx + 0x13]
psrld mm1, qword [rbx + 4 * rcx + 0x1235]
psrld mm1, qword [rbx + 8 * rcx + 0x12345679]
psrld mm1, qword [4 * rcx]
psrld mm1, qword [4 * rcx + 0x13]
psrld mm1, qword [4 * rcx + 0x1235]
psrld mm1, qword [4 * rcx + 0x12345679]
psrld mm1, qword [rbp]
psrld mm1, qword [rbp + 0x12]
psrld mm1, qword [rbp + 0x1234]
psrld mm1, qword [rbp + 0x12345678]
psrld mm1, qword [4 * rbp]
psrld mm1, qword [4 * rbp + 0x12]
psrld mm1, qword [4 * rbp + 0x1234]
psrld mm1, qword [4 * rbp + 0x12345678]
psrld mm1, qword [rbx + 4 * rbp]
psrld mm1, qword [rbx + 4 * rbp + 0x12]
psrld mm1, qword [rbx + 4 * rbp + 0x1234]
psrld mm1, qword [rbx + 4 * rbp + 0x12345678]
psrld mm1, qword [rsp]
psrld mm1, qword [rsp + 0x12]
psrld mm1, qword [rsp + 0x1234]
psrld mm1, qword [rsp + 0x12345678]
psrld mm1, qword [rsp + rax]
psrld mm1, qword [rsp + rbp]
psrld mm1, qword [rsp + 2*rbp]
psrld mm1, qword [rsp + 4*rbp]
psrld mm1, qword [rsp + 8*rbp]
psrld mm1, qword [rax]
psrld mm1, qword [rcx]
psrld mm1, qword [rdx]
psrld mm1, qword [rbx]
psrld mm1, qword [rsp]
psrld mm1, qword [rbp]
psrld mm1, qword [rsi]
psrld mm1, qword [rdi]
psrld mm1, qword [rax + 2*rax]
psrld mm1, qword [rcx + 2*rcx]
psrld mm1, qword [rdx + 2*rdx]
psrld mm1, qword [rbx + 2*rbx]
psrld mm1, qword [rbp + 2*rbp]
psrld mm1, qword [rsi + 2*rsi]
psrld mm1, qword [rdi + 2*rdi]
psrld mm2, qword [rip + 0x13]
psrld mm2, qword [rip + 0x1235]
psrld mm2, qword [rip + 0x12345679]
psrld mm2, qword [rbx]
psrld mm2, qword [rcx + 0x14]
psrld mm2, qword [rdx + 0x15]
psrld mm2, qword [rbx + 0x1235]
psrld mm2, qword [rbx + 0x12345679]
psrld mm2, qword [rbx + rcx]
psrld mm2, qword [rbx + 4 * rcx]
psrld mm2, qword [rbx + rcx + 0x13]
psrld mm2, qword [rbx + rcx + 0x1235]
psrld mm2, qword [rbx + rcx + 0x12345679]
psrld mm2, qword [rbx + 4 * rcx + 0x13]
psrld mm2, qword [rbx + 4 * rcx + 0x1235]
psrld mm2, qword [rbx + 8 * rcx + 0x12345679]
psrld mm2, qword [4 * rcx]
psrld mm2, qword [4 * rcx + 0x13]
psrld mm2, qword [4 * rcx + 0x1235]
psrld mm2, qword [4 * rcx + 0x12345679]
psrld mm2, qword [rbp]
psrld mm2, qword [rbp + 0x12]
psrld mm2, qword [rbp + 0x1234]
psrld mm2, qword [rbp + 0x12345678]
psrld mm2, qword [4 * rbp]
psrld mm2, qword [4 * rbp + 0x12]
psrld mm2, qword [4 * rbp + 0x1234]
psrld mm2, qword [4 * rbp + 0x12345678]
psrld mm2, qword [rbx + 4 * rbp]
psrld mm2, qword [rbx + 4 * rbp + 0x12]
psrld mm2, qword [rbx + 4 * rbp + 0x1234]
psrld mm2, qword [rbx + 4 * rbp + 0x12345678]
psrld mm2, qword [rsp]
psrld mm2, qword [rsp + 0x12]
psrld mm2, qword [rsp + 0x1234]
psrld mm2, qword [rsp + 0x12345678]
psrld mm2, qword [rsp + rax]
psrld mm2, qword [rsp + rbp]
psrld mm2, qword [rsp + 2*rbp]
psrld mm2, qword [rsp + 4*rbp]
psrld mm2, qword [rsp + 8*rbp]
psrld mm2, qword [rax]
psrld mm2, qword [rcx]
psrld mm2, qword [rdx]
psrld mm2, qword [rbx]
psrld mm2, qword [rsp]
psrld mm2, qword [rbp]
psrld mm2, qword [rsi]
psrld mm2, qword [rdi]
psrld mm2, qword [rax + 2*rax]
psrld mm2, qword [rcx + 2*rcx]
psrld mm2, qword [rdx + 2*rdx]
psrld mm2, qword [rbx + 2*rbx]
psrld mm2, qword [rbp + 2*rbp]
psrld mm2, qword [rsi + 2*rsi]
psrld mm2, qword [rdi + 2*rdi]
psrld mm3, qword [rip + 0x13]
psrld mm3, qword [rip + 0x1235]
psrld mm3, qword [rip + 0x12345679]
psrld mm3, qword [rbx]
psrld mm3, qword [rcx + 0x14]
psrld mm3, qword [rdx + 0x15]
psrld mm3, qword [rbx + 0x1235]
psrld mm3, qword [rbx + 0x12345679]
psrld mm3, qword [rbx + rcx]
psrld mm3, qword [rbx + 4 * rcx]
psrld mm3, qword [rbx + rcx + 0x13]
psrld mm3, qword [rbx + rcx + 0x1235]
psrld mm3, qword [rbx + rcx + 0x12345679]
psrld mm3, qword [rbx + 4 * rcx + 0x13]
psrld mm3, qword [rbx + 4 * rcx + 0x1235]
psrld mm3, qword [rbx + 8 * rcx + 0x12345679]
psrld mm3, qword [4 * rcx]
psrld mm3, qword [4 * rcx + 0x13]
psrld mm3, qword [4 * rcx + 0x1235]
psrld mm3, qword [4 * rcx + 0x12345679]
psrld mm3, qword [rbp]
psrld mm3, qword [rbp + 0x12]
psrld mm3, qword [rbp + 0x1234]
psrld mm3, qword [rbp + 0x12345678]
psrld mm3, qword [4 * rbp]
psrld mm3, qword [4 * rbp + 0x12]
psrld mm3, qword [4 * rbp + 0x1234]
psrld mm3, qword [4 * rbp + 0x12345678]
psrld mm3, qword [rbx + 4 * rbp]
psrld mm3, qword [rbx + 4 * rbp + 0x12]
psrld mm3, qword [rbx + 4 * rbp + 0x1234]
psrld mm3, qword [rbx + 4 * rbp + 0x12345678]
psrld mm3, qword [rsp]
psrld mm3, qword [rsp + 0x12]
psrld mm3, qword [rsp + 0x1234]
psrld mm3, qword [rsp + 0x12345678]
psrld mm3, qword [rsp + rax]
psrld mm3, qword [rsp + rbp]
psrld mm3, qword [rsp + 2*rbp]
psrld mm3, qword [rsp + 4*rbp]
psrld mm3, qword [rsp + 8*rbp]
psrld mm3, qword [rax]
psrld mm3, qword [rcx]
psrld mm3, qword [rdx]
psrld mm3, qword [rbx]
psrld mm3, qword [rsp]
psrld mm3, qword [rbp]
psrld mm3, qword [rsi]
psrld mm3, qword [rdi]
psrld mm3, qword [rax + 2*rax]
psrld mm3, qword [rcx + 2*rcx]
psrld mm3, qword [rdx + 2*rdx]
psrld mm3, qword [rbx + 2*rbx]
psrld mm3, qword [rbp + 2*rbp]
psrld mm3, qword [rsi + 2*rsi]
psrld mm3, qword [rdi + 2*rdi]
psrld mm4, qword [rip + 0x13]
psrld mm4, qword [rip + 0x1235]
psrld mm4, qword [rip + 0x12345679]
psrld mm4, qword [rbx]
psrld mm4, qword [rcx + 0x14]
psrld mm4, qword [rdx + 0x15]
psrld mm4, qword [rbx + 0x1235]
psrld mm4, qword [rbx + 0x12345679]
psrld mm4, qword [rbx + rcx]
psrld mm4, qword [rbx + 4 * rcx]
psrld mm4, qword [rbx + rcx + 0x13]
psrld mm4, qword [rbx + rcx + 0x1235]
psrld mm4, qword [rbx + rcx + 0x12345679]
psrld mm4, qword [rbx + 4 * rcx + 0x13]
psrld mm4, qword [rbx + 4 * rcx + 0x1235]
psrld mm4, qword [rbx + 8 * rcx + 0x12345679]
psrld mm4, qword [4 * rcx]
psrld mm4, qword [4 * rcx + 0x13]
psrld mm4, qword [4 * rcx + 0x1235]
psrld mm4, qword [4 * rcx + 0x12345679]
psrld mm4, qword [rbp]
psrld mm4, qword [rbp + 0x12]
psrld mm4, qword [rbp + 0x1234]
psrld mm4, qword [rbp + 0x12345678]
psrld mm4, qword [4 * rbp]
psrld mm4, qword [4 * rbp + 0x12]
psrld mm4, qword [4 * rbp + 0x1234]
psrld mm4, qword [4 * rbp + 0x12345678]
psrld mm4, qword [rbx + 4 * rbp]
psrld mm4, qword [rbx + 4 * rbp + 0x12]
psrld mm4, qword [rbx + 4 * rbp + 0x1234]
psrld mm4, qword [rbx + 4 * rbp + 0x12345678]
psrld mm4, qword [rsp]
psrld mm4, qword [rsp + 0x12]
psrld mm4, qword [rsp + 0x1234]
psrld mm4, qword [rsp + 0x12345678]
psrld mm4, qword [rsp + rax]
psrld mm4, qword [rsp + rbp]
psrld mm4, qword [rsp + 2*rbp]
psrld mm4, qword [rsp + 4*rbp]
psrld mm4, qword [rsp + 8*rbp]
psrld mm4, qword [rax]
psrld mm4, qword [rcx]
psrld mm4, qword [rdx]
psrld mm4, qword [rbx]
psrld mm4, qword [rsp]
psrld mm4, qword [rbp]
psrld mm4, qword [rsi]
psrld mm4, qword [rdi]
psrld mm4, qword [rax + 2*rax]
psrld mm4, qword [rcx + 2*rcx]
psrld mm4, qword [rdx + 2*rdx]
psrld mm4, qword [rbx + 2*rbx]
psrld mm4, qword [rbp + 2*rbp]
psrld mm4, qword [rsi + 2*rsi]
psrld mm4, qword [rdi + 2*rdi]
psrld mm5, qword [rip + 0x13]
psrld mm5, qword [rip + 0x1235]
psrld mm5, qword [rip + 0x12345679]
psrld mm5, qword [rbx]
psrld mm5, qword [rcx + 0x14]
psrld mm5, qword [rdx + 0x15]
psrld mm5, qword [rbx + 0x1235]
psrld mm5, qword [rbx + 0x12345679]
psrld mm5, qword [rbx + rcx]
psrld mm5, qword [rbx + 4 * rcx]
psrld mm5, qword [rbx + rcx + 0x13]
psrld mm5, qword [rbx + rcx + 0x1235]
psrld mm5, qword [rbx + rcx + 0x12345679]
psrld mm5, qword [rbx + 4 * rcx + 0x13]
psrld mm5, qword [rbx + 4 * rcx + 0x1235]
psrld mm5, qword [rbx + 8 * rcx + 0x12345679]
psrld mm5, qword [4 * rcx]
psrld mm5, qword [4 * rcx + 0x13]
psrld mm5, qword [4 * rcx + 0x1235]
psrld mm5, qword [4 * rcx + 0x12345679]
psrld mm5, qword [rbp]
psrld mm5, qword [rbp + 0x12]
psrld mm5, qword [rbp + 0x1234]
psrld mm5, qword [rbp + 0x12345678]
psrld mm5, qword [4 * rbp]
psrld mm5, qword [4 * rbp + 0x12]
psrld mm5, qword [4 * rbp + 0x1234]
psrld mm5, qword [4 * rbp + 0x12345678]
psrld mm5, qword [rbx + 4 * rbp]
psrld mm5, qword [rbx + 4 * rbp + 0x12]
psrld mm5, qword [rbx + 4 * rbp + 0x1234]
psrld mm5, qword [rbx + 4 * rbp + 0x12345678]
psrld mm5, qword [rsp]
psrld mm5, qword [rsp + 0x12]
psrld mm5, qword [rsp + 0x1234]
psrld mm5, qword [rsp + 0x12345678]
psrld mm5, qword [rsp + rax]
psrld mm5, qword [rsp + rbp]
psrld mm5, qword [rsp + 2*rbp]
psrld mm5, qword [rsp + 4*rbp]
psrld mm5, qword [rsp + 8*rbp]
psrld mm5, qword [rax]
psrld mm5, qword [rcx]
psrld mm5, qword [rdx]
psrld mm5, qword [rbx]
psrld mm5, qword [rsp]
psrld mm5, qword [rbp]
psrld mm5, qword [rsi]
psrld mm5, qword [rdi]
psrld mm5, qword [rax + 2*rax]
psrld mm5, qword [rcx + 2*rcx]
psrld mm5, qword [rdx + 2*rdx]
psrld mm5, qword [rbx + 2*rbx]
psrld mm5, qword [rbp + 2*rbp]
psrld mm5, qword [rsi + 2*rsi]
psrld mm5, qword [rdi + 2*rdi]
psrld mm6, qword [rip + 0x13]
psrld mm6, qword [rip + 0x1235]
psrld mm6, qword [rip + 0x12345679]
psrld mm6, qword [rbx]
psrld mm6, qword [rcx + 0x14]
psrld mm6, qword [rdx + 0x15]
psrld mm6, qword [rbx + 0x1235]
psrld mm6, qword [rbx + 0x12345679]
psrld mm6, qword [rbx + rcx]
psrld mm6, qword [rbx + 4 * rcx]
psrld mm6, qword [rbx + rcx + 0x13]
psrld mm6, qword [rbx + rcx + 0x1235]
psrld mm6, qword [rbx + rcx + 0x12345679]
psrld mm6, qword [rbx + 4 * rcx + 0x13]
psrld mm6, qword [rbx + 4 * rcx + 0x1235]
psrld mm6, qword [rbx + 8 * rcx + 0x12345679]
psrld mm6, qword [4 * rcx]
psrld mm6, qword [4 * rcx + 0x13]
psrld mm6, qword [4 * rcx + 0x1235]
psrld mm6, qword [4 * rcx + 0x12345679]
psrld mm6, qword [rbp]
psrld mm6, qword [rbp + 0x12]
psrld mm6, qword [rbp + 0x1234]
psrld mm6, qword [rbp + 0x12345678]
psrld mm6, qword [4 * rbp]
psrld mm6, qword [4 * rbp + 0x12]
psrld mm6, qword [4 * rbp + 0x1234]
psrld mm6, qword [4 * rbp + 0x12345678]
psrld mm6, qword [rbx + 4 * rbp]
psrld mm6, qword [rbx + 4 * rbp + 0x12]
psrld mm6, qword [rbx + 4 * rbp + 0x1234]
psrld mm6, qword [rbx + 4 * rbp + 0x12345678]
psrld mm6, qword [rsp]
psrld mm6, qword [rsp + 0x12]
psrld mm6, qword [rsp + 0x1234]
psrld mm6, qword [rsp + 0x12345678]
psrld mm6, qword [rsp + rax]
psrld mm6, qword [rsp + rbp]
psrld mm6, qword [rsp + 2*rbp]
psrld mm6, qword [rsp + 4*rbp]
psrld mm6, qword [rsp + 8*rbp]
psrld mm6, qword [rax]
psrld mm6, qword [rcx]
psrld mm6, qword [rdx]
psrld mm6, qword [rbx]
psrld mm6, qword [rsp]
psrld mm6, qword [rbp]
psrld mm6, qword [rsi]
psrld mm6, qword [rdi]
psrld mm6, qword [rax + 2*rax]
psrld mm6, qword [rcx + 2*rcx]
psrld mm6, qword [rdx + 2*rdx]
psrld mm6, qword [rbx + 2*rbx]
psrld mm6, qword [rbp + 2*rbp]
psrld mm6, qword [rsi + 2*rsi]
psrld mm6, qword [rdi + 2*rdi]
psrld mm7, qword [rip + 0x13]
psrld mm7, qword [rip + 0x1235]
psrld mm7, qword [rip + 0x12345679]
psrld mm7, qword [rbx]
psrld mm7, qword [rcx + 0x14]
psrld mm7, qword [rdx + 0x15]
psrld mm7, qword [rbx + 0x1235]
psrld mm7, qword [rbx + 0x12345679]
psrld mm7, qword [rbx + rcx]
psrld mm7, qword [rbx + 4 * rcx]
psrld mm7, qword [rbx + rcx + 0x13]
psrld mm7, qword [rbx + rcx + 0x1235]
psrld mm7, qword [rbx + rcx + 0x12345679]
psrld mm7, qword [rbx + 4 * rcx + 0x13]
psrld mm7, qword [rbx + 4 * rcx + 0x1235]
psrld mm7, qword [rbx + 8 * rcx + 0x12345679]
psrld mm7, qword [4 * rcx]
psrld mm7, qword [4 * rcx + 0x13]
psrld mm7, qword [4 * rcx + 0x1235]
psrld mm7, qword [4 * rcx + 0x12345679]
psrld mm7, qword [rbp]
psrld mm7, qword [rbp + 0x12]
psrld mm7, qword [rbp + 0x1234]
psrld mm7, qword [rbp + 0x12345678]
psrld mm7, qword [4 * rbp]
psrld mm7, qword [4 * rbp + 0x12]
psrld mm7, qword [4 * rbp + 0x1234]
psrld mm7, qword [4 * rbp + 0x12345678]
psrld mm7, qword [rbx + 4 * rbp]
psrld mm7, qword [rbx + 4 * rbp + 0x12]
psrld mm7, qword [rbx + 4 * rbp + 0x1234]
psrld mm7, qword [rbx + 4 * rbp + 0x12345678]
psrld mm7, qword [rsp]
psrld mm7, qword [rsp + 0x12]
psrld mm7, qword [rsp + 0x1234]
psrld mm7, qword [rsp + 0x12345678]
psrld mm7, qword [rsp + rax]
psrld mm7, qword [rsp + rbp]
psrld mm7, qword [rsp + 2*rbp]
psrld mm7, qword [rsp + 4*rbp]
psrld mm7, qword [rsp + 8*rbp]
psrld mm7, qword [rax]
psrld mm7, qword [rcx]
psrld mm7, qword [rdx]
psrld mm7, qword [rbx]
psrld mm7, qword [rsp]
psrld mm7, qword [rbp]
psrld mm7, qword [rsi]
psrld mm7, qword [rdi]
psrld mm7, qword [rax + 2*rax]
psrld mm7, qword [rcx + 2*rcx]
psrld mm7, qword [rdx + 2*rdx]
psrld mm7, qword [rbx + 2*rbx]
psrld mm7, qword [rbp + 2*rbp]
psrld mm7, qword [rsi + 2*rsi]
psrld mm7, qword [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode mm,imm8
; ------------------------------------------------------------------------------
psrld mm0, 0
psrld mm0, 1
psrld mm0, 0x12
psrld mm0, 127
psrld mm0, 255
psrld mm0, 0xff
psrld mm1, 0
psrld mm1, 1
psrld mm1, 0x12
psrld mm1, 127
psrld mm1, 255
psrld mm1, 0xff
psrld mm2, 0
psrld mm2, 1
psrld mm2, 0x12
psrld mm2, 127
psrld mm2, 255
psrld mm2, 0xff
psrld mm3, 0
psrld mm3, 1
psrld mm3, 0x12
psrld mm3, 127
psrld mm3, 255
psrld mm3, 0xff
psrld mm4, 0
psrld mm4, 1
psrld mm4, 0x12
psrld mm4, 127
psrld mm4, 255
psrld mm4, 0xff
psrld mm5, 0
psrld mm5, 1
psrld mm5, 0x12
psrld mm5, 127
psrld mm5, 255
psrld mm5, 0xff
psrld mm6, 0
psrld mm6, 1
psrld mm6, 0x12
psrld mm6, 127
psrld mm6, 255
psrld mm6, 0xff
psrld mm7, 0
psrld mm7, 1
psrld mm7, 0x12
psrld mm7, 127
psrld mm7, 255
psrld mm7, 0xff

