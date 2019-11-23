use64
; ------------------------------------------------------------------------------
; opcode mm,mm
; ------------------------------------------------------------------------------
psllw mm0, mm0
psllw mm0, mm1
psllw mm0, mm2
psllw mm0, mm3
psllw mm0, mm4
psllw mm0, mm5
psllw mm0, mm6
psllw mm0, mm7
psllw mm1, mm0
psllw mm1, mm1
psllw mm1, mm2
psllw mm1, mm3
psllw mm1, mm4
psllw mm1, mm5
psllw mm1, mm6
psllw mm1, mm7
psllw mm2, mm0
psllw mm2, mm1
psllw mm2, mm2
psllw mm2, mm3
psllw mm2, mm4
psllw mm2, mm5
psllw mm2, mm6
psllw mm2, mm7
psllw mm3, mm0
psllw mm3, mm1
psllw mm3, mm2
psllw mm3, mm3
psllw mm3, mm4
psllw mm3, mm5
psllw mm3, mm6
psllw mm3, mm7
psllw mm4, mm0
psllw mm4, mm1
psllw mm4, mm2
psllw mm4, mm3
psllw mm4, mm4
psllw mm4, mm5
psllw mm4, mm6
psllw mm4, mm7
psllw mm5, mm0
psllw mm5, mm1
psllw mm5, mm2
psllw mm5, mm3
psllw mm5, mm4
psllw mm5, mm5
psllw mm5, mm6
psllw mm5, mm7
psllw mm6, mm0
psllw mm6, mm1
psllw mm6, mm2
psllw mm6, mm3
psllw mm6, mm4
psllw mm6, mm5
psllw mm6, mm6
psllw mm6, mm7
psllw mm7, mm0
psllw mm7, mm1
psllw mm7, mm2
psllw mm7, mm3
psllw mm7, mm4
psllw mm7, mm5
psllw mm7, mm6
psllw mm7, mm7

; ------------------------------------------------------------------------------
; opcode mm,m64
; ------------------------------------------------------------------------------
psllw mm0, qword [rip + 0x13]
psllw mm0, qword [rip + 0x1235]
psllw mm0, qword [rip + 0x12345679]
psllw mm0, qword [rbx]
psllw mm0, qword [rcx + 0x14]
psllw mm0, qword [rdx + 0x15]
psllw mm0, qword [rbx + 0x1235]
psllw mm0, qword [rbx + 0x12345679]
psllw mm0, qword [rbx + rcx]
psllw mm0, qword [rbx + 4 * rcx]
psllw mm0, qword [rbx + rcx + 0x13]
psllw mm0, qword [rbx + rcx + 0x1235]
psllw mm0, qword [rbx + rcx + 0x12345679]
psllw mm0, qword [rbx + 4 * rcx + 0x13]
psllw mm0, qword [rbx + 4 * rcx + 0x1235]
psllw mm0, qword [rbx + 8 * rcx + 0x12345679]
psllw mm0, qword [4 * rcx]
psllw mm0, qword [4 * rcx + 0x13]
psllw mm0, qword [4 * rcx + 0x1235]
psllw mm0, qword [4 * rcx + 0x12345679]
psllw mm0, qword [rbp]
psllw mm0, qword [rbp + 0x12]
psllw mm0, qword [rbp + 0x1234]
psllw mm0, qword [rbp + 0x12345678]
psllw mm0, qword [4 * rbp]
psllw mm0, qword [4 * rbp + 0x12]
psllw mm0, qword [4 * rbp + 0x1234]
psllw mm0, qword [4 * rbp + 0x12345678]
psllw mm0, qword [rbx + 4 * rbp]
psllw mm0, qword [rbx + 4 * rbp + 0x12]
psllw mm0, qword [rbx + 4 * rbp + 0x1234]
psllw mm0, qword [rbx + 4 * rbp + 0x12345678]
psllw mm0, qword [rsp]
psllw mm0, qword [rsp + 0x12]
psllw mm0, qword [rsp + 0x1234]
psllw mm0, qword [rsp + 0x12345678]
psllw mm0, qword [rsp + rax]
psllw mm0, qword [rsp + rbp]
psllw mm0, qword [rsp + 2*rbp]
psllw mm0, qword [rsp + 4*rbp]
psllw mm0, qword [rsp + 8*rbp]
psllw mm0, qword [rax]
psllw mm0, qword [rcx]
psllw mm0, qword [rdx]
psllw mm0, qword [rbx]
psllw mm0, qword [rsp]
psllw mm0, qword [rbp]
psllw mm0, qword [rsi]
psllw mm0, qword [rdi]
psllw mm0, qword [rax + 2*rax]
psllw mm0, qword [rcx + 2*rcx]
psllw mm0, qword [rdx + 2*rdx]
psllw mm0, qword [rbx + 2*rbx]
psllw mm0, qword [rbp + 2*rbp]
psllw mm0, qword [rsi + 2*rsi]
psllw mm0, qword [rdi + 2*rdi]
psllw mm1, qword [rip + 0x13]
psllw mm1, qword [rip + 0x1235]
psllw mm1, qword [rip + 0x12345679]
psllw mm1, qword [rbx]
psllw mm1, qword [rcx + 0x14]
psllw mm1, qword [rdx + 0x15]
psllw mm1, qword [rbx + 0x1235]
psllw mm1, qword [rbx + 0x12345679]
psllw mm1, qword [rbx + rcx]
psllw mm1, qword [rbx + 4 * rcx]
psllw mm1, qword [rbx + rcx + 0x13]
psllw mm1, qword [rbx + rcx + 0x1235]
psllw mm1, qword [rbx + rcx + 0x12345679]
psllw mm1, qword [rbx + 4 * rcx + 0x13]
psllw mm1, qword [rbx + 4 * rcx + 0x1235]
psllw mm1, qword [rbx + 8 * rcx + 0x12345679]
psllw mm1, qword [4 * rcx]
psllw mm1, qword [4 * rcx + 0x13]
psllw mm1, qword [4 * rcx + 0x1235]
psllw mm1, qword [4 * rcx + 0x12345679]
psllw mm1, qword [rbp]
psllw mm1, qword [rbp + 0x12]
psllw mm1, qword [rbp + 0x1234]
psllw mm1, qword [rbp + 0x12345678]
psllw mm1, qword [4 * rbp]
psllw mm1, qword [4 * rbp + 0x12]
psllw mm1, qword [4 * rbp + 0x1234]
psllw mm1, qword [4 * rbp + 0x12345678]
psllw mm1, qword [rbx + 4 * rbp]
psllw mm1, qword [rbx + 4 * rbp + 0x12]
psllw mm1, qword [rbx + 4 * rbp + 0x1234]
psllw mm1, qword [rbx + 4 * rbp + 0x12345678]
psllw mm1, qword [rsp]
psllw mm1, qword [rsp + 0x12]
psllw mm1, qword [rsp + 0x1234]
psllw mm1, qword [rsp + 0x12345678]
psllw mm1, qword [rsp + rax]
psllw mm1, qword [rsp + rbp]
psllw mm1, qword [rsp + 2*rbp]
psllw mm1, qword [rsp + 4*rbp]
psllw mm1, qword [rsp + 8*rbp]
psllw mm1, qword [rax]
psllw mm1, qword [rcx]
psllw mm1, qword [rdx]
psllw mm1, qword [rbx]
psllw mm1, qword [rsp]
psllw mm1, qword [rbp]
psllw mm1, qword [rsi]
psllw mm1, qword [rdi]
psllw mm1, qword [rax + 2*rax]
psllw mm1, qword [rcx + 2*rcx]
psllw mm1, qword [rdx + 2*rdx]
psllw mm1, qword [rbx + 2*rbx]
psllw mm1, qword [rbp + 2*rbp]
psllw mm1, qword [rsi + 2*rsi]
psllw mm1, qword [rdi + 2*rdi]
psllw mm2, qword [rip + 0x13]
psllw mm2, qword [rip + 0x1235]
psllw mm2, qword [rip + 0x12345679]
psllw mm2, qword [rbx]
psllw mm2, qword [rcx + 0x14]
psllw mm2, qword [rdx + 0x15]
psllw mm2, qword [rbx + 0x1235]
psllw mm2, qword [rbx + 0x12345679]
psllw mm2, qword [rbx + rcx]
psllw mm2, qword [rbx + 4 * rcx]
psllw mm2, qword [rbx + rcx + 0x13]
psllw mm2, qword [rbx + rcx + 0x1235]
psllw mm2, qword [rbx + rcx + 0x12345679]
psllw mm2, qword [rbx + 4 * rcx + 0x13]
psllw mm2, qword [rbx + 4 * rcx + 0x1235]
psllw mm2, qword [rbx + 8 * rcx + 0x12345679]
psllw mm2, qword [4 * rcx]
psllw mm2, qword [4 * rcx + 0x13]
psllw mm2, qword [4 * rcx + 0x1235]
psllw mm2, qword [4 * rcx + 0x12345679]
psllw mm2, qword [rbp]
psllw mm2, qword [rbp + 0x12]
psllw mm2, qword [rbp + 0x1234]
psllw mm2, qword [rbp + 0x12345678]
psllw mm2, qword [4 * rbp]
psllw mm2, qword [4 * rbp + 0x12]
psllw mm2, qword [4 * rbp + 0x1234]
psllw mm2, qword [4 * rbp + 0x12345678]
psllw mm2, qword [rbx + 4 * rbp]
psllw mm2, qword [rbx + 4 * rbp + 0x12]
psllw mm2, qword [rbx + 4 * rbp + 0x1234]
psllw mm2, qword [rbx + 4 * rbp + 0x12345678]
psllw mm2, qword [rsp]
psllw mm2, qword [rsp + 0x12]
psllw mm2, qword [rsp + 0x1234]
psllw mm2, qword [rsp + 0x12345678]
psllw mm2, qword [rsp + rax]
psllw mm2, qword [rsp + rbp]
psllw mm2, qword [rsp + 2*rbp]
psllw mm2, qword [rsp + 4*rbp]
psllw mm2, qword [rsp + 8*rbp]
psllw mm2, qword [rax]
psllw mm2, qword [rcx]
psllw mm2, qword [rdx]
psllw mm2, qword [rbx]
psllw mm2, qword [rsp]
psllw mm2, qword [rbp]
psllw mm2, qword [rsi]
psllw mm2, qword [rdi]
psllw mm2, qword [rax + 2*rax]
psllw mm2, qword [rcx + 2*rcx]
psllw mm2, qword [rdx + 2*rdx]
psllw mm2, qword [rbx + 2*rbx]
psllw mm2, qword [rbp + 2*rbp]
psllw mm2, qword [rsi + 2*rsi]
psllw mm2, qword [rdi + 2*rdi]
psllw mm3, qword [rip + 0x13]
psllw mm3, qword [rip + 0x1235]
psllw mm3, qword [rip + 0x12345679]
psllw mm3, qword [rbx]
psllw mm3, qword [rcx + 0x14]
psllw mm3, qword [rdx + 0x15]
psllw mm3, qword [rbx + 0x1235]
psllw mm3, qword [rbx + 0x12345679]
psllw mm3, qword [rbx + rcx]
psllw mm3, qword [rbx + 4 * rcx]
psllw mm3, qword [rbx + rcx + 0x13]
psllw mm3, qword [rbx + rcx + 0x1235]
psllw mm3, qword [rbx + rcx + 0x12345679]
psllw mm3, qword [rbx + 4 * rcx + 0x13]
psllw mm3, qword [rbx + 4 * rcx + 0x1235]
psllw mm3, qword [rbx + 8 * rcx + 0x12345679]
psllw mm3, qword [4 * rcx]
psllw mm3, qword [4 * rcx + 0x13]
psllw mm3, qword [4 * rcx + 0x1235]
psllw mm3, qword [4 * rcx + 0x12345679]
psllw mm3, qword [rbp]
psllw mm3, qword [rbp + 0x12]
psllw mm3, qword [rbp + 0x1234]
psllw mm3, qword [rbp + 0x12345678]
psllw mm3, qword [4 * rbp]
psllw mm3, qword [4 * rbp + 0x12]
psllw mm3, qword [4 * rbp + 0x1234]
psllw mm3, qword [4 * rbp + 0x12345678]
psllw mm3, qword [rbx + 4 * rbp]
psllw mm3, qword [rbx + 4 * rbp + 0x12]
psllw mm3, qword [rbx + 4 * rbp + 0x1234]
psllw mm3, qword [rbx + 4 * rbp + 0x12345678]
psllw mm3, qword [rsp]
psllw mm3, qword [rsp + 0x12]
psllw mm3, qword [rsp + 0x1234]
psllw mm3, qword [rsp + 0x12345678]
psllw mm3, qword [rsp + rax]
psllw mm3, qword [rsp + rbp]
psllw mm3, qword [rsp + 2*rbp]
psllw mm3, qword [rsp + 4*rbp]
psllw mm3, qword [rsp + 8*rbp]
psllw mm3, qword [rax]
psllw mm3, qword [rcx]
psllw mm3, qword [rdx]
psllw mm3, qword [rbx]
psllw mm3, qword [rsp]
psllw mm3, qword [rbp]
psllw mm3, qword [rsi]
psllw mm3, qword [rdi]
psllw mm3, qword [rax + 2*rax]
psllw mm3, qword [rcx + 2*rcx]
psllw mm3, qword [rdx + 2*rdx]
psllw mm3, qword [rbx + 2*rbx]
psllw mm3, qword [rbp + 2*rbp]
psllw mm3, qword [rsi + 2*rsi]
psllw mm3, qword [rdi + 2*rdi]
psllw mm4, qword [rip + 0x13]
psllw mm4, qword [rip + 0x1235]
psllw mm4, qword [rip + 0x12345679]
psllw mm4, qword [rbx]
psllw mm4, qword [rcx + 0x14]
psllw mm4, qword [rdx + 0x15]
psllw mm4, qword [rbx + 0x1235]
psllw mm4, qword [rbx + 0x12345679]
psllw mm4, qword [rbx + rcx]
psllw mm4, qword [rbx + 4 * rcx]
psllw mm4, qword [rbx + rcx + 0x13]
psllw mm4, qword [rbx + rcx + 0x1235]
psllw mm4, qword [rbx + rcx + 0x12345679]
psllw mm4, qword [rbx + 4 * rcx + 0x13]
psllw mm4, qword [rbx + 4 * rcx + 0x1235]
psllw mm4, qword [rbx + 8 * rcx + 0x12345679]
psllw mm4, qword [4 * rcx]
psllw mm4, qword [4 * rcx + 0x13]
psllw mm4, qword [4 * rcx + 0x1235]
psllw mm4, qword [4 * rcx + 0x12345679]
psllw mm4, qword [rbp]
psllw mm4, qword [rbp + 0x12]
psllw mm4, qword [rbp + 0x1234]
psllw mm4, qword [rbp + 0x12345678]
psllw mm4, qword [4 * rbp]
psllw mm4, qword [4 * rbp + 0x12]
psllw mm4, qword [4 * rbp + 0x1234]
psllw mm4, qword [4 * rbp + 0x12345678]
psllw mm4, qword [rbx + 4 * rbp]
psllw mm4, qword [rbx + 4 * rbp + 0x12]
psllw mm4, qword [rbx + 4 * rbp + 0x1234]
psllw mm4, qword [rbx + 4 * rbp + 0x12345678]
psllw mm4, qword [rsp]
psllw mm4, qword [rsp + 0x12]
psllw mm4, qword [rsp + 0x1234]
psllw mm4, qword [rsp + 0x12345678]
psllw mm4, qword [rsp + rax]
psllw mm4, qword [rsp + rbp]
psllw mm4, qword [rsp + 2*rbp]
psllw mm4, qword [rsp + 4*rbp]
psllw mm4, qword [rsp + 8*rbp]
psllw mm4, qword [rax]
psllw mm4, qword [rcx]
psllw mm4, qword [rdx]
psllw mm4, qword [rbx]
psllw mm4, qword [rsp]
psllw mm4, qword [rbp]
psllw mm4, qword [rsi]
psllw mm4, qword [rdi]
psllw mm4, qword [rax + 2*rax]
psllw mm4, qword [rcx + 2*rcx]
psllw mm4, qword [rdx + 2*rdx]
psllw mm4, qword [rbx + 2*rbx]
psllw mm4, qword [rbp + 2*rbp]
psllw mm4, qword [rsi + 2*rsi]
psllw mm4, qword [rdi + 2*rdi]
psllw mm5, qword [rip + 0x13]
psllw mm5, qword [rip + 0x1235]
psllw mm5, qword [rip + 0x12345679]
psllw mm5, qword [rbx]
psllw mm5, qword [rcx + 0x14]
psllw mm5, qword [rdx + 0x15]
psllw mm5, qword [rbx + 0x1235]
psllw mm5, qword [rbx + 0x12345679]
psllw mm5, qword [rbx + rcx]
psllw mm5, qword [rbx + 4 * rcx]
psllw mm5, qword [rbx + rcx + 0x13]
psllw mm5, qword [rbx + rcx + 0x1235]
psllw mm5, qword [rbx + rcx + 0x12345679]
psllw mm5, qword [rbx + 4 * rcx + 0x13]
psllw mm5, qword [rbx + 4 * rcx + 0x1235]
psllw mm5, qword [rbx + 8 * rcx + 0x12345679]
psllw mm5, qword [4 * rcx]
psllw mm5, qword [4 * rcx + 0x13]
psllw mm5, qword [4 * rcx + 0x1235]
psllw mm5, qword [4 * rcx + 0x12345679]
psllw mm5, qword [rbp]
psllw mm5, qword [rbp + 0x12]
psllw mm5, qword [rbp + 0x1234]
psllw mm5, qword [rbp + 0x12345678]
psllw mm5, qword [4 * rbp]
psllw mm5, qword [4 * rbp + 0x12]
psllw mm5, qword [4 * rbp + 0x1234]
psllw mm5, qword [4 * rbp + 0x12345678]
psllw mm5, qword [rbx + 4 * rbp]
psllw mm5, qword [rbx + 4 * rbp + 0x12]
psllw mm5, qword [rbx + 4 * rbp + 0x1234]
psllw mm5, qword [rbx + 4 * rbp + 0x12345678]
psllw mm5, qword [rsp]
psllw mm5, qword [rsp + 0x12]
psllw mm5, qword [rsp + 0x1234]
psllw mm5, qword [rsp + 0x12345678]
psllw mm5, qword [rsp + rax]
psllw mm5, qword [rsp + rbp]
psllw mm5, qword [rsp + 2*rbp]
psllw mm5, qword [rsp + 4*rbp]
psllw mm5, qword [rsp + 8*rbp]
psllw mm5, qword [rax]
psllw mm5, qword [rcx]
psllw mm5, qword [rdx]
psllw mm5, qword [rbx]
psllw mm5, qword [rsp]
psllw mm5, qword [rbp]
psllw mm5, qword [rsi]
psllw mm5, qword [rdi]
psllw mm5, qword [rax + 2*rax]
psllw mm5, qword [rcx + 2*rcx]
psllw mm5, qword [rdx + 2*rdx]
psllw mm5, qword [rbx + 2*rbx]
psllw mm5, qword [rbp + 2*rbp]
psllw mm5, qword [rsi + 2*rsi]
psllw mm5, qword [rdi + 2*rdi]
psllw mm6, qword [rip + 0x13]
psllw mm6, qword [rip + 0x1235]
psllw mm6, qword [rip + 0x12345679]
psllw mm6, qword [rbx]
psllw mm6, qword [rcx + 0x14]
psllw mm6, qword [rdx + 0x15]
psllw mm6, qword [rbx + 0x1235]
psllw mm6, qword [rbx + 0x12345679]
psllw mm6, qword [rbx + rcx]
psllw mm6, qword [rbx + 4 * rcx]
psllw mm6, qword [rbx + rcx + 0x13]
psllw mm6, qword [rbx + rcx + 0x1235]
psllw mm6, qword [rbx + rcx + 0x12345679]
psllw mm6, qword [rbx + 4 * rcx + 0x13]
psllw mm6, qword [rbx + 4 * rcx + 0x1235]
psllw mm6, qword [rbx + 8 * rcx + 0x12345679]
psllw mm6, qword [4 * rcx]
psllw mm6, qword [4 * rcx + 0x13]
psllw mm6, qword [4 * rcx + 0x1235]
psllw mm6, qword [4 * rcx + 0x12345679]
psllw mm6, qword [rbp]
psllw mm6, qword [rbp + 0x12]
psllw mm6, qword [rbp + 0x1234]
psllw mm6, qword [rbp + 0x12345678]
psllw mm6, qword [4 * rbp]
psllw mm6, qword [4 * rbp + 0x12]
psllw mm6, qword [4 * rbp + 0x1234]
psllw mm6, qword [4 * rbp + 0x12345678]
psllw mm6, qword [rbx + 4 * rbp]
psllw mm6, qword [rbx + 4 * rbp + 0x12]
psllw mm6, qword [rbx + 4 * rbp + 0x1234]
psllw mm6, qword [rbx + 4 * rbp + 0x12345678]
psllw mm6, qword [rsp]
psllw mm6, qword [rsp + 0x12]
psllw mm6, qword [rsp + 0x1234]
psllw mm6, qword [rsp + 0x12345678]
psllw mm6, qword [rsp + rax]
psllw mm6, qword [rsp + rbp]
psllw mm6, qword [rsp + 2*rbp]
psllw mm6, qword [rsp + 4*rbp]
psllw mm6, qword [rsp + 8*rbp]
psllw mm6, qword [rax]
psllw mm6, qword [rcx]
psllw mm6, qword [rdx]
psllw mm6, qword [rbx]
psllw mm6, qword [rsp]
psllw mm6, qword [rbp]
psllw mm6, qword [rsi]
psllw mm6, qword [rdi]
psllw mm6, qword [rax + 2*rax]
psllw mm6, qword [rcx + 2*rcx]
psllw mm6, qword [rdx + 2*rdx]
psllw mm6, qword [rbx + 2*rbx]
psllw mm6, qword [rbp + 2*rbp]
psllw mm6, qword [rsi + 2*rsi]
psllw mm6, qword [rdi + 2*rdi]
psllw mm7, qword [rip + 0x13]
psllw mm7, qword [rip + 0x1235]
psllw mm7, qword [rip + 0x12345679]
psllw mm7, qword [rbx]
psllw mm7, qword [rcx + 0x14]
psllw mm7, qword [rdx + 0x15]
psllw mm7, qword [rbx + 0x1235]
psllw mm7, qword [rbx + 0x12345679]
psllw mm7, qword [rbx + rcx]
psllw mm7, qword [rbx + 4 * rcx]
psllw mm7, qword [rbx + rcx + 0x13]
psllw mm7, qword [rbx + rcx + 0x1235]
psllw mm7, qword [rbx + rcx + 0x12345679]
psllw mm7, qword [rbx + 4 * rcx + 0x13]
psllw mm7, qword [rbx + 4 * rcx + 0x1235]
psllw mm7, qword [rbx + 8 * rcx + 0x12345679]
psllw mm7, qword [4 * rcx]
psllw mm7, qword [4 * rcx + 0x13]
psllw mm7, qword [4 * rcx + 0x1235]
psllw mm7, qword [4 * rcx + 0x12345679]
psllw mm7, qword [rbp]
psllw mm7, qword [rbp + 0x12]
psllw mm7, qword [rbp + 0x1234]
psllw mm7, qword [rbp + 0x12345678]
psllw mm7, qword [4 * rbp]
psllw mm7, qword [4 * rbp + 0x12]
psllw mm7, qword [4 * rbp + 0x1234]
psllw mm7, qword [4 * rbp + 0x12345678]
psllw mm7, qword [rbx + 4 * rbp]
psllw mm7, qword [rbx + 4 * rbp + 0x12]
psllw mm7, qword [rbx + 4 * rbp + 0x1234]
psllw mm7, qword [rbx + 4 * rbp + 0x12345678]
psllw mm7, qword [rsp]
psllw mm7, qword [rsp + 0x12]
psllw mm7, qword [rsp + 0x1234]
psllw mm7, qword [rsp + 0x12345678]
psllw mm7, qword [rsp + rax]
psllw mm7, qword [rsp + rbp]
psllw mm7, qword [rsp + 2*rbp]
psllw mm7, qword [rsp + 4*rbp]
psllw mm7, qword [rsp + 8*rbp]
psllw mm7, qword [rax]
psllw mm7, qword [rcx]
psllw mm7, qword [rdx]
psllw mm7, qword [rbx]
psllw mm7, qword [rsp]
psllw mm7, qword [rbp]
psllw mm7, qword [rsi]
psllw mm7, qword [rdi]
psllw mm7, qword [rax + 2*rax]
psllw mm7, qword [rcx + 2*rcx]
psllw mm7, qword [rdx + 2*rdx]
psllw mm7, qword [rbx + 2*rbx]
psllw mm7, qword [rbp + 2*rbp]
psllw mm7, qword [rsi + 2*rsi]
psllw mm7, qword [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode mm,imm8
; ------------------------------------------------------------------------------
psllw mm0, 0
psllw mm0, 1
psllw mm0, 0x12
psllw mm0, 127
psllw mm0, 255
psllw mm0, 0xff
psllw mm1, 0
psllw mm1, 1
psllw mm1, 0x12
psllw mm1, 127
psllw mm1, 255
psllw mm1, 0xff
psllw mm2, 0
psllw mm2, 1
psllw mm2, 0x12
psllw mm2, 127
psllw mm2, 255
psllw mm2, 0xff
psllw mm3, 0
psllw mm3, 1
psllw mm3, 0x12
psllw mm3, 127
psllw mm3, 255
psllw mm3, 0xff
psllw mm4, 0
psllw mm4, 1
psllw mm4, 0x12
psllw mm4, 127
psllw mm4, 255
psllw mm4, 0xff
psllw mm5, 0
psllw mm5, 1
psllw mm5, 0x12
psllw mm5, 127
psllw mm5, 255
psllw mm5, 0xff
psllw mm6, 0
psllw mm6, 1
psllw mm6, 0x12
psllw mm6, 127
psllw mm6, 255
psllw mm6, 0xff
psllw mm7, 0
psllw mm7, 1
psllw mm7, 0x12
psllw mm7, 127
psllw mm7, 255
psllw mm7, 0xff

