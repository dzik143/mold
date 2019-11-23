use64
; ------------------------------------------------------------------------------
; opcode r16
; ------------------------------------------------------------------------------
verw ax
verw cx
verw dx
verw bx
verw sp
verw bp
verw si
verw di

; ------------------------------------------------------------------------------
; opcode m16
; ------------------------------------------------------------------------------
verw word [rip + 0x13]
verw word [rip + 0x1235]
verw word [rip + 0x12345679]
verw word [rbx]
verw word [rcx + 0x14]
verw word [rdx + 0x15]
verw word [rbx + 0x1235]
verw word [rbx + 0x12345679]
verw word [rbx + rcx]
verw word [rbx + 4 * rcx]
verw word [rbx + rcx + 0x13]
verw word [rbx + rcx + 0x1235]
verw word [rbx + rcx + 0x12345679]
verw word [rbx + 4 * rcx + 0x13]
verw word [rbx + 4 * rcx + 0x1235]
verw word [rbx + 8 * rcx + 0x12345679]
verw word [4 * rcx]
verw word [4 * rcx + 0x13]
verw word [4 * rcx + 0x1235]
verw word [4 * rcx + 0x12345679]
verw word [rbp]
verw word [rbp + 0x12]
verw word [rbp + 0x1234]
verw word [rbp + 0x12345678]
verw word [4 * rbp]
verw word [4 * rbp + 0x12]
verw word [4 * rbp + 0x1234]
verw word [4 * rbp + 0x12345678]
verw word [rbx + 4 * rbp]
verw word [rbx + 4 * rbp + 0x12]
verw word [rbx + 4 * rbp + 0x1234]
verw word [rbx + 4 * rbp + 0x12345678]
verw word [rsp]
verw word [rsp + 0x12]
verw word [rsp + 0x1234]
verw word [rsp + 0x12345678]
verw word [rsp + rax]
verw word [rsp + rbp]
verw word [rsp + 2*rbp]
verw word [rsp + 4*rbp]
verw word [rsp + 8*rbp]
verw word [rax]
verw word [rcx]
verw word [rdx]
verw word [rbx]
verw word [rsp]
verw word [rbp]
verw word [rsi]
verw word [rdi]
verw word [rax + 2*rax]
verw word [rcx + 2*rcx]
verw word [rdx + 2*rdx]
verw word [rbx + 2*rbx]
verw word [rbp + 2*rbp]
verw word [rsi + 2*rsi]
verw word [rdi + 2*rdi]

