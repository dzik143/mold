use64
; ------------------------------------------------------------------------------
; opcode r8
; ------------------------------------------------------------------------------
setnb al
setnb cl
setnb dl
setnb bl
setnb ah
setnb ch
setnb dh
setnb bh

; ------------------------------------------------------------------------------
; opcode m8
; ------------------------------------------------------------------------------
setnb byte [rip + 0x13]
setnb byte [rip + 0x1235]
setnb byte [rip + 0x12345679]
setnb byte [rbx]
setnb byte [rcx + 0x14]
setnb byte [rdx + 0x15]
setnb byte [rbx + 0x1235]
setnb byte [rbx + 0x12345679]
setnb byte [rbx + rcx]
setnb byte [rbx + 4 * rcx]
setnb byte [rbx + rcx + 0x13]
setnb byte [rbx + rcx + 0x1235]
setnb byte [rbx + rcx + 0x12345679]
setnb byte [rbx + 4 * rcx + 0x13]
setnb byte [rbx + 4 * rcx + 0x1235]
setnb byte [rbx + 8 * rcx + 0x12345679]
setnb byte [4 * rcx]
setnb byte [4 * rcx + 0x13]
setnb byte [4 * rcx + 0x1235]
setnb byte [4 * rcx + 0x12345679]
setnb byte [rbp]
setnb byte [rbp + 0x12]
setnb byte [rbp + 0x1234]
setnb byte [rbp + 0x12345678]
setnb byte [4 * rbp]
setnb byte [4 * rbp + 0x12]
setnb byte [4 * rbp + 0x1234]
setnb byte [4 * rbp + 0x12345678]
setnb byte [rbx + 4 * rbp]
setnb byte [rbx + 4 * rbp + 0x12]
setnb byte [rbx + 4 * rbp + 0x1234]
setnb byte [rbx + 4 * rbp + 0x12345678]
setnb byte [rsp]
setnb byte [rsp + 0x12]
setnb byte [rsp + 0x1234]
setnb byte [rsp + 0x12345678]
setnb byte [rsp + rax]
setnb byte [rsp + rbp]
setnb byte [rsp + 2*rbp]
setnb byte [rsp + 4*rbp]
setnb byte [rsp + 8*rbp]
setnb byte [rax]
setnb byte [rcx]
setnb byte [rdx]
setnb byte [rbx]
setnb byte [rsp]
setnb byte [rbp]
setnb byte [rsi]
setnb byte [rdi]
setnb byte [rax + 2*rax]
setnb byte [rcx + 2*rcx]
setnb byte [rdx + 2*rdx]
setnb byte [rbx + 2*rbx]
setnb byte [rbp + 2*rbp]
setnb byte [rsi + 2*rsi]
setnb byte [rdi + 2*rdi]

