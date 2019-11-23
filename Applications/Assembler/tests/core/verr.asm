use64
; ------------------------------------------------------------------------------
; opcode r16
; ------------------------------------------------------------------------------
verr ax
verr cx
verr dx
verr bx
verr sp
verr bp
verr si
verr di

; ------------------------------------------------------------------------------
; opcode m16
; ------------------------------------------------------------------------------
verr word [rip + 0x13]
verr word [rip + 0x1235]
verr word [rip + 0x12345679]
verr word [rbx]
verr word [rcx + 0x14]
verr word [rdx + 0x15]
verr word [rbx + 0x1235]
verr word [rbx + 0x12345679]
verr word [rbx + rcx]
verr word [rbx + 4 * rcx]
verr word [rbx + rcx + 0x13]
verr word [rbx + rcx + 0x1235]
verr word [rbx + rcx + 0x12345679]
verr word [rbx + 4 * rcx + 0x13]
verr word [rbx + 4 * rcx + 0x1235]
verr word [rbx + 8 * rcx + 0x12345679]
verr word [4 * rcx]
verr word [4 * rcx + 0x13]
verr word [4 * rcx + 0x1235]
verr word [4 * rcx + 0x12345679]
verr word [rbp]
verr word [rbp + 0x12]
verr word [rbp + 0x1234]
verr word [rbp + 0x12345678]
verr word [4 * rbp]
verr word [4 * rbp + 0x12]
verr word [4 * rbp + 0x1234]
verr word [4 * rbp + 0x12345678]
verr word [rbx + 4 * rbp]
verr word [rbx + 4 * rbp + 0x12]
verr word [rbx + 4 * rbp + 0x1234]
verr word [rbx + 4 * rbp + 0x12345678]
verr word [rsp]
verr word [rsp + 0x12]
verr word [rsp + 0x1234]
verr word [rsp + 0x12345678]
verr word [rsp + rax]
verr word [rsp + rbp]
verr word [rsp + 2*rbp]
verr word [rsp + 4*rbp]
verr word [rsp + 8*rbp]
verr word [rax]
verr word [rcx]
verr word [rdx]
verr word [rbx]
verr word [rsp]
verr word [rbp]
verr word [rsi]
verr word [rdi]
verr word [rax + 2*rax]
verr word [rcx + 2*rcx]
verr word [rdx + 2*rdx]
verr word [rbx + 2*rbx]
verr word [rbp + 2*rbp]
verr word [rsi + 2*rsi]
verr word [rdi + 2*rdi]

