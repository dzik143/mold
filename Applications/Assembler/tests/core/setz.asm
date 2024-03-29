use64
; ------------------------------------------------------------------------------
; opcode r8
; ------------------------------------------------------------------------------
setz al
setz cl
setz dl
setz bl
setz ah
setz ch
setz dh
setz bh

; ------------------------------------------------------------------------------
; opcode m8
; ------------------------------------------------------------------------------
setz byte [rip + 0x13]
setz byte [rip + 0x1235]
setz byte [rip + 0x12345679]
setz byte [rbx]
setz byte [rcx + 0x14]
setz byte [rdx + 0x15]
setz byte [rbx + 0x1235]
setz byte [rbx + 0x12345679]
setz byte [rbx + rcx]
setz byte [rbx + 4 * rcx]
setz byte [rbx + rcx + 0x13]
setz byte [rbx + rcx + 0x1235]
setz byte [rbx + rcx + 0x12345679]
setz byte [rbx + 4 * rcx + 0x13]
setz byte [rbx + 4 * rcx + 0x1235]
setz byte [rbx + 8 * rcx + 0x12345679]
setz byte [4 * rcx]
setz byte [4 * rcx + 0x13]
setz byte [4 * rcx + 0x1235]
setz byte [4 * rcx + 0x12345679]
setz byte [rbp]
setz byte [rbp + 0x12]
setz byte [rbp + 0x1234]
setz byte [rbp + 0x12345678]
setz byte [4 * rbp]
setz byte [4 * rbp + 0x12]
setz byte [4 * rbp + 0x1234]
setz byte [4 * rbp + 0x12345678]
setz byte [rbx + 4 * rbp]
setz byte [rbx + 4 * rbp + 0x12]
setz byte [rbx + 4 * rbp + 0x1234]
setz byte [rbx + 4 * rbp + 0x12345678]
setz byte [rsp]
setz byte [rsp + 0x12]
setz byte [rsp + 0x1234]
setz byte [rsp + 0x12345678]
setz byte [rsp + rax]
setz byte [rsp + rbp]
setz byte [rsp + 2*rbp]
setz byte [rsp + 4*rbp]
setz byte [rsp + 8*rbp]
setz byte [rax]
setz byte [rcx]
setz byte [rdx]
setz byte [rbx]
setz byte [rsp]
setz byte [rbp]
setz byte [rsi]
setz byte [rdi]
setz byte [rax + 2*rax]
setz byte [rcx + 2*rcx]
setz byte [rdx + 2*rdx]
setz byte [rbx + 2*rbx]
setz byte [rbp + 2*rbp]
setz byte [rsi + 2*rsi]
setz byte [rdi + 2*rdi]

