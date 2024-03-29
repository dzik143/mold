use64
; ------------------------------------------------------------------------------
; opcode r8
; ------------------------------------------------------------------------------
setnp al
setnp cl
setnp dl
setnp bl
setnp ah
setnp ch
setnp dh
setnp bh

; ------------------------------------------------------------------------------
; opcode m8
; ------------------------------------------------------------------------------
setnp byte [rip + 0x13]
setnp byte [rip + 0x1235]
setnp byte [rip + 0x12345679]
setnp byte [rbx]
setnp byte [rcx + 0x14]
setnp byte [rdx + 0x15]
setnp byte [rbx + 0x1235]
setnp byte [rbx + 0x12345679]
setnp byte [rbx + rcx]
setnp byte [rbx + 4 * rcx]
setnp byte [rbx + rcx + 0x13]
setnp byte [rbx + rcx + 0x1235]
setnp byte [rbx + rcx + 0x12345679]
setnp byte [rbx + 4 * rcx + 0x13]
setnp byte [rbx + 4 * rcx + 0x1235]
setnp byte [rbx + 8 * rcx + 0x12345679]
setnp byte [4 * rcx]
setnp byte [4 * rcx + 0x13]
setnp byte [4 * rcx + 0x1235]
setnp byte [4 * rcx + 0x12345679]
setnp byte [rbp]
setnp byte [rbp + 0x12]
setnp byte [rbp + 0x1234]
setnp byte [rbp + 0x12345678]
setnp byte [4 * rbp]
setnp byte [4 * rbp + 0x12]
setnp byte [4 * rbp + 0x1234]
setnp byte [4 * rbp + 0x12345678]
setnp byte [rbx + 4 * rbp]
setnp byte [rbx + 4 * rbp + 0x12]
setnp byte [rbx + 4 * rbp + 0x1234]
setnp byte [rbx + 4 * rbp + 0x12345678]
setnp byte [rsp]
setnp byte [rsp + 0x12]
setnp byte [rsp + 0x1234]
setnp byte [rsp + 0x12345678]
setnp byte [rsp + rax]
setnp byte [rsp + rbp]
setnp byte [rsp + 2*rbp]
setnp byte [rsp + 4*rbp]
setnp byte [rsp + 8*rbp]
setnp byte [rax]
setnp byte [rcx]
setnp byte [rdx]
setnp byte [rbx]
setnp byte [rsp]
setnp byte [rbp]
setnp byte [rsi]
setnp byte [rdi]
setnp byte [rax + 2*rax]
setnp byte [rcx + 2*rcx]
setnp byte [rdx + 2*rdx]
setnp byte [rbx + 2*rbx]
setnp byte [rbp + 2*rbp]
setnp byte [rsi + 2*rsi]
setnp byte [rdi + 2*rdi]

