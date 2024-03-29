use64
; ------------------------------------------------------------------------------
; opcode r8
; ------------------------------------------------------------------------------
setc al
setc cl
setc dl
setc bl
setc ah
setc ch
setc dh
setc bh

; ------------------------------------------------------------------------------
; opcode m8
; ------------------------------------------------------------------------------
setc byte [rip + 0x13]
setc byte [rip + 0x1235]
setc byte [rip + 0x12345679]
setc byte [rbx]
setc byte [rcx + 0x14]
setc byte [rdx + 0x15]
setc byte [rbx + 0x1235]
setc byte [rbx + 0x12345679]
setc byte [rbx + rcx]
setc byte [rbx + 4 * rcx]
setc byte [rbx + rcx + 0x13]
setc byte [rbx + rcx + 0x1235]
setc byte [rbx + rcx + 0x12345679]
setc byte [rbx + 4 * rcx + 0x13]
setc byte [rbx + 4 * rcx + 0x1235]
setc byte [rbx + 8 * rcx + 0x12345679]
setc byte [4 * rcx]
setc byte [4 * rcx + 0x13]
setc byte [4 * rcx + 0x1235]
setc byte [4 * rcx + 0x12345679]
setc byte [rbp]
setc byte [rbp + 0x12]
setc byte [rbp + 0x1234]
setc byte [rbp + 0x12345678]
setc byte [4 * rbp]
setc byte [4 * rbp + 0x12]
setc byte [4 * rbp + 0x1234]
setc byte [4 * rbp + 0x12345678]
setc byte [rbx + 4 * rbp]
setc byte [rbx + 4 * rbp + 0x12]
setc byte [rbx + 4 * rbp + 0x1234]
setc byte [rbx + 4 * rbp + 0x12345678]
setc byte [rsp]
setc byte [rsp + 0x12]
setc byte [rsp + 0x1234]
setc byte [rsp + 0x12345678]
setc byte [rsp + rax]
setc byte [rsp + rbp]
setc byte [rsp + 2*rbp]
setc byte [rsp + 4*rbp]
setc byte [rsp + 8*rbp]
setc byte [rax]
setc byte [rcx]
setc byte [rdx]
setc byte [rbx]
setc byte [rsp]
setc byte [rbp]
setc byte [rsi]
setc byte [rdi]
setc byte [rax + 2*rax]
setc byte [rcx + 2*rcx]
setc byte [rdx + 2*rdx]
setc byte [rbx + 2*rbx]
setc byte [rbp + 2*rbp]
setc byte [rsi + 2*rsi]
setc byte [rdi + 2*rdi]

