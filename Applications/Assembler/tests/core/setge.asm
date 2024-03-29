use64
; ------------------------------------------------------------------------------
; opcode r8
; ------------------------------------------------------------------------------
setge al
setge cl
setge dl
setge bl
setge ah
setge ch
setge dh
setge bh

; ------------------------------------------------------------------------------
; opcode m8
; ------------------------------------------------------------------------------
setge byte [rip + 0x13]
setge byte [rip + 0x1235]
setge byte [rip + 0x12345679]
setge byte [rbx]
setge byte [rcx + 0x14]
setge byte [rdx + 0x15]
setge byte [rbx + 0x1235]
setge byte [rbx + 0x12345679]
setge byte [rbx + rcx]
setge byte [rbx + 4 * rcx]
setge byte [rbx + rcx + 0x13]
setge byte [rbx + rcx + 0x1235]
setge byte [rbx + rcx + 0x12345679]
setge byte [rbx + 4 * rcx + 0x13]
setge byte [rbx + 4 * rcx + 0x1235]
setge byte [rbx + 8 * rcx + 0x12345679]
setge byte [4 * rcx]
setge byte [4 * rcx + 0x13]
setge byte [4 * rcx + 0x1235]
setge byte [4 * rcx + 0x12345679]
setge byte [rbp]
setge byte [rbp + 0x12]
setge byte [rbp + 0x1234]
setge byte [rbp + 0x12345678]
setge byte [4 * rbp]
setge byte [4 * rbp + 0x12]
setge byte [4 * rbp + 0x1234]
setge byte [4 * rbp + 0x12345678]
setge byte [rbx + 4 * rbp]
setge byte [rbx + 4 * rbp + 0x12]
setge byte [rbx + 4 * rbp + 0x1234]
setge byte [rbx + 4 * rbp + 0x12345678]
setge byte [rsp]
setge byte [rsp + 0x12]
setge byte [rsp + 0x1234]
setge byte [rsp + 0x12345678]
setge byte [rsp + rax]
setge byte [rsp + rbp]
setge byte [rsp + 2*rbp]
setge byte [rsp + 4*rbp]
setge byte [rsp + 8*rbp]
setge byte [rax]
setge byte [rcx]
setge byte [rdx]
setge byte [rbx]
setge byte [rsp]
setge byte [rbp]
setge byte [rsi]
setge byte [rdi]
setge byte [rax + 2*rax]
setge byte [rcx + 2*rcx]
setge byte [rdx + 2*rdx]
setge byte [rbx + 2*rbx]
setge byte [rbp + 2*rbp]
setge byte [rsi + 2*rsi]
setge byte [rdi + 2*rdi]

