use64
; ------------------------------------------------------------------------------
; opcode r16
; ------------------------------------------------------------------------------
sldt ax
sldt cx
sldt dx
sldt bx
sldt sp
sldt bp
sldt si
sldt di

; ------------------------------------------------------------------------------
; opcode r64
; ------------------------------------------------------------------------------
sldt rax
sldt rcx
sldt rdx
sldt rbx
sldt rsp
sldt rbp
sldt rsi
sldt rdi

; ------------------------------------------------------------------------------
; opcode m16
; ------------------------------------------------------------------------------
sldt word [rip + 0x13]
sldt word [rip + 0x1235]
sldt word [rip + 0x12345679]
sldt word [rbx]
sldt word [rcx + 0x14]
sldt word [rdx + 0x15]
sldt word [rbx + 0x1235]
sldt word [rbx + 0x12345679]
sldt word [rbx + rcx]
sldt word [rbx + 4 * rcx]
sldt word [rbx + rcx + 0x13]
sldt word [rbx + rcx + 0x1235]
sldt word [rbx + rcx + 0x12345679]
sldt word [rbx + 4 * rcx + 0x13]
sldt word [rbx + 4 * rcx + 0x1235]
sldt word [rbx + 8 * rcx + 0x12345679]
sldt word [4 * rcx]
sldt word [4 * rcx + 0x13]
sldt word [4 * rcx + 0x1235]
sldt word [4 * rcx + 0x12345679]
sldt word [rbp]
sldt word [rbp + 0x12]
sldt word [rbp + 0x1234]
sldt word [rbp + 0x12345678]
sldt word [4 * rbp]
sldt word [4 * rbp + 0x12]
sldt word [4 * rbp + 0x1234]
sldt word [4 * rbp + 0x12345678]
sldt word [rbx + 4 * rbp]
sldt word [rbx + 4 * rbp + 0x12]
sldt word [rbx + 4 * rbp + 0x1234]
sldt word [rbx + 4 * rbp + 0x12345678]
sldt word [rsp]
sldt word [rsp + 0x12]
sldt word [rsp + 0x1234]
sldt word [rsp + 0x12345678]
sldt word [rsp + rax]
sldt word [rsp + rbp]
sldt word [rsp + 2*rbp]
sldt word [rsp + 4*rbp]
sldt word [rsp + 8*rbp]
sldt word [rax]
sldt word [rcx]
sldt word [rdx]
sldt word [rbx]
sldt word [rsp]
sldt word [rbp]
sldt word [rsi]
sldt word [rdi]
sldt word [rax + 2*rax]
sldt word [rcx + 2*rcx]
sldt word [rdx + 2*rdx]
sldt word [rbx + 2*rbx]
sldt word [rbp + 2*rbp]
sldt word [rsi + 2*rsi]
sldt word [rdi + 2*rdi]

