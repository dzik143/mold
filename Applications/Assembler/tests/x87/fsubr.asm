use64
; ------------------------------------------------------------------------------
; opcode m32
; ------------------------------------------------------------------------------
fsubr dword [rip + 0x13]
fsubr dword [rip + 0x1235]
fsubr dword [rip + 0x12345679]
fsubr dword [rbx]
fsubr dword [rcx + 0x14]
fsubr dword [rdx + 0x15]
fsubr dword [rbx + 0x1235]
fsubr dword [rbx + 0x12345679]
fsubr dword [rbx + rcx]
fsubr dword [rbx + 4 * rcx]
fsubr dword [rbx + rcx + 0x13]
fsubr dword [rbx + rcx + 0x1235]
fsubr dword [rbx + rcx + 0x12345679]
fsubr dword [rbx + 4 * rcx + 0x13]
fsubr dword [rbx + 4 * rcx + 0x1235]
fsubr dword [rbx + 8 * rcx + 0x12345679]
fsubr dword [4 * rcx]
fsubr dword [4 * rcx + 0x13]
fsubr dword [4 * rcx + 0x1235]
fsubr dword [4 * rcx + 0x12345679]
fsubr dword [rbp]
fsubr dword [rbp + 0x12]
fsubr dword [rbp + 0x1234]
fsubr dword [rbp + 0x12345678]
fsubr dword [4 * rbp]
fsubr dword [4 * rbp + 0x12]
fsubr dword [4 * rbp + 0x1234]
fsubr dword [4 * rbp + 0x12345678]
fsubr dword [rbx + 4 * rbp]
fsubr dword [rbx + 4 * rbp + 0x12]
fsubr dword [rbx + 4 * rbp + 0x1234]
fsubr dword [rbx + 4 * rbp + 0x12345678]
fsubr dword [rsp]
fsubr dword [rsp + 0x12]
fsubr dword [rsp + 0x1234]
fsubr dword [rsp + 0x12345678]
fsubr dword [rsp + rax]
fsubr dword [rsp + rbp]
fsubr dword [rsp + 2*rbp]
fsubr dword [rsp + 4*rbp]
fsubr dword [rsp + 8*rbp]
fsubr dword [rax]
fsubr dword [rcx]
fsubr dword [rdx]
fsubr dword [rbx]
fsubr dword [rsp]
fsubr dword [rbp]
fsubr dword [rsi]
fsubr dword [rdi]
fsubr dword [rax + 2*rax]
fsubr dword [rcx + 2*rcx]
fsubr dword [rdx + 2*rdx]
fsubr dword [rbx + 2*rbx]
fsubr dword [rbp + 2*rbp]
fsubr dword [rsi + 2*rsi]
fsubr dword [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode m64
; ------------------------------------------------------------------------------
fsubr qword [rip + 0x13]
fsubr qword [rip + 0x1235]
fsubr qword [rip + 0x12345679]
fsubr qword [rbx]
fsubr qword [rcx + 0x14]
fsubr qword [rdx + 0x15]
fsubr qword [rbx + 0x1235]
fsubr qword [rbx + 0x12345679]
fsubr qword [rbx + rcx]
fsubr qword [rbx + 4 * rcx]
fsubr qword [rbx + rcx + 0x13]
fsubr qword [rbx + rcx + 0x1235]
fsubr qword [rbx + rcx + 0x12345679]
fsubr qword [rbx + 4 * rcx + 0x13]
fsubr qword [rbx + 4 * rcx + 0x1235]
fsubr qword [rbx + 8 * rcx + 0x12345679]
fsubr qword [4 * rcx]
fsubr qword [4 * rcx + 0x13]
fsubr qword [4 * rcx + 0x1235]
fsubr qword [4 * rcx + 0x12345679]
fsubr qword [rbp]
fsubr qword [rbp + 0x12]
fsubr qword [rbp + 0x1234]
fsubr qword [rbp + 0x12345678]
fsubr qword [4 * rbp]
fsubr qword [4 * rbp + 0x12]
fsubr qword [4 * rbp + 0x1234]
fsubr qword [4 * rbp + 0x12345678]
fsubr qword [rbx + 4 * rbp]
fsubr qword [rbx + 4 * rbp + 0x12]
fsubr qword [rbx + 4 * rbp + 0x1234]
fsubr qword [rbx + 4 * rbp + 0x12345678]
fsubr qword [rsp]
fsubr qword [rsp + 0x12]
fsubr qword [rsp + 0x1234]
fsubr qword [rsp + 0x12345678]
fsubr qword [rsp + rax]
fsubr qword [rsp + rbp]
fsubr qword [rsp + 2*rbp]
fsubr qword [rsp + 4*rbp]
fsubr qword [rsp + 8*rbp]
fsubr qword [rax]
fsubr qword [rcx]
fsubr qword [rdx]
fsubr qword [rbx]
fsubr qword [rsp]
fsubr qword [rbp]
fsubr qword [rsi]
fsubr qword [rdi]
fsubr qword [rax + 2*rax]
fsubr qword [rcx + 2*rcx]
fsubr qword [rdx + 2*rdx]
fsubr qword [rbx + 2*rbx]
fsubr qword [rbp + 2*rbp]
fsubr qword [rsi + 2*rsi]
fsubr qword [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode st0,sti
; ------------------------------------------------------------------------------
fsubr st, st
fsubr st, st0
fsubr st, st1
fsubr st, st2
fsubr st, st3
fsubr st, st4
fsubr st, st5
fsubr st, st6
fsubr st, st7
fsubr st0, st
fsubr st0, st0
fsubr st0, st1
fsubr st0, st2
fsubr st0, st3
fsubr st0, st4
fsubr st0, st5
fsubr st0, st6
fsubr st0, st7

; ------------------------------------------------------------------------------
; opcode sti,st0
; ------------------------------------------------------------------------------
fsubr st, st
fsubr st, st0
fsubr st0, st
fsubr st0, st0
fsubr st1, st
fsubr st1, st0
fsubr st2, st
fsubr st2, st0
fsubr st3, st
fsubr st3, st0
fsubr st4, st
fsubr st4, st0
fsubr st5, st
fsubr st5, st0
fsubr st6, st
fsubr st6, st0
fsubr st7, st
fsubr st7, st0

