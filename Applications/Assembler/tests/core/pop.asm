use64
; ------------------------------------------------------------------------------
; opcode r16
; ------------------------------------------------------------------------------
pop ax
pop cx
pop dx
pop bx
pop sp
pop bp
pop si
pop di

; ------------------------------------------------------------------------------
; opcode m16
; ------------------------------------------------------------------------------
pop word [rip + 0x13]
pop word [rip + 0x1235]
pop word [rip + 0x12345679]
pop word [rbx]
pop word [rcx + 0x14]
pop word [rdx + 0x15]
pop word [rbx + 0x1235]
pop word [rbx + 0x12345679]
pop word [rbx + rcx]
pop word [rbx + 4 * rcx]
pop word [rbx + rcx + 0x13]
pop word [rbx + rcx + 0x1235]
pop word [rbx + rcx + 0x12345679]
pop word [rbx + 4 * rcx + 0x13]
pop word [rbx + 4 * rcx + 0x1235]
pop word [rbx + 8 * rcx + 0x12345679]
pop word [4 * rcx]
pop word [4 * rcx + 0x13]
pop word [4 * rcx + 0x1235]
pop word [4 * rcx + 0x12345679]
pop word [rbp]
pop word [rbp + 0x12]
pop word [rbp + 0x1234]
pop word [rbp + 0x12345678]
pop word [4 * rbp]
pop word [4 * rbp + 0x12]
pop word [4 * rbp + 0x1234]
pop word [4 * rbp + 0x12345678]
pop word [rbx + 4 * rbp]
pop word [rbx + 4 * rbp + 0x12]
pop word [rbx + 4 * rbp + 0x1234]
pop word [rbx + 4 * rbp + 0x12345678]
pop word [rsp]
pop word [rsp + 0x12]
pop word [rsp + 0x1234]
pop word [rsp + 0x12345678]
pop word [rsp + rax]
pop word [rsp + rbp]
pop word [rsp + 2*rbp]
pop word [rsp + 4*rbp]
pop word [rsp + 8*rbp]
pop word [rax]
pop word [rcx]
pop word [rdx]
pop word [rbx]
pop word [rsp]
pop word [rbp]
pop word [rsi]
pop word [rdi]
pop word [rax + 2*rax]
pop word [rcx + 2*rcx]
pop word [rdx + 2*rdx]
pop word [rbx + 2*rbx]
pop word [rbp + 2*rbp]
pop word [rsi + 2*rsi]
pop word [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode r64
; ------------------------------------------------------------------------------
pop rax
pop rcx
pop rdx
pop rbx
pop rsp
pop rbp
pop rsi
pop rdi

; ------------------------------------------------------------------------------
; opcode m64
; ------------------------------------------------------------------------------
pop qword [rip + 0x13]
pop qword [rip + 0x1235]
pop qword [rip + 0x12345679]
pop qword [rbx]
pop qword [rcx + 0x14]
pop qword [rdx + 0x15]
pop qword [rbx + 0x1235]
pop qword [rbx + 0x12345679]
pop qword [rbx + rcx]
pop qword [rbx + 4 * rcx]
pop qword [rbx + rcx + 0x13]
pop qword [rbx + rcx + 0x1235]
pop qword [rbx + rcx + 0x12345679]
pop qword [rbx + 4 * rcx + 0x13]
pop qword [rbx + 4 * rcx + 0x1235]
pop qword [rbx + 8 * rcx + 0x12345679]
pop qword [4 * rcx]
pop qword [4 * rcx + 0x13]
pop qword [4 * rcx + 0x1235]
pop qword [4 * rcx + 0x12345679]
pop qword [rbp]
pop qword [rbp + 0x12]
pop qword [rbp + 0x1234]
pop qword [rbp + 0x12345678]
pop qword [4 * rbp]
pop qword [4 * rbp + 0x12]
pop qword [4 * rbp + 0x1234]
pop qword [4 * rbp + 0x12345678]
pop qword [rbx + 4 * rbp]
pop qword [rbx + 4 * rbp + 0x12]
pop qword [rbx + 4 * rbp + 0x1234]
pop qword [rbx + 4 * rbp + 0x12345678]
pop qword [rsp]
pop qword [rsp + 0x12]
pop qword [rsp + 0x1234]
pop qword [rsp + 0x12345678]
pop qword [rsp + rax]
pop qword [rsp + rbp]
pop qword [rsp + 2*rbp]
pop qword [rsp + 4*rbp]
pop qword [rsp + 8*rbp]
pop qword [rax]
pop qword [rcx]
pop qword [rdx]
pop qword [rbx]
pop qword [rsp]
pop qword [rbp]
pop qword [rsi]
pop qword [rdi]
pop qword [rax + 2*rax]
pop qword [rcx + 2*rcx]
pop qword [rdx + 2*rdx]
pop qword [rbx + 2*rbx]
pop qword [rbp + 2*rbp]
pop qword [rsi + 2*rsi]
pop qword [rdi + 2*rdi]

