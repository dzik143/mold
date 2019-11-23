use64
; ------------------------------------------------------------------------------
; opcode r8
; ------------------------------------------------------------------------------
setnge al
setnge cl
setnge dl
setnge bl
setnge ah
setnge ch
setnge dh
setnge bh

; ------------------------------------------------------------------------------
; opcode m8
; ------------------------------------------------------------------------------
setnge byte [rip + 0x13]
setnge byte [rip + 0x1235]
setnge byte [rip + 0x12345679]
setnge byte [rbx]
setnge byte [rcx + 0x14]
setnge byte [rdx + 0x15]
setnge byte [rbx + 0x1235]
setnge byte [rbx + 0x12345679]
setnge byte [rbx + rcx]
setnge byte [rbx + 4 * rcx]
setnge byte [rbx + rcx + 0x13]
setnge byte [rbx + rcx + 0x1235]
setnge byte [rbx + rcx + 0x12345679]
setnge byte [rbx + 4 * rcx + 0x13]
setnge byte [rbx + 4 * rcx + 0x1235]
setnge byte [rbx + 8 * rcx + 0x12345679]
setnge byte [4 * rcx]
setnge byte [4 * rcx + 0x13]
setnge byte [4 * rcx + 0x1235]
setnge byte [4 * rcx + 0x12345679]
setnge byte [rbp]
setnge byte [rbp + 0x12]
setnge byte [rbp + 0x1234]
setnge byte [rbp + 0x12345678]
setnge byte [4 * rbp]
setnge byte [4 * rbp + 0x12]
setnge byte [4 * rbp + 0x1234]
setnge byte [4 * rbp + 0x12345678]
setnge byte [rbx + 4 * rbp]
setnge byte [rbx + 4 * rbp + 0x12]
setnge byte [rbx + 4 * rbp + 0x1234]
setnge byte [rbx + 4 * rbp + 0x12345678]
setnge byte [rsp]
setnge byte [rsp + 0x12]
setnge byte [rsp + 0x1234]
setnge byte [rsp + 0x12345678]
setnge byte [rsp + rax]
setnge byte [rsp + rbp]
setnge byte [rsp + 2*rbp]
setnge byte [rsp + 4*rbp]
setnge byte [rsp + 8*rbp]
setnge byte [rax]
setnge byte [rcx]
setnge byte [rdx]
setnge byte [rbx]
setnge byte [rsp]
setnge byte [rbp]
setnge byte [rsi]
setnge byte [rdi]
setnge byte [rax + 2*rax]
setnge byte [rcx + 2*rcx]
setnge byte [rdx + 2*rdx]
setnge byte [rbx + 2*rbx]
setnge byte [rbp + 2*rbp]
setnge byte [rsi + 2*rsi]
setnge byte [rdi + 2*rdi]

