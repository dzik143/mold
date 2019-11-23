use64
; ------------------------------------------------------------------------------
; opcode r8
; ------------------------------------------------------------------------------
setnc al
setnc cl
setnc dl
setnc bl
setnc ah
setnc ch
setnc dh
setnc bh

; ------------------------------------------------------------------------------
; opcode m8
; ------------------------------------------------------------------------------
setnc byte [rip + 0x13]
setnc byte [rip + 0x1235]
setnc byte [rip + 0x12345679]
setnc byte [rbx]
setnc byte [rcx + 0x14]
setnc byte [rdx + 0x15]
setnc byte [rbx + 0x1235]
setnc byte [rbx + 0x12345679]
setnc byte [rbx + rcx]
setnc byte [rbx + 4 * rcx]
setnc byte [rbx + rcx + 0x13]
setnc byte [rbx + rcx + 0x1235]
setnc byte [rbx + rcx + 0x12345679]
setnc byte [rbx + 4 * rcx + 0x13]
setnc byte [rbx + 4 * rcx + 0x1235]
setnc byte [rbx + 8 * rcx + 0x12345679]
setnc byte [4 * rcx]
setnc byte [4 * rcx + 0x13]
setnc byte [4 * rcx + 0x1235]
setnc byte [4 * rcx + 0x12345679]
setnc byte [rbp]
setnc byte [rbp + 0x12]
setnc byte [rbp + 0x1234]
setnc byte [rbp + 0x12345678]
setnc byte [4 * rbp]
setnc byte [4 * rbp + 0x12]
setnc byte [4 * rbp + 0x1234]
setnc byte [4 * rbp + 0x12345678]
setnc byte [rbx + 4 * rbp]
setnc byte [rbx + 4 * rbp + 0x12]
setnc byte [rbx + 4 * rbp + 0x1234]
setnc byte [rbx + 4 * rbp + 0x12345678]
setnc byte [rsp]
setnc byte [rsp + 0x12]
setnc byte [rsp + 0x1234]
setnc byte [rsp + 0x12345678]
setnc byte [rsp + rax]
setnc byte [rsp + rbp]
setnc byte [rsp + 2*rbp]
setnc byte [rsp + 4*rbp]
setnc byte [rsp + 8*rbp]
setnc byte [rax]
setnc byte [rcx]
setnc byte [rdx]
setnc byte [rbx]
setnc byte [rsp]
setnc byte [rbp]
setnc byte [rsi]
setnc byte [rdi]
setnc byte [rax + 2*rax]
setnc byte [rcx + 2*rcx]
setnc byte [rdx + 2*rdx]
setnc byte [rbx + 2*rbx]
setnc byte [rbp + 2*rbp]
setnc byte [rsi + 2*rsi]
setnc byte [rdi + 2*rdi]

