use64
; ------------------------------------------------------------------------------
; opcode mm,mm
; ------------------------------------------------------------------------------
phaddw mm0, mm0
phaddw mm0, mm1
phaddw mm0, mm2
phaddw mm0, mm3
phaddw mm0, mm4
phaddw mm0, mm5
phaddw mm0, mm6
phaddw mm0, mm7
phaddw mm1, mm0
phaddw mm1, mm1
phaddw mm1, mm2
phaddw mm1, mm3
phaddw mm1, mm4
phaddw mm1, mm5
phaddw mm1, mm6
phaddw mm1, mm7
phaddw mm2, mm0
phaddw mm2, mm1
phaddw mm2, mm2
phaddw mm2, mm3
phaddw mm2, mm4
phaddw mm2, mm5
phaddw mm2, mm6
phaddw mm2, mm7
phaddw mm3, mm0
phaddw mm3, mm1
phaddw mm3, mm2
phaddw mm3, mm3
phaddw mm3, mm4
phaddw mm3, mm5
phaddw mm3, mm6
phaddw mm3, mm7
phaddw mm4, mm0
phaddw mm4, mm1
phaddw mm4, mm2
phaddw mm4, mm3
phaddw mm4, mm4
phaddw mm4, mm5
phaddw mm4, mm6
phaddw mm4, mm7
phaddw mm5, mm0
phaddw mm5, mm1
phaddw mm5, mm2
phaddw mm5, mm3
phaddw mm5, mm4
phaddw mm5, mm5
phaddw mm5, mm6
phaddw mm5, mm7
phaddw mm6, mm0
phaddw mm6, mm1
phaddw mm6, mm2
phaddw mm6, mm3
phaddw mm6, mm4
phaddw mm6, mm5
phaddw mm6, mm6
phaddw mm6, mm7
phaddw mm7, mm0
phaddw mm7, mm1
phaddw mm7, mm2
phaddw mm7, mm3
phaddw mm7, mm4
phaddw mm7, mm5
phaddw mm7, mm6
phaddw mm7, mm7

; ------------------------------------------------------------------------------
; opcode mm,m64
; ------------------------------------------------------------------------------
phaddw mm0, qword [rip + 0x13]
phaddw mm0, qword [rip + 0x1235]
phaddw mm0, qword [rip + 0x12345679]
phaddw mm0, qword [rbx]
phaddw mm0, qword [rcx + 0x14]
phaddw mm0, qword [rdx + 0x15]
phaddw mm0, qword [rbx + 0x1235]
phaddw mm0, qword [rbx + 0x12345679]
phaddw mm0, qword [rbx + rcx]
phaddw mm0, qword [rbx + 4 * rcx]
phaddw mm0, qword [rbx + rcx + 0x13]
phaddw mm0, qword [rbx + rcx + 0x1235]
phaddw mm0, qword [rbx + rcx + 0x12345679]
phaddw mm0, qword [rbx + 4 * rcx + 0x13]
phaddw mm0, qword [rbx + 4 * rcx + 0x1235]
phaddw mm0, qword [rbx + 8 * rcx + 0x12345679]
phaddw mm0, qword [4 * rcx]
phaddw mm0, qword [4 * rcx + 0x13]
phaddw mm0, qword [4 * rcx + 0x1235]
phaddw mm0, qword [4 * rcx + 0x12345679]
phaddw mm0, qword [rbp]
phaddw mm0, qword [rbp + 0x12]
phaddw mm0, qword [rbp + 0x1234]
phaddw mm0, qword [rbp + 0x12345678]
phaddw mm0, qword [4 * rbp]
phaddw mm0, qword [4 * rbp + 0x12]
phaddw mm0, qword [4 * rbp + 0x1234]
phaddw mm0, qword [4 * rbp + 0x12345678]
phaddw mm0, qword [rbx + 4 * rbp]
phaddw mm0, qword [rbx + 4 * rbp + 0x12]
phaddw mm0, qword [rbx + 4 * rbp + 0x1234]
phaddw mm0, qword [rbx + 4 * rbp + 0x12345678]
phaddw mm0, qword [rsp]
phaddw mm0, qword [rsp + 0x12]
phaddw mm0, qword [rsp + 0x1234]
phaddw mm0, qword [rsp + 0x12345678]
phaddw mm0, qword [rsp + rax]
phaddw mm0, qword [rsp + rbp]
phaddw mm0, qword [rsp + 2*rbp]
phaddw mm0, qword [rsp + 4*rbp]
phaddw mm0, qword [rsp + 8*rbp]
phaddw mm0, qword [rax]
phaddw mm0, qword [rcx]
phaddw mm0, qword [rdx]
phaddw mm0, qword [rbx]
phaddw mm0, qword [rsp]
phaddw mm0, qword [rbp]
phaddw mm0, qword [rsi]
phaddw mm0, qword [rdi]
phaddw mm0, qword [rax + 2*rax]
phaddw mm0, qword [rcx + 2*rcx]
phaddw mm0, qword [rdx + 2*rdx]
phaddw mm0, qword [rbx + 2*rbx]
phaddw mm0, qword [rbp + 2*rbp]
phaddw mm0, qword [rsi + 2*rsi]
phaddw mm0, qword [rdi + 2*rdi]
phaddw mm1, qword [rip + 0x13]
phaddw mm1, qword [rip + 0x1235]
phaddw mm1, qword [rip + 0x12345679]
phaddw mm1, qword [rbx]
phaddw mm1, qword [rcx + 0x14]
phaddw mm1, qword [rdx + 0x15]
phaddw mm1, qword [rbx + 0x1235]
phaddw mm1, qword [rbx + 0x12345679]
phaddw mm1, qword [rbx + rcx]
phaddw mm1, qword [rbx + 4 * rcx]
phaddw mm1, qword [rbx + rcx + 0x13]
phaddw mm1, qword [rbx + rcx + 0x1235]
phaddw mm1, qword [rbx + rcx + 0x12345679]
phaddw mm1, qword [rbx + 4 * rcx + 0x13]
phaddw mm1, qword [rbx + 4 * rcx + 0x1235]
phaddw mm1, qword [rbx + 8 * rcx + 0x12345679]
phaddw mm1, qword [4 * rcx]
phaddw mm1, qword [4 * rcx + 0x13]
phaddw mm1, qword [4 * rcx + 0x1235]
phaddw mm1, qword [4 * rcx + 0x12345679]
phaddw mm1, qword [rbp]
phaddw mm1, qword [rbp + 0x12]
phaddw mm1, qword [rbp + 0x1234]
phaddw mm1, qword [rbp + 0x12345678]
phaddw mm1, qword [4 * rbp]
phaddw mm1, qword [4 * rbp + 0x12]
phaddw mm1, qword [4 * rbp + 0x1234]
phaddw mm1, qword [4 * rbp + 0x12345678]
phaddw mm1, qword [rbx + 4 * rbp]
phaddw mm1, qword [rbx + 4 * rbp + 0x12]
phaddw mm1, qword [rbx + 4 * rbp + 0x1234]
phaddw mm1, qword [rbx + 4 * rbp + 0x12345678]
phaddw mm1, qword [rsp]
phaddw mm1, qword [rsp + 0x12]
phaddw mm1, qword [rsp + 0x1234]
phaddw mm1, qword [rsp + 0x12345678]
phaddw mm1, qword [rsp + rax]
phaddw mm1, qword [rsp + rbp]
phaddw mm1, qword [rsp + 2*rbp]
phaddw mm1, qword [rsp + 4*rbp]
phaddw mm1, qword [rsp + 8*rbp]
phaddw mm1, qword [rax]
phaddw mm1, qword [rcx]
phaddw mm1, qword [rdx]
phaddw mm1, qword [rbx]
phaddw mm1, qword [rsp]
phaddw mm1, qword [rbp]
phaddw mm1, qword [rsi]
phaddw mm1, qword [rdi]
phaddw mm1, qword [rax + 2*rax]
phaddw mm1, qword [rcx + 2*rcx]
phaddw mm1, qword [rdx + 2*rdx]
phaddw mm1, qword [rbx + 2*rbx]
phaddw mm1, qword [rbp + 2*rbp]
phaddw mm1, qword [rsi + 2*rsi]
phaddw mm1, qword [rdi + 2*rdi]
phaddw mm2, qword [rip + 0x13]
phaddw mm2, qword [rip + 0x1235]
phaddw mm2, qword [rip + 0x12345679]
phaddw mm2, qword [rbx]
phaddw mm2, qword [rcx + 0x14]
phaddw mm2, qword [rdx + 0x15]
phaddw mm2, qword [rbx + 0x1235]
phaddw mm2, qword [rbx + 0x12345679]
phaddw mm2, qword [rbx + rcx]
phaddw mm2, qword [rbx + 4 * rcx]
phaddw mm2, qword [rbx + rcx + 0x13]
phaddw mm2, qword [rbx + rcx + 0x1235]
phaddw mm2, qword [rbx + rcx + 0x12345679]
phaddw mm2, qword [rbx + 4 * rcx + 0x13]
phaddw mm2, qword [rbx + 4 * rcx + 0x1235]
phaddw mm2, qword [rbx + 8 * rcx + 0x12345679]
phaddw mm2, qword [4 * rcx]
phaddw mm2, qword [4 * rcx + 0x13]
phaddw mm2, qword [4 * rcx + 0x1235]
phaddw mm2, qword [4 * rcx + 0x12345679]
phaddw mm2, qword [rbp]
phaddw mm2, qword [rbp + 0x12]
phaddw mm2, qword [rbp + 0x1234]
phaddw mm2, qword [rbp + 0x12345678]
phaddw mm2, qword [4 * rbp]
phaddw mm2, qword [4 * rbp + 0x12]
phaddw mm2, qword [4 * rbp + 0x1234]
phaddw mm2, qword [4 * rbp + 0x12345678]
phaddw mm2, qword [rbx + 4 * rbp]
phaddw mm2, qword [rbx + 4 * rbp + 0x12]
phaddw mm2, qword [rbx + 4 * rbp + 0x1234]
phaddw mm2, qword [rbx + 4 * rbp + 0x12345678]
phaddw mm2, qword [rsp]
phaddw mm2, qword [rsp + 0x12]
phaddw mm2, qword [rsp + 0x1234]
phaddw mm2, qword [rsp + 0x12345678]
phaddw mm2, qword [rsp + rax]
phaddw mm2, qword [rsp + rbp]
phaddw mm2, qword [rsp + 2*rbp]
phaddw mm2, qword [rsp + 4*rbp]
phaddw mm2, qword [rsp + 8*rbp]
phaddw mm2, qword [rax]
phaddw mm2, qword [rcx]
phaddw mm2, qword [rdx]
phaddw mm2, qword [rbx]
phaddw mm2, qword [rsp]
phaddw mm2, qword [rbp]
phaddw mm2, qword [rsi]
phaddw mm2, qword [rdi]
phaddw mm2, qword [rax + 2*rax]
phaddw mm2, qword [rcx + 2*rcx]
phaddw mm2, qword [rdx + 2*rdx]
phaddw mm2, qword [rbx + 2*rbx]
phaddw mm2, qword [rbp + 2*rbp]
phaddw mm2, qword [rsi + 2*rsi]
phaddw mm2, qword [rdi + 2*rdi]
phaddw mm3, qword [rip + 0x13]
phaddw mm3, qword [rip + 0x1235]
phaddw mm3, qword [rip + 0x12345679]
phaddw mm3, qword [rbx]
phaddw mm3, qword [rcx + 0x14]
phaddw mm3, qword [rdx + 0x15]
phaddw mm3, qword [rbx + 0x1235]
phaddw mm3, qword [rbx + 0x12345679]
phaddw mm3, qword [rbx + rcx]
phaddw mm3, qword [rbx + 4 * rcx]
phaddw mm3, qword [rbx + rcx + 0x13]
phaddw mm3, qword [rbx + rcx + 0x1235]
phaddw mm3, qword [rbx + rcx + 0x12345679]
phaddw mm3, qword [rbx + 4 * rcx + 0x13]
phaddw mm3, qword [rbx + 4 * rcx + 0x1235]
phaddw mm3, qword [rbx + 8 * rcx + 0x12345679]
phaddw mm3, qword [4 * rcx]
phaddw mm3, qword [4 * rcx + 0x13]
phaddw mm3, qword [4 * rcx + 0x1235]
phaddw mm3, qword [4 * rcx + 0x12345679]
phaddw mm3, qword [rbp]
phaddw mm3, qword [rbp + 0x12]
phaddw mm3, qword [rbp + 0x1234]
phaddw mm3, qword [rbp + 0x12345678]
phaddw mm3, qword [4 * rbp]
phaddw mm3, qword [4 * rbp + 0x12]
phaddw mm3, qword [4 * rbp + 0x1234]
phaddw mm3, qword [4 * rbp + 0x12345678]
phaddw mm3, qword [rbx + 4 * rbp]
phaddw mm3, qword [rbx + 4 * rbp + 0x12]
phaddw mm3, qword [rbx + 4 * rbp + 0x1234]
phaddw mm3, qword [rbx + 4 * rbp + 0x12345678]
phaddw mm3, qword [rsp]
phaddw mm3, qword [rsp + 0x12]
phaddw mm3, qword [rsp + 0x1234]
phaddw mm3, qword [rsp + 0x12345678]
phaddw mm3, qword [rsp + rax]
phaddw mm3, qword [rsp + rbp]
phaddw mm3, qword [rsp + 2*rbp]
phaddw mm3, qword [rsp + 4*rbp]
phaddw mm3, qword [rsp + 8*rbp]
phaddw mm3, qword [rax]
phaddw mm3, qword [rcx]
phaddw mm3, qword [rdx]
phaddw mm3, qword [rbx]
phaddw mm3, qword [rsp]
phaddw mm3, qword [rbp]
phaddw mm3, qword [rsi]
phaddw mm3, qword [rdi]
phaddw mm3, qword [rax + 2*rax]
phaddw mm3, qword [rcx + 2*rcx]
phaddw mm3, qword [rdx + 2*rdx]
phaddw mm3, qword [rbx + 2*rbx]
phaddw mm3, qword [rbp + 2*rbp]
phaddw mm3, qword [rsi + 2*rsi]
phaddw mm3, qword [rdi + 2*rdi]
phaddw mm4, qword [rip + 0x13]
phaddw mm4, qword [rip + 0x1235]
phaddw mm4, qword [rip + 0x12345679]
phaddw mm4, qword [rbx]
phaddw mm4, qword [rcx + 0x14]
phaddw mm4, qword [rdx + 0x15]
phaddw mm4, qword [rbx + 0x1235]
phaddw mm4, qword [rbx + 0x12345679]
phaddw mm4, qword [rbx + rcx]
phaddw mm4, qword [rbx + 4 * rcx]
phaddw mm4, qword [rbx + rcx + 0x13]
phaddw mm4, qword [rbx + rcx + 0x1235]
phaddw mm4, qword [rbx + rcx + 0x12345679]
phaddw mm4, qword [rbx + 4 * rcx + 0x13]
phaddw mm4, qword [rbx + 4 * rcx + 0x1235]
phaddw mm4, qword [rbx + 8 * rcx + 0x12345679]
phaddw mm4, qword [4 * rcx]
phaddw mm4, qword [4 * rcx + 0x13]
phaddw mm4, qword [4 * rcx + 0x1235]
phaddw mm4, qword [4 * rcx + 0x12345679]
phaddw mm4, qword [rbp]
phaddw mm4, qword [rbp + 0x12]
phaddw mm4, qword [rbp + 0x1234]
phaddw mm4, qword [rbp + 0x12345678]
phaddw mm4, qword [4 * rbp]
phaddw mm4, qword [4 * rbp + 0x12]
phaddw mm4, qword [4 * rbp + 0x1234]
phaddw mm4, qword [4 * rbp + 0x12345678]
phaddw mm4, qword [rbx + 4 * rbp]
phaddw mm4, qword [rbx + 4 * rbp + 0x12]
phaddw mm4, qword [rbx + 4 * rbp + 0x1234]
phaddw mm4, qword [rbx + 4 * rbp + 0x12345678]
phaddw mm4, qword [rsp]
phaddw mm4, qword [rsp + 0x12]
phaddw mm4, qword [rsp + 0x1234]
phaddw mm4, qword [rsp + 0x12345678]
phaddw mm4, qword [rsp + rax]
phaddw mm4, qword [rsp + rbp]
phaddw mm4, qword [rsp + 2*rbp]
phaddw mm4, qword [rsp + 4*rbp]
phaddw mm4, qword [rsp + 8*rbp]
phaddw mm4, qword [rax]
phaddw mm4, qword [rcx]
phaddw mm4, qword [rdx]
phaddw mm4, qword [rbx]
phaddw mm4, qword [rsp]
phaddw mm4, qword [rbp]
phaddw mm4, qword [rsi]
phaddw mm4, qword [rdi]
phaddw mm4, qword [rax + 2*rax]
phaddw mm4, qword [rcx + 2*rcx]
phaddw mm4, qword [rdx + 2*rdx]
phaddw mm4, qword [rbx + 2*rbx]
phaddw mm4, qword [rbp + 2*rbp]
phaddw mm4, qword [rsi + 2*rsi]
phaddw mm4, qword [rdi + 2*rdi]
phaddw mm5, qword [rip + 0x13]
phaddw mm5, qword [rip + 0x1235]
phaddw mm5, qword [rip + 0x12345679]
phaddw mm5, qword [rbx]
phaddw mm5, qword [rcx + 0x14]
phaddw mm5, qword [rdx + 0x15]
phaddw mm5, qword [rbx + 0x1235]
phaddw mm5, qword [rbx + 0x12345679]
phaddw mm5, qword [rbx + rcx]
phaddw mm5, qword [rbx + 4 * rcx]
phaddw mm5, qword [rbx + rcx + 0x13]
phaddw mm5, qword [rbx + rcx + 0x1235]
phaddw mm5, qword [rbx + rcx + 0x12345679]
phaddw mm5, qword [rbx + 4 * rcx + 0x13]
phaddw mm5, qword [rbx + 4 * rcx + 0x1235]
phaddw mm5, qword [rbx + 8 * rcx + 0x12345679]
phaddw mm5, qword [4 * rcx]
phaddw mm5, qword [4 * rcx + 0x13]
phaddw mm5, qword [4 * rcx + 0x1235]
phaddw mm5, qword [4 * rcx + 0x12345679]
phaddw mm5, qword [rbp]
phaddw mm5, qword [rbp + 0x12]
phaddw mm5, qword [rbp + 0x1234]
phaddw mm5, qword [rbp + 0x12345678]
phaddw mm5, qword [4 * rbp]
phaddw mm5, qword [4 * rbp + 0x12]
phaddw mm5, qword [4 * rbp + 0x1234]
phaddw mm5, qword [4 * rbp + 0x12345678]
phaddw mm5, qword [rbx + 4 * rbp]
phaddw mm5, qword [rbx + 4 * rbp + 0x12]
phaddw mm5, qword [rbx + 4 * rbp + 0x1234]
phaddw mm5, qword [rbx + 4 * rbp + 0x12345678]
phaddw mm5, qword [rsp]
phaddw mm5, qword [rsp + 0x12]
phaddw mm5, qword [rsp + 0x1234]
phaddw mm5, qword [rsp + 0x12345678]
phaddw mm5, qword [rsp + rax]
phaddw mm5, qword [rsp + rbp]
phaddw mm5, qword [rsp + 2*rbp]
phaddw mm5, qword [rsp + 4*rbp]
phaddw mm5, qword [rsp + 8*rbp]
phaddw mm5, qword [rax]
phaddw mm5, qword [rcx]
phaddw mm5, qword [rdx]
phaddw mm5, qword [rbx]
phaddw mm5, qword [rsp]
phaddw mm5, qword [rbp]
phaddw mm5, qword [rsi]
phaddw mm5, qword [rdi]
phaddw mm5, qword [rax + 2*rax]
phaddw mm5, qword [rcx + 2*rcx]
phaddw mm5, qword [rdx + 2*rdx]
phaddw mm5, qword [rbx + 2*rbx]
phaddw mm5, qword [rbp + 2*rbp]
phaddw mm5, qword [rsi + 2*rsi]
phaddw mm5, qword [rdi + 2*rdi]
phaddw mm6, qword [rip + 0x13]
phaddw mm6, qword [rip + 0x1235]
phaddw mm6, qword [rip + 0x12345679]
phaddw mm6, qword [rbx]
phaddw mm6, qword [rcx + 0x14]
phaddw mm6, qword [rdx + 0x15]
phaddw mm6, qword [rbx + 0x1235]
phaddw mm6, qword [rbx + 0x12345679]
phaddw mm6, qword [rbx + rcx]
phaddw mm6, qword [rbx + 4 * rcx]
phaddw mm6, qword [rbx + rcx + 0x13]
phaddw mm6, qword [rbx + rcx + 0x1235]
phaddw mm6, qword [rbx + rcx + 0x12345679]
phaddw mm6, qword [rbx + 4 * rcx + 0x13]
phaddw mm6, qword [rbx + 4 * rcx + 0x1235]
phaddw mm6, qword [rbx + 8 * rcx + 0x12345679]
phaddw mm6, qword [4 * rcx]
phaddw mm6, qword [4 * rcx + 0x13]
phaddw mm6, qword [4 * rcx + 0x1235]
phaddw mm6, qword [4 * rcx + 0x12345679]
phaddw mm6, qword [rbp]
phaddw mm6, qword [rbp + 0x12]
phaddw mm6, qword [rbp + 0x1234]
phaddw mm6, qword [rbp + 0x12345678]
phaddw mm6, qword [4 * rbp]
phaddw mm6, qword [4 * rbp + 0x12]
phaddw mm6, qword [4 * rbp + 0x1234]
phaddw mm6, qword [4 * rbp + 0x12345678]
phaddw mm6, qword [rbx + 4 * rbp]
phaddw mm6, qword [rbx + 4 * rbp + 0x12]
phaddw mm6, qword [rbx + 4 * rbp + 0x1234]
phaddw mm6, qword [rbx + 4 * rbp + 0x12345678]
phaddw mm6, qword [rsp]
phaddw mm6, qword [rsp + 0x12]
phaddw mm6, qword [rsp + 0x1234]
phaddw mm6, qword [rsp + 0x12345678]
phaddw mm6, qword [rsp + rax]
phaddw mm6, qword [rsp + rbp]
phaddw mm6, qword [rsp + 2*rbp]
phaddw mm6, qword [rsp + 4*rbp]
phaddw mm6, qword [rsp + 8*rbp]
phaddw mm6, qword [rax]
phaddw mm6, qword [rcx]
phaddw mm6, qword [rdx]
phaddw mm6, qword [rbx]
phaddw mm6, qword [rsp]
phaddw mm6, qword [rbp]
phaddw mm6, qword [rsi]
phaddw mm6, qword [rdi]
phaddw mm6, qword [rax + 2*rax]
phaddw mm6, qword [rcx + 2*rcx]
phaddw mm6, qword [rdx + 2*rdx]
phaddw mm6, qword [rbx + 2*rbx]
phaddw mm6, qword [rbp + 2*rbp]
phaddw mm6, qword [rsi + 2*rsi]
phaddw mm6, qword [rdi + 2*rdi]
phaddw mm7, qword [rip + 0x13]
phaddw mm7, qword [rip + 0x1235]
phaddw mm7, qword [rip + 0x12345679]
phaddw mm7, qword [rbx]
phaddw mm7, qword [rcx + 0x14]
phaddw mm7, qword [rdx + 0x15]
phaddw mm7, qword [rbx + 0x1235]
phaddw mm7, qword [rbx + 0x12345679]
phaddw mm7, qword [rbx + rcx]
phaddw mm7, qword [rbx + 4 * rcx]
phaddw mm7, qword [rbx + rcx + 0x13]
phaddw mm7, qword [rbx + rcx + 0x1235]
phaddw mm7, qword [rbx + rcx + 0x12345679]
phaddw mm7, qword [rbx + 4 * rcx + 0x13]
phaddw mm7, qword [rbx + 4 * rcx + 0x1235]
phaddw mm7, qword [rbx + 8 * rcx + 0x12345679]
phaddw mm7, qword [4 * rcx]
phaddw mm7, qword [4 * rcx + 0x13]
phaddw mm7, qword [4 * rcx + 0x1235]
phaddw mm7, qword [4 * rcx + 0x12345679]
phaddw mm7, qword [rbp]
phaddw mm7, qword [rbp + 0x12]
phaddw mm7, qword [rbp + 0x1234]
phaddw mm7, qword [rbp + 0x12345678]
phaddw mm7, qword [4 * rbp]
phaddw mm7, qword [4 * rbp + 0x12]
phaddw mm7, qword [4 * rbp + 0x1234]
phaddw mm7, qword [4 * rbp + 0x12345678]
phaddw mm7, qword [rbx + 4 * rbp]
phaddw mm7, qword [rbx + 4 * rbp + 0x12]
phaddw mm7, qword [rbx + 4 * rbp + 0x1234]
phaddw mm7, qword [rbx + 4 * rbp + 0x12345678]
phaddw mm7, qword [rsp]
phaddw mm7, qword [rsp + 0x12]
phaddw mm7, qword [rsp + 0x1234]
phaddw mm7, qword [rsp + 0x12345678]
phaddw mm7, qword [rsp + rax]
phaddw mm7, qword [rsp + rbp]
phaddw mm7, qword [rsp + 2*rbp]
phaddw mm7, qword [rsp + 4*rbp]
phaddw mm7, qword [rsp + 8*rbp]
phaddw mm7, qword [rax]
phaddw mm7, qword [rcx]
phaddw mm7, qword [rdx]
phaddw mm7, qword [rbx]
phaddw mm7, qword [rsp]
phaddw mm7, qword [rbp]
phaddw mm7, qword [rsi]
phaddw mm7, qword [rdi]
phaddw mm7, qword [rax + 2*rax]
phaddw mm7, qword [rcx + 2*rcx]
phaddw mm7, qword [rdx + 2*rdx]
phaddw mm7, qword [rbx + 2*rbx]
phaddw mm7, qword [rbp + 2*rbp]
phaddw mm7, qword [rsi + 2*rsi]
phaddw mm7, qword [rdi + 2*rdi]

