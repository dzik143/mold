use64
; ------------------------------------------------------------------------------
; opcode r8
; ------------------------------------------------------------------------------
setnl al
setnl cl
setnl dl
setnl bl
setnl ah
setnl ch
setnl dh
setnl bh

; ------------------------------------------------------------------------------
; opcode m8
; ------------------------------------------------------------------------------
setnl byte [rip + 0x13]
setnl byte [rip + 0x1235]
setnl byte [rip + 0x12345679]
setnl byte [rbx]
setnl byte [rcx + 0x14]
setnl byte [rdx + 0x15]
setnl byte [rbx + 0x1235]
setnl byte [rbx + 0x12345679]
setnl byte [rbx + rcx]
setnl byte [rbx + 4 * rcx]
setnl byte [rbx + rcx + 0x13]
setnl byte [rbx + rcx + 0x1235]
setnl byte [rbx + rcx + 0x12345679]
setnl byte [rbx + 4 * rcx + 0x13]
setnl byte [rbx + 4 * rcx + 0x1235]
setnl byte [rbx + 8 * rcx + 0x12345679]
setnl byte [4 * rcx]
setnl byte [4 * rcx + 0x13]
setnl byte [4 * rcx + 0x1235]
setnl byte [4 * rcx + 0x12345679]
setnl byte [rbp]
setnl byte [rbp + 0x12]
setnl byte [rbp + 0x1234]
setnl byte [rbp + 0x12345678]
setnl byte [4 * rbp]
setnl byte [4 * rbp + 0x12]
setnl byte [4 * rbp + 0x1234]
setnl byte [4 * rbp + 0x12345678]
setnl byte [rbx + 4 * rbp]
setnl byte [rbx + 4 * rbp + 0x12]
setnl byte [rbx + 4 * rbp + 0x1234]
setnl byte [rbx + 4 * rbp + 0x12345678]
setnl byte [rsp]
setnl byte [rsp + 0x12]
setnl byte [rsp + 0x1234]
setnl byte [rsp + 0x12345678]
setnl byte [rsp + rax]
setnl byte [rsp + rbp]
setnl byte [rsp + 2*rbp]
setnl byte [rsp + 4*rbp]
setnl byte [rsp + 8*rbp]
setnl byte [rax]
setnl byte [rcx]
setnl byte [rdx]
setnl byte [rbx]
setnl byte [rsp]
setnl byte [rbp]
setnl byte [rsi]
setnl byte [rdi]
setnl byte [rax + 2*rax]
setnl byte [rcx + 2*rcx]
setnl byte [rdx + 2*rdx]
setnl byte [rbx + 2*rbx]
setnl byte [rbp + 2*rbp]
setnl byte [rsi + 2*rsi]
setnl byte [rdi + 2*rdi]

