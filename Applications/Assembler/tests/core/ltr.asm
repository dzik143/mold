use64
; ------------------------------------------------------------------------------
; opcode r16
; ------------------------------------------------------------------------------
ltr ax
ltr cx
ltr dx
ltr bx
ltr sp
ltr bp
ltr si
ltr di

; ------------------------------------------------------------------------------
; opcode m16
; ------------------------------------------------------------------------------
ltr word [rip + 0x13]
ltr word [rip + 0x1235]
ltr word [rip + 0x12345679]
ltr word [rbx]
ltr word [rcx + 0x14]
ltr word [rdx + 0x15]
ltr word [rbx + 0x1235]
ltr word [rbx + 0x12345679]
ltr word [rbx + rcx]
ltr word [rbx + 4 * rcx]
ltr word [rbx + rcx + 0x13]
ltr word [rbx + rcx + 0x1235]
ltr word [rbx + rcx + 0x12345679]
ltr word [rbx + 4 * rcx + 0x13]
ltr word [rbx + 4 * rcx + 0x1235]
ltr word [rbx + 8 * rcx + 0x12345679]
ltr word [4 * rcx]
ltr word [4 * rcx + 0x13]
ltr word [4 * rcx + 0x1235]
ltr word [4 * rcx + 0x12345679]
ltr word [rbp]
ltr word [rbp + 0x12]
ltr word [rbp + 0x1234]
ltr word [rbp + 0x12345678]
ltr word [4 * rbp]
ltr word [4 * rbp + 0x12]
ltr word [4 * rbp + 0x1234]
ltr word [4 * rbp + 0x12345678]
ltr word [rbx + 4 * rbp]
ltr word [rbx + 4 * rbp + 0x12]
ltr word [rbx + 4 * rbp + 0x1234]
ltr word [rbx + 4 * rbp + 0x12345678]
ltr word [rsp]
ltr word [rsp + 0x12]
ltr word [rsp + 0x1234]
ltr word [rsp + 0x12345678]
ltr word [rsp + rax]
ltr word [rsp + rbp]
ltr word [rsp + 2*rbp]
ltr word [rsp + 4*rbp]
ltr word [rsp + 8*rbp]
ltr word [rax]
ltr word [rcx]
ltr word [rdx]
ltr word [rbx]
ltr word [rsp]
ltr word [rbp]
ltr word [rsi]
ltr word [rdi]
ltr word [rax + 2*rax]
ltr word [rcx + 2*rcx]
ltr word [rdx + 2*rdx]
ltr word [rbx + 2*rbx]
ltr word [rbp + 2*rbp]
ltr word [rsi + 2*rsi]
ltr word [rdi + 2*rdi]

