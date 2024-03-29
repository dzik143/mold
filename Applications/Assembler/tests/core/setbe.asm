use64
; ------------------------------------------------------------------------------
; opcode r8
; ------------------------------------------------------------------------------
setbe al
setbe cl
setbe dl
setbe bl
setbe ah
setbe ch
setbe dh
setbe bh

; ------------------------------------------------------------------------------
; opcode m8
; ------------------------------------------------------------------------------
setbe byte [rip + 0x13]
setbe byte [rip + 0x1235]
setbe byte [rip + 0x12345679]
setbe byte [rbx]
setbe byte [rcx + 0x14]
setbe byte [rdx + 0x15]
setbe byte [rbx + 0x1235]
setbe byte [rbx + 0x12345679]
setbe byte [rbx + rcx]
setbe byte [rbx + 4 * rcx]
setbe byte [rbx + rcx + 0x13]
setbe byte [rbx + rcx + 0x1235]
setbe byte [rbx + rcx + 0x12345679]
setbe byte [rbx + 4 * rcx + 0x13]
setbe byte [rbx + 4 * rcx + 0x1235]
setbe byte [rbx + 8 * rcx + 0x12345679]
setbe byte [4 * rcx]
setbe byte [4 * rcx + 0x13]
setbe byte [4 * rcx + 0x1235]
setbe byte [4 * rcx + 0x12345679]
setbe byte [rbp]
setbe byte [rbp + 0x12]
setbe byte [rbp + 0x1234]
setbe byte [rbp + 0x12345678]
setbe byte [4 * rbp]
setbe byte [4 * rbp + 0x12]
setbe byte [4 * rbp + 0x1234]
setbe byte [4 * rbp + 0x12345678]
setbe byte [rbx + 4 * rbp]
setbe byte [rbx + 4 * rbp + 0x12]
setbe byte [rbx + 4 * rbp + 0x1234]
setbe byte [rbx + 4 * rbp + 0x12345678]
setbe byte [rsp]
setbe byte [rsp + 0x12]
setbe byte [rsp + 0x1234]
setbe byte [rsp + 0x12345678]
setbe byte [rsp + rax]
setbe byte [rsp + rbp]
setbe byte [rsp + 2*rbp]
setbe byte [rsp + 4*rbp]
setbe byte [rsp + 8*rbp]
setbe byte [rax]
setbe byte [rcx]
setbe byte [rdx]
setbe byte [rbx]
setbe byte [rsp]
setbe byte [rbp]
setbe byte [rsi]
setbe byte [rdi]
setbe byte [rax + 2*rax]
setbe byte [rcx + 2*rcx]
setbe byte [rdx + 2*rdx]
setbe byte [rbx + 2*rbx]
setbe byte [rbp + 2*rbp]
setbe byte [rsi + 2*rsi]
setbe byte [rdi + 2*rdi]

