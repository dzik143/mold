use64
; ------------------------------------------------------------------------------
; opcode r8
; ------------------------------------------------------------------------------
seta al
seta cl
seta dl
seta bl
seta ah
seta ch
seta dh
seta bh

; ------------------------------------------------------------------------------
; opcode m8
; ------------------------------------------------------------------------------
seta byte [rip + 0x13]
seta byte [rip + 0x1235]
seta byte [rip + 0x12345679]
seta byte [rbx]
seta byte [rcx + 0x14]
seta byte [rdx + 0x15]
seta byte [rbx + 0x1235]
seta byte [rbx + 0x12345679]
seta byte [rbx + rcx]
seta byte [rbx + 4 * rcx]
seta byte [rbx + rcx + 0x13]
seta byte [rbx + rcx + 0x1235]
seta byte [rbx + rcx + 0x12345679]
seta byte [rbx + 4 * rcx + 0x13]
seta byte [rbx + 4 * rcx + 0x1235]
seta byte [rbx + 8 * rcx + 0x12345679]
seta byte [4 * rcx]
seta byte [4 * rcx + 0x13]
seta byte [4 * rcx + 0x1235]
seta byte [4 * rcx + 0x12345679]
seta byte [rbp]
seta byte [rbp + 0x12]
seta byte [rbp + 0x1234]
seta byte [rbp + 0x12345678]
seta byte [4 * rbp]
seta byte [4 * rbp + 0x12]
seta byte [4 * rbp + 0x1234]
seta byte [4 * rbp + 0x12345678]
seta byte [rbx + 4 * rbp]
seta byte [rbx + 4 * rbp + 0x12]
seta byte [rbx + 4 * rbp + 0x1234]
seta byte [rbx + 4 * rbp + 0x12345678]
seta byte [rsp]
seta byte [rsp + 0x12]
seta byte [rsp + 0x1234]
seta byte [rsp + 0x12345678]
seta byte [rsp + rax]
seta byte [rsp + rbp]
seta byte [rsp + 2*rbp]
seta byte [rsp + 4*rbp]
seta byte [rsp + 8*rbp]
seta byte [rax]
seta byte [rcx]
seta byte [rdx]
seta byte [rbx]
seta byte [rsp]
seta byte [rbp]
seta byte [rsi]
seta byte [rdi]
seta byte [rax + 2*rax]
seta byte [rcx + 2*rcx]
seta byte [rdx + 2*rdx]
seta byte [rbx + 2*rbx]
seta byte [rbp + 2*rbp]
seta byte [rsi + 2*rsi]
seta byte [rdi + 2*rdi]

