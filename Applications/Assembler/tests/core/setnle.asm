use64
; ------------------------------------------------------------------------------
; opcode r8
; ------------------------------------------------------------------------------
setnle al
setnle cl
setnle dl
setnle bl
setnle ah
setnle ch
setnle dh
setnle bh

; ------------------------------------------------------------------------------
; opcode m8
; ------------------------------------------------------------------------------
setnle byte [rip + 0x13]
setnle byte [rip + 0x1235]
setnle byte [rip + 0x12345679]
setnle byte [rbx]
setnle byte [rcx + 0x14]
setnle byte [rdx + 0x15]
setnle byte [rbx + 0x1235]
setnle byte [rbx + 0x12345679]
setnle byte [rbx + rcx]
setnle byte [rbx + 4 * rcx]
setnle byte [rbx + rcx + 0x13]
setnle byte [rbx + rcx + 0x1235]
setnle byte [rbx + rcx + 0x12345679]
setnle byte [rbx + 4 * rcx + 0x13]
setnle byte [rbx + 4 * rcx + 0x1235]
setnle byte [rbx + 8 * rcx + 0x12345679]
setnle byte [4 * rcx]
setnle byte [4 * rcx + 0x13]
setnle byte [4 * rcx + 0x1235]
setnle byte [4 * rcx + 0x12345679]
setnle byte [rbp]
setnle byte [rbp + 0x12]
setnle byte [rbp + 0x1234]
setnle byte [rbp + 0x12345678]
setnle byte [4 * rbp]
setnle byte [4 * rbp + 0x12]
setnle byte [4 * rbp + 0x1234]
setnle byte [4 * rbp + 0x12345678]
setnle byte [rbx + 4 * rbp]
setnle byte [rbx + 4 * rbp + 0x12]
setnle byte [rbx + 4 * rbp + 0x1234]
setnle byte [rbx + 4 * rbp + 0x12345678]
setnle byte [rsp]
setnle byte [rsp + 0x12]
setnle byte [rsp + 0x1234]
setnle byte [rsp + 0x12345678]
setnle byte [rsp + rax]
setnle byte [rsp + rbp]
setnle byte [rsp + 2*rbp]
setnle byte [rsp + 4*rbp]
setnle byte [rsp + 8*rbp]
setnle byte [rax]
setnle byte [rcx]
setnle byte [rdx]
setnle byte [rbx]
setnle byte [rsp]
setnle byte [rbp]
setnle byte [rsi]
setnle byte [rdi]
setnle byte [rax + 2*rax]
setnle byte [rcx + 2*rcx]
setnle byte [rdx + 2*rdx]
setnle byte [rbx + 2*rbx]
setnle byte [rbp + 2*rbp]
setnle byte [rsi + 2*rsi]
setnle byte [rdi + 2*rdi]

