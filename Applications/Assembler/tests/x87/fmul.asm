use64
; ------------------------------------------------------------------------------
; opcode m32
; ------------------------------------------------------------------------------
fmul dword [rip + 0x13]
fmul dword [rip + 0x1235]
fmul dword [rip + 0x12345679]
fmul dword [rbx]
fmul dword [rcx + 0x14]
fmul dword [rdx + 0x15]
fmul dword [rbx + 0x1235]
fmul dword [rbx + 0x12345679]
fmul dword [rbx + rcx]
fmul dword [rbx + 4 * rcx]
fmul dword [rbx + rcx + 0x13]
fmul dword [rbx + rcx + 0x1235]
fmul dword [rbx + rcx + 0x12345679]
fmul dword [rbx + 4 * rcx + 0x13]
fmul dword [rbx + 4 * rcx + 0x1235]
fmul dword [rbx + 8 * rcx + 0x12345679]
fmul dword [4 * rcx]
fmul dword [4 * rcx + 0x13]
fmul dword [4 * rcx + 0x1235]
fmul dword [4 * rcx + 0x12345679]
fmul dword [rbp]
fmul dword [rbp + 0x12]
fmul dword [rbp + 0x1234]
fmul dword [rbp + 0x12345678]
fmul dword [4 * rbp]
fmul dword [4 * rbp + 0x12]
fmul dword [4 * rbp + 0x1234]
fmul dword [4 * rbp + 0x12345678]
fmul dword [rbx + 4 * rbp]
fmul dword [rbx + 4 * rbp + 0x12]
fmul dword [rbx + 4 * rbp + 0x1234]
fmul dword [rbx + 4 * rbp + 0x12345678]
fmul dword [rsp]
fmul dword [rsp + 0x12]
fmul dword [rsp + 0x1234]
fmul dword [rsp + 0x12345678]
fmul dword [rsp + rax]
fmul dword [rsp + rbp]
fmul dword [rsp + 2*rbp]
fmul dword [rsp + 4*rbp]
fmul dword [rsp + 8*rbp]
fmul dword [rax]
fmul dword [rcx]
fmul dword [rdx]
fmul dword [rbx]
fmul dword [rsp]
fmul dword [rbp]
fmul dword [rsi]
fmul dword [rdi]
fmul dword [rax + 2*rax]
fmul dword [rcx + 2*rcx]
fmul dword [rdx + 2*rdx]
fmul dword [rbx + 2*rbx]
fmul dword [rbp + 2*rbp]
fmul dword [rsi + 2*rsi]
fmul dword [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode m64
; ------------------------------------------------------------------------------
fmul qword [rip + 0x13]
fmul qword [rip + 0x1235]
fmul qword [rip + 0x12345679]
fmul qword [rbx]
fmul qword [rcx + 0x14]
fmul qword [rdx + 0x15]
fmul qword [rbx + 0x1235]
fmul qword [rbx + 0x12345679]
fmul qword [rbx + rcx]
fmul qword [rbx + 4 * rcx]
fmul qword [rbx + rcx + 0x13]
fmul qword [rbx + rcx + 0x1235]
fmul qword [rbx + rcx + 0x12345679]
fmul qword [rbx + 4 * rcx + 0x13]
fmul qword [rbx + 4 * rcx + 0x1235]
fmul qword [rbx + 8 * rcx + 0x12345679]
fmul qword [4 * rcx]
fmul qword [4 * rcx + 0x13]
fmul qword [4 * rcx + 0x1235]
fmul qword [4 * rcx + 0x12345679]
fmul qword [rbp]
fmul qword [rbp + 0x12]
fmul qword [rbp + 0x1234]
fmul qword [rbp + 0x12345678]
fmul qword [4 * rbp]
fmul qword [4 * rbp + 0x12]
fmul qword [4 * rbp + 0x1234]
fmul qword [4 * rbp + 0x12345678]
fmul qword [rbx + 4 * rbp]
fmul qword [rbx + 4 * rbp + 0x12]
fmul qword [rbx + 4 * rbp + 0x1234]
fmul qword [rbx + 4 * rbp + 0x12345678]
fmul qword [rsp]
fmul qword [rsp + 0x12]
fmul qword [rsp + 0x1234]
fmul qword [rsp + 0x12345678]
fmul qword [rsp + rax]
fmul qword [rsp + rbp]
fmul qword [rsp + 2*rbp]
fmul qword [rsp + 4*rbp]
fmul qword [rsp + 8*rbp]
fmul qword [rax]
fmul qword [rcx]
fmul qword [rdx]
fmul qword [rbx]
fmul qword [rsp]
fmul qword [rbp]
fmul qword [rsi]
fmul qword [rdi]
fmul qword [rax + 2*rax]
fmul qword [rcx + 2*rcx]
fmul qword [rdx + 2*rdx]
fmul qword [rbx + 2*rbx]
fmul qword [rbp + 2*rbp]
fmul qword [rsi + 2*rsi]
fmul qword [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode st0,sti
; ------------------------------------------------------------------------------
fmul st, st
fmul st, st0
fmul st, st1
fmul st, st2
fmul st, st3
fmul st, st4
fmul st, st5
fmul st, st6
fmul st, st7
fmul st0, st
fmul st0, st0
fmul st0, st1
fmul st0, st2
fmul st0, st3
fmul st0, st4
fmul st0, st5
fmul st0, st6
fmul st0, st7

; ------------------------------------------------------------------------------
; opcode sti,st0
; ------------------------------------------------------------------------------
fmul st, st
fmul st, st0
fmul st0, st
fmul st0, st0
fmul st1, st
fmul st1, st0
fmul st2, st
fmul st2, st0
fmul st3, st
fmul st3, st0
fmul st4, st
fmul st4, st0
fmul st5, st
fmul st5, st0
fmul st6, st
fmul st6, st0
fmul st7, st
fmul st7, st0

