use64
; ------------------------------------------------------------------------------
; opcode r16
; ------------------------------------------------------------------------------
lldt ax
lldt cx
lldt dx
lldt bx
lldt sp
lldt bp
lldt si
lldt di

; ------------------------------------------------------------------------------
; opcode m16
; ------------------------------------------------------------------------------
lldt word [rip + 0x13]
lldt word [rip + 0x1235]
lldt word [rip + 0x12345679]
lldt word [rbx]
lldt word [rcx + 0x14]
lldt word [rdx + 0x15]
lldt word [rbx + 0x1235]
lldt word [rbx + 0x12345679]
lldt word [rbx + rcx]
lldt word [rbx + 4 * rcx]
lldt word [rbx + rcx + 0x13]
lldt word [rbx + rcx + 0x1235]
lldt word [rbx + rcx + 0x12345679]
lldt word [rbx + 4 * rcx + 0x13]
lldt word [rbx + 4 * rcx + 0x1235]
lldt word [rbx + 8 * rcx + 0x12345679]
lldt word [4 * rcx]
lldt word [4 * rcx + 0x13]
lldt word [4 * rcx + 0x1235]
lldt word [4 * rcx + 0x12345679]
lldt word [rbp]
lldt word [rbp + 0x12]
lldt word [rbp + 0x1234]
lldt word [rbp + 0x12345678]
lldt word [4 * rbp]
lldt word [4 * rbp + 0x12]
lldt word [4 * rbp + 0x1234]
lldt word [4 * rbp + 0x12345678]
lldt word [rbx + 4 * rbp]
lldt word [rbx + 4 * rbp + 0x12]
lldt word [rbx + 4 * rbp + 0x1234]
lldt word [rbx + 4 * rbp + 0x12345678]
lldt word [rsp]
lldt word [rsp + 0x12]
lldt word [rsp + 0x1234]
lldt word [rsp + 0x12345678]
lldt word [rsp + rax]
lldt word [rsp + rbp]
lldt word [rsp + 2*rbp]
lldt word [rsp + 4*rbp]
lldt word [rsp + 8*rbp]
lldt word [rax]
lldt word [rcx]
lldt word [rdx]
lldt word [rbx]
lldt word [rsp]
lldt word [rbp]
lldt word [rsi]
lldt word [rdi]
lldt word [rax + 2*rax]
lldt word [rcx + 2*rcx]
lldt word [rdx + 2*rdx]
lldt word [rbx + 2*rbx]
lldt word [rbp + 2*rbp]
lldt word [rsi + 2*rsi]
lldt word [rdi + 2*rdi]

