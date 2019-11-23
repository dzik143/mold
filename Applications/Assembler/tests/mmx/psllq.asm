use64
; ------------------------------------------------------------------------------
; opcode mm,mm
; ------------------------------------------------------------------------------
psllq mm0, mm0
psllq mm0, mm1
psllq mm0, mm2
psllq mm0, mm3
psllq mm0, mm4
psllq mm0, mm5
psllq mm0, mm6
psllq mm0, mm7
psllq mm1, mm0
psllq mm1, mm1
psllq mm1, mm2
psllq mm1, mm3
psllq mm1, mm4
psllq mm1, mm5
psllq mm1, mm6
psllq mm1, mm7
psllq mm2, mm0
psllq mm2, mm1
psllq mm2, mm2
psllq mm2, mm3
psllq mm2, mm4
psllq mm2, mm5
psllq mm2, mm6
psllq mm2, mm7
psllq mm3, mm0
psllq mm3, mm1
psllq mm3, mm2
psllq mm3, mm3
psllq mm3, mm4
psllq mm3, mm5
psllq mm3, mm6
psllq mm3, mm7
psllq mm4, mm0
psllq mm4, mm1
psllq mm4, mm2
psllq mm4, mm3
psllq mm4, mm4
psllq mm4, mm5
psllq mm4, mm6
psllq mm4, mm7
psllq mm5, mm0
psllq mm5, mm1
psllq mm5, mm2
psllq mm5, mm3
psllq mm5, mm4
psllq mm5, mm5
psllq mm5, mm6
psllq mm5, mm7
psllq mm6, mm0
psllq mm6, mm1
psllq mm6, mm2
psllq mm6, mm3
psllq mm6, mm4
psllq mm6, mm5
psllq mm6, mm6
psllq mm6, mm7
psllq mm7, mm0
psllq mm7, mm1
psllq mm7, mm2
psllq mm7, mm3
psllq mm7, mm4
psllq mm7, mm5
psllq mm7, mm6
psllq mm7, mm7

; ------------------------------------------------------------------------------
; opcode mm,m64
; ------------------------------------------------------------------------------
psllq mm0, qword [rip + 0x13]
psllq mm0, qword [rip + 0x1235]
psllq mm0, qword [rip + 0x12345679]
psllq mm0, qword [rbx]
psllq mm0, qword [rcx + 0x14]
psllq mm0, qword [rdx + 0x15]
psllq mm0, qword [rbx + 0x1235]
psllq mm0, qword [rbx + 0x12345679]
psllq mm0, qword [rbx + rcx]
psllq mm0, qword [rbx + 4 * rcx]
psllq mm0, qword [rbx + rcx + 0x13]
psllq mm0, qword [rbx + rcx + 0x1235]
psllq mm0, qword [rbx + rcx + 0x12345679]
psllq mm0, qword [rbx + 4 * rcx + 0x13]
psllq mm0, qword [rbx + 4 * rcx + 0x1235]
psllq mm0, qword [rbx + 8 * rcx + 0x12345679]
psllq mm0, qword [4 * rcx]
psllq mm0, qword [4 * rcx + 0x13]
psllq mm0, qword [4 * rcx + 0x1235]
psllq mm0, qword [4 * rcx + 0x12345679]
psllq mm0, qword [rbp]
psllq mm0, qword [rbp + 0x12]
psllq mm0, qword [rbp + 0x1234]
psllq mm0, qword [rbp + 0x12345678]
psllq mm0, qword [4 * rbp]
psllq mm0, qword [4 * rbp + 0x12]
psllq mm0, qword [4 * rbp + 0x1234]
psllq mm0, qword [4 * rbp + 0x12345678]
psllq mm0, qword [rbx + 4 * rbp]
psllq mm0, qword [rbx + 4 * rbp + 0x12]
psllq mm0, qword [rbx + 4 * rbp + 0x1234]
psllq mm0, qword [rbx + 4 * rbp + 0x12345678]
psllq mm0, qword [rsp]
psllq mm0, qword [rsp + 0x12]
psllq mm0, qword [rsp + 0x1234]
psllq mm0, qword [rsp + 0x12345678]
psllq mm0, qword [rsp + rax]
psllq mm0, qword [rsp + rbp]
psllq mm0, qword [rsp + 2*rbp]
psllq mm0, qword [rsp + 4*rbp]
psllq mm0, qword [rsp + 8*rbp]
psllq mm0, qword [rax]
psllq mm0, qword [rcx]
psllq mm0, qword [rdx]
psllq mm0, qword [rbx]
psllq mm0, qword [rsp]
psllq mm0, qword [rbp]
psllq mm0, qword [rsi]
psllq mm0, qword [rdi]
psllq mm0, qword [rax + 2*rax]
psllq mm0, qword [rcx + 2*rcx]
psllq mm0, qword [rdx + 2*rdx]
psllq mm0, qword [rbx + 2*rbx]
psllq mm0, qword [rbp + 2*rbp]
psllq mm0, qword [rsi + 2*rsi]
psllq mm0, qword [rdi + 2*rdi]
psllq mm1, qword [rip + 0x13]
psllq mm1, qword [rip + 0x1235]
psllq mm1, qword [rip + 0x12345679]
psllq mm1, qword [rbx]
psllq mm1, qword [rcx + 0x14]
psllq mm1, qword [rdx + 0x15]
psllq mm1, qword [rbx + 0x1235]
psllq mm1, qword [rbx + 0x12345679]
psllq mm1, qword [rbx + rcx]
psllq mm1, qword [rbx + 4 * rcx]
psllq mm1, qword [rbx + rcx + 0x13]
psllq mm1, qword [rbx + rcx + 0x1235]
psllq mm1, qword [rbx + rcx + 0x12345679]
psllq mm1, qword [rbx + 4 * rcx + 0x13]
psllq mm1, qword [rbx + 4 * rcx + 0x1235]
psllq mm1, qword [rbx + 8 * rcx + 0x12345679]
psllq mm1, qword [4 * rcx]
psllq mm1, qword [4 * rcx + 0x13]
psllq mm1, qword [4 * rcx + 0x1235]
psllq mm1, qword [4 * rcx + 0x12345679]
psllq mm1, qword [rbp]
psllq mm1, qword [rbp + 0x12]
psllq mm1, qword [rbp + 0x1234]
psllq mm1, qword [rbp + 0x12345678]
psllq mm1, qword [4 * rbp]
psllq mm1, qword [4 * rbp + 0x12]
psllq mm1, qword [4 * rbp + 0x1234]
psllq mm1, qword [4 * rbp + 0x12345678]
psllq mm1, qword [rbx + 4 * rbp]
psllq mm1, qword [rbx + 4 * rbp + 0x12]
psllq mm1, qword [rbx + 4 * rbp + 0x1234]
psllq mm1, qword [rbx + 4 * rbp + 0x12345678]
psllq mm1, qword [rsp]
psllq mm1, qword [rsp + 0x12]
psllq mm1, qword [rsp + 0x1234]
psllq mm1, qword [rsp + 0x12345678]
psllq mm1, qword [rsp + rax]
psllq mm1, qword [rsp + rbp]
psllq mm1, qword [rsp + 2*rbp]
psllq mm1, qword [rsp + 4*rbp]
psllq mm1, qword [rsp + 8*rbp]
psllq mm1, qword [rax]
psllq mm1, qword [rcx]
psllq mm1, qword [rdx]
psllq mm1, qword [rbx]
psllq mm1, qword [rsp]
psllq mm1, qword [rbp]
psllq mm1, qword [rsi]
psllq mm1, qword [rdi]
psllq mm1, qword [rax + 2*rax]
psllq mm1, qword [rcx + 2*rcx]
psllq mm1, qword [rdx + 2*rdx]
psllq mm1, qword [rbx + 2*rbx]
psllq mm1, qword [rbp + 2*rbp]
psllq mm1, qword [rsi + 2*rsi]
psllq mm1, qword [rdi + 2*rdi]
psllq mm2, qword [rip + 0x13]
psllq mm2, qword [rip + 0x1235]
psllq mm2, qword [rip + 0x12345679]
psllq mm2, qword [rbx]
psllq mm2, qword [rcx + 0x14]
psllq mm2, qword [rdx + 0x15]
psllq mm2, qword [rbx + 0x1235]
psllq mm2, qword [rbx + 0x12345679]
psllq mm2, qword [rbx + rcx]
psllq mm2, qword [rbx + 4 * rcx]
psllq mm2, qword [rbx + rcx + 0x13]
psllq mm2, qword [rbx + rcx + 0x1235]
psllq mm2, qword [rbx + rcx + 0x12345679]
psllq mm2, qword [rbx + 4 * rcx + 0x13]
psllq mm2, qword [rbx + 4 * rcx + 0x1235]
psllq mm2, qword [rbx + 8 * rcx + 0x12345679]
psllq mm2, qword [4 * rcx]
psllq mm2, qword [4 * rcx + 0x13]
psllq mm2, qword [4 * rcx + 0x1235]
psllq mm2, qword [4 * rcx + 0x12345679]
psllq mm2, qword [rbp]
psllq mm2, qword [rbp + 0x12]
psllq mm2, qword [rbp + 0x1234]
psllq mm2, qword [rbp + 0x12345678]
psllq mm2, qword [4 * rbp]
psllq mm2, qword [4 * rbp + 0x12]
psllq mm2, qword [4 * rbp + 0x1234]
psllq mm2, qword [4 * rbp + 0x12345678]
psllq mm2, qword [rbx + 4 * rbp]
psllq mm2, qword [rbx + 4 * rbp + 0x12]
psllq mm2, qword [rbx + 4 * rbp + 0x1234]
psllq mm2, qword [rbx + 4 * rbp + 0x12345678]
psllq mm2, qword [rsp]
psllq mm2, qword [rsp + 0x12]
psllq mm2, qword [rsp + 0x1234]
psllq mm2, qword [rsp + 0x12345678]
psllq mm2, qword [rsp + rax]
psllq mm2, qword [rsp + rbp]
psllq mm2, qword [rsp + 2*rbp]
psllq mm2, qword [rsp + 4*rbp]
psllq mm2, qword [rsp + 8*rbp]
psllq mm2, qword [rax]
psllq mm2, qword [rcx]
psllq mm2, qword [rdx]
psllq mm2, qword [rbx]
psllq mm2, qword [rsp]
psllq mm2, qword [rbp]
psllq mm2, qword [rsi]
psllq mm2, qword [rdi]
psllq mm2, qword [rax + 2*rax]
psllq mm2, qword [rcx + 2*rcx]
psllq mm2, qword [rdx + 2*rdx]
psllq mm2, qword [rbx + 2*rbx]
psllq mm2, qword [rbp + 2*rbp]
psllq mm2, qword [rsi + 2*rsi]
psllq mm2, qword [rdi + 2*rdi]
psllq mm3, qword [rip + 0x13]
psllq mm3, qword [rip + 0x1235]
psllq mm3, qword [rip + 0x12345679]
psllq mm3, qword [rbx]
psllq mm3, qword [rcx + 0x14]
psllq mm3, qword [rdx + 0x15]
psllq mm3, qword [rbx + 0x1235]
psllq mm3, qword [rbx + 0x12345679]
psllq mm3, qword [rbx + rcx]
psllq mm3, qword [rbx + 4 * rcx]
psllq mm3, qword [rbx + rcx + 0x13]
psllq mm3, qword [rbx + rcx + 0x1235]
psllq mm3, qword [rbx + rcx + 0x12345679]
psllq mm3, qword [rbx + 4 * rcx + 0x13]
psllq mm3, qword [rbx + 4 * rcx + 0x1235]
psllq mm3, qword [rbx + 8 * rcx + 0x12345679]
psllq mm3, qword [4 * rcx]
psllq mm3, qword [4 * rcx + 0x13]
psllq mm3, qword [4 * rcx + 0x1235]
psllq mm3, qword [4 * rcx + 0x12345679]
psllq mm3, qword [rbp]
psllq mm3, qword [rbp + 0x12]
psllq mm3, qword [rbp + 0x1234]
psllq mm3, qword [rbp + 0x12345678]
psllq mm3, qword [4 * rbp]
psllq mm3, qword [4 * rbp + 0x12]
psllq mm3, qword [4 * rbp + 0x1234]
psllq mm3, qword [4 * rbp + 0x12345678]
psllq mm3, qword [rbx + 4 * rbp]
psllq mm3, qword [rbx + 4 * rbp + 0x12]
psllq mm3, qword [rbx + 4 * rbp + 0x1234]
psllq mm3, qword [rbx + 4 * rbp + 0x12345678]
psllq mm3, qword [rsp]
psllq mm3, qword [rsp + 0x12]
psllq mm3, qword [rsp + 0x1234]
psllq mm3, qword [rsp + 0x12345678]
psllq mm3, qword [rsp + rax]
psllq mm3, qword [rsp + rbp]
psllq mm3, qword [rsp + 2*rbp]
psllq mm3, qword [rsp + 4*rbp]
psllq mm3, qword [rsp + 8*rbp]
psllq mm3, qword [rax]
psllq mm3, qword [rcx]
psllq mm3, qword [rdx]
psllq mm3, qword [rbx]
psllq mm3, qword [rsp]
psllq mm3, qword [rbp]
psllq mm3, qword [rsi]
psllq mm3, qword [rdi]
psllq mm3, qword [rax + 2*rax]
psllq mm3, qword [rcx + 2*rcx]
psllq mm3, qword [rdx + 2*rdx]
psllq mm3, qword [rbx + 2*rbx]
psllq mm3, qword [rbp + 2*rbp]
psllq mm3, qword [rsi + 2*rsi]
psllq mm3, qword [rdi + 2*rdi]
psllq mm4, qword [rip + 0x13]
psllq mm4, qword [rip + 0x1235]
psllq mm4, qword [rip + 0x12345679]
psllq mm4, qword [rbx]
psllq mm4, qword [rcx + 0x14]
psllq mm4, qword [rdx + 0x15]
psllq mm4, qword [rbx + 0x1235]
psllq mm4, qword [rbx + 0x12345679]
psllq mm4, qword [rbx + rcx]
psllq mm4, qword [rbx + 4 * rcx]
psllq mm4, qword [rbx + rcx + 0x13]
psllq mm4, qword [rbx + rcx + 0x1235]
psllq mm4, qword [rbx + rcx + 0x12345679]
psllq mm4, qword [rbx + 4 * rcx + 0x13]
psllq mm4, qword [rbx + 4 * rcx + 0x1235]
psllq mm4, qword [rbx + 8 * rcx + 0x12345679]
psllq mm4, qword [4 * rcx]
psllq mm4, qword [4 * rcx + 0x13]
psllq mm4, qword [4 * rcx + 0x1235]
psllq mm4, qword [4 * rcx + 0x12345679]
psllq mm4, qword [rbp]
psllq mm4, qword [rbp + 0x12]
psllq mm4, qword [rbp + 0x1234]
psllq mm4, qword [rbp + 0x12345678]
psllq mm4, qword [4 * rbp]
psllq mm4, qword [4 * rbp + 0x12]
psllq mm4, qword [4 * rbp + 0x1234]
psllq mm4, qword [4 * rbp + 0x12345678]
psllq mm4, qword [rbx + 4 * rbp]
psllq mm4, qword [rbx + 4 * rbp + 0x12]
psllq mm4, qword [rbx + 4 * rbp + 0x1234]
psllq mm4, qword [rbx + 4 * rbp + 0x12345678]
psllq mm4, qword [rsp]
psllq mm4, qword [rsp + 0x12]
psllq mm4, qword [rsp + 0x1234]
psllq mm4, qword [rsp + 0x12345678]
psllq mm4, qword [rsp + rax]
psllq mm4, qword [rsp + rbp]
psllq mm4, qword [rsp + 2*rbp]
psllq mm4, qword [rsp + 4*rbp]
psllq mm4, qword [rsp + 8*rbp]
psllq mm4, qword [rax]
psllq mm4, qword [rcx]
psllq mm4, qword [rdx]
psllq mm4, qword [rbx]
psllq mm4, qword [rsp]
psllq mm4, qword [rbp]
psllq mm4, qword [rsi]
psllq mm4, qword [rdi]
psllq mm4, qword [rax + 2*rax]
psllq mm4, qword [rcx + 2*rcx]
psllq mm4, qword [rdx + 2*rdx]
psllq mm4, qword [rbx + 2*rbx]
psllq mm4, qword [rbp + 2*rbp]
psllq mm4, qword [rsi + 2*rsi]
psllq mm4, qword [rdi + 2*rdi]
psllq mm5, qword [rip + 0x13]
psllq mm5, qword [rip + 0x1235]
psllq mm5, qword [rip + 0x12345679]
psllq mm5, qword [rbx]
psllq mm5, qword [rcx + 0x14]
psllq mm5, qword [rdx + 0x15]
psllq mm5, qword [rbx + 0x1235]
psllq mm5, qword [rbx + 0x12345679]
psllq mm5, qword [rbx + rcx]
psllq mm5, qword [rbx + 4 * rcx]
psllq mm5, qword [rbx + rcx + 0x13]
psllq mm5, qword [rbx + rcx + 0x1235]
psllq mm5, qword [rbx + rcx + 0x12345679]
psllq mm5, qword [rbx + 4 * rcx + 0x13]
psllq mm5, qword [rbx + 4 * rcx + 0x1235]
psllq mm5, qword [rbx + 8 * rcx + 0x12345679]
psllq mm5, qword [4 * rcx]
psllq mm5, qword [4 * rcx + 0x13]
psllq mm5, qword [4 * rcx + 0x1235]
psllq mm5, qword [4 * rcx + 0x12345679]
psllq mm5, qword [rbp]
psllq mm5, qword [rbp + 0x12]
psllq mm5, qword [rbp + 0x1234]
psllq mm5, qword [rbp + 0x12345678]
psllq mm5, qword [4 * rbp]
psllq mm5, qword [4 * rbp + 0x12]
psllq mm5, qword [4 * rbp + 0x1234]
psllq mm5, qword [4 * rbp + 0x12345678]
psllq mm5, qword [rbx + 4 * rbp]
psllq mm5, qword [rbx + 4 * rbp + 0x12]
psllq mm5, qword [rbx + 4 * rbp + 0x1234]
psllq mm5, qword [rbx + 4 * rbp + 0x12345678]
psllq mm5, qword [rsp]
psllq mm5, qword [rsp + 0x12]
psllq mm5, qword [rsp + 0x1234]
psllq mm5, qword [rsp + 0x12345678]
psllq mm5, qword [rsp + rax]
psllq mm5, qword [rsp + rbp]
psllq mm5, qword [rsp + 2*rbp]
psllq mm5, qword [rsp + 4*rbp]
psllq mm5, qword [rsp + 8*rbp]
psllq mm5, qword [rax]
psllq mm5, qword [rcx]
psllq mm5, qword [rdx]
psllq mm5, qword [rbx]
psllq mm5, qword [rsp]
psllq mm5, qword [rbp]
psllq mm5, qword [rsi]
psllq mm5, qword [rdi]
psllq mm5, qword [rax + 2*rax]
psllq mm5, qword [rcx + 2*rcx]
psllq mm5, qword [rdx + 2*rdx]
psllq mm5, qword [rbx + 2*rbx]
psllq mm5, qword [rbp + 2*rbp]
psllq mm5, qword [rsi + 2*rsi]
psllq mm5, qword [rdi + 2*rdi]
psllq mm6, qword [rip + 0x13]
psllq mm6, qword [rip + 0x1235]
psllq mm6, qword [rip + 0x12345679]
psllq mm6, qword [rbx]
psllq mm6, qword [rcx + 0x14]
psllq mm6, qword [rdx + 0x15]
psllq mm6, qword [rbx + 0x1235]
psllq mm6, qword [rbx + 0x12345679]
psllq mm6, qword [rbx + rcx]
psllq mm6, qword [rbx + 4 * rcx]
psllq mm6, qword [rbx + rcx + 0x13]
psllq mm6, qword [rbx + rcx + 0x1235]
psllq mm6, qword [rbx + rcx + 0x12345679]
psllq mm6, qword [rbx + 4 * rcx + 0x13]
psllq mm6, qword [rbx + 4 * rcx + 0x1235]
psllq mm6, qword [rbx + 8 * rcx + 0x12345679]
psllq mm6, qword [4 * rcx]
psllq mm6, qword [4 * rcx + 0x13]
psllq mm6, qword [4 * rcx + 0x1235]
psllq mm6, qword [4 * rcx + 0x12345679]
psllq mm6, qword [rbp]
psllq mm6, qword [rbp + 0x12]
psllq mm6, qword [rbp + 0x1234]
psllq mm6, qword [rbp + 0x12345678]
psllq mm6, qword [4 * rbp]
psllq mm6, qword [4 * rbp + 0x12]
psllq mm6, qword [4 * rbp + 0x1234]
psllq mm6, qword [4 * rbp + 0x12345678]
psllq mm6, qword [rbx + 4 * rbp]
psllq mm6, qword [rbx + 4 * rbp + 0x12]
psllq mm6, qword [rbx + 4 * rbp + 0x1234]
psllq mm6, qword [rbx + 4 * rbp + 0x12345678]
psllq mm6, qword [rsp]
psllq mm6, qword [rsp + 0x12]
psllq mm6, qword [rsp + 0x1234]
psllq mm6, qword [rsp + 0x12345678]
psllq mm6, qword [rsp + rax]
psllq mm6, qword [rsp + rbp]
psllq mm6, qword [rsp + 2*rbp]
psllq mm6, qword [rsp + 4*rbp]
psllq mm6, qword [rsp + 8*rbp]
psllq mm6, qword [rax]
psllq mm6, qword [rcx]
psllq mm6, qword [rdx]
psllq mm6, qword [rbx]
psllq mm6, qword [rsp]
psllq mm6, qword [rbp]
psllq mm6, qword [rsi]
psllq mm6, qword [rdi]
psllq mm6, qword [rax + 2*rax]
psllq mm6, qword [rcx + 2*rcx]
psllq mm6, qword [rdx + 2*rdx]
psllq mm6, qword [rbx + 2*rbx]
psllq mm6, qword [rbp + 2*rbp]
psllq mm6, qword [rsi + 2*rsi]
psllq mm6, qword [rdi + 2*rdi]
psllq mm7, qword [rip + 0x13]
psllq mm7, qword [rip + 0x1235]
psllq mm7, qword [rip + 0x12345679]
psllq mm7, qword [rbx]
psllq mm7, qword [rcx + 0x14]
psllq mm7, qword [rdx + 0x15]
psllq mm7, qword [rbx + 0x1235]
psllq mm7, qword [rbx + 0x12345679]
psllq mm7, qword [rbx + rcx]
psllq mm7, qword [rbx + 4 * rcx]
psllq mm7, qword [rbx + rcx + 0x13]
psllq mm7, qword [rbx + rcx + 0x1235]
psllq mm7, qword [rbx + rcx + 0x12345679]
psllq mm7, qword [rbx + 4 * rcx + 0x13]
psllq mm7, qword [rbx + 4 * rcx + 0x1235]
psllq mm7, qword [rbx + 8 * rcx + 0x12345679]
psllq mm7, qword [4 * rcx]
psllq mm7, qword [4 * rcx + 0x13]
psllq mm7, qword [4 * rcx + 0x1235]
psllq mm7, qword [4 * rcx + 0x12345679]
psllq mm7, qword [rbp]
psllq mm7, qword [rbp + 0x12]
psllq mm7, qword [rbp + 0x1234]
psllq mm7, qword [rbp + 0x12345678]
psllq mm7, qword [4 * rbp]
psllq mm7, qword [4 * rbp + 0x12]
psllq mm7, qword [4 * rbp + 0x1234]
psllq mm7, qword [4 * rbp + 0x12345678]
psllq mm7, qword [rbx + 4 * rbp]
psllq mm7, qword [rbx + 4 * rbp + 0x12]
psllq mm7, qword [rbx + 4 * rbp + 0x1234]
psllq mm7, qword [rbx + 4 * rbp + 0x12345678]
psllq mm7, qword [rsp]
psllq mm7, qword [rsp + 0x12]
psllq mm7, qword [rsp + 0x1234]
psllq mm7, qword [rsp + 0x12345678]
psllq mm7, qword [rsp + rax]
psllq mm7, qword [rsp + rbp]
psllq mm7, qword [rsp + 2*rbp]
psllq mm7, qword [rsp + 4*rbp]
psllq mm7, qword [rsp + 8*rbp]
psllq mm7, qword [rax]
psllq mm7, qword [rcx]
psllq mm7, qword [rdx]
psllq mm7, qword [rbx]
psllq mm7, qword [rsp]
psllq mm7, qword [rbp]
psllq mm7, qword [rsi]
psllq mm7, qword [rdi]
psllq mm7, qword [rax + 2*rax]
psllq mm7, qword [rcx + 2*rcx]
psllq mm7, qword [rdx + 2*rdx]
psllq mm7, qword [rbx + 2*rbx]
psllq mm7, qword [rbp + 2*rbp]
psllq mm7, qword [rsi + 2*rsi]
psllq mm7, qword [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode mm,imm8
; ------------------------------------------------------------------------------
psllq mm0, 0
psllq mm0, 1
psllq mm0, 0x12
psllq mm0, 127
psllq mm0, 255
psllq mm0, 0xff
psllq mm1, 0
psllq mm1, 1
psllq mm1, 0x12
psllq mm1, 127
psllq mm1, 255
psllq mm1, 0xff
psllq mm2, 0
psllq mm2, 1
psllq mm2, 0x12
psllq mm2, 127
psllq mm2, 255
psllq mm2, 0xff
psllq mm3, 0
psllq mm3, 1
psllq mm3, 0x12
psllq mm3, 127
psllq mm3, 255
psllq mm3, 0xff
psllq mm4, 0
psllq mm4, 1
psllq mm4, 0x12
psllq mm4, 127
psllq mm4, 255
psllq mm4, 0xff
psllq mm5, 0
psllq mm5, 1
psllq mm5, 0x12
psllq mm5, 127
psllq mm5, 255
psllq mm5, 0xff
psllq mm6, 0
psllq mm6, 1
psllq mm6, 0x12
psllq mm6, 127
psllq mm6, 255
psllq mm6, 0xff
psllq mm7, 0
psllq mm7, 1
psllq mm7, 0x12
psllq mm7, 127
psllq mm7, 255
psllq mm7, 0xff

