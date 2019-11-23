use64
; ------------------------------------------------------------------------------
; opcode mm,mm
; ------------------------------------------------------------------------------
pabsd mm0, mm0
pabsd mm0, mm1
pabsd mm0, mm2
pabsd mm0, mm3
pabsd mm0, mm4
pabsd mm0, mm5
pabsd mm0, mm6
pabsd mm0, mm7
pabsd mm1, mm0
pabsd mm1, mm1
pabsd mm1, mm2
pabsd mm1, mm3
pabsd mm1, mm4
pabsd mm1, mm5
pabsd mm1, mm6
pabsd mm1, mm7
pabsd mm2, mm0
pabsd mm2, mm1
pabsd mm2, mm2
pabsd mm2, mm3
pabsd mm2, mm4
pabsd mm2, mm5
pabsd mm2, mm6
pabsd mm2, mm7
pabsd mm3, mm0
pabsd mm3, mm1
pabsd mm3, mm2
pabsd mm3, mm3
pabsd mm3, mm4
pabsd mm3, mm5
pabsd mm3, mm6
pabsd mm3, mm7
pabsd mm4, mm0
pabsd mm4, mm1
pabsd mm4, mm2
pabsd mm4, mm3
pabsd mm4, mm4
pabsd mm4, mm5
pabsd mm4, mm6
pabsd mm4, mm7
pabsd mm5, mm0
pabsd mm5, mm1
pabsd mm5, mm2
pabsd mm5, mm3
pabsd mm5, mm4
pabsd mm5, mm5
pabsd mm5, mm6
pabsd mm5, mm7
pabsd mm6, mm0
pabsd mm6, mm1
pabsd mm6, mm2
pabsd mm6, mm3
pabsd mm6, mm4
pabsd mm6, mm5
pabsd mm6, mm6
pabsd mm6, mm7
pabsd mm7, mm0
pabsd mm7, mm1
pabsd mm7, mm2
pabsd mm7, mm3
pabsd mm7, mm4
pabsd mm7, mm5
pabsd mm7, mm6
pabsd mm7, mm7

; ------------------------------------------------------------------------------
; opcode mm,m64
; ------------------------------------------------------------------------------
pabsd mm0, qword [rip + 0x13]
pabsd mm0, qword [rip + 0x1235]
pabsd mm0, qword [rip + 0x12345679]
pabsd mm0, qword [rbx]
pabsd mm0, qword [rcx + 0x14]
pabsd mm0, qword [rdx + 0x15]
pabsd mm0, qword [rbx + 0x1235]
pabsd mm0, qword [rbx + 0x12345679]
pabsd mm0, qword [rbx + rcx]
pabsd mm0, qword [rbx + 4 * rcx]
pabsd mm0, qword [rbx + rcx + 0x13]
pabsd mm0, qword [rbx + rcx + 0x1235]
pabsd mm0, qword [rbx + rcx + 0x12345679]
pabsd mm0, qword [rbx + 4 * rcx + 0x13]
pabsd mm0, qword [rbx + 4 * rcx + 0x1235]
pabsd mm0, qword [rbx + 8 * rcx + 0x12345679]
pabsd mm0, qword [4 * rcx]
pabsd mm0, qword [4 * rcx + 0x13]
pabsd mm0, qword [4 * rcx + 0x1235]
pabsd mm0, qword [4 * rcx + 0x12345679]
pabsd mm0, qword [rbp]
pabsd mm0, qword [rbp + 0x12]
pabsd mm0, qword [rbp + 0x1234]
pabsd mm0, qword [rbp + 0x12345678]
pabsd mm0, qword [4 * rbp]
pabsd mm0, qword [4 * rbp + 0x12]
pabsd mm0, qword [4 * rbp + 0x1234]
pabsd mm0, qword [4 * rbp + 0x12345678]
pabsd mm0, qword [rbx + 4 * rbp]
pabsd mm0, qword [rbx + 4 * rbp + 0x12]
pabsd mm0, qword [rbx + 4 * rbp + 0x1234]
pabsd mm0, qword [rbx + 4 * rbp + 0x12345678]
pabsd mm0, qword [rsp]
pabsd mm0, qword [rsp + 0x12]
pabsd mm0, qword [rsp + 0x1234]
pabsd mm0, qword [rsp + 0x12345678]
pabsd mm0, qword [rsp + rax]
pabsd mm0, qword [rsp + rbp]
pabsd mm0, qword [rsp + 2*rbp]
pabsd mm0, qword [rsp + 4*rbp]
pabsd mm0, qword [rsp + 8*rbp]
pabsd mm0, qword [rax]
pabsd mm0, qword [rcx]
pabsd mm0, qword [rdx]
pabsd mm0, qword [rbx]
pabsd mm0, qword [rsp]
pabsd mm0, qword [rbp]
pabsd mm0, qword [rsi]
pabsd mm0, qword [rdi]
pabsd mm0, qword [rax + 2*rax]
pabsd mm0, qword [rcx + 2*rcx]
pabsd mm0, qword [rdx + 2*rdx]
pabsd mm0, qword [rbx + 2*rbx]
pabsd mm0, qword [rbp + 2*rbp]
pabsd mm0, qword [rsi + 2*rsi]
pabsd mm0, qword [rdi + 2*rdi]
pabsd mm1, qword [rip + 0x13]
pabsd mm1, qword [rip + 0x1235]
pabsd mm1, qword [rip + 0x12345679]
pabsd mm1, qword [rbx]
pabsd mm1, qword [rcx + 0x14]
pabsd mm1, qword [rdx + 0x15]
pabsd mm1, qword [rbx + 0x1235]
pabsd mm1, qword [rbx + 0x12345679]
pabsd mm1, qword [rbx + rcx]
pabsd mm1, qword [rbx + 4 * rcx]
pabsd mm1, qword [rbx + rcx + 0x13]
pabsd mm1, qword [rbx + rcx + 0x1235]
pabsd mm1, qword [rbx + rcx + 0x12345679]
pabsd mm1, qword [rbx + 4 * rcx + 0x13]
pabsd mm1, qword [rbx + 4 * rcx + 0x1235]
pabsd mm1, qword [rbx + 8 * rcx + 0x12345679]
pabsd mm1, qword [4 * rcx]
pabsd mm1, qword [4 * rcx + 0x13]
pabsd mm1, qword [4 * rcx + 0x1235]
pabsd mm1, qword [4 * rcx + 0x12345679]
pabsd mm1, qword [rbp]
pabsd mm1, qword [rbp + 0x12]
pabsd mm1, qword [rbp + 0x1234]
pabsd mm1, qword [rbp + 0x12345678]
pabsd mm1, qword [4 * rbp]
pabsd mm1, qword [4 * rbp + 0x12]
pabsd mm1, qword [4 * rbp + 0x1234]
pabsd mm1, qword [4 * rbp + 0x12345678]
pabsd mm1, qword [rbx + 4 * rbp]
pabsd mm1, qword [rbx + 4 * rbp + 0x12]
pabsd mm1, qword [rbx + 4 * rbp + 0x1234]
pabsd mm1, qword [rbx + 4 * rbp + 0x12345678]
pabsd mm1, qword [rsp]
pabsd mm1, qword [rsp + 0x12]
pabsd mm1, qword [rsp + 0x1234]
pabsd mm1, qword [rsp + 0x12345678]
pabsd mm1, qword [rsp + rax]
pabsd mm1, qword [rsp + rbp]
pabsd mm1, qword [rsp + 2*rbp]
pabsd mm1, qword [rsp + 4*rbp]
pabsd mm1, qword [rsp + 8*rbp]
pabsd mm1, qword [rax]
pabsd mm1, qword [rcx]
pabsd mm1, qword [rdx]
pabsd mm1, qword [rbx]
pabsd mm1, qword [rsp]
pabsd mm1, qword [rbp]
pabsd mm1, qword [rsi]
pabsd mm1, qword [rdi]
pabsd mm1, qword [rax + 2*rax]
pabsd mm1, qword [rcx + 2*rcx]
pabsd mm1, qword [rdx + 2*rdx]
pabsd mm1, qword [rbx + 2*rbx]
pabsd mm1, qword [rbp + 2*rbp]
pabsd mm1, qword [rsi + 2*rsi]
pabsd mm1, qword [rdi + 2*rdi]
pabsd mm2, qword [rip + 0x13]
pabsd mm2, qword [rip + 0x1235]
pabsd mm2, qword [rip + 0x12345679]
pabsd mm2, qword [rbx]
pabsd mm2, qword [rcx + 0x14]
pabsd mm2, qword [rdx + 0x15]
pabsd mm2, qword [rbx + 0x1235]
pabsd mm2, qword [rbx + 0x12345679]
pabsd mm2, qword [rbx + rcx]
pabsd mm2, qword [rbx + 4 * rcx]
pabsd mm2, qword [rbx + rcx + 0x13]
pabsd mm2, qword [rbx + rcx + 0x1235]
pabsd mm2, qword [rbx + rcx + 0x12345679]
pabsd mm2, qword [rbx + 4 * rcx + 0x13]
pabsd mm2, qword [rbx + 4 * rcx + 0x1235]
pabsd mm2, qword [rbx + 8 * rcx + 0x12345679]
pabsd mm2, qword [4 * rcx]
pabsd mm2, qword [4 * rcx + 0x13]
pabsd mm2, qword [4 * rcx + 0x1235]
pabsd mm2, qword [4 * rcx + 0x12345679]
pabsd mm2, qword [rbp]
pabsd mm2, qword [rbp + 0x12]
pabsd mm2, qword [rbp + 0x1234]
pabsd mm2, qword [rbp + 0x12345678]
pabsd mm2, qword [4 * rbp]
pabsd mm2, qword [4 * rbp + 0x12]
pabsd mm2, qword [4 * rbp + 0x1234]
pabsd mm2, qword [4 * rbp + 0x12345678]
pabsd mm2, qword [rbx + 4 * rbp]
pabsd mm2, qword [rbx + 4 * rbp + 0x12]
pabsd mm2, qword [rbx + 4 * rbp + 0x1234]
pabsd mm2, qword [rbx + 4 * rbp + 0x12345678]
pabsd mm2, qword [rsp]
pabsd mm2, qword [rsp + 0x12]
pabsd mm2, qword [rsp + 0x1234]
pabsd mm2, qword [rsp + 0x12345678]
pabsd mm2, qword [rsp + rax]
pabsd mm2, qword [rsp + rbp]
pabsd mm2, qword [rsp + 2*rbp]
pabsd mm2, qword [rsp + 4*rbp]
pabsd mm2, qword [rsp + 8*rbp]
pabsd mm2, qword [rax]
pabsd mm2, qword [rcx]
pabsd mm2, qword [rdx]
pabsd mm2, qword [rbx]
pabsd mm2, qword [rsp]
pabsd mm2, qword [rbp]
pabsd mm2, qword [rsi]
pabsd mm2, qword [rdi]
pabsd mm2, qword [rax + 2*rax]
pabsd mm2, qword [rcx + 2*rcx]
pabsd mm2, qword [rdx + 2*rdx]
pabsd mm2, qword [rbx + 2*rbx]
pabsd mm2, qword [rbp + 2*rbp]
pabsd mm2, qword [rsi + 2*rsi]
pabsd mm2, qword [rdi + 2*rdi]
pabsd mm3, qword [rip + 0x13]
pabsd mm3, qword [rip + 0x1235]
pabsd mm3, qword [rip + 0x12345679]
pabsd mm3, qword [rbx]
pabsd mm3, qword [rcx + 0x14]
pabsd mm3, qword [rdx + 0x15]
pabsd mm3, qword [rbx + 0x1235]
pabsd mm3, qword [rbx + 0x12345679]
pabsd mm3, qword [rbx + rcx]
pabsd mm3, qword [rbx + 4 * rcx]
pabsd mm3, qword [rbx + rcx + 0x13]
pabsd mm3, qword [rbx + rcx + 0x1235]
pabsd mm3, qword [rbx + rcx + 0x12345679]
pabsd mm3, qword [rbx + 4 * rcx + 0x13]
pabsd mm3, qword [rbx + 4 * rcx + 0x1235]
pabsd mm3, qword [rbx + 8 * rcx + 0x12345679]
pabsd mm3, qword [4 * rcx]
pabsd mm3, qword [4 * rcx + 0x13]
pabsd mm3, qword [4 * rcx + 0x1235]
pabsd mm3, qword [4 * rcx + 0x12345679]
pabsd mm3, qword [rbp]
pabsd mm3, qword [rbp + 0x12]
pabsd mm3, qword [rbp + 0x1234]
pabsd mm3, qword [rbp + 0x12345678]
pabsd mm3, qword [4 * rbp]
pabsd mm3, qword [4 * rbp + 0x12]
pabsd mm3, qword [4 * rbp + 0x1234]
pabsd mm3, qword [4 * rbp + 0x12345678]
pabsd mm3, qword [rbx + 4 * rbp]
pabsd mm3, qword [rbx + 4 * rbp + 0x12]
pabsd mm3, qword [rbx + 4 * rbp + 0x1234]
pabsd mm3, qword [rbx + 4 * rbp + 0x12345678]
pabsd mm3, qword [rsp]
pabsd mm3, qword [rsp + 0x12]
pabsd mm3, qword [rsp + 0x1234]
pabsd mm3, qword [rsp + 0x12345678]
pabsd mm3, qword [rsp + rax]
pabsd mm3, qword [rsp + rbp]
pabsd mm3, qword [rsp + 2*rbp]
pabsd mm3, qword [rsp + 4*rbp]
pabsd mm3, qword [rsp + 8*rbp]
pabsd mm3, qword [rax]
pabsd mm3, qword [rcx]
pabsd mm3, qword [rdx]
pabsd mm3, qword [rbx]
pabsd mm3, qword [rsp]
pabsd mm3, qword [rbp]
pabsd mm3, qword [rsi]
pabsd mm3, qword [rdi]
pabsd mm3, qword [rax + 2*rax]
pabsd mm3, qword [rcx + 2*rcx]
pabsd mm3, qword [rdx + 2*rdx]
pabsd mm3, qword [rbx + 2*rbx]
pabsd mm3, qword [rbp + 2*rbp]
pabsd mm3, qword [rsi + 2*rsi]
pabsd mm3, qword [rdi + 2*rdi]
pabsd mm4, qword [rip + 0x13]
pabsd mm4, qword [rip + 0x1235]
pabsd mm4, qword [rip + 0x12345679]
pabsd mm4, qword [rbx]
pabsd mm4, qword [rcx + 0x14]
pabsd mm4, qword [rdx + 0x15]
pabsd mm4, qword [rbx + 0x1235]
pabsd mm4, qword [rbx + 0x12345679]
pabsd mm4, qword [rbx + rcx]
pabsd mm4, qword [rbx + 4 * rcx]
pabsd mm4, qword [rbx + rcx + 0x13]
pabsd mm4, qword [rbx + rcx + 0x1235]
pabsd mm4, qword [rbx + rcx + 0x12345679]
pabsd mm4, qword [rbx + 4 * rcx + 0x13]
pabsd mm4, qword [rbx + 4 * rcx + 0x1235]
pabsd mm4, qword [rbx + 8 * rcx + 0x12345679]
pabsd mm4, qword [4 * rcx]
pabsd mm4, qword [4 * rcx + 0x13]
pabsd mm4, qword [4 * rcx + 0x1235]
pabsd mm4, qword [4 * rcx + 0x12345679]
pabsd mm4, qword [rbp]
pabsd mm4, qword [rbp + 0x12]
pabsd mm4, qword [rbp + 0x1234]
pabsd mm4, qword [rbp + 0x12345678]
pabsd mm4, qword [4 * rbp]
pabsd mm4, qword [4 * rbp + 0x12]
pabsd mm4, qword [4 * rbp + 0x1234]
pabsd mm4, qword [4 * rbp + 0x12345678]
pabsd mm4, qword [rbx + 4 * rbp]
pabsd mm4, qword [rbx + 4 * rbp + 0x12]
pabsd mm4, qword [rbx + 4 * rbp + 0x1234]
pabsd mm4, qword [rbx + 4 * rbp + 0x12345678]
pabsd mm4, qword [rsp]
pabsd mm4, qword [rsp + 0x12]
pabsd mm4, qword [rsp + 0x1234]
pabsd mm4, qword [rsp + 0x12345678]
pabsd mm4, qword [rsp + rax]
pabsd mm4, qword [rsp + rbp]
pabsd mm4, qword [rsp + 2*rbp]
pabsd mm4, qword [rsp + 4*rbp]
pabsd mm4, qword [rsp + 8*rbp]
pabsd mm4, qword [rax]
pabsd mm4, qword [rcx]
pabsd mm4, qword [rdx]
pabsd mm4, qword [rbx]
pabsd mm4, qword [rsp]
pabsd mm4, qword [rbp]
pabsd mm4, qword [rsi]
pabsd mm4, qword [rdi]
pabsd mm4, qword [rax + 2*rax]
pabsd mm4, qword [rcx + 2*rcx]
pabsd mm4, qword [rdx + 2*rdx]
pabsd mm4, qword [rbx + 2*rbx]
pabsd mm4, qword [rbp + 2*rbp]
pabsd mm4, qword [rsi + 2*rsi]
pabsd mm4, qword [rdi + 2*rdi]
pabsd mm5, qword [rip + 0x13]
pabsd mm5, qword [rip + 0x1235]
pabsd mm5, qword [rip + 0x12345679]
pabsd mm5, qword [rbx]
pabsd mm5, qword [rcx + 0x14]
pabsd mm5, qword [rdx + 0x15]
pabsd mm5, qword [rbx + 0x1235]
pabsd mm5, qword [rbx + 0x12345679]
pabsd mm5, qword [rbx + rcx]
pabsd mm5, qword [rbx + 4 * rcx]
pabsd mm5, qword [rbx + rcx + 0x13]
pabsd mm5, qword [rbx + rcx + 0x1235]
pabsd mm5, qword [rbx + rcx + 0x12345679]
pabsd mm5, qword [rbx + 4 * rcx + 0x13]
pabsd mm5, qword [rbx + 4 * rcx + 0x1235]
pabsd mm5, qword [rbx + 8 * rcx + 0x12345679]
pabsd mm5, qword [4 * rcx]
pabsd mm5, qword [4 * rcx + 0x13]
pabsd mm5, qword [4 * rcx + 0x1235]
pabsd mm5, qword [4 * rcx + 0x12345679]
pabsd mm5, qword [rbp]
pabsd mm5, qword [rbp + 0x12]
pabsd mm5, qword [rbp + 0x1234]
pabsd mm5, qword [rbp + 0x12345678]
pabsd mm5, qword [4 * rbp]
pabsd mm5, qword [4 * rbp + 0x12]
pabsd mm5, qword [4 * rbp + 0x1234]
pabsd mm5, qword [4 * rbp + 0x12345678]
pabsd mm5, qword [rbx + 4 * rbp]
pabsd mm5, qword [rbx + 4 * rbp + 0x12]
pabsd mm5, qword [rbx + 4 * rbp + 0x1234]
pabsd mm5, qword [rbx + 4 * rbp + 0x12345678]
pabsd mm5, qword [rsp]
pabsd mm5, qword [rsp + 0x12]
pabsd mm5, qword [rsp + 0x1234]
pabsd mm5, qword [rsp + 0x12345678]
pabsd mm5, qword [rsp + rax]
pabsd mm5, qword [rsp + rbp]
pabsd mm5, qword [rsp + 2*rbp]
pabsd mm5, qword [rsp + 4*rbp]
pabsd mm5, qword [rsp + 8*rbp]
pabsd mm5, qword [rax]
pabsd mm5, qword [rcx]
pabsd mm5, qword [rdx]
pabsd mm5, qword [rbx]
pabsd mm5, qword [rsp]
pabsd mm5, qword [rbp]
pabsd mm5, qword [rsi]
pabsd mm5, qword [rdi]
pabsd mm5, qword [rax + 2*rax]
pabsd mm5, qword [rcx + 2*rcx]
pabsd mm5, qword [rdx + 2*rdx]
pabsd mm5, qword [rbx + 2*rbx]
pabsd mm5, qword [rbp + 2*rbp]
pabsd mm5, qword [rsi + 2*rsi]
pabsd mm5, qword [rdi + 2*rdi]
pabsd mm6, qword [rip + 0x13]
pabsd mm6, qword [rip + 0x1235]
pabsd mm6, qword [rip + 0x12345679]
pabsd mm6, qword [rbx]
pabsd mm6, qword [rcx + 0x14]
pabsd mm6, qword [rdx + 0x15]
pabsd mm6, qword [rbx + 0x1235]
pabsd mm6, qword [rbx + 0x12345679]
pabsd mm6, qword [rbx + rcx]
pabsd mm6, qword [rbx + 4 * rcx]
pabsd mm6, qword [rbx + rcx + 0x13]
pabsd mm6, qword [rbx + rcx + 0x1235]
pabsd mm6, qword [rbx + rcx + 0x12345679]
pabsd mm6, qword [rbx + 4 * rcx + 0x13]
pabsd mm6, qword [rbx + 4 * rcx + 0x1235]
pabsd mm6, qword [rbx + 8 * rcx + 0x12345679]
pabsd mm6, qword [4 * rcx]
pabsd mm6, qword [4 * rcx + 0x13]
pabsd mm6, qword [4 * rcx + 0x1235]
pabsd mm6, qword [4 * rcx + 0x12345679]
pabsd mm6, qword [rbp]
pabsd mm6, qword [rbp + 0x12]
pabsd mm6, qword [rbp + 0x1234]
pabsd mm6, qword [rbp + 0x12345678]
pabsd mm6, qword [4 * rbp]
pabsd mm6, qword [4 * rbp + 0x12]
pabsd mm6, qword [4 * rbp + 0x1234]
pabsd mm6, qword [4 * rbp + 0x12345678]
pabsd mm6, qword [rbx + 4 * rbp]
pabsd mm6, qword [rbx + 4 * rbp + 0x12]
pabsd mm6, qword [rbx + 4 * rbp + 0x1234]
pabsd mm6, qword [rbx + 4 * rbp + 0x12345678]
pabsd mm6, qword [rsp]
pabsd mm6, qword [rsp + 0x12]
pabsd mm6, qword [rsp + 0x1234]
pabsd mm6, qword [rsp + 0x12345678]
pabsd mm6, qword [rsp + rax]
pabsd mm6, qword [rsp + rbp]
pabsd mm6, qword [rsp + 2*rbp]
pabsd mm6, qword [rsp + 4*rbp]
pabsd mm6, qword [rsp + 8*rbp]
pabsd mm6, qword [rax]
pabsd mm6, qword [rcx]
pabsd mm6, qword [rdx]
pabsd mm6, qword [rbx]
pabsd mm6, qword [rsp]
pabsd mm6, qword [rbp]
pabsd mm6, qword [rsi]
pabsd mm6, qword [rdi]
pabsd mm6, qword [rax + 2*rax]
pabsd mm6, qword [rcx + 2*rcx]
pabsd mm6, qword [rdx + 2*rdx]
pabsd mm6, qword [rbx + 2*rbx]
pabsd mm6, qword [rbp + 2*rbp]
pabsd mm6, qword [rsi + 2*rsi]
pabsd mm6, qword [rdi + 2*rdi]
pabsd mm7, qword [rip + 0x13]
pabsd mm7, qword [rip + 0x1235]
pabsd mm7, qword [rip + 0x12345679]
pabsd mm7, qword [rbx]
pabsd mm7, qword [rcx + 0x14]
pabsd mm7, qword [rdx + 0x15]
pabsd mm7, qword [rbx + 0x1235]
pabsd mm7, qword [rbx + 0x12345679]
pabsd mm7, qword [rbx + rcx]
pabsd mm7, qword [rbx + 4 * rcx]
pabsd mm7, qword [rbx + rcx + 0x13]
pabsd mm7, qword [rbx + rcx + 0x1235]
pabsd mm7, qword [rbx + rcx + 0x12345679]
pabsd mm7, qword [rbx + 4 * rcx + 0x13]
pabsd mm7, qword [rbx + 4 * rcx + 0x1235]
pabsd mm7, qword [rbx + 8 * rcx + 0x12345679]
pabsd mm7, qword [4 * rcx]
pabsd mm7, qword [4 * rcx + 0x13]
pabsd mm7, qword [4 * rcx + 0x1235]
pabsd mm7, qword [4 * rcx + 0x12345679]
pabsd mm7, qword [rbp]
pabsd mm7, qword [rbp + 0x12]
pabsd mm7, qword [rbp + 0x1234]
pabsd mm7, qword [rbp + 0x12345678]
pabsd mm7, qword [4 * rbp]
pabsd mm7, qword [4 * rbp + 0x12]
pabsd mm7, qword [4 * rbp + 0x1234]
pabsd mm7, qword [4 * rbp + 0x12345678]
pabsd mm7, qword [rbx + 4 * rbp]
pabsd mm7, qword [rbx + 4 * rbp + 0x12]
pabsd mm7, qword [rbx + 4 * rbp + 0x1234]
pabsd mm7, qword [rbx + 4 * rbp + 0x12345678]
pabsd mm7, qword [rsp]
pabsd mm7, qword [rsp + 0x12]
pabsd mm7, qword [rsp + 0x1234]
pabsd mm7, qword [rsp + 0x12345678]
pabsd mm7, qword [rsp + rax]
pabsd mm7, qword [rsp + rbp]
pabsd mm7, qword [rsp + 2*rbp]
pabsd mm7, qword [rsp + 4*rbp]
pabsd mm7, qword [rsp + 8*rbp]
pabsd mm7, qword [rax]
pabsd mm7, qword [rcx]
pabsd mm7, qword [rdx]
pabsd mm7, qword [rbx]
pabsd mm7, qword [rsp]
pabsd mm7, qword [rbp]
pabsd mm7, qword [rsi]
pabsd mm7, qword [rdi]
pabsd mm7, qword [rax + 2*rax]
pabsd mm7, qword [rcx + 2*rcx]
pabsd mm7, qword [rdx + 2*rdx]
pabsd mm7, qword [rbx + 2*rbx]
pabsd mm7, qword [rbp + 2*rbp]
pabsd mm7, qword [rsi + 2*rsi]
pabsd mm7, qword [rdi + 2*rdi]
