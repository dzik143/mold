use64
; ------------------------------------------------------------------------------
; opcode m32
; ------------------------------------------------------------------------------
fdivr dword [rip + 0x13]
fdivr dword [rip + 0x1235]
fdivr dword [rip + 0x12345679]
fdivr dword [rbx]
fdivr dword [rcx + 0x14]
fdivr dword [rdx + 0x15]
fdivr dword [rbx + 0x1235]
fdivr dword [rbx + 0x12345679]
fdivr dword [rbx + rcx]
fdivr dword [rbx + 4 * rcx]
fdivr dword [rbx + rcx + 0x13]
fdivr dword [rbx + rcx + 0x1235]
fdivr dword [rbx + rcx + 0x12345679]
fdivr dword [rbx + 4 * rcx + 0x13]
fdivr dword [rbx + 4 * rcx + 0x1235]
fdivr dword [rbx + 8 * rcx + 0x12345679]
fdivr dword [4 * rcx]
fdivr dword [4 * rcx + 0x13]
fdivr dword [4 * rcx + 0x1235]
fdivr dword [4 * rcx + 0x12345679]
fdivr dword [rbp]
fdivr dword [rbp + 0x12]
fdivr dword [rbp + 0x1234]
fdivr dword [rbp + 0x12345678]
fdivr dword [4 * rbp]
fdivr dword [4 * rbp + 0x12]
fdivr dword [4 * rbp + 0x1234]
fdivr dword [4 * rbp + 0x12345678]
fdivr dword [rbx + 4 * rbp]
fdivr dword [rbx + 4 * rbp + 0x12]
fdivr dword [rbx + 4 * rbp + 0x1234]
fdivr dword [rbx + 4 * rbp + 0x12345678]
fdivr dword [rsp]
fdivr dword [rsp + 0x12]
fdivr dword [rsp + 0x1234]
fdivr dword [rsp + 0x12345678]
fdivr dword [rsp + rax]
fdivr dword [rsp + rbp]
fdivr dword [rsp + 2*rbp]
fdivr dword [rsp + 4*rbp]
fdivr dword [rsp + 8*rbp]
fdivr dword [rax]
fdivr dword [rcx]
fdivr dword [rdx]
fdivr dword [rbx]
fdivr dword [rsp]
fdivr dword [rbp]
fdivr dword [rsi]
fdivr dword [rdi]
fdivr dword [rax + 2*rax]
fdivr dword [rcx + 2*rcx]
fdivr dword [rdx + 2*rdx]
fdivr dword [rbx + 2*rbx]
fdivr dword [rbp + 2*rbp]
fdivr dword [rsi + 2*rsi]
fdivr dword [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode m64
; ------------------------------------------------------------------------------
fdivr qword [rip + 0x13]
fdivr qword [rip + 0x1235]
fdivr qword [rip + 0x12345679]
fdivr qword [rbx]
fdivr qword [rcx + 0x14]
fdivr qword [rdx + 0x15]
fdivr qword [rbx + 0x1235]
fdivr qword [rbx + 0x12345679]
fdivr qword [rbx + rcx]
fdivr qword [rbx + 4 * rcx]
fdivr qword [rbx + rcx + 0x13]
fdivr qword [rbx + rcx + 0x1235]
fdivr qword [rbx + rcx + 0x12345679]
fdivr qword [rbx + 4 * rcx + 0x13]
fdivr qword [rbx + 4 * rcx + 0x1235]
fdivr qword [rbx + 8 * rcx + 0x12345679]
fdivr qword [4 * rcx]
fdivr qword [4 * rcx + 0x13]
fdivr qword [4 * rcx + 0x1235]
fdivr qword [4 * rcx + 0x12345679]
fdivr qword [rbp]
fdivr qword [rbp + 0x12]
fdivr qword [rbp + 0x1234]
fdivr qword [rbp + 0x12345678]
fdivr qword [4 * rbp]
fdivr qword [4 * rbp + 0x12]
fdivr qword [4 * rbp + 0x1234]
fdivr qword [4 * rbp + 0x12345678]
fdivr qword [rbx + 4 * rbp]
fdivr qword [rbx + 4 * rbp + 0x12]
fdivr qword [rbx + 4 * rbp + 0x1234]
fdivr qword [rbx + 4 * rbp + 0x12345678]
fdivr qword [rsp]
fdivr qword [rsp + 0x12]
fdivr qword [rsp + 0x1234]
fdivr qword [rsp + 0x12345678]
fdivr qword [rsp + rax]
fdivr qword [rsp + rbp]
fdivr qword [rsp + 2*rbp]
fdivr qword [rsp + 4*rbp]
fdivr qword [rsp + 8*rbp]
fdivr qword [rax]
fdivr qword [rcx]
fdivr qword [rdx]
fdivr qword [rbx]
fdivr qword [rsp]
fdivr qword [rbp]
fdivr qword [rsi]
fdivr qword [rdi]
fdivr qword [rax + 2*rax]
fdivr qword [rcx + 2*rcx]
fdivr qword [rdx + 2*rdx]
fdivr qword [rbx + 2*rbx]
fdivr qword [rbp + 2*rbp]
fdivr qword [rsi + 2*rsi]
fdivr qword [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode st0,sti
; ------------------------------------------------------------------------------
fdivr st, st
fdivr st, st0
fdivr st, st1
fdivr st, st2
fdivr st, st3
fdivr st, st4
fdivr st, st5
fdivr st, st6
fdivr st, st7
fdivr st0, st
fdivr st0, st0
fdivr st0, st1
fdivr st0, st2
fdivr st0, st3
fdivr st0, st4
fdivr st0, st5
fdivr st0, st6
fdivr st0, st7

; ------------------------------------------------------------------------------
; opcode sti,st0
; ------------------------------------------------------------------------------
fdivr st, st
fdivr st, st0
fdivr st0, st
fdivr st0, st0
fdivr st1, st
fdivr st1, st0
fdivr st2, st
fdivr st2, st0
fdivr st3, st
fdivr st3, st0
fdivr st4, st
fdivr st4, st0
fdivr st5, st
fdivr st5, st0
fdivr st6, st
fdivr st6, st0
fdivr st7, st
fdivr st7, st0

