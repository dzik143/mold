use64
; ------------------------------------------------------------------------------
; opcode m32
; ------------------------------------------------------------------------------
fdiv dword [rip + 0x13]
fdiv dword [rip + 0x1235]
fdiv dword [rip + 0x12345679]
fdiv dword [rbx]
fdiv dword [rcx + 0x14]
fdiv dword [rdx + 0x15]
fdiv dword [rbx + 0x1235]
fdiv dword [rbx + 0x12345679]
fdiv dword [rbx + rcx]
fdiv dword [rbx + 4 * rcx]
fdiv dword [rbx + rcx + 0x13]
fdiv dword [rbx + rcx + 0x1235]
fdiv dword [rbx + rcx + 0x12345679]
fdiv dword [rbx + 4 * rcx + 0x13]
fdiv dword [rbx + 4 * rcx + 0x1235]
fdiv dword [rbx + 8 * rcx + 0x12345679]
fdiv dword [4 * rcx]
fdiv dword [4 * rcx + 0x13]
fdiv dword [4 * rcx + 0x1235]
fdiv dword [4 * rcx + 0x12345679]
fdiv dword [rbp]
fdiv dword [rbp + 0x12]
fdiv dword [rbp + 0x1234]
fdiv dword [rbp + 0x12345678]
fdiv dword [4 * rbp]
fdiv dword [4 * rbp + 0x12]
fdiv dword [4 * rbp + 0x1234]
fdiv dword [4 * rbp + 0x12345678]
fdiv dword [rbx + 4 * rbp]
fdiv dword [rbx + 4 * rbp + 0x12]
fdiv dword [rbx + 4 * rbp + 0x1234]
fdiv dword [rbx + 4 * rbp + 0x12345678]
fdiv dword [rsp]
fdiv dword [rsp + 0x12]
fdiv dword [rsp + 0x1234]
fdiv dword [rsp + 0x12345678]
fdiv dword [rsp + rax]
fdiv dword [rsp + rbp]
fdiv dword [rsp + 2*rbp]
fdiv dword [rsp + 4*rbp]
fdiv dword [rsp + 8*rbp]
fdiv dword [rax]
fdiv dword [rcx]
fdiv dword [rdx]
fdiv dword [rbx]
fdiv dword [rsp]
fdiv dword [rbp]
fdiv dword [rsi]
fdiv dword [rdi]
fdiv dword [rax + 2*rax]
fdiv dword [rcx + 2*rcx]
fdiv dword [rdx + 2*rdx]
fdiv dword [rbx + 2*rbx]
fdiv dword [rbp + 2*rbp]
fdiv dword [rsi + 2*rsi]
fdiv dword [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode m64
; ------------------------------------------------------------------------------
fdiv qword [rip + 0x13]
fdiv qword [rip + 0x1235]
fdiv qword [rip + 0x12345679]
fdiv qword [rbx]
fdiv qword [rcx + 0x14]
fdiv qword [rdx + 0x15]
fdiv qword [rbx + 0x1235]
fdiv qword [rbx + 0x12345679]
fdiv qword [rbx + rcx]
fdiv qword [rbx + 4 * rcx]
fdiv qword [rbx + rcx + 0x13]
fdiv qword [rbx + rcx + 0x1235]
fdiv qword [rbx + rcx + 0x12345679]
fdiv qword [rbx + 4 * rcx + 0x13]
fdiv qword [rbx + 4 * rcx + 0x1235]
fdiv qword [rbx + 8 * rcx + 0x12345679]
fdiv qword [4 * rcx]
fdiv qword [4 * rcx + 0x13]
fdiv qword [4 * rcx + 0x1235]
fdiv qword [4 * rcx + 0x12345679]
fdiv qword [rbp]
fdiv qword [rbp + 0x12]
fdiv qword [rbp + 0x1234]
fdiv qword [rbp + 0x12345678]
fdiv qword [4 * rbp]
fdiv qword [4 * rbp + 0x12]
fdiv qword [4 * rbp + 0x1234]
fdiv qword [4 * rbp + 0x12345678]
fdiv qword [rbx + 4 * rbp]
fdiv qword [rbx + 4 * rbp + 0x12]
fdiv qword [rbx + 4 * rbp + 0x1234]
fdiv qword [rbx + 4 * rbp + 0x12345678]
fdiv qword [rsp]
fdiv qword [rsp + 0x12]
fdiv qword [rsp + 0x1234]
fdiv qword [rsp + 0x12345678]
fdiv qword [rsp + rax]
fdiv qword [rsp + rbp]
fdiv qword [rsp + 2*rbp]
fdiv qword [rsp + 4*rbp]
fdiv qword [rsp + 8*rbp]
fdiv qword [rax]
fdiv qword [rcx]
fdiv qword [rdx]
fdiv qword [rbx]
fdiv qword [rsp]
fdiv qword [rbp]
fdiv qword [rsi]
fdiv qword [rdi]
fdiv qword [rax + 2*rax]
fdiv qword [rcx + 2*rcx]
fdiv qword [rdx + 2*rdx]
fdiv qword [rbx + 2*rbx]
fdiv qword [rbp + 2*rbp]
fdiv qword [rsi + 2*rsi]
fdiv qword [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode st0,sti
; ------------------------------------------------------------------------------
fdiv st, st
fdiv st, st0
fdiv st, st1
fdiv st, st2
fdiv st, st3
fdiv st, st4
fdiv st, st5
fdiv st, st6
fdiv st, st7
fdiv st0, st
fdiv st0, st0
fdiv st0, st1
fdiv st0, st2
fdiv st0, st3
fdiv st0, st4
fdiv st0, st5
fdiv st0, st6
fdiv st0, st7

; ------------------------------------------------------------------------------
; opcode sti,st0
; ------------------------------------------------------------------------------
fdiv st, st
fdiv st, st0
fdiv st0, st
fdiv st0, st0
fdiv st1, st
fdiv st1, st0
fdiv st2, st
fdiv st2, st0
fdiv st3, st
fdiv st3, st0
fdiv st4, st
fdiv st4, st0
fdiv st5, st
fdiv st5, st0
fdiv st6, st
fdiv st6, st0
fdiv st7, st
fdiv st7, st0

