use64
; ------------------------------------------------------------------------------
; opcode r16
; ------------------------------------------------------------------------------
lmsw ax
lmsw cx
lmsw dx
lmsw bx
lmsw sp
lmsw bp
lmsw si
lmsw di

; ------------------------------------------------------------------------------
; opcode m16
; ------------------------------------------------------------------------------
lmsw word [rip + 0x13]
lmsw word [rip + 0x1235]
lmsw word [rip + 0x12345679]
lmsw word [rbx]
lmsw word [rcx + 0x14]
lmsw word [rdx + 0x15]
lmsw word [rbx + 0x1235]
lmsw word [rbx + 0x12345679]
lmsw word [rbx + rcx]
lmsw word [rbx + 4 * rcx]
lmsw word [rbx + rcx + 0x13]
lmsw word [rbx + rcx + 0x1235]
lmsw word [rbx + rcx + 0x12345679]
lmsw word [rbx + 4 * rcx + 0x13]
lmsw word [rbx + 4 * rcx + 0x1235]
lmsw word [rbx + 8 * rcx + 0x12345679]
lmsw word [4 * rcx]
lmsw word [4 * rcx + 0x13]
lmsw word [4 * rcx + 0x1235]
lmsw word [4 * rcx + 0x12345679]
lmsw word [rbp]
lmsw word [rbp + 0x12]
lmsw word [rbp + 0x1234]
lmsw word [rbp + 0x12345678]
lmsw word [4 * rbp]
lmsw word [4 * rbp + 0x12]
lmsw word [4 * rbp + 0x1234]
lmsw word [4 * rbp + 0x12345678]
lmsw word [rbx + 4 * rbp]
lmsw word [rbx + 4 * rbp + 0x12]
lmsw word [rbx + 4 * rbp + 0x1234]
lmsw word [rbx + 4 * rbp + 0x12345678]
lmsw word [rsp]
lmsw word [rsp + 0x12]
lmsw word [rsp + 0x1234]
lmsw word [rsp + 0x12345678]
lmsw word [rsp + rax]
lmsw word [rsp + rbp]
lmsw word [rsp + 2*rbp]
lmsw word [rsp + 4*rbp]
lmsw word [rsp + 8*rbp]
lmsw word [rax]
lmsw word [rcx]
lmsw word [rdx]
lmsw word [rbx]
lmsw word [rsp]
lmsw word [rbp]
lmsw word [rsi]
lmsw word [rdi]
lmsw word [rax + 2*rax]
lmsw word [rcx + 2*rcx]
lmsw word [rdx + 2*rdx]
lmsw word [rbx + 2*rbx]
lmsw word [rbp + 2*rbp]
lmsw word [rsi + 2*rsi]
lmsw word [rdi + 2*rdi]

