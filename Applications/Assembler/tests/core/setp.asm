use64
; ------------------------------------------------------------------------------
; opcode r8
; ------------------------------------------------------------------------------
setp al
setp cl
setp dl
setp bl
setp ah
setp ch
setp dh
setp bh

; ------------------------------------------------------------------------------
; opcode m8
; ------------------------------------------------------------------------------
setp byte [rip + 0x13]
setp byte [rip + 0x1235]
setp byte [rip + 0x12345679]
setp byte [rbx]
setp byte [rcx + 0x14]
setp byte [rdx + 0x15]
setp byte [rbx + 0x1235]
setp byte [rbx + 0x12345679]
setp byte [rbx + rcx]
setp byte [rbx + 4 * rcx]
setp byte [rbx + rcx + 0x13]
setp byte [rbx + rcx + 0x1235]
setp byte [rbx + rcx + 0x12345679]
setp byte [rbx + 4 * rcx + 0x13]
setp byte [rbx + 4 * rcx + 0x1235]
setp byte [rbx + 8 * rcx + 0x12345679]
setp byte [4 * rcx]
setp byte [4 * rcx + 0x13]
setp byte [4 * rcx + 0x1235]
setp byte [4 * rcx + 0x12345679]
setp byte [rbp]
setp byte [rbp + 0x12]
setp byte [rbp + 0x1234]
setp byte [rbp + 0x12345678]
setp byte [4 * rbp]
setp byte [4 * rbp + 0x12]
setp byte [4 * rbp + 0x1234]
setp byte [4 * rbp + 0x12345678]
setp byte [rbx + 4 * rbp]
setp byte [rbx + 4 * rbp + 0x12]
setp byte [rbx + 4 * rbp + 0x1234]
setp byte [rbx + 4 * rbp + 0x12345678]
setp byte [rsp]
setp byte [rsp + 0x12]
setp byte [rsp + 0x1234]
setp byte [rsp + 0x12345678]
setp byte [rsp + rax]
setp byte [rsp + rbp]
setp byte [rsp + 2*rbp]
setp byte [rsp + 4*rbp]
setp byte [rsp + 8*rbp]
setp byte [rax]
setp byte [rcx]
setp byte [rdx]
setp byte [rbx]
setp byte [rsp]
setp byte [rbp]
setp byte [rsi]
setp byte [rdi]
setp byte [rax + 2*rax]
setp byte [rcx + 2*rcx]
setp byte [rdx + 2*rdx]
setp byte [rbx + 2*rbx]
setp byte [rbp + 2*rbp]
setp byte [rsi + 2*rsi]
setp byte [rdi + 2*rdi]

