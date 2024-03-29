use64
; ------------------------------------------------------------------------------
; opcode r8
; ------------------------------------------------------------------------------
seto al
seto cl
seto dl
seto bl
seto ah
seto ch
seto dh
seto bh

; ------------------------------------------------------------------------------
; opcode m8
; ------------------------------------------------------------------------------
seto byte [rip + 0x13]
seto byte [rip + 0x1235]
seto byte [rip + 0x12345679]
seto byte [rbx]
seto byte [rcx + 0x14]
seto byte [rdx + 0x15]
seto byte [rbx + 0x1235]
seto byte [rbx + 0x12345679]
seto byte [rbx + rcx]
seto byte [rbx + 4 * rcx]
seto byte [rbx + rcx + 0x13]
seto byte [rbx + rcx + 0x1235]
seto byte [rbx + rcx + 0x12345679]
seto byte [rbx + 4 * rcx + 0x13]
seto byte [rbx + 4 * rcx + 0x1235]
seto byte [rbx + 8 * rcx + 0x12345679]
seto byte [4 * rcx]
seto byte [4 * rcx + 0x13]
seto byte [4 * rcx + 0x1235]
seto byte [4 * rcx + 0x12345679]
seto byte [rbp]
seto byte [rbp + 0x12]
seto byte [rbp + 0x1234]
seto byte [rbp + 0x12345678]
seto byte [4 * rbp]
seto byte [4 * rbp + 0x12]
seto byte [4 * rbp + 0x1234]
seto byte [4 * rbp + 0x12345678]
seto byte [rbx + 4 * rbp]
seto byte [rbx + 4 * rbp + 0x12]
seto byte [rbx + 4 * rbp + 0x1234]
seto byte [rbx + 4 * rbp + 0x12345678]
seto byte [rsp]
seto byte [rsp + 0x12]
seto byte [rsp + 0x1234]
seto byte [rsp + 0x12345678]
seto byte [rsp + rax]
seto byte [rsp + rbp]
seto byte [rsp + 2*rbp]
seto byte [rsp + 4*rbp]
seto byte [rsp + 8*rbp]
seto byte [rax]
seto byte [rcx]
seto byte [rdx]
seto byte [rbx]
seto byte [rsp]
seto byte [rbp]
seto byte [rsi]
seto byte [rdi]
seto byte [rax + 2*rax]
seto byte [rcx + 2*rcx]
seto byte [rdx + 2*rdx]
seto byte [rbx + 2*rbx]
seto byte [rbp + 2*rbp]
seto byte [rsi + 2*rsi]
seto byte [rdi + 2*rdi]

