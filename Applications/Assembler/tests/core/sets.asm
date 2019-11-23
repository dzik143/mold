use64
; ------------------------------------------------------------------------------
; opcode r8
; ------------------------------------------------------------------------------
sets al
sets cl
sets dl
sets bl
sets ah
sets ch
sets dh
sets bh

; ------------------------------------------------------------------------------
; opcode m8
; ------------------------------------------------------------------------------
sets byte [rip + 0x13]
sets byte [rip + 0x1235]
sets byte [rip + 0x12345679]
sets byte [rbx]
sets byte [rcx + 0x14]
sets byte [rdx + 0x15]
sets byte [rbx + 0x1235]
sets byte [rbx + 0x12345679]
sets byte [rbx + rcx]
sets byte [rbx + 4 * rcx]
sets byte [rbx + rcx + 0x13]
sets byte [rbx + rcx + 0x1235]
sets byte [rbx + rcx + 0x12345679]
sets byte [rbx + 4 * rcx + 0x13]
sets byte [rbx + 4 * rcx + 0x1235]
sets byte [rbx + 8 * rcx + 0x12345679]
sets byte [4 * rcx]
sets byte [4 * rcx + 0x13]
sets byte [4 * rcx + 0x1235]
sets byte [4 * rcx + 0x12345679]
sets byte [rbp]
sets byte [rbp + 0x12]
sets byte [rbp + 0x1234]
sets byte [rbp + 0x12345678]
sets byte [4 * rbp]
sets byte [4 * rbp + 0x12]
sets byte [4 * rbp + 0x1234]
sets byte [4 * rbp + 0x12345678]
sets byte [rbx + 4 * rbp]
sets byte [rbx + 4 * rbp + 0x12]
sets byte [rbx + 4 * rbp + 0x1234]
sets byte [rbx + 4 * rbp + 0x12345678]
sets byte [rsp]
sets byte [rsp + 0x12]
sets byte [rsp + 0x1234]
sets byte [rsp + 0x12345678]
sets byte [rsp + rax]
sets byte [rsp + rbp]
sets byte [rsp + 2*rbp]
sets byte [rsp + 4*rbp]
sets byte [rsp + 8*rbp]
sets byte [rax]
sets byte [rcx]
sets byte [rdx]
sets byte [rbx]
sets byte [rsp]
sets byte [rbp]
sets byte [rsi]
sets byte [rdi]
sets byte [rax + 2*rax]
sets byte [rcx + 2*rcx]
sets byte [rdx + 2*rdx]
sets byte [rbx + 2*rbx]
sets byte [rbp + 2*rbp]
sets byte [rsi + 2*rsi]
sets byte [rdi + 2*rdi]

