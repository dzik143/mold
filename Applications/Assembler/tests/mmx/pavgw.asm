use64
; ------------------------------------------------------------------------------
; opcode mm,mm
; ------------------------------------------------------------------------------
pavgw mm0, mm0
pavgw mm0, mm1
pavgw mm0, mm2
pavgw mm0, mm3
pavgw mm0, mm4
pavgw mm0, mm5
pavgw mm0, mm6
pavgw mm0, mm7
pavgw mm1, mm0
pavgw mm1, mm1
pavgw mm1, mm2
pavgw mm1, mm3
pavgw mm1, mm4
pavgw mm1, mm5
pavgw mm1, mm6
pavgw mm1, mm7
pavgw mm2, mm0
pavgw mm2, mm1
pavgw mm2, mm2
pavgw mm2, mm3
pavgw mm2, mm4
pavgw mm2, mm5
pavgw mm2, mm6
pavgw mm2, mm7
pavgw mm3, mm0
pavgw mm3, mm1
pavgw mm3, mm2
pavgw mm3, mm3
pavgw mm3, mm4
pavgw mm3, mm5
pavgw mm3, mm6
pavgw mm3, mm7
pavgw mm4, mm0
pavgw mm4, mm1
pavgw mm4, mm2
pavgw mm4, mm3
pavgw mm4, mm4
pavgw mm4, mm5
pavgw mm4, mm6
pavgw mm4, mm7
pavgw mm5, mm0
pavgw mm5, mm1
pavgw mm5, mm2
pavgw mm5, mm3
pavgw mm5, mm4
pavgw mm5, mm5
pavgw mm5, mm6
pavgw mm5, mm7
pavgw mm6, mm0
pavgw mm6, mm1
pavgw mm6, mm2
pavgw mm6, mm3
pavgw mm6, mm4
pavgw mm6, mm5
pavgw mm6, mm6
pavgw mm6, mm7
pavgw mm7, mm0
pavgw mm7, mm1
pavgw mm7, mm2
pavgw mm7, mm3
pavgw mm7, mm4
pavgw mm7, mm5
pavgw mm7, mm6
pavgw mm7, mm7

; ------------------------------------------------------------------------------
; opcode mm,m64
; ------------------------------------------------------------------------------
pavgw mm0, qword [rip + 0x13]
pavgw mm0, qword [rip + 0x1235]
pavgw mm0, qword [rip + 0x12345679]
pavgw mm0, qword [rbx]
pavgw mm0, qword [rcx + 0x14]
pavgw mm0, qword [rdx + 0x15]
pavgw mm0, qword [rbx + 0x1235]
pavgw mm0, qword [rbx + 0x12345679]
pavgw mm0, qword [rbx + rcx]
pavgw mm0, qword [rbx + 4 * rcx]
pavgw mm0, qword [rbx + rcx + 0x13]
pavgw mm0, qword [rbx + rcx + 0x1235]
pavgw mm0, qword [rbx + rcx + 0x12345679]
pavgw mm0, qword [rbx + 4 * rcx + 0x13]
pavgw mm0, qword [rbx + 4 * rcx + 0x1235]
pavgw mm0, qword [rbx + 8 * rcx + 0x12345679]
pavgw mm0, qword [4 * rcx]
pavgw mm0, qword [4 * rcx + 0x13]
pavgw mm0, qword [4 * rcx + 0x1235]
pavgw mm0, qword [4 * rcx + 0x12345679]
pavgw mm0, qword [rbp]
pavgw mm0, qword [rbp + 0x12]
pavgw mm0, qword [rbp + 0x1234]
pavgw mm0, qword [rbp + 0x12345678]
pavgw mm0, qword [4 * rbp]
pavgw mm0, qword [4 * rbp + 0x12]
pavgw mm0, qword [4 * rbp + 0x1234]
pavgw mm0, qword [4 * rbp + 0x12345678]
pavgw mm0, qword [rbx + 4 * rbp]
pavgw mm0, qword [rbx + 4 * rbp + 0x12]
pavgw mm0, qword [rbx + 4 * rbp + 0x1234]
pavgw mm0, qword [rbx + 4 * rbp + 0x12345678]
pavgw mm0, qword [rsp]
pavgw mm0, qword [rsp + 0x12]
pavgw mm0, qword [rsp + 0x1234]
pavgw mm0, qword [rsp + 0x12345678]
pavgw mm0, qword [rsp + rax]
pavgw mm0, qword [rsp + rbp]
pavgw mm0, qword [rsp + 2*rbp]
pavgw mm0, qword [rsp + 4*rbp]
pavgw mm0, qword [rsp + 8*rbp]
pavgw mm0, qword [rax]
pavgw mm0, qword [rcx]
pavgw mm0, qword [rdx]
pavgw mm0, qword [rbx]
pavgw mm0, qword [rsp]
pavgw mm0, qword [rbp]
pavgw mm0, qword [rsi]
pavgw mm0, qword [rdi]
pavgw mm0, qword [rax + 2*rax]
pavgw mm0, qword [rcx + 2*rcx]
pavgw mm0, qword [rdx + 2*rdx]
pavgw mm0, qword [rbx + 2*rbx]
pavgw mm0, qword [rbp + 2*rbp]
pavgw mm0, qword [rsi + 2*rsi]
pavgw mm0, qword [rdi + 2*rdi]
pavgw mm1, qword [rip + 0x13]
pavgw mm1, qword [rip + 0x1235]
pavgw mm1, qword [rip + 0x12345679]
pavgw mm1, qword [rbx]
pavgw mm1, qword [rcx + 0x14]
pavgw mm1, qword [rdx + 0x15]
pavgw mm1, qword [rbx + 0x1235]
pavgw mm1, qword [rbx + 0x12345679]
pavgw mm1, qword [rbx + rcx]
pavgw mm1, qword [rbx + 4 * rcx]
pavgw mm1, qword [rbx + rcx + 0x13]
pavgw mm1, qword [rbx + rcx + 0x1235]
pavgw mm1, qword [rbx + rcx + 0x12345679]
pavgw mm1, qword [rbx + 4 * rcx + 0x13]
pavgw mm1, qword [rbx + 4 * rcx + 0x1235]
pavgw mm1, qword [rbx + 8 * rcx + 0x12345679]
pavgw mm1, qword [4 * rcx]
pavgw mm1, qword [4 * rcx + 0x13]
pavgw mm1, qword [4 * rcx + 0x1235]
pavgw mm1, qword [4 * rcx + 0x12345679]
pavgw mm1, qword [rbp]
pavgw mm1, qword [rbp + 0x12]
pavgw mm1, qword [rbp + 0x1234]
pavgw mm1, qword [rbp + 0x12345678]
pavgw mm1, qword [4 * rbp]
pavgw mm1, qword [4 * rbp + 0x12]
pavgw mm1, qword [4 * rbp + 0x1234]
pavgw mm1, qword [4 * rbp + 0x12345678]
pavgw mm1, qword [rbx + 4 * rbp]
pavgw mm1, qword [rbx + 4 * rbp + 0x12]
pavgw mm1, qword [rbx + 4 * rbp + 0x1234]
pavgw mm1, qword [rbx + 4 * rbp + 0x12345678]
pavgw mm1, qword [rsp]
pavgw mm1, qword [rsp + 0x12]
pavgw mm1, qword [rsp + 0x1234]
pavgw mm1, qword [rsp + 0x12345678]
pavgw mm1, qword [rsp + rax]
pavgw mm1, qword [rsp + rbp]
pavgw mm1, qword [rsp + 2*rbp]
pavgw mm1, qword [rsp + 4*rbp]
pavgw mm1, qword [rsp + 8*rbp]
pavgw mm1, qword [rax]
pavgw mm1, qword [rcx]
pavgw mm1, qword [rdx]
pavgw mm1, qword [rbx]
pavgw mm1, qword [rsp]
pavgw mm1, qword [rbp]
pavgw mm1, qword [rsi]
pavgw mm1, qword [rdi]
pavgw mm1, qword [rax + 2*rax]
pavgw mm1, qword [rcx + 2*rcx]
pavgw mm1, qword [rdx + 2*rdx]
pavgw mm1, qword [rbx + 2*rbx]
pavgw mm1, qword [rbp + 2*rbp]
pavgw mm1, qword [rsi + 2*rsi]
pavgw mm1, qword [rdi + 2*rdi]
pavgw mm2, qword [rip + 0x13]
pavgw mm2, qword [rip + 0x1235]
pavgw mm2, qword [rip + 0x12345679]
pavgw mm2, qword [rbx]
pavgw mm2, qword [rcx + 0x14]
pavgw mm2, qword [rdx + 0x15]
pavgw mm2, qword [rbx + 0x1235]
pavgw mm2, qword [rbx + 0x12345679]
pavgw mm2, qword [rbx + rcx]
pavgw mm2, qword [rbx + 4 * rcx]
pavgw mm2, qword [rbx + rcx + 0x13]
pavgw mm2, qword [rbx + rcx + 0x1235]
pavgw mm2, qword [rbx + rcx + 0x12345679]
pavgw mm2, qword [rbx + 4 * rcx + 0x13]
pavgw mm2, qword [rbx + 4 * rcx + 0x1235]
pavgw mm2, qword [rbx + 8 * rcx + 0x12345679]
pavgw mm2, qword [4 * rcx]
pavgw mm2, qword [4 * rcx + 0x13]
pavgw mm2, qword [4 * rcx + 0x1235]
pavgw mm2, qword [4 * rcx + 0x12345679]
pavgw mm2, qword [rbp]
pavgw mm2, qword [rbp + 0x12]
pavgw mm2, qword [rbp + 0x1234]
pavgw mm2, qword [rbp + 0x12345678]
pavgw mm2, qword [4 * rbp]
pavgw mm2, qword [4 * rbp + 0x12]
pavgw mm2, qword [4 * rbp + 0x1234]
pavgw mm2, qword [4 * rbp + 0x12345678]
pavgw mm2, qword [rbx + 4 * rbp]
pavgw mm2, qword [rbx + 4 * rbp + 0x12]
pavgw mm2, qword [rbx + 4 * rbp + 0x1234]
pavgw mm2, qword [rbx + 4 * rbp + 0x12345678]
pavgw mm2, qword [rsp]
pavgw mm2, qword [rsp + 0x12]
pavgw mm2, qword [rsp + 0x1234]
pavgw mm2, qword [rsp + 0x12345678]
pavgw mm2, qword [rsp + rax]
pavgw mm2, qword [rsp + rbp]
pavgw mm2, qword [rsp + 2*rbp]
pavgw mm2, qword [rsp + 4*rbp]
pavgw mm2, qword [rsp + 8*rbp]
pavgw mm2, qword [rax]
pavgw mm2, qword [rcx]
pavgw mm2, qword [rdx]
pavgw mm2, qword [rbx]
pavgw mm2, qword [rsp]
pavgw mm2, qword [rbp]
pavgw mm2, qword [rsi]
pavgw mm2, qword [rdi]
pavgw mm2, qword [rax + 2*rax]
pavgw mm2, qword [rcx + 2*rcx]
pavgw mm2, qword [rdx + 2*rdx]
pavgw mm2, qword [rbx + 2*rbx]
pavgw mm2, qword [rbp + 2*rbp]
pavgw mm2, qword [rsi + 2*rsi]
pavgw mm2, qword [rdi + 2*rdi]
pavgw mm3, qword [rip + 0x13]
pavgw mm3, qword [rip + 0x1235]
pavgw mm3, qword [rip + 0x12345679]
pavgw mm3, qword [rbx]
pavgw mm3, qword [rcx + 0x14]
pavgw mm3, qword [rdx + 0x15]
pavgw mm3, qword [rbx + 0x1235]
pavgw mm3, qword [rbx + 0x12345679]
pavgw mm3, qword [rbx + rcx]
pavgw mm3, qword [rbx + 4 * rcx]
pavgw mm3, qword [rbx + rcx + 0x13]
pavgw mm3, qword [rbx + rcx + 0x1235]
pavgw mm3, qword [rbx + rcx + 0x12345679]
pavgw mm3, qword [rbx + 4 * rcx + 0x13]
pavgw mm3, qword [rbx + 4 * rcx + 0x1235]
pavgw mm3, qword [rbx + 8 * rcx + 0x12345679]
pavgw mm3, qword [4 * rcx]
pavgw mm3, qword [4 * rcx + 0x13]
pavgw mm3, qword [4 * rcx + 0x1235]
pavgw mm3, qword [4 * rcx + 0x12345679]
pavgw mm3, qword [rbp]
pavgw mm3, qword [rbp + 0x12]
pavgw mm3, qword [rbp + 0x1234]
pavgw mm3, qword [rbp + 0x12345678]
pavgw mm3, qword [4 * rbp]
pavgw mm3, qword [4 * rbp + 0x12]
pavgw mm3, qword [4 * rbp + 0x1234]
pavgw mm3, qword [4 * rbp + 0x12345678]
pavgw mm3, qword [rbx + 4 * rbp]
pavgw mm3, qword [rbx + 4 * rbp + 0x12]
pavgw mm3, qword [rbx + 4 * rbp + 0x1234]
pavgw mm3, qword [rbx + 4 * rbp + 0x12345678]
pavgw mm3, qword [rsp]
pavgw mm3, qword [rsp + 0x12]
pavgw mm3, qword [rsp + 0x1234]
pavgw mm3, qword [rsp + 0x12345678]
pavgw mm3, qword [rsp + rax]
pavgw mm3, qword [rsp + rbp]
pavgw mm3, qword [rsp + 2*rbp]
pavgw mm3, qword [rsp + 4*rbp]
pavgw mm3, qword [rsp + 8*rbp]
pavgw mm3, qword [rax]
pavgw mm3, qword [rcx]
pavgw mm3, qword [rdx]
pavgw mm3, qword [rbx]
pavgw mm3, qword [rsp]
pavgw mm3, qword [rbp]
pavgw mm3, qword [rsi]
pavgw mm3, qword [rdi]
pavgw mm3, qword [rax + 2*rax]
pavgw mm3, qword [rcx + 2*rcx]
pavgw mm3, qword [rdx + 2*rdx]
pavgw mm3, qword [rbx + 2*rbx]
pavgw mm3, qword [rbp + 2*rbp]
pavgw mm3, qword [rsi + 2*rsi]
pavgw mm3, qword [rdi + 2*rdi]
pavgw mm4, qword [rip + 0x13]
pavgw mm4, qword [rip + 0x1235]
pavgw mm4, qword [rip + 0x12345679]
pavgw mm4, qword [rbx]
pavgw mm4, qword [rcx + 0x14]
pavgw mm4, qword [rdx + 0x15]
pavgw mm4, qword [rbx + 0x1235]
pavgw mm4, qword [rbx + 0x12345679]
pavgw mm4, qword [rbx + rcx]
pavgw mm4, qword [rbx + 4 * rcx]
pavgw mm4, qword [rbx + rcx + 0x13]
pavgw mm4, qword [rbx + rcx + 0x1235]
pavgw mm4, qword [rbx + rcx + 0x12345679]
pavgw mm4, qword [rbx + 4 * rcx + 0x13]
pavgw mm4, qword [rbx + 4 * rcx + 0x1235]
pavgw mm4, qword [rbx + 8 * rcx + 0x12345679]
pavgw mm4, qword [4 * rcx]
pavgw mm4, qword [4 * rcx + 0x13]
pavgw mm4, qword [4 * rcx + 0x1235]
pavgw mm4, qword [4 * rcx + 0x12345679]
pavgw mm4, qword [rbp]
pavgw mm4, qword [rbp + 0x12]
pavgw mm4, qword [rbp + 0x1234]
pavgw mm4, qword [rbp + 0x12345678]
pavgw mm4, qword [4 * rbp]
pavgw mm4, qword [4 * rbp + 0x12]
pavgw mm4, qword [4 * rbp + 0x1234]
pavgw mm4, qword [4 * rbp + 0x12345678]
pavgw mm4, qword [rbx + 4 * rbp]
pavgw mm4, qword [rbx + 4 * rbp + 0x12]
pavgw mm4, qword [rbx + 4 * rbp + 0x1234]
pavgw mm4, qword [rbx + 4 * rbp + 0x12345678]
pavgw mm4, qword [rsp]
pavgw mm4, qword [rsp + 0x12]
pavgw mm4, qword [rsp + 0x1234]
pavgw mm4, qword [rsp + 0x12345678]
pavgw mm4, qword [rsp + rax]
pavgw mm4, qword [rsp + rbp]
pavgw mm4, qword [rsp + 2*rbp]
pavgw mm4, qword [rsp + 4*rbp]
pavgw mm4, qword [rsp + 8*rbp]
pavgw mm4, qword [rax]
pavgw mm4, qword [rcx]
pavgw mm4, qword [rdx]
pavgw mm4, qword [rbx]
pavgw mm4, qword [rsp]
pavgw mm4, qword [rbp]
pavgw mm4, qword [rsi]
pavgw mm4, qword [rdi]
pavgw mm4, qword [rax + 2*rax]
pavgw mm4, qword [rcx + 2*rcx]
pavgw mm4, qword [rdx + 2*rdx]
pavgw mm4, qword [rbx + 2*rbx]
pavgw mm4, qword [rbp + 2*rbp]
pavgw mm4, qword [rsi + 2*rsi]
pavgw mm4, qword [rdi + 2*rdi]
pavgw mm5, qword [rip + 0x13]
pavgw mm5, qword [rip + 0x1235]
pavgw mm5, qword [rip + 0x12345679]
pavgw mm5, qword [rbx]
pavgw mm5, qword [rcx + 0x14]
pavgw mm5, qword [rdx + 0x15]
pavgw mm5, qword [rbx + 0x1235]
pavgw mm5, qword [rbx + 0x12345679]
pavgw mm5, qword [rbx + rcx]
pavgw mm5, qword [rbx + 4 * rcx]
pavgw mm5, qword [rbx + rcx + 0x13]
pavgw mm5, qword [rbx + rcx + 0x1235]
pavgw mm5, qword [rbx + rcx + 0x12345679]
pavgw mm5, qword [rbx + 4 * rcx + 0x13]
pavgw mm5, qword [rbx + 4 * rcx + 0x1235]
pavgw mm5, qword [rbx + 8 * rcx + 0x12345679]
pavgw mm5, qword [4 * rcx]
pavgw mm5, qword [4 * rcx + 0x13]
pavgw mm5, qword [4 * rcx + 0x1235]
pavgw mm5, qword [4 * rcx + 0x12345679]
pavgw mm5, qword [rbp]
pavgw mm5, qword [rbp + 0x12]
pavgw mm5, qword [rbp + 0x1234]
pavgw mm5, qword [rbp + 0x12345678]
pavgw mm5, qword [4 * rbp]
pavgw mm5, qword [4 * rbp + 0x12]
pavgw mm5, qword [4 * rbp + 0x1234]
pavgw mm5, qword [4 * rbp + 0x12345678]
pavgw mm5, qword [rbx + 4 * rbp]
pavgw mm5, qword [rbx + 4 * rbp + 0x12]
pavgw mm5, qword [rbx + 4 * rbp + 0x1234]
pavgw mm5, qword [rbx + 4 * rbp + 0x12345678]
pavgw mm5, qword [rsp]
pavgw mm5, qword [rsp + 0x12]
pavgw mm5, qword [rsp + 0x1234]
pavgw mm5, qword [rsp + 0x12345678]
pavgw mm5, qword [rsp + rax]
pavgw mm5, qword [rsp + rbp]
pavgw mm5, qword [rsp + 2*rbp]
pavgw mm5, qword [rsp + 4*rbp]
pavgw mm5, qword [rsp + 8*rbp]
pavgw mm5, qword [rax]
pavgw mm5, qword [rcx]
pavgw mm5, qword [rdx]
pavgw mm5, qword [rbx]
pavgw mm5, qword [rsp]
pavgw mm5, qword [rbp]
pavgw mm5, qword [rsi]
pavgw mm5, qword [rdi]
pavgw mm5, qword [rax + 2*rax]
pavgw mm5, qword [rcx + 2*rcx]
pavgw mm5, qword [rdx + 2*rdx]
pavgw mm5, qword [rbx + 2*rbx]
pavgw mm5, qword [rbp + 2*rbp]
pavgw mm5, qword [rsi + 2*rsi]
pavgw mm5, qword [rdi + 2*rdi]
pavgw mm6, qword [rip + 0x13]
pavgw mm6, qword [rip + 0x1235]
pavgw mm6, qword [rip + 0x12345679]
pavgw mm6, qword [rbx]
pavgw mm6, qword [rcx + 0x14]
pavgw mm6, qword [rdx + 0x15]
pavgw mm6, qword [rbx + 0x1235]
pavgw mm6, qword [rbx + 0x12345679]
pavgw mm6, qword [rbx + rcx]
pavgw mm6, qword [rbx + 4 * rcx]
pavgw mm6, qword [rbx + rcx + 0x13]
pavgw mm6, qword [rbx + rcx + 0x1235]
pavgw mm6, qword [rbx + rcx + 0x12345679]
pavgw mm6, qword [rbx + 4 * rcx + 0x13]
pavgw mm6, qword [rbx + 4 * rcx + 0x1235]
pavgw mm6, qword [rbx + 8 * rcx + 0x12345679]
pavgw mm6, qword [4 * rcx]
pavgw mm6, qword [4 * rcx + 0x13]
pavgw mm6, qword [4 * rcx + 0x1235]
pavgw mm6, qword [4 * rcx + 0x12345679]
pavgw mm6, qword [rbp]
pavgw mm6, qword [rbp + 0x12]
pavgw mm6, qword [rbp + 0x1234]
pavgw mm6, qword [rbp + 0x12345678]
pavgw mm6, qword [4 * rbp]
pavgw mm6, qword [4 * rbp + 0x12]
pavgw mm6, qword [4 * rbp + 0x1234]
pavgw mm6, qword [4 * rbp + 0x12345678]
pavgw mm6, qword [rbx + 4 * rbp]
pavgw mm6, qword [rbx + 4 * rbp + 0x12]
pavgw mm6, qword [rbx + 4 * rbp + 0x1234]
pavgw mm6, qword [rbx + 4 * rbp + 0x12345678]
pavgw mm6, qword [rsp]
pavgw mm6, qword [rsp + 0x12]
pavgw mm6, qword [rsp + 0x1234]
pavgw mm6, qword [rsp + 0x12345678]
pavgw mm6, qword [rsp + rax]
pavgw mm6, qword [rsp + rbp]
pavgw mm6, qword [rsp + 2*rbp]
pavgw mm6, qword [rsp + 4*rbp]
pavgw mm6, qword [rsp + 8*rbp]
pavgw mm6, qword [rax]
pavgw mm6, qword [rcx]
pavgw mm6, qword [rdx]
pavgw mm6, qword [rbx]
pavgw mm6, qword [rsp]
pavgw mm6, qword [rbp]
pavgw mm6, qword [rsi]
pavgw mm6, qword [rdi]
pavgw mm6, qword [rax + 2*rax]
pavgw mm6, qword [rcx + 2*rcx]
pavgw mm6, qword [rdx + 2*rdx]
pavgw mm6, qword [rbx + 2*rbx]
pavgw mm6, qword [rbp + 2*rbp]
pavgw mm6, qword [rsi + 2*rsi]
pavgw mm6, qword [rdi + 2*rdi]
pavgw mm7, qword [rip + 0x13]
pavgw mm7, qword [rip + 0x1235]
pavgw mm7, qword [rip + 0x12345679]
pavgw mm7, qword [rbx]
pavgw mm7, qword [rcx + 0x14]
pavgw mm7, qword [rdx + 0x15]
pavgw mm7, qword [rbx + 0x1235]
pavgw mm7, qword [rbx + 0x12345679]
pavgw mm7, qword [rbx + rcx]
pavgw mm7, qword [rbx + 4 * rcx]
pavgw mm7, qword [rbx + rcx + 0x13]
pavgw mm7, qword [rbx + rcx + 0x1235]
pavgw mm7, qword [rbx + rcx + 0x12345679]
pavgw mm7, qword [rbx + 4 * rcx + 0x13]
pavgw mm7, qword [rbx + 4 * rcx + 0x1235]
pavgw mm7, qword [rbx + 8 * rcx + 0x12345679]
pavgw mm7, qword [4 * rcx]
pavgw mm7, qword [4 * rcx + 0x13]
pavgw mm7, qword [4 * rcx + 0x1235]
pavgw mm7, qword [4 * rcx + 0x12345679]
pavgw mm7, qword [rbp]
pavgw mm7, qword [rbp + 0x12]
pavgw mm7, qword [rbp + 0x1234]
pavgw mm7, qword [rbp + 0x12345678]
pavgw mm7, qword [4 * rbp]
pavgw mm7, qword [4 * rbp + 0x12]
pavgw mm7, qword [4 * rbp + 0x1234]
pavgw mm7, qword [4 * rbp + 0x12345678]
pavgw mm7, qword [rbx + 4 * rbp]
pavgw mm7, qword [rbx + 4 * rbp + 0x12]
pavgw mm7, qword [rbx + 4 * rbp + 0x1234]
pavgw mm7, qword [rbx + 4 * rbp + 0x12345678]
pavgw mm7, qword [rsp]
pavgw mm7, qword [rsp + 0x12]
pavgw mm7, qword [rsp + 0x1234]
pavgw mm7, qword [rsp + 0x12345678]
pavgw mm7, qword [rsp + rax]
pavgw mm7, qword [rsp + rbp]
pavgw mm7, qword [rsp + 2*rbp]
pavgw mm7, qword [rsp + 4*rbp]
pavgw mm7, qword [rsp + 8*rbp]
pavgw mm7, qword [rax]
pavgw mm7, qword [rcx]
pavgw mm7, qword [rdx]
pavgw mm7, qword [rbx]
pavgw mm7, qword [rsp]
pavgw mm7, qword [rbp]
pavgw mm7, qword [rsi]
pavgw mm7, qword [rdi]
pavgw mm7, qword [rax + 2*rax]
pavgw mm7, qword [rcx + 2*rcx]
pavgw mm7, qword [rdx + 2*rdx]
pavgw mm7, qword [rbx + 2*rbx]
pavgw mm7, qword [rbp + 2*rbp]
pavgw mm7, qword [rsi + 2*rsi]
pavgw mm7, qword [rdi + 2*rdi]

