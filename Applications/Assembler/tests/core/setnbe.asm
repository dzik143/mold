use64
; ------------------------------------------------------------------------------
; opcode r8
; ------------------------------------------------------------------------------
setnbe al
setnbe cl
setnbe dl
setnbe bl
setnbe ah
setnbe ch
setnbe dh
setnbe bh

; ------------------------------------------------------------------------------
; opcode m8
; ------------------------------------------------------------------------------
setnbe byte [rip + 0x13]
setnbe byte [rip + 0x1235]
setnbe byte [rip + 0x12345679]
setnbe byte [rbx]
setnbe byte [rcx + 0x14]
setnbe byte [rdx + 0x15]
setnbe byte [rbx + 0x1235]
setnbe byte [rbx + 0x12345679]
setnbe byte [rbx + rcx]
setnbe byte [rbx + 4 * rcx]
setnbe byte [rbx + rcx + 0x13]
setnbe byte [rbx + rcx + 0x1235]
setnbe byte [rbx + rcx + 0x12345679]
setnbe byte [rbx + 4 * rcx + 0x13]
setnbe byte [rbx + 4 * rcx + 0x1235]
setnbe byte [rbx + 8 * rcx + 0x12345679]
setnbe byte [4 * rcx]
setnbe byte [4 * rcx + 0x13]
setnbe byte [4 * rcx + 0x1235]
setnbe byte [4 * rcx + 0x12345679]
setnbe byte [rbp]
setnbe byte [rbp + 0x12]
setnbe byte [rbp + 0x1234]
setnbe byte [rbp + 0x12345678]
setnbe byte [4 * rbp]
setnbe byte [4 * rbp + 0x12]
setnbe byte [4 * rbp + 0x1234]
setnbe byte [4 * rbp + 0x12345678]
setnbe byte [rbx + 4 * rbp]
setnbe byte [rbx + 4 * rbp + 0x12]
setnbe byte [rbx + 4 * rbp + 0x1234]
setnbe byte [rbx + 4 * rbp + 0x12345678]
setnbe byte [rsp]
setnbe byte [rsp + 0x12]
setnbe byte [rsp + 0x1234]
setnbe byte [rsp + 0x12345678]
setnbe byte [rsp + rax]
setnbe byte [rsp + rbp]
setnbe byte [rsp + 2*rbp]
setnbe byte [rsp + 4*rbp]
setnbe byte [rsp + 8*rbp]
setnbe byte [rax]
setnbe byte [rcx]
setnbe byte [rdx]
setnbe byte [rbx]
setnbe byte [rsp]
setnbe byte [rbp]
setnbe byte [rsi]
setnbe byte [rdi]
setnbe byte [rax + 2*rax]
setnbe byte [rcx + 2*rcx]
setnbe byte [rdx + 2*rdx]
setnbe byte [rbx + 2*rbx]
setnbe byte [rbp + 2*rbp]
setnbe byte [rsi + 2*rsi]
setnbe byte [rdi + 2*rdi]

