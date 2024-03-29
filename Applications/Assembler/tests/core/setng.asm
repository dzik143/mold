use64
; ------------------------------------------------------------------------------
; opcode r8
; ------------------------------------------------------------------------------
setng al
setng cl
setng dl
setng bl
setng ah
setng ch
setng dh
setng bh

; ------------------------------------------------------------------------------
; opcode m8
; ------------------------------------------------------------------------------
setng byte [rip + 0x13]
setng byte [rip + 0x1235]
setng byte [rip + 0x12345679]
setng byte [rbx]
setng byte [rcx + 0x14]
setng byte [rdx + 0x15]
setng byte [rbx + 0x1235]
setng byte [rbx + 0x12345679]
setng byte [rbx + rcx]
setng byte [rbx + 4 * rcx]
setng byte [rbx + rcx + 0x13]
setng byte [rbx + rcx + 0x1235]
setng byte [rbx + rcx + 0x12345679]
setng byte [rbx + 4 * rcx + 0x13]
setng byte [rbx + 4 * rcx + 0x1235]
setng byte [rbx + 8 * rcx + 0x12345679]
setng byte [4 * rcx]
setng byte [4 * rcx + 0x13]
setng byte [4 * rcx + 0x1235]
setng byte [4 * rcx + 0x12345679]
setng byte [rbp]
setng byte [rbp + 0x12]
setng byte [rbp + 0x1234]
setng byte [rbp + 0x12345678]
setng byte [4 * rbp]
setng byte [4 * rbp + 0x12]
setng byte [4 * rbp + 0x1234]
setng byte [4 * rbp + 0x12345678]
setng byte [rbx + 4 * rbp]
setng byte [rbx + 4 * rbp + 0x12]
setng byte [rbx + 4 * rbp + 0x1234]
setng byte [rbx + 4 * rbp + 0x12345678]
setng byte [rsp]
setng byte [rsp + 0x12]
setng byte [rsp + 0x1234]
setng byte [rsp + 0x12345678]
setng byte [rsp + rax]
setng byte [rsp + rbp]
setng byte [rsp + 2*rbp]
setng byte [rsp + 4*rbp]
setng byte [rsp + 8*rbp]
setng byte [rax]
setng byte [rcx]
setng byte [rdx]
setng byte [rbx]
setng byte [rsp]
setng byte [rbp]
setng byte [rsi]
setng byte [rdi]
setng byte [rax + 2*rax]
setng byte [rcx + 2*rcx]
setng byte [rdx + 2*rdx]
setng byte [rbx + 2*rbx]
setng byte [rbp + 2*rbp]
setng byte [rsi + 2*rsi]
setng byte [rdi + 2*rdi]

