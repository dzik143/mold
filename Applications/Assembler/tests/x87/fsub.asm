use64
; ------------------------------------------------------------------------------
; opcode m32
; ------------------------------------------------------------------------------
fsub dword [rip + 0x13]
fsub dword [rip + 0x1235]
fsub dword [rip + 0x12345679]
fsub dword [rbx]
fsub dword [rcx + 0x14]
fsub dword [rdx + 0x15]
fsub dword [rbx + 0x1235]
fsub dword [rbx + 0x12345679]
fsub dword [rbx + rcx]
fsub dword [rbx + 4 * rcx]
fsub dword [rbx + rcx + 0x13]
fsub dword [rbx + rcx + 0x1235]
fsub dword [rbx + rcx + 0x12345679]
fsub dword [rbx + 4 * rcx + 0x13]
fsub dword [rbx + 4 * rcx + 0x1235]
fsub dword [rbx + 8 * rcx + 0x12345679]
fsub dword [4 * rcx]
fsub dword [4 * rcx + 0x13]
fsub dword [4 * rcx + 0x1235]
fsub dword [4 * rcx + 0x12345679]
fsub dword [rbp]
fsub dword [rbp + 0x12]
fsub dword [rbp + 0x1234]
fsub dword [rbp + 0x12345678]
fsub dword [4 * rbp]
fsub dword [4 * rbp + 0x12]
fsub dword [4 * rbp + 0x1234]
fsub dword [4 * rbp + 0x12345678]
fsub dword [rbx + 4 * rbp]
fsub dword [rbx + 4 * rbp + 0x12]
fsub dword [rbx + 4 * rbp + 0x1234]
fsub dword [rbx + 4 * rbp + 0x12345678]
fsub dword [rsp]
fsub dword [rsp + 0x12]
fsub dword [rsp + 0x1234]
fsub dword [rsp + 0x12345678]
fsub dword [rsp + rax]
fsub dword [rsp + rbp]
fsub dword [rsp + 2*rbp]
fsub dword [rsp + 4*rbp]
fsub dword [rsp + 8*rbp]
fsub dword [rax]
fsub dword [rcx]
fsub dword [rdx]
fsub dword [rbx]
fsub dword [rsp]
fsub dword [rbp]
fsub dword [rsi]
fsub dword [rdi]
fsub dword [rax + 2*rax]
fsub dword [rcx + 2*rcx]
fsub dword [rdx + 2*rdx]
fsub dword [rbx + 2*rbx]
fsub dword [rbp + 2*rbp]
fsub dword [rsi + 2*rsi]
fsub dword [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode m64
; ------------------------------------------------------------------------------
fsub qword [rip + 0x13]
fsub qword [rip + 0x1235]
fsub qword [rip + 0x12345679]
fsub qword [rbx]
fsub qword [rcx + 0x14]
fsub qword [rdx + 0x15]
fsub qword [rbx + 0x1235]
fsub qword [rbx + 0x12345679]
fsub qword [rbx + rcx]
fsub qword [rbx + 4 * rcx]
fsub qword [rbx + rcx + 0x13]
fsub qword [rbx + rcx + 0x1235]
fsub qword [rbx + rcx + 0x12345679]
fsub qword [rbx + 4 * rcx + 0x13]
fsub qword [rbx + 4 * rcx + 0x1235]
fsub qword [rbx + 8 * rcx + 0x12345679]
fsub qword [4 * rcx]
fsub qword [4 * rcx + 0x13]
fsub qword [4 * rcx + 0x1235]
fsub qword [4 * rcx + 0x12345679]
fsub qword [rbp]
fsub qword [rbp + 0x12]
fsub qword [rbp + 0x1234]
fsub qword [rbp + 0x12345678]
fsub qword [4 * rbp]
fsub qword [4 * rbp + 0x12]
fsub qword [4 * rbp + 0x1234]
fsub qword [4 * rbp + 0x12345678]
fsub qword [rbx + 4 * rbp]
fsub qword [rbx + 4 * rbp + 0x12]
fsub qword [rbx + 4 * rbp + 0x1234]
fsub qword [rbx + 4 * rbp + 0x12345678]
fsub qword [rsp]
fsub qword [rsp + 0x12]
fsub qword [rsp + 0x1234]
fsub qword [rsp + 0x12345678]
fsub qword [rsp + rax]
fsub qword [rsp + rbp]
fsub qword [rsp + 2*rbp]
fsub qword [rsp + 4*rbp]
fsub qword [rsp + 8*rbp]
fsub qword [rax]
fsub qword [rcx]
fsub qword [rdx]
fsub qword [rbx]
fsub qword [rsp]
fsub qword [rbp]
fsub qword [rsi]
fsub qword [rdi]
fsub qword [rax + 2*rax]
fsub qword [rcx + 2*rcx]
fsub qword [rdx + 2*rdx]
fsub qword [rbx + 2*rbx]
fsub qword [rbp + 2*rbp]
fsub qword [rsi + 2*rsi]
fsub qword [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode st0,sti
; ------------------------------------------------------------------------------
fsub st, st
fsub st, st0
fsub st, st1
fsub st, st2
fsub st, st3
fsub st, st4
fsub st, st5
fsub st, st6
fsub st, st7
fsub st0, st
fsub st0, st0
fsub st0, st1
fsub st0, st2
fsub st0, st3
fsub st0, st4
fsub st0, st5
fsub st0, st6
fsub st0, st7

; ------------------------------------------------------------------------------
; opcode sti,st0
; ------------------------------------------------------------------------------
fsub st, st
fsub st, st0
fsub st0, st
fsub st0, st0
fsub st1, st
fsub st1, st0
fsub st2, st
fsub st2, st0
fsub st3, st
fsub st3, st0
fsub st4, st
fsub st4, st0
fsub st5, st
fsub st5, st0
fsub st6, st
fsub st6, st0
fsub st7, st
fsub st7, st0

