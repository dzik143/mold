use64
; ------------------------------------------------------------------------------
; opcode m32
; ------------------------------------------------------------------------------
fadd dword [rip + 0x13]
fadd dword [rip + 0x1235]
fadd dword [rip + 0x12345679]
fadd dword [rbx]
fadd dword [rcx + 0x14]
fadd dword [rdx + 0x15]
fadd dword [rbx + 0x1235]
fadd dword [rbx + 0x12345679]
fadd dword [rbx + rcx]
fadd dword [rbx + 4 * rcx]
fadd dword [rbx + rcx + 0x13]
fadd dword [rbx + rcx + 0x1235]
fadd dword [rbx + rcx + 0x12345679]
fadd dword [rbx + 4 * rcx + 0x13]
fadd dword [rbx + 4 * rcx + 0x1235]
fadd dword [rbx + 8 * rcx + 0x12345679]
fadd dword [4 * rcx]
fadd dword [4 * rcx + 0x13]
fadd dword [4 * rcx + 0x1235]
fadd dword [4 * rcx + 0x12345679]
fadd dword [rbp]
fadd dword [rbp + 0x12]
fadd dword [rbp + 0x1234]
fadd dword [rbp + 0x12345678]
fadd dword [4 * rbp]
fadd dword [4 * rbp + 0x12]
fadd dword [4 * rbp + 0x1234]
fadd dword [4 * rbp + 0x12345678]
fadd dword [rbx + 4 * rbp]
fadd dword [rbx + 4 * rbp + 0x12]
fadd dword [rbx + 4 * rbp + 0x1234]
fadd dword [rbx + 4 * rbp + 0x12345678]
fadd dword [rsp]
fadd dword [rsp + 0x12]
fadd dword [rsp + 0x1234]
fadd dword [rsp + 0x12345678]
fadd dword [rsp + rax]
fadd dword [rsp + rbp]
fadd dword [rsp + 2*rbp]
fadd dword [rsp + 4*rbp]
fadd dword [rsp + 8*rbp]
fadd dword [rax]
fadd dword [rcx]
fadd dword [rdx]
fadd dword [rbx]
fadd dword [rsp]
fadd dword [rbp]
fadd dword [rsi]
fadd dword [rdi]
fadd dword [rax + 2*rax]
fadd dword [rcx + 2*rcx]
fadd dword [rdx + 2*rdx]
fadd dword [rbx + 2*rbx]
fadd dword [rbp + 2*rbp]
fadd dword [rsi + 2*rsi]
fadd dword [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode m64
; ------------------------------------------------------------------------------
fadd qword [rip + 0x13]
fadd qword [rip + 0x1235]
fadd qword [rip + 0x12345679]
fadd qword [rbx]
fadd qword [rcx + 0x14]
fadd qword [rdx + 0x15]
fadd qword [rbx + 0x1235]
fadd qword [rbx + 0x12345679]
fadd qword [rbx + rcx]
fadd qword [rbx + 4 * rcx]
fadd qword [rbx + rcx + 0x13]
fadd qword [rbx + rcx + 0x1235]
fadd qword [rbx + rcx + 0x12345679]
fadd qword [rbx + 4 * rcx + 0x13]
fadd qword [rbx + 4 * rcx + 0x1235]
fadd qword [rbx + 8 * rcx + 0x12345679]
fadd qword [4 * rcx]
fadd qword [4 * rcx + 0x13]
fadd qword [4 * rcx + 0x1235]
fadd qword [4 * rcx + 0x12345679]
fadd qword [rbp]
fadd qword [rbp + 0x12]
fadd qword [rbp + 0x1234]
fadd qword [rbp + 0x12345678]
fadd qword [4 * rbp]
fadd qword [4 * rbp + 0x12]
fadd qword [4 * rbp + 0x1234]
fadd qword [4 * rbp + 0x12345678]
fadd qword [rbx + 4 * rbp]
fadd qword [rbx + 4 * rbp + 0x12]
fadd qword [rbx + 4 * rbp + 0x1234]
fadd qword [rbx + 4 * rbp + 0x12345678]
fadd qword [rsp]
fadd qword [rsp + 0x12]
fadd qword [rsp + 0x1234]
fadd qword [rsp + 0x12345678]
fadd qword [rsp + rax]
fadd qword [rsp + rbp]
fadd qword [rsp + 2*rbp]
fadd qword [rsp + 4*rbp]
fadd qword [rsp + 8*rbp]
fadd qword [rax]
fadd qword [rcx]
fadd qword [rdx]
fadd qword [rbx]
fadd qword [rsp]
fadd qword [rbp]
fadd qword [rsi]
fadd qword [rdi]
fadd qword [rax + 2*rax]
fadd qword [rcx + 2*rcx]
fadd qword [rdx + 2*rdx]
fadd qword [rbx + 2*rbx]
fadd qword [rbp + 2*rbp]
fadd qword [rsi + 2*rsi]
fadd qword [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode st0,sti
; ------------------------------------------------------------------------------
fadd st, st
fadd st, st0
fadd st, st1
fadd st, st2
fadd st, st3
fadd st, st4
fadd st, st5
fadd st, st6
fadd st, st7
fadd st0, st
fadd st0, st0
fadd st0, st1
fadd st0, st2
fadd st0, st3
fadd st0, st4
fadd st0, st5
fadd st0, st6
fadd st0, st7

; ------------------------------------------------------------------------------
; opcode sti,st0
; ------------------------------------------------------------------------------
fadd st, st
fadd st, st0
fadd st0, st
fadd st0, st0
fadd st1, st
fadd st1, st0
fadd st2, st
fadd st2, st0
fadd st3, st
fadd st3, st0
fadd st4, st
fadd st4, st0
fadd st5, st
fadd st5, st0
fadd st6, st
fadd st6, st0
fadd st7, st
fadd st7, st0

