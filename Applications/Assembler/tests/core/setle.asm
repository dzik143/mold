use64
; ------------------------------------------------------------------------------
; opcode r8
; ------------------------------------------------------------------------------
setle al
setle cl
setle dl
setle bl
setle ah
setle ch
setle dh
setle bh

; ------------------------------------------------------------------------------
; opcode m8
; ------------------------------------------------------------------------------
setle byte [rip + 0x13]
setle byte [rip + 0x1235]
setle byte [rip + 0x12345679]
setle byte [rbx]
setle byte [rcx + 0x14]
setle byte [rdx + 0x15]
setle byte [rbx + 0x1235]
setle byte [rbx + 0x12345679]
setle byte [rbx + rcx]
setle byte [rbx + 4 * rcx]
setle byte [rbx + rcx + 0x13]
setle byte [rbx + rcx + 0x1235]
setle byte [rbx + rcx + 0x12345679]
setle byte [rbx + 4 * rcx + 0x13]
setle byte [rbx + 4 * rcx + 0x1235]
setle byte [rbx + 8 * rcx + 0x12345679]
setle byte [4 * rcx]
setle byte [4 * rcx + 0x13]
setle byte [4 * rcx + 0x1235]
setle byte [4 * rcx + 0x12345679]
setle byte [rbp]
setle byte [rbp + 0x12]
setle byte [rbp + 0x1234]
setle byte [rbp + 0x12345678]
setle byte [4 * rbp]
setle byte [4 * rbp + 0x12]
setle byte [4 * rbp + 0x1234]
setle byte [4 * rbp + 0x12345678]
setle byte [rbx + 4 * rbp]
setle byte [rbx + 4 * rbp + 0x12]
setle byte [rbx + 4 * rbp + 0x1234]
setle byte [rbx + 4 * rbp + 0x12345678]
setle byte [rsp]
setle byte [rsp + 0x12]
setle byte [rsp + 0x1234]
setle byte [rsp + 0x12345678]
setle byte [rsp + rax]
setle byte [rsp + rbp]
setle byte [rsp + 2*rbp]
setle byte [rsp + 4*rbp]
setle byte [rsp + 8*rbp]
setle byte [rax]
setle byte [rcx]
setle byte [rdx]
setle byte [rbx]
setle byte [rsp]
setle byte [rbp]
setle byte [rsi]
setle byte [rdi]
setle byte [rax + 2*rax]
setle byte [rcx + 2*rcx]
setle byte [rdx + 2*rdx]
setle byte [rbx + 2*rbx]
setle byte [rbp + 2*rbp]
setle byte [rsi + 2*rsi]
setle byte [rdi + 2*rdi]

