use64
; ------------------------------------------------------------------------------
; opcode r8
; ------------------------------------------------------------------------------
setl al
setl cl
setl dl
setl bl
setl ah
setl ch
setl dh
setl bh

; ------------------------------------------------------------------------------
; opcode m8
; ------------------------------------------------------------------------------
setl byte [rip + 0x13]
setl byte [rip + 0x1235]
setl byte [rip + 0x12345679]
setl byte [rbx]
setl byte [rcx + 0x14]
setl byte [rdx + 0x15]
setl byte [rbx + 0x1235]
setl byte [rbx + 0x12345679]
setl byte [rbx + rcx]
setl byte [rbx + 4 * rcx]
setl byte [rbx + rcx + 0x13]
setl byte [rbx + rcx + 0x1235]
setl byte [rbx + rcx + 0x12345679]
setl byte [rbx + 4 * rcx + 0x13]
setl byte [rbx + 4 * rcx + 0x1235]
setl byte [rbx + 8 * rcx + 0x12345679]
setl byte [4 * rcx]
setl byte [4 * rcx + 0x13]
setl byte [4 * rcx + 0x1235]
setl byte [4 * rcx + 0x12345679]
setl byte [rbp]
setl byte [rbp + 0x12]
setl byte [rbp + 0x1234]
setl byte [rbp + 0x12345678]
setl byte [4 * rbp]
setl byte [4 * rbp + 0x12]
setl byte [4 * rbp + 0x1234]
setl byte [4 * rbp + 0x12345678]
setl byte [rbx + 4 * rbp]
setl byte [rbx + 4 * rbp + 0x12]
setl byte [rbx + 4 * rbp + 0x1234]
setl byte [rbx + 4 * rbp + 0x12345678]
setl byte [rsp]
setl byte [rsp + 0x12]
setl byte [rsp + 0x1234]
setl byte [rsp + 0x12345678]
setl byte [rsp + rax]
setl byte [rsp + rbp]
setl byte [rsp + 2*rbp]
setl byte [rsp + 4*rbp]
setl byte [rsp + 8*rbp]
setl byte [rax]
setl byte [rcx]
setl byte [rdx]
setl byte [rbx]
setl byte [rsp]
setl byte [rbp]
setl byte [rsi]
setl byte [rdi]
setl byte [rax + 2*rax]
setl byte [rcx + 2*rcx]
setl byte [rdx + 2*rdx]
setl byte [rbx + 2*rbx]
setl byte [rbp + 2*rbp]
setl byte [rsi + 2*rsi]
setl byte [rdi + 2*rdi]

