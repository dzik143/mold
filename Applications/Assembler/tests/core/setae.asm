use64
; ------------------------------------------------------------------------------
; opcode r8
; ------------------------------------------------------------------------------
setae al
setae cl
setae dl
setae bl
setae ah
setae ch
setae dh
setae bh

; ------------------------------------------------------------------------------
; opcode m8
; ------------------------------------------------------------------------------
setae byte [rip + 0x13]
setae byte [rip + 0x1235]
setae byte [rip + 0x12345679]
setae byte [rbx]
setae byte [rcx + 0x14]
setae byte [rdx + 0x15]
setae byte [rbx + 0x1235]
setae byte [rbx + 0x12345679]
setae byte [rbx + rcx]
setae byte [rbx + 4 * rcx]
setae byte [rbx + rcx + 0x13]
setae byte [rbx + rcx + 0x1235]
setae byte [rbx + rcx + 0x12345679]
setae byte [rbx + 4 * rcx + 0x13]
setae byte [rbx + 4 * rcx + 0x1235]
setae byte [rbx + 8 * rcx + 0x12345679]
setae byte [4 * rcx]
setae byte [4 * rcx + 0x13]
setae byte [4 * rcx + 0x1235]
setae byte [4 * rcx + 0x12345679]
setae byte [rbp]
setae byte [rbp + 0x12]
setae byte [rbp + 0x1234]
setae byte [rbp + 0x12345678]
setae byte [4 * rbp]
setae byte [4 * rbp + 0x12]
setae byte [4 * rbp + 0x1234]
setae byte [4 * rbp + 0x12345678]
setae byte [rbx + 4 * rbp]
setae byte [rbx + 4 * rbp + 0x12]
setae byte [rbx + 4 * rbp + 0x1234]
setae byte [rbx + 4 * rbp + 0x12345678]
setae byte [rsp]
setae byte [rsp + 0x12]
setae byte [rsp + 0x1234]
setae byte [rsp + 0x12345678]
setae byte [rsp + rax]
setae byte [rsp + rbp]
setae byte [rsp + 2*rbp]
setae byte [rsp + 4*rbp]
setae byte [rsp + 8*rbp]
setae byte [rax]
setae byte [rcx]
setae byte [rdx]
setae byte [rbx]
setae byte [rsp]
setae byte [rbp]
setae byte [rsi]
setae byte [rdi]
setae byte [rax + 2*rax]
setae byte [rcx + 2*rcx]
setae byte [rdx + 2*rdx]
setae byte [rbx + 2*rbx]
setae byte [rbp + 2*rbp]
setae byte [rsi + 2*rsi]
setae byte [rdi + 2*rdi]

