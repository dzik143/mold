use64
; ------------------------------------------------------------------------------
; opcode mm,mm
; ------------------------------------------------------------------------------
pmaddubsw mm0, mm0
pmaddubsw mm0, mm1
pmaddubsw mm0, mm2
pmaddubsw mm0, mm3
pmaddubsw mm0, mm4
pmaddubsw mm0, mm5
pmaddubsw mm0, mm6
pmaddubsw mm0, mm7
pmaddubsw mm1, mm0
pmaddubsw mm1, mm1
pmaddubsw mm1, mm2
pmaddubsw mm1, mm3
pmaddubsw mm1, mm4
pmaddubsw mm1, mm5
pmaddubsw mm1, mm6
pmaddubsw mm1, mm7
pmaddubsw mm2, mm0
pmaddubsw mm2, mm1
pmaddubsw mm2, mm2
pmaddubsw mm2, mm3
pmaddubsw mm2, mm4
pmaddubsw mm2, mm5
pmaddubsw mm2, mm6
pmaddubsw mm2, mm7
pmaddubsw mm3, mm0
pmaddubsw mm3, mm1
pmaddubsw mm3, mm2
pmaddubsw mm3, mm3
pmaddubsw mm3, mm4
pmaddubsw mm3, mm5
pmaddubsw mm3, mm6
pmaddubsw mm3, mm7
pmaddubsw mm4, mm0
pmaddubsw mm4, mm1
pmaddubsw mm4, mm2
pmaddubsw mm4, mm3
pmaddubsw mm4, mm4
pmaddubsw mm4, mm5
pmaddubsw mm4, mm6
pmaddubsw mm4, mm7
pmaddubsw mm5, mm0
pmaddubsw mm5, mm1
pmaddubsw mm5, mm2
pmaddubsw mm5, mm3
pmaddubsw mm5, mm4
pmaddubsw mm5, mm5
pmaddubsw mm5, mm6
pmaddubsw mm5, mm7
pmaddubsw mm6, mm0
pmaddubsw mm6, mm1
pmaddubsw mm6, mm2
pmaddubsw mm6, mm3
pmaddubsw mm6, mm4
pmaddubsw mm6, mm5
pmaddubsw mm6, mm6
pmaddubsw mm6, mm7
pmaddubsw mm7, mm0
pmaddubsw mm7, mm1
pmaddubsw mm7, mm2
pmaddubsw mm7, mm3
pmaddubsw mm7, mm4
pmaddubsw mm7, mm5
pmaddubsw mm7, mm6
pmaddubsw mm7, mm7

; ------------------------------------------------------------------------------
; opcode mm,m64
; ------------------------------------------------------------------------------
pmaddubsw mm0, qword [rip + 0x13]
pmaddubsw mm0, qword [rip + 0x1235]
pmaddubsw mm0, qword [rip + 0x12345679]
pmaddubsw mm0, qword [rbx]
pmaddubsw mm0, qword [rcx + 0x14]
pmaddubsw mm0, qword [rdx + 0x15]
pmaddubsw mm0, qword [rbx + 0x1235]
pmaddubsw mm0, qword [rbx + 0x12345679]
pmaddubsw mm0, qword [rbx + rcx]
pmaddubsw mm0, qword [rbx + 4 * rcx]
pmaddubsw mm0, qword [rbx + rcx + 0x13]
pmaddubsw mm0, qword [rbx + rcx + 0x1235]
pmaddubsw mm0, qword [rbx + rcx + 0x12345679]
pmaddubsw mm0, qword [rbx + 4 * rcx + 0x13]
pmaddubsw mm0, qword [rbx + 4 * rcx + 0x1235]
pmaddubsw mm0, qword [rbx + 8 * rcx + 0x12345679]
pmaddubsw mm0, qword [4 * rcx]
pmaddubsw mm0, qword [4 * rcx + 0x13]
pmaddubsw mm0, qword [4 * rcx + 0x1235]
pmaddubsw mm0, qword [4 * rcx + 0x12345679]
pmaddubsw mm0, qword [rbp]
pmaddubsw mm0, qword [rbp + 0x12]
pmaddubsw mm0, qword [rbp + 0x1234]
pmaddubsw mm0, qword [rbp + 0x12345678]
pmaddubsw mm0, qword [4 * rbp]
pmaddubsw mm0, qword [4 * rbp + 0x12]
pmaddubsw mm0, qword [4 * rbp + 0x1234]
pmaddubsw mm0, qword [4 * rbp + 0x12345678]
pmaddubsw mm0, qword [rbx + 4 * rbp]
pmaddubsw mm0, qword [rbx + 4 * rbp + 0x12]
pmaddubsw mm0, qword [rbx + 4 * rbp + 0x1234]
pmaddubsw mm0, qword [rbx + 4 * rbp + 0x12345678]
pmaddubsw mm0, qword [rsp]
pmaddubsw mm0, qword [rsp + 0x12]
pmaddubsw mm0, qword [rsp + 0x1234]
pmaddubsw mm0, qword [rsp + 0x12345678]
pmaddubsw mm0, qword [rsp + rax]
pmaddubsw mm0, qword [rsp + rbp]
pmaddubsw mm0, qword [rsp + 2*rbp]
pmaddubsw mm0, qword [rsp + 4*rbp]
pmaddubsw mm0, qword [rsp + 8*rbp]
pmaddubsw mm0, qword [rax]
pmaddubsw mm0, qword [rcx]
pmaddubsw mm0, qword [rdx]
pmaddubsw mm0, qword [rbx]
pmaddubsw mm0, qword [rsp]
pmaddubsw mm0, qword [rbp]
pmaddubsw mm0, qword [rsi]
pmaddubsw mm0, qword [rdi]
pmaddubsw mm0, qword [rax + 2*rax]
pmaddubsw mm0, qword [rcx + 2*rcx]
pmaddubsw mm0, qword [rdx + 2*rdx]
pmaddubsw mm0, qword [rbx + 2*rbx]
pmaddubsw mm0, qword [rbp + 2*rbp]
pmaddubsw mm0, qword [rsi + 2*rsi]
pmaddubsw mm0, qword [rdi + 2*rdi]
pmaddubsw mm1, qword [rip + 0x13]
pmaddubsw mm1, qword [rip + 0x1235]
pmaddubsw mm1, qword [rip + 0x12345679]
pmaddubsw mm1, qword [rbx]
pmaddubsw mm1, qword [rcx + 0x14]
pmaddubsw mm1, qword [rdx + 0x15]
pmaddubsw mm1, qword [rbx + 0x1235]
pmaddubsw mm1, qword [rbx + 0x12345679]
pmaddubsw mm1, qword [rbx + rcx]
pmaddubsw mm1, qword [rbx + 4 * rcx]
pmaddubsw mm1, qword [rbx + rcx + 0x13]
pmaddubsw mm1, qword [rbx + rcx + 0x1235]
pmaddubsw mm1, qword [rbx + rcx + 0x12345679]
pmaddubsw mm1, qword [rbx + 4 * rcx + 0x13]
pmaddubsw mm1, qword [rbx + 4 * rcx + 0x1235]
pmaddubsw mm1, qword [rbx + 8 * rcx + 0x12345679]
pmaddubsw mm1, qword [4 * rcx]
pmaddubsw mm1, qword [4 * rcx + 0x13]
pmaddubsw mm1, qword [4 * rcx + 0x1235]
pmaddubsw mm1, qword [4 * rcx + 0x12345679]
pmaddubsw mm1, qword [rbp]
pmaddubsw mm1, qword [rbp + 0x12]
pmaddubsw mm1, qword [rbp + 0x1234]
pmaddubsw mm1, qword [rbp + 0x12345678]
pmaddubsw mm1, qword [4 * rbp]
pmaddubsw mm1, qword [4 * rbp + 0x12]
pmaddubsw mm1, qword [4 * rbp + 0x1234]
pmaddubsw mm1, qword [4 * rbp + 0x12345678]
pmaddubsw mm1, qword [rbx + 4 * rbp]
pmaddubsw mm1, qword [rbx + 4 * rbp + 0x12]
pmaddubsw mm1, qword [rbx + 4 * rbp + 0x1234]
pmaddubsw mm1, qword [rbx + 4 * rbp + 0x12345678]
pmaddubsw mm1, qword [rsp]
pmaddubsw mm1, qword [rsp + 0x12]
pmaddubsw mm1, qword [rsp + 0x1234]
pmaddubsw mm1, qword [rsp + 0x12345678]
pmaddubsw mm1, qword [rsp + rax]
pmaddubsw mm1, qword [rsp + rbp]
pmaddubsw mm1, qword [rsp + 2*rbp]
pmaddubsw mm1, qword [rsp + 4*rbp]
pmaddubsw mm1, qword [rsp + 8*rbp]
pmaddubsw mm1, qword [rax]
pmaddubsw mm1, qword [rcx]
pmaddubsw mm1, qword [rdx]
pmaddubsw mm1, qword [rbx]
pmaddubsw mm1, qword [rsp]
pmaddubsw mm1, qword [rbp]
pmaddubsw mm1, qword [rsi]
pmaddubsw mm1, qword [rdi]
pmaddubsw mm1, qword [rax + 2*rax]
pmaddubsw mm1, qword [rcx + 2*rcx]
pmaddubsw mm1, qword [rdx + 2*rdx]
pmaddubsw mm1, qword [rbx + 2*rbx]
pmaddubsw mm1, qword [rbp + 2*rbp]
pmaddubsw mm1, qword [rsi + 2*rsi]
pmaddubsw mm1, qword [rdi + 2*rdi]
pmaddubsw mm2, qword [rip + 0x13]
pmaddubsw mm2, qword [rip + 0x1235]
pmaddubsw mm2, qword [rip + 0x12345679]
pmaddubsw mm2, qword [rbx]
pmaddubsw mm2, qword [rcx + 0x14]
pmaddubsw mm2, qword [rdx + 0x15]
pmaddubsw mm2, qword [rbx + 0x1235]
pmaddubsw mm2, qword [rbx + 0x12345679]
pmaddubsw mm2, qword [rbx + rcx]
pmaddubsw mm2, qword [rbx + 4 * rcx]
pmaddubsw mm2, qword [rbx + rcx + 0x13]
pmaddubsw mm2, qword [rbx + rcx + 0x1235]
pmaddubsw mm2, qword [rbx + rcx + 0x12345679]
pmaddubsw mm2, qword [rbx + 4 * rcx + 0x13]
pmaddubsw mm2, qword [rbx + 4 * rcx + 0x1235]
pmaddubsw mm2, qword [rbx + 8 * rcx + 0x12345679]
pmaddubsw mm2, qword [4 * rcx]
pmaddubsw mm2, qword [4 * rcx + 0x13]
pmaddubsw mm2, qword [4 * rcx + 0x1235]
pmaddubsw mm2, qword [4 * rcx + 0x12345679]
pmaddubsw mm2, qword [rbp]
pmaddubsw mm2, qword [rbp + 0x12]
pmaddubsw mm2, qword [rbp + 0x1234]
pmaddubsw mm2, qword [rbp + 0x12345678]
pmaddubsw mm2, qword [4 * rbp]
pmaddubsw mm2, qword [4 * rbp + 0x12]
pmaddubsw mm2, qword [4 * rbp + 0x1234]
pmaddubsw mm2, qword [4 * rbp + 0x12345678]
pmaddubsw mm2, qword [rbx + 4 * rbp]
pmaddubsw mm2, qword [rbx + 4 * rbp + 0x12]
pmaddubsw mm2, qword [rbx + 4 * rbp + 0x1234]
pmaddubsw mm2, qword [rbx + 4 * rbp + 0x12345678]
pmaddubsw mm2, qword [rsp]
pmaddubsw mm2, qword [rsp + 0x12]
pmaddubsw mm2, qword [rsp + 0x1234]
pmaddubsw mm2, qword [rsp + 0x12345678]
pmaddubsw mm2, qword [rsp + rax]
pmaddubsw mm2, qword [rsp + rbp]
pmaddubsw mm2, qword [rsp + 2*rbp]
pmaddubsw mm2, qword [rsp + 4*rbp]
pmaddubsw mm2, qword [rsp + 8*rbp]
pmaddubsw mm2, qword [rax]
pmaddubsw mm2, qword [rcx]
pmaddubsw mm2, qword [rdx]
pmaddubsw mm2, qword [rbx]
pmaddubsw mm2, qword [rsp]
pmaddubsw mm2, qword [rbp]
pmaddubsw mm2, qword [rsi]
pmaddubsw mm2, qword [rdi]
pmaddubsw mm2, qword [rax + 2*rax]
pmaddubsw mm2, qword [rcx + 2*rcx]
pmaddubsw mm2, qword [rdx + 2*rdx]
pmaddubsw mm2, qword [rbx + 2*rbx]
pmaddubsw mm2, qword [rbp + 2*rbp]
pmaddubsw mm2, qword [rsi + 2*rsi]
pmaddubsw mm2, qword [rdi + 2*rdi]
pmaddubsw mm3, qword [rip + 0x13]
pmaddubsw mm3, qword [rip + 0x1235]
pmaddubsw mm3, qword [rip + 0x12345679]
pmaddubsw mm3, qword [rbx]
pmaddubsw mm3, qword [rcx + 0x14]
pmaddubsw mm3, qword [rdx + 0x15]
pmaddubsw mm3, qword [rbx + 0x1235]
pmaddubsw mm3, qword [rbx + 0x12345679]
pmaddubsw mm3, qword [rbx + rcx]
pmaddubsw mm3, qword [rbx + 4 * rcx]
pmaddubsw mm3, qword [rbx + rcx + 0x13]
pmaddubsw mm3, qword [rbx + rcx + 0x1235]
pmaddubsw mm3, qword [rbx + rcx + 0x12345679]
pmaddubsw mm3, qword [rbx + 4 * rcx + 0x13]
pmaddubsw mm3, qword [rbx + 4 * rcx + 0x1235]
pmaddubsw mm3, qword [rbx + 8 * rcx + 0x12345679]
pmaddubsw mm3, qword [4 * rcx]
pmaddubsw mm3, qword [4 * rcx + 0x13]
pmaddubsw mm3, qword [4 * rcx + 0x1235]
pmaddubsw mm3, qword [4 * rcx + 0x12345679]
pmaddubsw mm3, qword [rbp]
pmaddubsw mm3, qword [rbp + 0x12]
pmaddubsw mm3, qword [rbp + 0x1234]
pmaddubsw mm3, qword [rbp + 0x12345678]
pmaddubsw mm3, qword [4 * rbp]
pmaddubsw mm3, qword [4 * rbp + 0x12]
pmaddubsw mm3, qword [4 * rbp + 0x1234]
pmaddubsw mm3, qword [4 * rbp + 0x12345678]
pmaddubsw mm3, qword [rbx + 4 * rbp]
pmaddubsw mm3, qword [rbx + 4 * rbp + 0x12]
pmaddubsw mm3, qword [rbx + 4 * rbp + 0x1234]
pmaddubsw mm3, qword [rbx + 4 * rbp + 0x12345678]
pmaddubsw mm3, qword [rsp]
pmaddubsw mm3, qword [rsp + 0x12]
pmaddubsw mm3, qword [rsp + 0x1234]
pmaddubsw mm3, qword [rsp + 0x12345678]
pmaddubsw mm3, qword [rsp + rax]
pmaddubsw mm3, qword [rsp + rbp]
pmaddubsw mm3, qword [rsp + 2*rbp]
pmaddubsw mm3, qword [rsp + 4*rbp]
pmaddubsw mm3, qword [rsp + 8*rbp]
pmaddubsw mm3, qword [rax]
pmaddubsw mm3, qword [rcx]
pmaddubsw mm3, qword [rdx]
pmaddubsw mm3, qword [rbx]
pmaddubsw mm3, qword [rsp]
pmaddubsw mm3, qword [rbp]
pmaddubsw mm3, qword [rsi]
pmaddubsw mm3, qword [rdi]
pmaddubsw mm3, qword [rax + 2*rax]
pmaddubsw mm3, qword [rcx + 2*rcx]
pmaddubsw mm3, qword [rdx + 2*rdx]
pmaddubsw mm3, qword [rbx + 2*rbx]
pmaddubsw mm3, qword [rbp + 2*rbp]
pmaddubsw mm3, qword [rsi + 2*rsi]
pmaddubsw mm3, qword [rdi + 2*rdi]
pmaddubsw mm4, qword [rip + 0x13]
pmaddubsw mm4, qword [rip + 0x1235]
pmaddubsw mm4, qword [rip + 0x12345679]
pmaddubsw mm4, qword [rbx]
pmaddubsw mm4, qword [rcx + 0x14]
pmaddubsw mm4, qword [rdx + 0x15]
pmaddubsw mm4, qword [rbx + 0x1235]
pmaddubsw mm4, qword [rbx + 0x12345679]
pmaddubsw mm4, qword [rbx + rcx]
pmaddubsw mm4, qword [rbx + 4 * rcx]
pmaddubsw mm4, qword [rbx + rcx + 0x13]
pmaddubsw mm4, qword [rbx + rcx + 0x1235]
pmaddubsw mm4, qword [rbx + rcx + 0x12345679]
pmaddubsw mm4, qword [rbx + 4 * rcx + 0x13]
pmaddubsw mm4, qword [rbx + 4 * rcx + 0x1235]
pmaddubsw mm4, qword [rbx + 8 * rcx + 0x12345679]
pmaddubsw mm4, qword [4 * rcx]
pmaddubsw mm4, qword [4 * rcx + 0x13]
pmaddubsw mm4, qword [4 * rcx + 0x1235]
pmaddubsw mm4, qword [4 * rcx + 0x12345679]
pmaddubsw mm4, qword [rbp]
pmaddubsw mm4, qword [rbp + 0x12]
pmaddubsw mm4, qword [rbp + 0x1234]
pmaddubsw mm4, qword [rbp + 0x12345678]
pmaddubsw mm4, qword [4 * rbp]
pmaddubsw mm4, qword [4 * rbp + 0x12]
pmaddubsw mm4, qword [4 * rbp + 0x1234]
pmaddubsw mm4, qword [4 * rbp + 0x12345678]
pmaddubsw mm4, qword [rbx + 4 * rbp]
pmaddubsw mm4, qword [rbx + 4 * rbp + 0x12]
pmaddubsw mm4, qword [rbx + 4 * rbp + 0x1234]
pmaddubsw mm4, qword [rbx + 4 * rbp + 0x12345678]
pmaddubsw mm4, qword [rsp]
pmaddubsw mm4, qword [rsp + 0x12]
pmaddubsw mm4, qword [rsp + 0x1234]
pmaddubsw mm4, qword [rsp + 0x12345678]
pmaddubsw mm4, qword [rsp + rax]
pmaddubsw mm4, qword [rsp + rbp]
pmaddubsw mm4, qword [rsp + 2*rbp]
pmaddubsw mm4, qword [rsp + 4*rbp]
pmaddubsw mm4, qword [rsp + 8*rbp]
pmaddubsw mm4, qword [rax]
pmaddubsw mm4, qword [rcx]
pmaddubsw mm4, qword [rdx]
pmaddubsw mm4, qword [rbx]
pmaddubsw mm4, qword [rsp]
pmaddubsw mm4, qword [rbp]
pmaddubsw mm4, qword [rsi]
pmaddubsw mm4, qword [rdi]
pmaddubsw mm4, qword [rax + 2*rax]
pmaddubsw mm4, qword [rcx + 2*rcx]
pmaddubsw mm4, qword [rdx + 2*rdx]
pmaddubsw mm4, qword [rbx + 2*rbx]
pmaddubsw mm4, qword [rbp + 2*rbp]
pmaddubsw mm4, qword [rsi + 2*rsi]
pmaddubsw mm4, qword [rdi + 2*rdi]
pmaddubsw mm5, qword [rip + 0x13]
pmaddubsw mm5, qword [rip + 0x1235]
pmaddubsw mm5, qword [rip + 0x12345679]
pmaddubsw mm5, qword [rbx]
pmaddubsw mm5, qword [rcx + 0x14]
pmaddubsw mm5, qword [rdx + 0x15]
pmaddubsw mm5, qword [rbx + 0x1235]
pmaddubsw mm5, qword [rbx + 0x12345679]
pmaddubsw mm5, qword [rbx + rcx]
pmaddubsw mm5, qword [rbx + 4 * rcx]
pmaddubsw mm5, qword [rbx + rcx + 0x13]
pmaddubsw mm5, qword [rbx + rcx + 0x1235]
pmaddubsw mm5, qword [rbx + rcx + 0x12345679]
pmaddubsw mm5, qword [rbx + 4 * rcx + 0x13]
pmaddubsw mm5, qword [rbx + 4 * rcx + 0x1235]
pmaddubsw mm5, qword [rbx + 8 * rcx + 0x12345679]
pmaddubsw mm5, qword [4 * rcx]
pmaddubsw mm5, qword [4 * rcx + 0x13]
pmaddubsw mm5, qword [4 * rcx + 0x1235]
pmaddubsw mm5, qword [4 * rcx + 0x12345679]
pmaddubsw mm5, qword [rbp]
pmaddubsw mm5, qword [rbp + 0x12]
pmaddubsw mm5, qword [rbp + 0x1234]
pmaddubsw mm5, qword [rbp + 0x12345678]
pmaddubsw mm5, qword [4 * rbp]
pmaddubsw mm5, qword [4 * rbp + 0x12]
pmaddubsw mm5, qword [4 * rbp + 0x1234]
pmaddubsw mm5, qword [4 * rbp + 0x12345678]
pmaddubsw mm5, qword [rbx + 4 * rbp]
pmaddubsw mm5, qword [rbx + 4 * rbp + 0x12]
pmaddubsw mm5, qword [rbx + 4 * rbp + 0x1234]
pmaddubsw mm5, qword [rbx + 4 * rbp + 0x12345678]
pmaddubsw mm5, qword [rsp]
pmaddubsw mm5, qword [rsp + 0x12]
pmaddubsw mm5, qword [rsp + 0x1234]
pmaddubsw mm5, qword [rsp + 0x12345678]
pmaddubsw mm5, qword [rsp + rax]
pmaddubsw mm5, qword [rsp + rbp]
pmaddubsw mm5, qword [rsp + 2*rbp]
pmaddubsw mm5, qword [rsp + 4*rbp]
pmaddubsw mm5, qword [rsp + 8*rbp]
pmaddubsw mm5, qword [rax]
pmaddubsw mm5, qword [rcx]
pmaddubsw mm5, qword [rdx]
pmaddubsw mm5, qword [rbx]
pmaddubsw mm5, qword [rsp]
pmaddubsw mm5, qword [rbp]
pmaddubsw mm5, qword [rsi]
pmaddubsw mm5, qword [rdi]
pmaddubsw mm5, qword [rax + 2*rax]
pmaddubsw mm5, qword [rcx + 2*rcx]
pmaddubsw mm5, qword [rdx + 2*rdx]
pmaddubsw mm5, qword [rbx + 2*rbx]
pmaddubsw mm5, qword [rbp + 2*rbp]
pmaddubsw mm5, qword [rsi + 2*rsi]
pmaddubsw mm5, qword [rdi + 2*rdi]
pmaddubsw mm6, qword [rip + 0x13]
pmaddubsw mm6, qword [rip + 0x1235]
pmaddubsw mm6, qword [rip + 0x12345679]
pmaddubsw mm6, qword [rbx]
pmaddubsw mm6, qword [rcx + 0x14]
pmaddubsw mm6, qword [rdx + 0x15]
pmaddubsw mm6, qword [rbx + 0x1235]
pmaddubsw mm6, qword [rbx + 0x12345679]
pmaddubsw mm6, qword [rbx + rcx]
pmaddubsw mm6, qword [rbx + 4 * rcx]
pmaddubsw mm6, qword [rbx + rcx + 0x13]
pmaddubsw mm6, qword [rbx + rcx + 0x1235]
pmaddubsw mm6, qword [rbx + rcx + 0x12345679]
pmaddubsw mm6, qword [rbx + 4 * rcx + 0x13]
pmaddubsw mm6, qword [rbx + 4 * rcx + 0x1235]
pmaddubsw mm6, qword [rbx + 8 * rcx + 0x12345679]
pmaddubsw mm6, qword [4 * rcx]
pmaddubsw mm6, qword [4 * rcx + 0x13]
pmaddubsw mm6, qword [4 * rcx + 0x1235]
pmaddubsw mm6, qword [4 * rcx + 0x12345679]
pmaddubsw mm6, qword [rbp]
pmaddubsw mm6, qword [rbp + 0x12]
pmaddubsw mm6, qword [rbp + 0x1234]
pmaddubsw mm6, qword [rbp + 0x12345678]
pmaddubsw mm6, qword [4 * rbp]
pmaddubsw mm6, qword [4 * rbp + 0x12]
pmaddubsw mm6, qword [4 * rbp + 0x1234]
pmaddubsw mm6, qword [4 * rbp + 0x12345678]
pmaddubsw mm6, qword [rbx + 4 * rbp]
pmaddubsw mm6, qword [rbx + 4 * rbp + 0x12]
pmaddubsw mm6, qword [rbx + 4 * rbp + 0x1234]
pmaddubsw mm6, qword [rbx + 4 * rbp + 0x12345678]
pmaddubsw mm6, qword [rsp]
pmaddubsw mm6, qword [rsp + 0x12]
pmaddubsw mm6, qword [rsp + 0x1234]
pmaddubsw mm6, qword [rsp + 0x12345678]
pmaddubsw mm6, qword [rsp + rax]
pmaddubsw mm6, qword [rsp + rbp]
pmaddubsw mm6, qword [rsp + 2*rbp]
pmaddubsw mm6, qword [rsp + 4*rbp]
pmaddubsw mm6, qword [rsp + 8*rbp]
pmaddubsw mm6, qword [rax]
pmaddubsw mm6, qword [rcx]
pmaddubsw mm6, qword [rdx]
pmaddubsw mm6, qword [rbx]
pmaddubsw mm6, qword [rsp]
pmaddubsw mm6, qword [rbp]
pmaddubsw mm6, qword [rsi]
pmaddubsw mm6, qword [rdi]
pmaddubsw mm6, qword [rax + 2*rax]
pmaddubsw mm6, qword [rcx + 2*rcx]
pmaddubsw mm6, qword [rdx + 2*rdx]
pmaddubsw mm6, qword [rbx + 2*rbx]
pmaddubsw mm6, qword [rbp + 2*rbp]
pmaddubsw mm6, qword [rsi + 2*rsi]
pmaddubsw mm6, qword [rdi + 2*rdi]
pmaddubsw mm7, qword [rip + 0x13]
pmaddubsw mm7, qword [rip + 0x1235]
pmaddubsw mm7, qword [rip + 0x12345679]
pmaddubsw mm7, qword [rbx]
pmaddubsw mm7, qword [rcx + 0x14]
pmaddubsw mm7, qword [rdx + 0x15]
pmaddubsw mm7, qword [rbx + 0x1235]
pmaddubsw mm7, qword [rbx + 0x12345679]
pmaddubsw mm7, qword [rbx + rcx]
pmaddubsw mm7, qword [rbx + 4 * rcx]
pmaddubsw mm7, qword [rbx + rcx + 0x13]
pmaddubsw mm7, qword [rbx + rcx + 0x1235]
pmaddubsw mm7, qword [rbx + rcx + 0x12345679]
pmaddubsw mm7, qword [rbx + 4 * rcx + 0x13]
pmaddubsw mm7, qword [rbx + 4 * rcx + 0x1235]
pmaddubsw mm7, qword [rbx + 8 * rcx + 0x12345679]
pmaddubsw mm7, qword [4 * rcx]
pmaddubsw mm7, qword [4 * rcx + 0x13]
pmaddubsw mm7, qword [4 * rcx + 0x1235]
pmaddubsw mm7, qword [4 * rcx + 0x12345679]
pmaddubsw mm7, qword [rbp]
pmaddubsw mm7, qword [rbp + 0x12]
pmaddubsw mm7, qword [rbp + 0x1234]
pmaddubsw mm7, qword [rbp + 0x12345678]
pmaddubsw mm7, qword [4 * rbp]
pmaddubsw mm7, qword [4 * rbp + 0x12]
pmaddubsw mm7, qword [4 * rbp + 0x1234]
pmaddubsw mm7, qword [4 * rbp + 0x12345678]
pmaddubsw mm7, qword [rbx + 4 * rbp]
pmaddubsw mm7, qword [rbx + 4 * rbp + 0x12]
pmaddubsw mm7, qword [rbx + 4 * rbp + 0x1234]
pmaddubsw mm7, qword [rbx + 4 * rbp + 0x12345678]
pmaddubsw mm7, qword [rsp]
pmaddubsw mm7, qword [rsp + 0x12]
pmaddubsw mm7, qword [rsp + 0x1234]
pmaddubsw mm7, qword [rsp + 0x12345678]
pmaddubsw mm7, qword [rsp + rax]
pmaddubsw mm7, qword [rsp + rbp]
pmaddubsw mm7, qword [rsp + 2*rbp]
pmaddubsw mm7, qword [rsp + 4*rbp]
pmaddubsw mm7, qword [rsp + 8*rbp]
pmaddubsw mm7, qword [rax]
pmaddubsw mm7, qword [rcx]
pmaddubsw mm7, qword [rdx]
pmaddubsw mm7, qword [rbx]
pmaddubsw mm7, qword [rsp]
pmaddubsw mm7, qword [rbp]
pmaddubsw mm7, qword [rsi]
pmaddubsw mm7, qword [rdi]
pmaddubsw mm7, qword [rax + 2*rax]
pmaddubsw mm7, qword [rcx + 2*rcx]
pmaddubsw mm7, qword [rdx + 2*rdx]
pmaddubsw mm7, qword [rbx + 2*rbx]
pmaddubsw mm7, qword [rbp + 2*rbp]
pmaddubsw mm7, qword [rsi + 2*rsi]
pmaddubsw mm7, qword [rdi + 2*rdi]

