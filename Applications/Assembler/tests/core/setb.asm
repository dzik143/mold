use64
; ------------------------------------------------------------------------------
; opcode r8
; ------------------------------------------------------------------------------
setb al
setb cl
setb dl
setb bl
setb ah
setb ch
setb dh
setb bh

; ------------------------------------------------------------------------------
; opcode m8
; ------------------------------------------------------------------------------
setb byte [rip + 0x13]
setb byte [rip + 0x1235]
setb byte [rip + 0x12345679]
setb byte [rbx]
setb byte [rcx + 0x14]
setb byte [rdx + 0x15]
setb byte [rbx + 0x1235]
setb byte [rbx + 0x12345679]
setb byte [rbx + rcx]
setb byte [rbx + 4 * rcx]
setb byte [rbx + rcx + 0x13]
setb byte [rbx + rcx + 0x1235]
setb byte [rbx + rcx + 0x12345679]
setb byte [rbx + 4 * rcx + 0x13]
setb byte [rbx + 4 * rcx + 0x1235]
setb byte [rbx + 8 * rcx + 0x12345679]
setb byte [4 * rcx]
setb byte [4 * rcx + 0x13]
setb byte [4 * rcx + 0x1235]
setb byte [4 * rcx + 0x12345679]
setb byte [rbp]
setb byte [rbp + 0x12]
setb byte [rbp + 0x1234]
setb byte [rbp + 0x12345678]
setb byte [4 * rbp]
setb byte [4 * rbp + 0x12]
setb byte [4 * rbp + 0x1234]
setb byte [4 * rbp + 0x12345678]
setb byte [rbx + 4 * rbp]
setb byte [rbx + 4 * rbp + 0x12]
setb byte [rbx + 4 * rbp + 0x1234]
setb byte [rbx + 4 * rbp + 0x12345678]
setb byte [rsp]
setb byte [rsp + 0x12]
setb byte [rsp + 0x1234]
setb byte [rsp + 0x12345678]
setb byte [rsp + rax]
setb byte [rsp + rbp]
setb byte [rsp + 2*rbp]
setb byte [rsp + 4*rbp]
setb byte [rsp + 8*rbp]
setb byte [rax]
setb byte [rcx]
setb byte [rdx]
setb byte [rbx]
setb byte [rsp]
setb byte [rbp]
setb byte [rsi]
setb byte [rdi]
setb byte [rax + 2*rax]
setb byte [rcx + 2*rcx]
setb byte [rdx + 2*rdx]
setb byte [rbx + 2*rbx]
setb byte [rbp + 2*rbp]
setb byte [rsi + 2*rsi]
setb byte [rdi + 2*rdi]

