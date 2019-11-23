use64
; ------------------------------------------------------------------------------
; opcode mm,mm
; ------------------------------------------------------------------------------
psrad mm0, mm0
psrad mm0, mm1
psrad mm0, mm2
psrad mm0, mm3
psrad mm0, mm4
psrad mm0, mm5
psrad mm0, mm6
psrad mm0, mm7
psrad mm1, mm0
psrad mm1, mm1
psrad mm1, mm2
psrad mm1, mm3
psrad mm1, mm4
psrad mm1, mm5
psrad mm1, mm6
psrad mm1, mm7
psrad mm2, mm0
psrad mm2, mm1
psrad mm2, mm2
psrad mm2, mm3
psrad mm2, mm4
psrad mm2, mm5
psrad mm2, mm6
psrad mm2, mm7
psrad mm3, mm0
psrad mm3, mm1
psrad mm3, mm2
psrad mm3, mm3
psrad mm3, mm4
psrad mm3, mm5
psrad mm3, mm6
psrad mm3, mm7
psrad mm4, mm0
psrad mm4, mm1
psrad mm4, mm2
psrad mm4, mm3
psrad mm4, mm4
psrad mm4, mm5
psrad mm4, mm6
psrad mm4, mm7
psrad mm5, mm0
psrad mm5, mm1
psrad mm5, mm2
psrad mm5, mm3
psrad mm5, mm4
psrad mm5, mm5
psrad mm5, mm6
psrad mm5, mm7
psrad mm6, mm0
psrad mm6, mm1
psrad mm6, mm2
psrad mm6, mm3
psrad mm6, mm4
psrad mm6, mm5
psrad mm6, mm6
psrad mm6, mm7
psrad mm7, mm0
psrad mm7, mm1
psrad mm7, mm2
psrad mm7, mm3
psrad mm7, mm4
psrad mm7, mm5
psrad mm7, mm6
psrad mm7, mm7

; ------------------------------------------------------------------------------
; opcode mm,m64
; ------------------------------------------------------------------------------
psrad mm0, qword [rip + 0x13]
psrad mm0, qword [rip + 0x1235]
psrad mm0, qword [rip + 0x12345679]
psrad mm0, qword [rbx]
psrad mm0, qword [rcx + 0x14]
psrad mm0, qword [rdx + 0x15]
psrad mm0, qword [rbx + 0x1235]
psrad mm0, qword [rbx + 0x12345679]
psrad mm0, qword [rbx + rcx]
psrad mm0, qword [rbx + 4 * rcx]
psrad mm0, qword [rbx + rcx + 0x13]
psrad mm0, qword [rbx + rcx + 0x1235]
psrad mm0, qword [rbx + rcx + 0x12345679]
psrad mm0, qword [rbx + 4 * rcx + 0x13]
psrad mm0, qword [rbx + 4 * rcx + 0x1235]
psrad mm0, qword [rbx + 8 * rcx + 0x12345679]
psrad mm0, qword [4 * rcx]
psrad mm0, qword [4 * rcx + 0x13]
psrad mm0, qword [4 * rcx + 0x1235]
psrad mm0, qword [4 * rcx + 0x12345679]
psrad mm0, qword [rbp]
psrad mm0, qword [rbp + 0x12]
psrad mm0, qword [rbp + 0x1234]
psrad mm0, qword [rbp + 0x12345678]
psrad mm0, qword [4 * rbp]
psrad mm0, qword [4 * rbp + 0x12]
psrad mm0, qword [4 * rbp + 0x1234]
psrad mm0, qword [4 * rbp + 0x12345678]
psrad mm0, qword [rbx + 4 * rbp]
psrad mm0, qword [rbx + 4 * rbp + 0x12]
psrad mm0, qword [rbx + 4 * rbp + 0x1234]
psrad mm0, qword [rbx + 4 * rbp + 0x12345678]
psrad mm0, qword [rsp]
psrad mm0, qword [rsp + 0x12]
psrad mm0, qword [rsp + 0x1234]
psrad mm0, qword [rsp + 0x12345678]
psrad mm0, qword [rsp + rax]
psrad mm0, qword [rsp + rbp]
psrad mm0, qword [rsp + 2*rbp]
psrad mm0, qword [rsp + 4*rbp]
psrad mm0, qword [rsp + 8*rbp]
psrad mm0, qword [rax]
psrad mm0, qword [rcx]
psrad mm0, qword [rdx]
psrad mm0, qword [rbx]
psrad mm0, qword [rsp]
psrad mm0, qword [rbp]
psrad mm0, qword [rsi]
psrad mm0, qword [rdi]
psrad mm0, qword [rax + 2*rax]
psrad mm0, qword [rcx + 2*rcx]
psrad mm0, qword [rdx + 2*rdx]
psrad mm0, qword [rbx + 2*rbx]
psrad mm0, qword [rbp + 2*rbp]
psrad mm0, qword [rsi + 2*rsi]
psrad mm0, qword [rdi + 2*rdi]
psrad mm1, qword [rip + 0x13]
psrad mm1, qword [rip + 0x1235]
psrad mm1, qword [rip + 0x12345679]
psrad mm1, qword [rbx]
psrad mm1, qword [rcx + 0x14]
psrad mm1, qword [rdx + 0x15]
psrad mm1, qword [rbx + 0x1235]
psrad mm1, qword [rbx + 0x12345679]
psrad mm1, qword [rbx + rcx]
psrad mm1, qword [rbx + 4 * rcx]
psrad mm1, qword [rbx + rcx + 0x13]
psrad mm1, qword [rbx + rcx + 0x1235]
psrad mm1, qword [rbx + rcx + 0x12345679]
psrad mm1, qword [rbx + 4 * rcx + 0x13]
psrad mm1, qword [rbx + 4 * rcx + 0x1235]
psrad mm1, qword [rbx + 8 * rcx + 0x12345679]
psrad mm1, qword [4 * rcx]
psrad mm1, qword [4 * rcx + 0x13]
psrad mm1, qword [4 * rcx + 0x1235]
psrad mm1, qword [4 * rcx + 0x12345679]
psrad mm1, qword [rbp]
psrad mm1, qword [rbp + 0x12]
psrad mm1, qword [rbp + 0x1234]
psrad mm1, qword [rbp + 0x12345678]
psrad mm1, qword [4 * rbp]
psrad mm1, qword [4 * rbp + 0x12]
psrad mm1, qword [4 * rbp + 0x1234]
psrad mm1, qword [4 * rbp + 0x12345678]
psrad mm1, qword [rbx + 4 * rbp]
psrad mm1, qword [rbx + 4 * rbp + 0x12]
psrad mm1, qword [rbx + 4 * rbp + 0x1234]
psrad mm1, qword [rbx + 4 * rbp + 0x12345678]
psrad mm1, qword [rsp]
psrad mm1, qword [rsp + 0x12]
psrad mm1, qword [rsp + 0x1234]
psrad mm1, qword [rsp + 0x12345678]
psrad mm1, qword [rsp + rax]
psrad mm1, qword [rsp + rbp]
psrad mm1, qword [rsp + 2*rbp]
psrad mm1, qword [rsp + 4*rbp]
psrad mm1, qword [rsp + 8*rbp]
psrad mm1, qword [rax]
psrad mm1, qword [rcx]
psrad mm1, qword [rdx]
psrad mm1, qword [rbx]
psrad mm1, qword [rsp]
psrad mm1, qword [rbp]
psrad mm1, qword [rsi]
psrad mm1, qword [rdi]
psrad mm1, qword [rax + 2*rax]
psrad mm1, qword [rcx + 2*rcx]
psrad mm1, qword [rdx + 2*rdx]
psrad mm1, qword [rbx + 2*rbx]
psrad mm1, qword [rbp + 2*rbp]
psrad mm1, qword [rsi + 2*rsi]
psrad mm1, qword [rdi + 2*rdi]
psrad mm2, qword [rip + 0x13]
psrad mm2, qword [rip + 0x1235]
psrad mm2, qword [rip + 0x12345679]
psrad mm2, qword [rbx]
psrad mm2, qword [rcx + 0x14]
psrad mm2, qword [rdx + 0x15]
psrad mm2, qword [rbx + 0x1235]
psrad mm2, qword [rbx + 0x12345679]
psrad mm2, qword [rbx + rcx]
psrad mm2, qword [rbx + 4 * rcx]
psrad mm2, qword [rbx + rcx + 0x13]
psrad mm2, qword [rbx + rcx + 0x1235]
psrad mm2, qword [rbx + rcx + 0x12345679]
psrad mm2, qword [rbx + 4 * rcx + 0x13]
psrad mm2, qword [rbx + 4 * rcx + 0x1235]
psrad mm2, qword [rbx + 8 * rcx + 0x12345679]
psrad mm2, qword [4 * rcx]
psrad mm2, qword [4 * rcx + 0x13]
psrad mm2, qword [4 * rcx + 0x1235]
psrad mm2, qword [4 * rcx + 0x12345679]
psrad mm2, qword [rbp]
psrad mm2, qword [rbp + 0x12]
psrad mm2, qword [rbp + 0x1234]
psrad mm2, qword [rbp + 0x12345678]
psrad mm2, qword [4 * rbp]
psrad mm2, qword [4 * rbp + 0x12]
psrad mm2, qword [4 * rbp + 0x1234]
psrad mm2, qword [4 * rbp + 0x12345678]
psrad mm2, qword [rbx + 4 * rbp]
psrad mm2, qword [rbx + 4 * rbp + 0x12]
psrad mm2, qword [rbx + 4 * rbp + 0x1234]
psrad mm2, qword [rbx + 4 * rbp + 0x12345678]
psrad mm2, qword [rsp]
psrad mm2, qword [rsp + 0x12]
psrad mm2, qword [rsp + 0x1234]
psrad mm2, qword [rsp + 0x12345678]
psrad mm2, qword [rsp + rax]
psrad mm2, qword [rsp + rbp]
psrad mm2, qword [rsp + 2*rbp]
psrad mm2, qword [rsp + 4*rbp]
psrad mm2, qword [rsp + 8*rbp]
psrad mm2, qword [rax]
psrad mm2, qword [rcx]
psrad mm2, qword [rdx]
psrad mm2, qword [rbx]
psrad mm2, qword [rsp]
psrad mm2, qword [rbp]
psrad mm2, qword [rsi]
psrad mm2, qword [rdi]
psrad mm2, qword [rax + 2*rax]
psrad mm2, qword [rcx + 2*rcx]
psrad mm2, qword [rdx + 2*rdx]
psrad mm2, qword [rbx + 2*rbx]
psrad mm2, qword [rbp + 2*rbp]
psrad mm2, qword [rsi + 2*rsi]
psrad mm2, qword [rdi + 2*rdi]
psrad mm3, qword [rip + 0x13]
psrad mm3, qword [rip + 0x1235]
psrad mm3, qword [rip + 0x12345679]
psrad mm3, qword [rbx]
psrad mm3, qword [rcx + 0x14]
psrad mm3, qword [rdx + 0x15]
psrad mm3, qword [rbx + 0x1235]
psrad mm3, qword [rbx + 0x12345679]
psrad mm3, qword [rbx + rcx]
psrad mm3, qword [rbx + 4 * rcx]
psrad mm3, qword [rbx + rcx + 0x13]
psrad mm3, qword [rbx + rcx + 0x1235]
psrad mm3, qword [rbx + rcx + 0x12345679]
psrad mm3, qword [rbx + 4 * rcx + 0x13]
psrad mm3, qword [rbx + 4 * rcx + 0x1235]
psrad mm3, qword [rbx + 8 * rcx + 0x12345679]
psrad mm3, qword [4 * rcx]
psrad mm3, qword [4 * rcx + 0x13]
psrad mm3, qword [4 * rcx + 0x1235]
psrad mm3, qword [4 * rcx + 0x12345679]
psrad mm3, qword [rbp]
psrad mm3, qword [rbp + 0x12]
psrad mm3, qword [rbp + 0x1234]
psrad mm3, qword [rbp + 0x12345678]
psrad mm3, qword [4 * rbp]
psrad mm3, qword [4 * rbp + 0x12]
psrad mm3, qword [4 * rbp + 0x1234]
psrad mm3, qword [4 * rbp + 0x12345678]
psrad mm3, qword [rbx + 4 * rbp]
psrad mm3, qword [rbx + 4 * rbp + 0x12]
psrad mm3, qword [rbx + 4 * rbp + 0x1234]
psrad mm3, qword [rbx + 4 * rbp + 0x12345678]
psrad mm3, qword [rsp]
psrad mm3, qword [rsp + 0x12]
psrad mm3, qword [rsp + 0x1234]
psrad mm3, qword [rsp + 0x12345678]
psrad mm3, qword [rsp + rax]
psrad mm3, qword [rsp + rbp]
psrad mm3, qword [rsp + 2*rbp]
psrad mm3, qword [rsp + 4*rbp]
psrad mm3, qword [rsp + 8*rbp]
psrad mm3, qword [rax]
psrad mm3, qword [rcx]
psrad mm3, qword [rdx]
psrad mm3, qword [rbx]
psrad mm3, qword [rsp]
psrad mm3, qword [rbp]
psrad mm3, qword [rsi]
psrad mm3, qword [rdi]
psrad mm3, qword [rax + 2*rax]
psrad mm3, qword [rcx + 2*rcx]
psrad mm3, qword [rdx + 2*rdx]
psrad mm3, qword [rbx + 2*rbx]
psrad mm3, qword [rbp + 2*rbp]
psrad mm3, qword [rsi + 2*rsi]
psrad mm3, qword [rdi + 2*rdi]
psrad mm4, qword [rip + 0x13]
psrad mm4, qword [rip + 0x1235]
psrad mm4, qword [rip + 0x12345679]
psrad mm4, qword [rbx]
psrad mm4, qword [rcx + 0x14]
psrad mm4, qword [rdx + 0x15]
psrad mm4, qword [rbx + 0x1235]
psrad mm4, qword [rbx + 0x12345679]
psrad mm4, qword [rbx + rcx]
psrad mm4, qword [rbx + 4 * rcx]
psrad mm4, qword [rbx + rcx + 0x13]
psrad mm4, qword [rbx + rcx + 0x1235]
psrad mm4, qword [rbx + rcx + 0x12345679]
psrad mm4, qword [rbx + 4 * rcx + 0x13]
psrad mm4, qword [rbx + 4 * rcx + 0x1235]
psrad mm4, qword [rbx + 8 * rcx + 0x12345679]
psrad mm4, qword [4 * rcx]
psrad mm4, qword [4 * rcx + 0x13]
psrad mm4, qword [4 * rcx + 0x1235]
psrad mm4, qword [4 * rcx + 0x12345679]
psrad mm4, qword [rbp]
psrad mm4, qword [rbp + 0x12]
psrad mm4, qword [rbp + 0x1234]
psrad mm4, qword [rbp + 0x12345678]
psrad mm4, qword [4 * rbp]
psrad mm4, qword [4 * rbp + 0x12]
psrad mm4, qword [4 * rbp + 0x1234]
psrad mm4, qword [4 * rbp + 0x12345678]
psrad mm4, qword [rbx + 4 * rbp]
psrad mm4, qword [rbx + 4 * rbp + 0x12]
psrad mm4, qword [rbx + 4 * rbp + 0x1234]
psrad mm4, qword [rbx + 4 * rbp + 0x12345678]
psrad mm4, qword [rsp]
psrad mm4, qword [rsp + 0x12]
psrad mm4, qword [rsp + 0x1234]
psrad mm4, qword [rsp + 0x12345678]
psrad mm4, qword [rsp + rax]
psrad mm4, qword [rsp + rbp]
psrad mm4, qword [rsp + 2*rbp]
psrad mm4, qword [rsp + 4*rbp]
psrad mm4, qword [rsp + 8*rbp]
psrad mm4, qword [rax]
psrad mm4, qword [rcx]
psrad mm4, qword [rdx]
psrad mm4, qword [rbx]
psrad mm4, qword [rsp]
psrad mm4, qword [rbp]
psrad mm4, qword [rsi]
psrad mm4, qword [rdi]
psrad mm4, qword [rax + 2*rax]
psrad mm4, qword [rcx + 2*rcx]
psrad mm4, qword [rdx + 2*rdx]
psrad mm4, qword [rbx + 2*rbx]
psrad mm4, qword [rbp + 2*rbp]
psrad mm4, qword [rsi + 2*rsi]
psrad mm4, qword [rdi + 2*rdi]
psrad mm5, qword [rip + 0x13]
psrad mm5, qword [rip + 0x1235]
psrad mm5, qword [rip + 0x12345679]
psrad mm5, qword [rbx]
psrad mm5, qword [rcx + 0x14]
psrad mm5, qword [rdx + 0x15]
psrad mm5, qword [rbx + 0x1235]
psrad mm5, qword [rbx + 0x12345679]
psrad mm5, qword [rbx + rcx]
psrad mm5, qword [rbx + 4 * rcx]
psrad mm5, qword [rbx + rcx + 0x13]
psrad mm5, qword [rbx + rcx + 0x1235]
psrad mm5, qword [rbx + rcx + 0x12345679]
psrad mm5, qword [rbx + 4 * rcx + 0x13]
psrad mm5, qword [rbx + 4 * rcx + 0x1235]
psrad mm5, qword [rbx + 8 * rcx + 0x12345679]
psrad mm5, qword [4 * rcx]
psrad mm5, qword [4 * rcx + 0x13]
psrad mm5, qword [4 * rcx + 0x1235]
psrad mm5, qword [4 * rcx + 0x12345679]
psrad mm5, qword [rbp]
psrad mm5, qword [rbp + 0x12]
psrad mm5, qword [rbp + 0x1234]
psrad mm5, qword [rbp + 0x12345678]
psrad mm5, qword [4 * rbp]
psrad mm5, qword [4 * rbp + 0x12]
psrad mm5, qword [4 * rbp + 0x1234]
psrad mm5, qword [4 * rbp + 0x12345678]
psrad mm5, qword [rbx + 4 * rbp]
psrad mm5, qword [rbx + 4 * rbp + 0x12]
psrad mm5, qword [rbx + 4 * rbp + 0x1234]
psrad mm5, qword [rbx + 4 * rbp + 0x12345678]
psrad mm5, qword [rsp]
psrad mm5, qword [rsp + 0x12]
psrad mm5, qword [rsp + 0x1234]
psrad mm5, qword [rsp + 0x12345678]
psrad mm5, qword [rsp + rax]
psrad mm5, qword [rsp + rbp]
psrad mm5, qword [rsp + 2*rbp]
psrad mm5, qword [rsp + 4*rbp]
psrad mm5, qword [rsp + 8*rbp]
psrad mm5, qword [rax]
psrad mm5, qword [rcx]
psrad mm5, qword [rdx]
psrad mm5, qword [rbx]
psrad mm5, qword [rsp]
psrad mm5, qword [rbp]
psrad mm5, qword [rsi]
psrad mm5, qword [rdi]
psrad mm5, qword [rax + 2*rax]
psrad mm5, qword [rcx + 2*rcx]
psrad mm5, qword [rdx + 2*rdx]
psrad mm5, qword [rbx + 2*rbx]
psrad mm5, qword [rbp + 2*rbp]
psrad mm5, qword [rsi + 2*rsi]
psrad mm5, qword [rdi + 2*rdi]
psrad mm6, qword [rip + 0x13]
psrad mm6, qword [rip + 0x1235]
psrad mm6, qword [rip + 0x12345679]
psrad mm6, qword [rbx]
psrad mm6, qword [rcx + 0x14]
psrad mm6, qword [rdx + 0x15]
psrad mm6, qword [rbx + 0x1235]
psrad mm6, qword [rbx + 0x12345679]
psrad mm6, qword [rbx + rcx]
psrad mm6, qword [rbx + 4 * rcx]
psrad mm6, qword [rbx + rcx + 0x13]
psrad mm6, qword [rbx + rcx + 0x1235]
psrad mm6, qword [rbx + rcx + 0x12345679]
psrad mm6, qword [rbx + 4 * rcx + 0x13]
psrad mm6, qword [rbx + 4 * rcx + 0x1235]
psrad mm6, qword [rbx + 8 * rcx + 0x12345679]
psrad mm6, qword [4 * rcx]
psrad mm6, qword [4 * rcx + 0x13]
psrad mm6, qword [4 * rcx + 0x1235]
psrad mm6, qword [4 * rcx + 0x12345679]
psrad mm6, qword [rbp]
psrad mm6, qword [rbp + 0x12]
psrad mm6, qword [rbp + 0x1234]
psrad mm6, qword [rbp + 0x12345678]
psrad mm6, qword [4 * rbp]
psrad mm6, qword [4 * rbp + 0x12]
psrad mm6, qword [4 * rbp + 0x1234]
psrad mm6, qword [4 * rbp + 0x12345678]
psrad mm6, qword [rbx + 4 * rbp]
psrad mm6, qword [rbx + 4 * rbp + 0x12]
psrad mm6, qword [rbx + 4 * rbp + 0x1234]
psrad mm6, qword [rbx + 4 * rbp + 0x12345678]
psrad mm6, qword [rsp]
psrad mm6, qword [rsp + 0x12]
psrad mm6, qword [rsp + 0x1234]
psrad mm6, qword [rsp + 0x12345678]
psrad mm6, qword [rsp + rax]
psrad mm6, qword [rsp + rbp]
psrad mm6, qword [rsp + 2*rbp]
psrad mm6, qword [rsp + 4*rbp]
psrad mm6, qword [rsp + 8*rbp]
psrad mm6, qword [rax]
psrad mm6, qword [rcx]
psrad mm6, qword [rdx]
psrad mm6, qword [rbx]
psrad mm6, qword [rsp]
psrad mm6, qword [rbp]
psrad mm6, qword [rsi]
psrad mm6, qword [rdi]
psrad mm6, qword [rax + 2*rax]
psrad mm6, qword [rcx + 2*rcx]
psrad mm6, qword [rdx + 2*rdx]
psrad mm6, qword [rbx + 2*rbx]
psrad mm6, qword [rbp + 2*rbp]
psrad mm6, qword [rsi + 2*rsi]
psrad mm6, qword [rdi + 2*rdi]
psrad mm7, qword [rip + 0x13]
psrad mm7, qword [rip + 0x1235]
psrad mm7, qword [rip + 0x12345679]
psrad mm7, qword [rbx]
psrad mm7, qword [rcx + 0x14]
psrad mm7, qword [rdx + 0x15]
psrad mm7, qword [rbx + 0x1235]
psrad mm7, qword [rbx + 0x12345679]
psrad mm7, qword [rbx + rcx]
psrad mm7, qword [rbx + 4 * rcx]
psrad mm7, qword [rbx + rcx + 0x13]
psrad mm7, qword [rbx + rcx + 0x1235]
psrad mm7, qword [rbx + rcx + 0x12345679]
psrad mm7, qword [rbx + 4 * rcx + 0x13]
psrad mm7, qword [rbx + 4 * rcx + 0x1235]
psrad mm7, qword [rbx + 8 * rcx + 0x12345679]
psrad mm7, qword [4 * rcx]
psrad mm7, qword [4 * rcx + 0x13]
psrad mm7, qword [4 * rcx + 0x1235]
psrad mm7, qword [4 * rcx + 0x12345679]
psrad mm7, qword [rbp]
psrad mm7, qword [rbp + 0x12]
psrad mm7, qword [rbp + 0x1234]
psrad mm7, qword [rbp + 0x12345678]
psrad mm7, qword [4 * rbp]
psrad mm7, qword [4 * rbp + 0x12]
psrad mm7, qword [4 * rbp + 0x1234]
psrad mm7, qword [4 * rbp + 0x12345678]
psrad mm7, qword [rbx + 4 * rbp]
psrad mm7, qword [rbx + 4 * rbp + 0x12]
psrad mm7, qword [rbx + 4 * rbp + 0x1234]
psrad mm7, qword [rbx + 4 * rbp + 0x12345678]
psrad mm7, qword [rsp]
psrad mm7, qword [rsp + 0x12]
psrad mm7, qword [rsp + 0x1234]
psrad mm7, qword [rsp + 0x12345678]
psrad mm7, qword [rsp + rax]
psrad mm7, qword [rsp + rbp]
psrad mm7, qword [rsp + 2*rbp]
psrad mm7, qword [rsp + 4*rbp]
psrad mm7, qword [rsp + 8*rbp]
psrad mm7, qword [rax]
psrad mm7, qword [rcx]
psrad mm7, qword [rdx]
psrad mm7, qword [rbx]
psrad mm7, qword [rsp]
psrad mm7, qword [rbp]
psrad mm7, qword [rsi]
psrad mm7, qword [rdi]
psrad mm7, qword [rax + 2*rax]
psrad mm7, qword [rcx + 2*rcx]
psrad mm7, qword [rdx + 2*rdx]
psrad mm7, qword [rbx + 2*rbx]
psrad mm7, qword [rbp + 2*rbp]
psrad mm7, qword [rsi + 2*rsi]
psrad mm7, qword [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode mm,imm8
; ------------------------------------------------------------------------------
psrad mm0, 0
psrad mm0, 1
psrad mm0, 0x12
psrad mm0, 127
psrad mm0, 255
psrad mm0, 0xff
psrad mm1, 0
psrad mm1, 1
psrad mm1, 0x12
psrad mm1, 127
psrad mm1, 255
psrad mm1, 0xff
psrad mm2, 0
psrad mm2, 1
psrad mm2, 0x12
psrad mm2, 127
psrad mm2, 255
psrad mm2, 0xff
psrad mm3, 0
psrad mm3, 1
psrad mm3, 0x12
psrad mm3, 127
psrad mm3, 255
psrad mm3, 0xff
psrad mm4, 0
psrad mm4, 1
psrad mm4, 0x12
psrad mm4, 127
psrad mm4, 255
psrad mm4, 0xff
psrad mm5, 0
psrad mm5, 1
psrad mm5, 0x12
psrad mm5, 127
psrad mm5, 255
psrad mm5, 0xff
psrad mm6, 0
psrad mm6, 1
psrad mm6, 0x12
psrad mm6, 127
psrad mm6, 255
psrad mm6, 0xff
psrad mm7, 0
psrad mm7, 1
psrad mm7, 0x12
psrad mm7, 127
psrad mm7, 255
psrad mm7, 0xff

