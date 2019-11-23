use64
; ------------------------------------------------------------------------------
; opcode mm,mm
; ------------------------------------------------------------------------------
movq mm0, mm0
movq mm0, mm1
movq mm0, mm2
movq mm0, mm3
movq mm0, mm4
movq mm0, mm5
movq mm0, mm6
movq mm0, mm7
movq mm1, mm0
movq mm1, mm1
movq mm1, mm2
movq mm1, mm3
movq mm1, mm4
movq mm1, mm5
movq mm1, mm6
movq mm1, mm7
movq mm2, mm0
movq mm2, mm1
movq mm2, mm2
movq mm2, mm3
movq mm2, mm4
movq mm2, mm5
movq mm2, mm6
movq mm2, mm7
movq mm3, mm0
movq mm3, mm1
movq mm3, mm2
movq mm3, mm3
movq mm3, mm4
movq mm3, mm5
movq mm3, mm6
movq mm3, mm7
movq mm4, mm0
movq mm4, mm1
movq mm4, mm2
movq mm4, mm3
movq mm4, mm4
movq mm4, mm5
movq mm4, mm6
movq mm4, mm7
movq mm5, mm0
movq mm5, mm1
movq mm5, mm2
movq mm5, mm3
movq mm5, mm4
movq mm5, mm5
movq mm5, mm6
movq mm5, mm7
movq mm6, mm0
movq mm6, mm1
movq mm6, mm2
movq mm6, mm3
movq mm6, mm4
movq mm6, mm5
movq mm6, mm6
movq mm6, mm7
movq mm7, mm0
movq mm7, mm1
movq mm7, mm2
movq mm7, mm3
movq mm7, mm4
movq mm7, mm5
movq mm7, mm6
movq mm7, mm7

; ------------------------------------------------------------------------------
; opcode mm,r64
; ------------------------------------------------------------------------------
movq mm0, rax
movq mm0, rcx
movq mm0, rdx
movq mm0, rbx
movq mm0, rsp
movq mm0, rbp
movq mm0, rsi
movq mm0, rdi
movq mm1, rax
movq mm1, rcx
movq mm1, rdx
movq mm1, rbx
movq mm1, rsp
movq mm1, rbp
movq mm1, rsi
movq mm1, rdi
movq mm2, rax
movq mm2, rcx
movq mm2, rdx
movq mm2, rbx
movq mm2, rsp
movq mm2, rbp
movq mm2, rsi
movq mm2, rdi
movq mm3, rax
movq mm3, rcx
movq mm3, rdx
movq mm3, rbx
movq mm3, rsp
movq mm3, rbp
movq mm3, rsi
movq mm3, rdi
movq mm4, rax
movq mm4, rcx
movq mm4, rdx
movq mm4, rbx
movq mm4, rsp
movq mm4, rbp
movq mm4, rsi
movq mm4, rdi
movq mm5, rax
movq mm5, rcx
movq mm5, rdx
movq mm5, rbx
movq mm5, rsp
movq mm5, rbp
movq mm5, rsi
movq mm5, rdi
movq mm6, rax
movq mm6, rcx
movq mm6, rdx
movq mm6, rbx
movq mm6, rsp
movq mm6, rbp
movq mm6, rsi
movq mm6, rdi
movq mm7, rax
movq mm7, rcx
movq mm7, rdx
movq mm7, rbx
movq mm7, rsp
movq mm7, rbp
movq mm7, rsi
movq mm7, rdi

; ------------------------------------------------------------------------------
; opcode mm,m64
; ------------------------------------------------------------------------------
movq mm0, qword [rip + 0x13]
movq mm0, qword [rip + 0x1235]
movq mm0, qword [rip + 0x12345679]
movq mm0, qword [rbx]
movq mm0, qword [rcx + 0x14]
movq mm0, qword [rdx + 0x15]
movq mm0, qword [rbx + 0x1235]
movq mm0, qword [rbx + 0x12345679]
movq mm0, qword [rbx + rcx]
movq mm0, qword [rbx + 4 * rcx]
movq mm0, qword [rbx + rcx + 0x13]
movq mm0, qword [rbx + rcx + 0x1235]
movq mm0, qword [rbx + rcx + 0x12345679]
movq mm0, qword [rbx + 4 * rcx + 0x13]
movq mm0, qword [rbx + 4 * rcx + 0x1235]
movq mm0, qword [rbx + 8 * rcx + 0x12345679]
movq mm0, qword [4 * rcx]
movq mm0, qword [4 * rcx + 0x13]
movq mm0, qword [4 * rcx + 0x1235]
movq mm0, qword [4 * rcx + 0x12345679]
movq mm0, qword [rbp]
movq mm0, qword [rbp + 0x12]
movq mm0, qword [rbp + 0x1234]
movq mm0, qword [rbp + 0x12345678]
movq mm0, qword [4 * rbp]
movq mm0, qword [4 * rbp + 0x12]
movq mm0, qword [4 * rbp + 0x1234]
movq mm0, qword [4 * rbp + 0x12345678]
movq mm0, qword [rbx + 4 * rbp]
movq mm0, qword [rbx + 4 * rbp + 0x12]
movq mm0, qword [rbx + 4 * rbp + 0x1234]
movq mm0, qword [rbx + 4 * rbp + 0x12345678]
movq mm0, qword [rsp]
movq mm0, qword [rsp + 0x12]
movq mm0, qword [rsp + 0x1234]
movq mm0, qword [rsp + 0x12345678]
movq mm0, qword [rsp + rax]
movq mm0, qword [rsp + rbp]
movq mm0, qword [rsp + 2*rbp]
movq mm0, qword [rsp + 4*rbp]
movq mm0, qword [rsp + 8*rbp]
movq mm0, qword [rax]
movq mm0, qword [rcx]
movq mm0, qword [rdx]
movq mm0, qword [rbx]
movq mm0, qword [rsp]
movq mm0, qword [rbp]
movq mm0, qword [rsi]
movq mm0, qword [rdi]
movq mm0, qword [rax + 2*rax]
movq mm0, qword [rcx + 2*rcx]
movq mm0, qword [rdx + 2*rdx]
movq mm0, qword [rbx + 2*rbx]
movq mm0, qword [rbp + 2*rbp]
movq mm0, qword [rsi + 2*rsi]
movq mm0, qword [rdi + 2*rdi]
movq mm1, qword [rip + 0x13]
movq mm1, qword [rip + 0x1235]
movq mm1, qword [rip + 0x12345679]
movq mm1, qword [rbx]
movq mm1, qword [rcx + 0x14]
movq mm1, qword [rdx + 0x15]
movq mm1, qword [rbx + 0x1235]
movq mm1, qword [rbx + 0x12345679]
movq mm1, qword [rbx + rcx]
movq mm1, qword [rbx + 4 * rcx]
movq mm1, qword [rbx + rcx + 0x13]
movq mm1, qword [rbx + rcx + 0x1235]
movq mm1, qword [rbx + rcx + 0x12345679]
movq mm1, qword [rbx + 4 * rcx + 0x13]
movq mm1, qword [rbx + 4 * rcx + 0x1235]
movq mm1, qword [rbx + 8 * rcx + 0x12345679]
movq mm1, qword [4 * rcx]
movq mm1, qword [4 * rcx + 0x13]
movq mm1, qword [4 * rcx + 0x1235]
movq mm1, qword [4 * rcx + 0x12345679]
movq mm1, qword [rbp]
movq mm1, qword [rbp + 0x12]
movq mm1, qword [rbp + 0x1234]
movq mm1, qword [rbp + 0x12345678]
movq mm1, qword [4 * rbp]
movq mm1, qword [4 * rbp + 0x12]
movq mm1, qword [4 * rbp + 0x1234]
movq mm1, qword [4 * rbp + 0x12345678]
movq mm1, qword [rbx + 4 * rbp]
movq mm1, qword [rbx + 4 * rbp + 0x12]
movq mm1, qword [rbx + 4 * rbp + 0x1234]
movq mm1, qword [rbx + 4 * rbp + 0x12345678]
movq mm1, qword [rsp]
movq mm1, qword [rsp + 0x12]
movq mm1, qword [rsp + 0x1234]
movq mm1, qword [rsp + 0x12345678]
movq mm1, qword [rsp + rax]
movq mm1, qword [rsp + rbp]
movq mm1, qword [rsp + 2*rbp]
movq mm1, qword [rsp + 4*rbp]
movq mm1, qword [rsp + 8*rbp]
movq mm1, qword [rax]
movq mm1, qword [rcx]
movq mm1, qword [rdx]
movq mm1, qword [rbx]
movq mm1, qword [rsp]
movq mm1, qword [rbp]
movq mm1, qword [rsi]
movq mm1, qword [rdi]
movq mm1, qword [rax + 2*rax]
movq mm1, qword [rcx + 2*rcx]
movq mm1, qword [rdx + 2*rdx]
movq mm1, qword [rbx + 2*rbx]
movq mm1, qword [rbp + 2*rbp]
movq mm1, qword [rsi + 2*rsi]
movq mm1, qword [rdi + 2*rdi]
movq mm2, qword [rip + 0x13]
movq mm2, qword [rip + 0x1235]
movq mm2, qword [rip + 0x12345679]
movq mm2, qword [rbx]
movq mm2, qword [rcx + 0x14]
movq mm2, qword [rdx + 0x15]
movq mm2, qword [rbx + 0x1235]
movq mm2, qword [rbx + 0x12345679]
movq mm2, qword [rbx + rcx]
movq mm2, qword [rbx + 4 * rcx]
movq mm2, qword [rbx + rcx + 0x13]
movq mm2, qword [rbx + rcx + 0x1235]
movq mm2, qword [rbx + rcx + 0x12345679]
movq mm2, qword [rbx + 4 * rcx + 0x13]
movq mm2, qword [rbx + 4 * rcx + 0x1235]
movq mm2, qword [rbx + 8 * rcx + 0x12345679]
movq mm2, qword [4 * rcx]
movq mm2, qword [4 * rcx + 0x13]
movq mm2, qword [4 * rcx + 0x1235]
movq mm2, qword [4 * rcx + 0x12345679]
movq mm2, qword [rbp]
movq mm2, qword [rbp + 0x12]
movq mm2, qword [rbp + 0x1234]
movq mm2, qword [rbp + 0x12345678]
movq mm2, qword [4 * rbp]
movq mm2, qword [4 * rbp + 0x12]
movq mm2, qword [4 * rbp + 0x1234]
movq mm2, qword [4 * rbp + 0x12345678]
movq mm2, qword [rbx + 4 * rbp]
movq mm2, qword [rbx + 4 * rbp + 0x12]
movq mm2, qword [rbx + 4 * rbp + 0x1234]
movq mm2, qword [rbx + 4 * rbp + 0x12345678]
movq mm2, qword [rsp]
movq mm2, qword [rsp + 0x12]
movq mm2, qword [rsp + 0x1234]
movq mm2, qword [rsp + 0x12345678]
movq mm2, qword [rsp + rax]
movq mm2, qword [rsp + rbp]
movq mm2, qword [rsp + 2*rbp]
movq mm2, qword [rsp + 4*rbp]
movq mm2, qword [rsp + 8*rbp]
movq mm2, qword [rax]
movq mm2, qword [rcx]
movq mm2, qword [rdx]
movq mm2, qword [rbx]
movq mm2, qword [rsp]
movq mm2, qword [rbp]
movq mm2, qword [rsi]
movq mm2, qword [rdi]
movq mm2, qword [rax + 2*rax]
movq mm2, qword [rcx + 2*rcx]
movq mm2, qword [rdx + 2*rdx]
movq mm2, qword [rbx + 2*rbx]
movq mm2, qword [rbp + 2*rbp]
movq mm2, qword [rsi + 2*rsi]
movq mm2, qword [rdi + 2*rdi]
movq mm3, qword [rip + 0x13]
movq mm3, qword [rip + 0x1235]
movq mm3, qword [rip + 0x12345679]
movq mm3, qword [rbx]
movq mm3, qword [rcx + 0x14]
movq mm3, qword [rdx + 0x15]
movq mm3, qword [rbx + 0x1235]
movq mm3, qword [rbx + 0x12345679]
movq mm3, qword [rbx + rcx]
movq mm3, qword [rbx + 4 * rcx]
movq mm3, qword [rbx + rcx + 0x13]
movq mm3, qword [rbx + rcx + 0x1235]
movq mm3, qword [rbx + rcx + 0x12345679]
movq mm3, qword [rbx + 4 * rcx + 0x13]
movq mm3, qword [rbx + 4 * rcx + 0x1235]
movq mm3, qword [rbx + 8 * rcx + 0x12345679]
movq mm3, qword [4 * rcx]
movq mm3, qword [4 * rcx + 0x13]
movq mm3, qword [4 * rcx + 0x1235]
movq mm3, qword [4 * rcx + 0x12345679]
movq mm3, qword [rbp]
movq mm3, qword [rbp + 0x12]
movq mm3, qword [rbp + 0x1234]
movq mm3, qword [rbp + 0x12345678]
movq mm3, qword [4 * rbp]
movq mm3, qword [4 * rbp + 0x12]
movq mm3, qword [4 * rbp + 0x1234]
movq mm3, qword [4 * rbp + 0x12345678]
movq mm3, qword [rbx + 4 * rbp]
movq mm3, qword [rbx + 4 * rbp + 0x12]
movq mm3, qword [rbx + 4 * rbp + 0x1234]
movq mm3, qword [rbx + 4 * rbp + 0x12345678]
movq mm3, qword [rsp]
movq mm3, qword [rsp + 0x12]
movq mm3, qword [rsp + 0x1234]
movq mm3, qword [rsp + 0x12345678]
movq mm3, qword [rsp + rax]
movq mm3, qword [rsp + rbp]
movq mm3, qword [rsp + 2*rbp]
movq mm3, qword [rsp + 4*rbp]
movq mm3, qword [rsp + 8*rbp]
movq mm3, qword [rax]
movq mm3, qword [rcx]
movq mm3, qword [rdx]
movq mm3, qword [rbx]
movq mm3, qword [rsp]
movq mm3, qword [rbp]
movq mm3, qword [rsi]
movq mm3, qword [rdi]
movq mm3, qword [rax + 2*rax]
movq mm3, qword [rcx + 2*rcx]
movq mm3, qword [rdx + 2*rdx]
movq mm3, qword [rbx + 2*rbx]
movq mm3, qword [rbp + 2*rbp]
movq mm3, qword [rsi + 2*rsi]
movq mm3, qword [rdi + 2*rdi]
movq mm4, qword [rip + 0x13]
movq mm4, qword [rip + 0x1235]
movq mm4, qword [rip + 0x12345679]
movq mm4, qword [rbx]
movq mm4, qword [rcx + 0x14]
movq mm4, qword [rdx + 0x15]
movq mm4, qword [rbx + 0x1235]
movq mm4, qword [rbx + 0x12345679]
movq mm4, qword [rbx + rcx]
movq mm4, qword [rbx + 4 * rcx]
movq mm4, qword [rbx + rcx + 0x13]
movq mm4, qword [rbx + rcx + 0x1235]
movq mm4, qword [rbx + rcx + 0x12345679]
movq mm4, qword [rbx + 4 * rcx + 0x13]
movq mm4, qword [rbx + 4 * rcx + 0x1235]
movq mm4, qword [rbx + 8 * rcx + 0x12345679]
movq mm4, qword [4 * rcx]
movq mm4, qword [4 * rcx + 0x13]
movq mm4, qword [4 * rcx + 0x1235]
movq mm4, qword [4 * rcx + 0x12345679]
movq mm4, qword [rbp]
movq mm4, qword [rbp + 0x12]
movq mm4, qword [rbp + 0x1234]
movq mm4, qword [rbp + 0x12345678]
movq mm4, qword [4 * rbp]
movq mm4, qword [4 * rbp + 0x12]
movq mm4, qword [4 * rbp + 0x1234]
movq mm4, qword [4 * rbp + 0x12345678]
movq mm4, qword [rbx + 4 * rbp]
movq mm4, qword [rbx + 4 * rbp + 0x12]
movq mm4, qword [rbx + 4 * rbp + 0x1234]
movq mm4, qword [rbx + 4 * rbp + 0x12345678]
movq mm4, qword [rsp]
movq mm4, qword [rsp + 0x12]
movq mm4, qword [rsp + 0x1234]
movq mm4, qword [rsp + 0x12345678]
movq mm4, qword [rsp + rax]
movq mm4, qword [rsp + rbp]
movq mm4, qword [rsp + 2*rbp]
movq mm4, qword [rsp + 4*rbp]
movq mm4, qword [rsp + 8*rbp]
movq mm4, qword [rax]
movq mm4, qword [rcx]
movq mm4, qword [rdx]
movq mm4, qword [rbx]
movq mm4, qword [rsp]
movq mm4, qword [rbp]
movq mm4, qword [rsi]
movq mm4, qword [rdi]
movq mm4, qword [rax + 2*rax]
movq mm4, qword [rcx + 2*rcx]
movq mm4, qword [rdx + 2*rdx]
movq mm4, qword [rbx + 2*rbx]
movq mm4, qword [rbp + 2*rbp]
movq mm4, qword [rsi + 2*rsi]
movq mm4, qword [rdi + 2*rdi]
movq mm5, qword [rip + 0x13]
movq mm5, qword [rip + 0x1235]
movq mm5, qword [rip + 0x12345679]
movq mm5, qword [rbx]
movq mm5, qword [rcx + 0x14]
movq mm5, qword [rdx + 0x15]
movq mm5, qword [rbx + 0x1235]
movq mm5, qword [rbx + 0x12345679]
movq mm5, qword [rbx + rcx]
movq mm5, qword [rbx + 4 * rcx]
movq mm5, qword [rbx + rcx + 0x13]
movq mm5, qword [rbx + rcx + 0x1235]
movq mm5, qword [rbx + rcx + 0x12345679]
movq mm5, qword [rbx + 4 * rcx + 0x13]
movq mm5, qword [rbx + 4 * rcx + 0x1235]
movq mm5, qword [rbx + 8 * rcx + 0x12345679]
movq mm5, qword [4 * rcx]
movq mm5, qword [4 * rcx + 0x13]
movq mm5, qword [4 * rcx + 0x1235]
movq mm5, qword [4 * rcx + 0x12345679]
movq mm5, qword [rbp]
movq mm5, qword [rbp + 0x12]
movq mm5, qword [rbp + 0x1234]
movq mm5, qword [rbp + 0x12345678]
movq mm5, qword [4 * rbp]
movq mm5, qword [4 * rbp + 0x12]
movq mm5, qword [4 * rbp + 0x1234]
movq mm5, qword [4 * rbp + 0x12345678]
movq mm5, qword [rbx + 4 * rbp]
movq mm5, qword [rbx + 4 * rbp + 0x12]
movq mm5, qword [rbx + 4 * rbp + 0x1234]
movq mm5, qword [rbx + 4 * rbp + 0x12345678]
movq mm5, qword [rsp]
movq mm5, qword [rsp + 0x12]
movq mm5, qword [rsp + 0x1234]
movq mm5, qword [rsp + 0x12345678]
movq mm5, qword [rsp + rax]
movq mm5, qword [rsp + rbp]
movq mm5, qword [rsp + 2*rbp]
movq mm5, qword [rsp + 4*rbp]
movq mm5, qword [rsp + 8*rbp]
movq mm5, qword [rax]
movq mm5, qword [rcx]
movq mm5, qword [rdx]
movq mm5, qword [rbx]
movq mm5, qword [rsp]
movq mm5, qword [rbp]
movq mm5, qword [rsi]
movq mm5, qword [rdi]
movq mm5, qword [rax + 2*rax]
movq mm5, qword [rcx + 2*rcx]
movq mm5, qword [rdx + 2*rdx]
movq mm5, qword [rbx + 2*rbx]
movq mm5, qword [rbp + 2*rbp]
movq mm5, qword [rsi + 2*rsi]
movq mm5, qword [rdi + 2*rdi]
movq mm6, qword [rip + 0x13]
movq mm6, qword [rip + 0x1235]
movq mm6, qword [rip + 0x12345679]
movq mm6, qword [rbx]
movq mm6, qword [rcx + 0x14]
movq mm6, qword [rdx + 0x15]
movq mm6, qword [rbx + 0x1235]
movq mm6, qword [rbx + 0x12345679]
movq mm6, qword [rbx + rcx]
movq mm6, qword [rbx + 4 * rcx]
movq mm6, qword [rbx + rcx + 0x13]
movq mm6, qword [rbx + rcx + 0x1235]
movq mm6, qword [rbx + rcx + 0x12345679]
movq mm6, qword [rbx + 4 * rcx + 0x13]
movq mm6, qword [rbx + 4 * rcx + 0x1235]
movq mm6, qword [rbx + 8 * rcx + 0x12345679]
movq mm6, qword [4 * rcx]
movq mm6, qword [4 * rcx + 0x13]
movq mm6, qword [4 * rcx + 0x1235]
movq mm6, qword [4 * rcx + 0x12345679]
movq mm6, qword [rbp]
movq mm6, qword [rbp + 0x12]
movq mm6, qword [rbp + 0x1234]
movq mm6, qword [rbp + 0x12345678]
movq mm6, qword [4 * rbp]
movq mm6, qword [4 * rbp + 0x12]
movq mm6, qword [4 * rbp + 0x1234]
movq mm6, qword [4 * rbp + 0x12345678]
movq mm6, qword [rbx + 4 * rbp]
movq mm6, qword [rbx + 4 * rbp + 0x12]
movq mm6, qword [rbx + 4 * rbp + 0x1234]
movq mm6, qword [rbx + 4 * rbp + 0x12345678]
movq mm6, qword [rsp]
movq mm6, qword [rsp + 0x12]
movq mm6, qword [rsp + 0x1234]
movq mm6, qword [rsp + 0x12345678]
movq mm6, qword [rsp + rax]
movq mm6, qword [rsp + rbp]
movq mm6, qword [rsp + 2*rbp]
movq mm6, qword [rsp + 4*rbp]
movq mm6, qword [rsp + 8*rbp]
movq mm6, qword [rax]
movq mm6, qword [rcx]
movq mm6, qword [rdx]
movq mm6, qword [rbx]
movq mm6, qword [rsp]
movq mm6, qword [rbp]
movq mm6, qword [rsi]
movq mm6, qword [rdi]
movq mm6, qword [rax + 2*rax]
movq mm6, qword [rcx + 2*rcx]
movq mm6, qword [rdx + 2*rdx]
movq mm6, qword [rbx + 2*rbx]
movq mm6, qword [rbp + 2*rbp]
movq mm6, qword [rsi + 2*rsi]
movq mm6, qword [rdi + 2*rdi]
movq mm7, qword [rip + 0x13]
movq mm7, qword [rip + 0x1235]
movq mm7, qword [rip + 0x12345679]
movq mm7, qword [rbx]
movq mm7, qword [rcx + 0x14]
movq mm7, qword [rdx + 0x15]
movq mm7, qword [rbx + 0x1235]
movq mm7, qword [rbx + 0x12345679]
movq mm7, qword [rbx + rcx]
movq mm7, qword [rbx + 4 * rcx]
movq mm7, qword [rbx + rcx + 0x13]
movq mm7, qword [rbx + rcx + 0x1235]
movq mm7, qword [rbx + rcx + 0x12345679]
movq mm7, qword [rbx + 4 * rcx + 0x13]
movq mm7, qword [rbx + 4 * rcx + 0x1235]
movq mm7, qword [rbx + 8 * rcx + 0x12345679]
movq mm7, qword [4 * rcx]
movq mm7, qword [4 * rcx + 0x13]
movq mm7, qword [4 * rcx + 0x1235]
movq mm7, qword [4 * rcx + 0x12345679]
movq mm7, qword [rbp]
movq mm7, qword [rbp + 0x12]
movq mm7, qword [rbp + 0x1234]
movq mm7, qword [rbp + 0x12345678]
movq mm7, qword [4 * rbp]
movq mm7, qword [4 * rbp + 0x12]
movq mm7, qword [4 * rbp + 0x1234]
movq mm7, qword [4 * rbp + 0x12345678]
movq mm7, qword [rbx + 4 * rbp]
movq mm7, qword [rbx + 4 * rbp + 0x12]
movq mm7, qword [rbx + 4 * rbp + 0x1234]
movq mm7, qword [rbx + 4 * rbp + 0x12345678]
movq mm7, qword [rsp]
movq mm7, qword [rsp + 0x12]
movq mm7, qword [rsp + 0x1234]
movq mm7, qword [rsp + 0x12345678]
movq mm7, qword [rsp + rax]
movq mm7, qword [rsp + rbp]
movq mm7, qword [rsp + 2*rbp]
movq mm7, qword [rsp + 4*rbp]
movq mm7, qword [rsp + 8*rbp]
movq mm7, qword [rax]
movq mm7, qword [rcx]
movq mm7, qword [rdx]
movq mm7, qword [rbx]
movq mm7, qword [rsp]
movq mm7, qword [rbp]
movq mm7, qword [rsi]
movq mm7, qword [rdi]
movq mm7, qword [rax + 2*rax]
movq mm7, qword [rcx + 2*rcx]
movq mm7, qword [rdx + 2*rdx]
movq mm7, qword [rbx + 2*rbx]
movq mm7, qword [rbp + 2*rbp]
movq mm7, qword [rsi + 2*rsi]
movq mm7, qword [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode r64,mm
; ------------------------------------------------------------------------------
movq rax, mm0
movq rax, mm1
movq rax, mm2
movq rax, mm3
movq rax, mm4
movq rax, mm5
movq rax, mm6
movq rax, mm7
movq rcx, mm0
movq rcx, mm1
movq rcx, mm2
movq rcx, mm3
movq rcx, mm4
movq rcx, mm5
movq rcx, mm6
movq rcx, mm7
movq rdx, mm0
movq rdx, mm1
movq rdx, mm2
movq rdx, mm3
movq rdx, mm4
movq rdx, mm5
movq rdx, mm6
movq rdx, mm7
movq rbx, mm0
movq rbx, mm1
movq rbx, mm2
movq rbx, mm3
movq rbx, mm4
movq rbx, mm5
movq rbx, mm6
movq rbx, mm7
movq rsp, mm0
movq rsp, mm1
movq rsp, mm2
movq rsp, mm3
movq rsp, mm4
movq rsp, mm5
movq rsp, mm6
movq rsp, mm7
movq rbp, mm0
movq rbp, mm1
movq rbp, mm2
movq rbp, mm3
movq rbp, mm4
movq rbp, mm5
movq rbp, mm6
movq rbp, mm7
movq rsi, mm0
movq rsi, mm1
movq rsi, mm2
movq rsi, mm3
movq rsi, mm4
movq rsi, mm5
movq rsi, mm6
movq rsi, mm7
movq rdi, mm0
movq rdi, mm1
movq rdi, mm2
movq rdi, mm3
movq rdi, mm4
movq rdi, mm5
movq rdi, mm6
movq rdi, mm7

; ------------------------------------------------------------------------------
; opcode m64,mm
; ------------------------------------------------------------------------------
movq qword [rip + 0x13], mm0
movq qword [rip + 0x13], mm1
movq qword [rip + 0x13], mm2
movq qword [rip + 0x13], mm3
movq qword [rip + 0x13], mm4
movq qword [rip + 0x13], mm5
movq qword [rip + 0x13], mm6
movq qword [rip + 0x13], mm7
movq qword [rip + 0x1235], mm0
movq qword [rip + 0x1235], mm1
movq qword [rip + 0x1235], mm2
movq qword [rip + 0x1235], mm3
movq qword [rip + 0x1235], mm4
movq qword [rip + 0x1235], mm5
movq qword [rip + 0x1235], mm6
movq qword [rip + 0x1235], mm7
movq qword [rip + 0x12345679], mm0
movq qword [rip + 0x12345679], mm1
movq qword [rip + 0x12345679], mm2
movq qword [rip + 0x12345679], mm3
movq qword [rip + 0x12345679], mm4
movq qword [rip + 0x12345679], mm5
movq qword [rip + 0x12345679], mm6
movq qword [rip + 0x12345679], mm7
movq qword [rbx], mm0
movq qword [rbx], mm1
movq qword [rbx], mm2
movq qword [rbx], mm3
movq qword [rbx], mm4
movq qword [rbx], mm5
movq qword [rbx], mm6
movq qword [rbx], mm7
movq qword [rcx + 0x14], mm0
movq qword [rcx + 0x14], mm1
movq qword [rcx + 0x14], mm2
movq qword [rcx + 0x14], mm3
movq qword [rcx + 0x14], mm4
movq qword [rcx + 0x14], mm5
movq qword [rcx + 0x14], mm6
movq qword [rcx + 0x14], mm7
movq qword [rdx + 0x15], mm0
movq qword [rdx + 0x15], mm1
movq qword [rdx + 0x15], mm2
movq qword [rdx + 0x15], mm3
movq qword [rdx + 0x15], mm4
movq qword [rdx + 0x15], mm5
movq qword [rdx + 0x15], mm6
movq qword [rdx + 0x15], mm7
movq qword [rbx + 0x1235], mm0
movq qword [rbx + 0x1235], mm1
movq qword [rbx + 0x1235], mm2
movq qword [rbx + 0x1235], mm3
movq qword [rbx + 0x1235], mm4
movq qword [rbx + 0x1235], mm5
movq qword [rbx + 0x1235], mm6
movq qword [rbx + 0x1235], mm7
movq qword [rbx + 0x12345679], mm0
movq qword [rbx + 0x12345679], mm1
movq qword [rbx + 0x12345679], mm2
movq qword [rbx + 0x12345679], mm3
movq qword [rbx + 0x12345679], mm4
movq qword [rbx + 0x12345679], mm5
movq qword [rbx + 0x12345679], mm6
movq qword [rbx + 0x12345679], mm7
movq qword [rbx + rcx], mm0
movq qword [rbx + rcx], mm1
movq qword [rbx + rcx], mm2
movq qword [rbx + rcx], mm3
movq qword [rbx + rcx], mm4
movq qword [rbx + rcx], mm5
movq qword [rbx + rcx], mm6
movq qword [rbx + rcx], mm7
movq qword [rbx + 4 * rcx], mm0
movq qword [rbx + 4 * rcx], mm1
movq qword [rbx + 4 * rcx], mm2
movq qword [rbx + 4 * rcx], mm3
movq qword [rbx + 4 * rcx], mm4
movq qword [rbx + 4 * rcx], mm5
movq qword [rbx + 4 * rcx], mm6
movq qword [rbx + 4 * rcx], mm7
movq qword [rbx + rcx + 0x13], mm0
movq qword [rbx + rcx + 0x13], mm1
movq qword [rbx + rcx + 0x13], mm2
movq qword [rbx + rcx + 0x13], mm3
movq qword [rbx + rcx + 0x13], mm4
movq qword [rbx + rcx + 0x13], mm5
movq qword [rbx + rcx + 0x13], mm6
movq qword [rbx + rcx + 0x13], mm7
movq qword [rbx + rcx + 0x1235], mm0
movq qword [rbx + rcx + 0x1235], mm1
movq qword [rbx + rcx + 0x1235], mm2
movq qword [rbx + rcx + 0x1235], mm3
movq qword [rbx + rcx + 0x1235], mm4
movq qword [rbx + rcx + 0x1235], mm5
movq qword [rbx + rcx + 0x1235], mm6
movq qword [rbx + rcx + 0x1235], mm7
movq qword [rbx + rcx + 0x12345679], mm0
movq qword [rbx + rcx + 0x12345679], mm1
movq qword [rbx + rcx + 0x12345679], mm2
movq qword [rbx + rcx + 0x12345679], mm3
movq qword [rbx + rcx + 0x12345679], mm4
movq qword [rbx + rcx + 0x12345679], mm5
movq qword [rbx + rcx + 0x12345679], mm6
movq qword [rbx + rcx + 0x12345679], mm7
movq qword [rbx + 4 * rcx + 0x13], mm0
movq qword [rbx + 4 * rcx + 0x13], mm1
movq qword [rbx + 4 * rcx + 0x13], mm2
movq qword [rbx + 4 * rcx + 0x13], mm3
movq qword [rbx + 4 * rcx + 0x13], mm4
movq qword [rbx + 4 * rcx + 0x13], mm5
movq qword [rbx + 4 * rcx + 0x13], mm6
movq qword [rbx + 4 * rcx + 0x13], mm7
movq qword [rbx + 4 * rcx + 0x1235], mm0
movq qword [rbx + 4 * rcx + 0x1235], mm1
movq qword [rbx + 4 * rcx + 0x1235], mm2
movq qword [rbx + 4 * rcx + 0x1235], mm3
movq qword [rbx + 4 * rcx + 0x1235], mm4
movq qword [rbx + 4 * rcx + 0x1235], mm5
movq qword [rbx + 4 * rcx + 0x1235], mm6
movq qword [rbx + 4 * rcx + 0x1235], mm7
movq qword [rbx + 8 * rcx + 0x12345679], mm0
movq qword [rbx + 8 * rcx + 0x12345679], mm1
movq qword [rbx + 8 * rcx + 0x12345679], mm2
movq qword [rbx + 8 * rcx + 0x12345679], mm3
movq qword [rbx + 8 * rcx + 0x12345679], mm4
movq qword [rbx + 8 * rcx + 0x12345679], mm5
movq qword [rbx + 8 * rcx + 0x12345679], mm6
movq qword [rbx + 8 * rcx + 0x12345679], mm7
movq qword [4 * rcx], mm0
movq qword [4 * rcx], mm1
movq qword [4 * rcx], mm2
movq qword [4 * rcx], mm3
movq qword [4 * rcx], mm4
movq qword [4 * rcx], mm5
movq qword [4 * rcx], mm6
movq qword [4 * rcx], mm7
movq qword [4 * rcx + 0x13], mm0
movq qword [4 * rcx + 0x13], mm1
movq qword [4 * rcx + 0x13], mm2
movq qword [4 * rcx + 0x13], mm3
movq qword [4 * rcx + 0x13], mm4
movq qword [4 * rcx + 0x13], mm5
movq qword [4 * rcx + 0x13], mm6
movq qword [4 * rcx + 0x13], mm7
movq qword [4 * rcx + 0x1235], mm0
movq qword [4 * rcx + 0x1235], mm1
movq qword [4 * rcx + 0x1235], mm2
movq qword [4 * rcx + 0x1235], mm3
movq qword [4 * rcx + 0x1235], mm4
movq qword [4 * rcx + 0x1235], mm5
movq qword [4 * rcx + 0x1235], mm6
movq qword [4 * rcx + 0x1235], mm7
movq qword [4 * rcx + 0x12345679], mm0
movq qword [4 * rcx + 0x12345679], mm1
movq qword [4 * rcx + 0x12345679], mm2
movq qword [4 * rcx + 0x12345679], mm3
movq qword [4 * rcx + 0x12345679], mm4
movq qword [4 * rcx + 0x12345679], mm5
movq qword [4 * rcx + 0x12345679], mm6
movq qword [4 * rcx + 0x12345679], mm7
movq qword [rbp], mm0
movq qword [rbp], mm1
movq qword [rbp], mm2
movq qword [rbp], mm3
movq qword [rbp], mm4
movq qword [rbp], mm5
movq qword [rbp], mm6
movq qword [rbp], mm7
movq qword [rbp + 0x12], mm0
movq qword [rbp + 0x12], mm1
movq qword [rbp + 0x12], mm2
movq qword [rbp + 0x12], mm3
movq qword [rbp + 0x12], mm4
movq qword [rbp + 0x12], mm5
movq qword [rbp + 0x12], mm6
movq qword [rbp + 0x12], mm7
movq qword [rbp + 0x1234], mm0
movq qword [rbp + 0x1234], mm1
movq qword [rbp + 0x1234], mm2
movq qword [rbp + 0x1234], mm3
movq qword [rbp + 0x1234], mm4
movq qword [rbp + 0x1234], mm5
movq qword [rbp + 0x1234], mm6
movq qword [rbp + 0x1234], mm7
movq qword [rbp + 0x12345678], mm0
movq qword [rbp + 0x12345678], mm1
movq qword [rbp + 0x12345678], mm2
movq qword [rbp + 0x12345678], mm3
movq qword [rbp + 0x12345678], mm4
movq qword [rbp + 0x12345678], mm5
movq qword [rbp + 0x12345678], mm6
movq qword [rbp + 0x12345678], mm7
movq qword [4 * rbp], mm0
movq qword [4 * rbp], mm1
movq qword [4 * rbp], mm2
movq qword [4 * rbp], mm3
movq qword [4 * rbp], mm4
movq qword [4 * rbp], mm5
movq qword [4 * rbp], mm6
movq qword [4 * rbp], mm7
movq qword [4 * rbp + 0x12], mm0
movq qword [4 * rbp + 0x12], mm1
movq qword [4 * rbp + 0x12], mm2
movq qword [4 * rbp + 0x12], mm3
movq qword [4 * rbp + 0x12], mm4
movq qword [4 * rbp + 0x12], mm5
movq qword [4 * rbp + 0x12], mm6
movq qword [4 * rbp + 0x12], mm7
movq qword [4 * rbp + 0x1234], mm0
movq qword [4 * rbp + 0x1234], mm1
movq qword [4 * rbp + 0x1234], mm2
movq qword [4 * rbp + 0x1234], mm3
movq qword [4 * rbp + 0x1234], mm4
movq qword [4 * rbp + 0x1234], mm5
movq qword [4 * rbp + 0x1234], mm6
movq qword [4 * rbp + 0x1234], mm7
movq qword [4 * rbp + 0x12345678], mm0
movq qword [4 * rbp + 0x12345678], mm1
movq qword [4 * rbp + 0x12345678], mm2
movq qword [4 * rbp + 0x12345678], mm3
movq qword [4 * rbp + 0x12345678], mm4
movq qword [4 * rbp + 0x12345678], mm5
movq qword [4 * rbp + 0x12345678], mm6
movq qword [4 * rbp + 0x12345678], mm7
movq qword [rbx + 4 * rbp], mm0
movq qword [rbx + 4 * rbp], mm1
movq qword [rbx + 4 * rbp], mm2
movq qword [rbx + 4 * rbp], mm3
movq qword [rbx + 4 * rbp], mm4
movq qword [rbx + 4 * rbp], mm5
movq qword [rbx + 4 * rbp], mm6
movq qword [rbx + 4 * rbp], mm7
movq qword [rbx + 4 * rbp + 0x12], mm0
movq qword [rbx + 4 * rbp + 0x12], mm1
movq qword [rbx + 4 * rbp + 0x12], mm2
movq qword [rbx + 4 * rbp + 0x12], mm3
movq qword [rbx + 4 * rbp + 0x12], mm4
movq qword [rbx + 4 * rbp + 0x12], mm5
movq qword [rbx + 4 * rbp + 0x12], mm6
movq qword [rbx + 4 * rbp + 0x12], mm7
movq qword [rbx + 4 * rbp + 0x1234], mm0
movq qword [rbx + 4 * rbp + 0x1234], mm1
movq qword [rbx + 4 * rbp + 0x1234], mm2
movq qword [rbx + 4 * rbp + 0x1234], mm3
movq qword [rbx + 4 * rbp + 0x1234], mm4
movq qword [rbx + 4 * rbp + 0x1234], mm5
movq qword [rbx + 4 * rbp + 0x1234], mm6
movq qword [rbx + 4 * rbp + 0x1234], mm7
movq qword [rbx + 4 * rbp + 0x12345678], mm0
movq qword [rbx + 4 * rbp + 0x12345678], mm1
movq qword [rbx + 4 * rbp + 0x12345678], mm2
movq qword [rbx + 4 * rbp + 0x12345678], mm3
movq qword [rbx + 4 * rbp + 0x12345678], mm4
movq qword [rbx + 4 * rbp + 0x12345678], mm5
movq qword [rbx + 4 * rbp + 0x12345678], mm6
movq qword [rbx + 4 * rbp + 0x12345678], mm7
movq qword [rsp], mm0
movq qword [rsp], mm1
movq qword [rsp], mm2
movq qword [rsp], mm3
movq qword [rsp], mm4
movq qword [rsp], mm5
movq qword [rsp], mm6
movq qword [rsp], mm7
movq qword [rsp + 0x12], mm0
movq qword [rsp + 0x12], mm1
movq qword [rsp + 0x12], mm2
movq qword [rsp + 0x12], mm3
movq qword [rsp + 0x12], mm4
movq qword [rsp + 0x12], mm5
movq qword [rsp + 0x12], mm6
movq qword [rsp + 0x12], mm7
movq qword [rsp + 0x1234], mm0
movq qword [rsp + 0x1234], mm1
movq qword [rsp + 0x1234], mm2
movq qword [rsp + 0x1234], mm3
movq qword [rsp + 0x1234], mm4
movq qword [rsp + 0x1234], mm5
movq qword [rsp + 0x1234], mm6
movq qword [rsp + 0x1234], mm7
movq qword [rsp + 0x12345678], mm0
movq qword [rsp + 0x12345678], mm1
movq qword [rsp + 0x12345678], mm2
movq qword [rsp + 0x12345678], mm3
movq qword [rsp + 0x12345678], mm4
movq qword [rsp + 0x12345678], mm5
movq qword [rsp + 0x12345678], mm6
movq qword [rsp + 0x12345678], mm7
movq qword [rsp + rax], mm0
movq qword [rsp + rax], mm1
movq qword [rsp + rax], mm2
movq qword [rsp + rax], mm3
movq qword [rsp + rax], mm4
movq qword [rsp + rax], mm5
movq qword [rsp + rax], mm6
movq qword [rsp + rax], mm7
movq qword [rsp + rbp], mm0
movq qword [rsp + rbp], mm1
movq qword [rsp + rbp], mm2
movq qword [rsp + rbp], mm3
movq qword [rsp + rbp], mm4
movq qword [rsp + rbp], mm5
movq qword [rsp + rbp], mm6
movq qword [rsp + rbp], mm7
movq qword [rsp + 2*rbp], mm0
movq qword [rsp + 2*rbp], mm1
movq qword [rsp + 2*rbp], mm2
movq qword [rsp + 2*rbp], mm3
movq qword [rsp + 2*rbp], mm4
movq qword [rsp + 2*rbp], mm5
movq qword [rsp + 2*rbp], mm6
movq qword [rsp + 2*rbp], mm7
movq qword [rsp + 4*rbp], mm0
movq qword [rsp + 4*rbp], mm1
movq qword [rsp + 4*rbp], mm2
movq qword [rsp + 4*rbp], mm3
movq qword [rsp + 4*rbp], mm4
movq qword [rsp + 4*rbp], mm5
movq qword [rsp + 4*rbp], mm6
movq qword [rsp + 4*rbp], mm7
movq qword [rsp + 8*rbp], mm0
movq qword [rsp + 8*rbp], mm1
movq qword [rsp + 8*rbp], mm2
movq qword [rsp + 8*rbp], mm3
movq qword [rsp + 8*rbp], mm4
movq qword [rsp + 8*rbp], mm5
movq qword [rsp + 8*rbp], mm6
movq qword [rsp + 8*rbp], mm7
movq qword [rax], mm0
movq qword [rax], mm1
movq qword [rax], mm2
movq qword [rax], mm3
movq qword [rax], mm4
movq qword [rax], mm5
movq qword [rax], mm6
movq qword [rax], mm7
movq qword [rcx], mm0
movq qword [rcx], mm1
movq qword [rcx], mm2
movq qword [rcx], mm3
movq qword [rcx], mm4
movq qword [rcx], mm5
movq qword [rcx], mm6
movq qword [rcx], mm7
movq qword [rdx], mm0
movq qword [rdx], mm1
movq qword [rdx], mm2
movq qword [rdx], mm3
movq qword [rdx], mm4
movq qword [rdx], mm5
movq qword [rdx], mm6
movq qword [rdx], mm7
movq qword [rbx], mm0
movq qword [rbx], mm1
movq qword [rbx], mm2
movq qword [rbx], mm3
movq qword [rbx], mm4
movq qword [rbx], mm5
movq qword [rbx], mm6
movq qword [rbx], mm7
movq qword [rsp], mm0
movq qword [rsp], mm1
movq qword [rsp], mm2
movq qword [rsp], mm3
movq qword [rsp], mm4
movq qword [rsp], mm5
movq qword [rsp], mm6
movq qword [rsp], mm7
movq qword [rbp], mm0
movq qword [rbp], mm1
movq qword [rbp], mm2
movq qword [rbp], mm3
movq qword [rbp], mm4
movq qword [rbp], mm5
movq qword [rbp], mm6
movq qword [rbp], mm7
movq qword [rsi], mm0
movq qword [rsi], mm1
movq qword [rsi], mm2
movq qword [rsi], mm3
movq qword [rsi], mm4
movq qword [rsi], mm5
movq qword [rsi], mm6
movq qword [rsi], mm7
movq qword [rdi], mm0
movq qword [rdi], mm1
movq qword [rdi], mm2
movq qword [rdi], mm3
movq qword [rdi], mm4
movq qword [rdi], mm5
movq qword [rdi], mm6
movq qword [rdi], mm7
movq qword [rax + 2*rax], mm0
movq qword [rax + 2*rax], mm1
movq qword [rax + 2*rax], mm2
movq qword [rax + 2*rax], mm3
movq qword [rax + 2*rax], mm4
movq qword [rax + 2*rax], mm5
movq qword [rax + 2*rax], mm6
movq qword [rax + 2*rax], mm7
movq qword [rcx + 2*rcx], mm0
movq qword [rcx + 2*rcx], mm1
movq qword [rcx + 2*rcx], mm2
movq qword [rcx + 2*rcx], mm3
movq qword [rcx + 2*rcx], mm4
movq qword [rcx + 2*rcx], mm5
movq qword [rcx + 2*rcx], mm6
movq qword [rcx + 2*rcx], mm7
movq qword [rdx + 2*rdx], mm0
movq qword [rdx + 2*rdx], mm1
movq qword [rdx + 2*rdx], mm2
movq qword [rdx + 2*rdx], mm3
movq qword [rdx + 2*rdx], mm4
movq qword [rdx + 2*rdx], mm5
movq qword [rdx + 2*rdx], mm6
movq qword [rdx + 2*rdx], mm7
movq qword [rbx + 2*rbx], mm0
movq qword [rbx + 2*rbx], mm1
movq qword [rbx + 2*rbx], mm2
movq qword [rbx + 2*rbx], mm3
movq qword [rbx + 2*rbx], mm4
movq qword [rbx + 2*rbx], mm5
movq qword [rbx + 2*rbx], mm6
movq qword [rbx + 2*rbx], mm7
movq qword [rbp + 2*rbp], mm0
movq qword [rbp + 2*rbp], mm1
movq qword [rbp + 2*rbp], mm2
movq qword [rbp + 2*rbp], mm3
movq qword [rbp + 2*rbp], mm4
movq qword [rbp + 2*rbp], mm5
movq qword [rbp + 2*rbp], mm6
movq qword [rbp + 2*rbp], mm7
movq qword [rsi + 2*rsi], mm0
movq qword [rsi + 2*rsi], mm1
movq qword [rsi + 2*rsi], mm2
movq qword [rsi + 2*rsi], mm3
movq qword [rsi + 2*rsi], mm4
movq qword [rsi + 2*rsi], mm5
movq qword [rsi + 2*rsi], mm6
movq qword [rsi + 2*rsi], mm7
movq qword [rdi + 2*rdi], mm0
movq qword [rdi + 2*rdi], mm1
movq qword [rdi + 2*rdi], mm2
movq qword [rdi + 2*rdi], mm3
movq qword [rdi + 2*rdi], mm4
movq qword [rdi + 2*rdi], mm5
movq qword [rdi + 2*rdi], mm6
movq qword [rdi + 2*rdi], mm7

