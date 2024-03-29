use64
; ------------------------------------------------------------------------------
; opcode rd
; ------------------------------------------------------------------------------
smsw ax
smsw cx
smsw dx
smsw bx
smsw sp
smsw bp
smsw si
smsw di
smsw eax
smsw ecx
smsw edx
smsw ebx
smsw esp
smsw ebp
smsw esi
smsw edi
smsw rax
smsw rcx
smsw rdx
smsw rbx
smsw rsp
smsw rbp
smsw rsi
smsw rdi

; ------------------------------------------------------------------------------
; opcode m16
; ------------------------------------------------------------------------------
smsw word [rip + 0x13]
smsw word [rip + 0x1235]
smsw word [rip + 0x12345679]
smsw word [rbx]
smsw word [rcx + 0x14]
smsw word [rdx + 0x15]
smsw word [rbx + 0x1235]
smsw word [rbx + 0x12345679]
smsw word [rbx + rcx]
smsw word [rbx + 4 * rcx]
smsw word [rbx + rcx + 0x13]
smsw word [rbx + rcx + 0x1235]
smsw word [rbx + rcx + 0x12345679]
smsw word [rbx + 4 * rcx + 0x13]
smsw word [rbx + 4 * rcx + 0x1235]
smsw word [rbx + 8 * rcx + 0x12345679]
smsw word [4 * rcx]
smsw word [4 * rcx + 0x13]
smsw word [4 * rcx + 0x1235]
smsw word [4 * rcx + 0x12345679]
smsw word [rbp]
smsw word [rbp + 0x12]
smsw word [rbp + 0x1234]
smsw word [rbp + 0x12345678]
smsw word [4 * rbp]
smsw word [4 * rbp + 0x12]
smsw word [4 * rbp + 0x1234]
smsw word [4 * rbp + 0x12345678]
smsw word [rbx + 4 * rbp]
smsw word [rbx + 4 * rbp + 0x12]
smsw word [rbx + 4 * rbp + 0x1234]
smsw word [rbx + 4 * rbp + 0x12345678]
smsw word [rsp]
smsw word [rsp + 0x12]
smsw word [rsp + 0x1234]
smsw word [rsp + 0x12345678]
smsw word [rsp + rax]
smsw word [rsp + rbp]
smsw word [rsp + 2*rbp]
smsw word [rsp + 4*rbp]
smsw word [rsp + 8*rbp]
smsw word [rax]
smsw word [rcx]
smsw word [rdx]
smsw word [rbx]
smsw word [rsp]
smsw word [rbp]
smsw word [rsi]
smsw word [rdi]
smsw word [rax + 2*rax]
smsw word [rcx + 2*rcx]
smsw word [rdx + 2*rdx]
smsw word [rbx + 2*rbx]
smsw word [rbp + 2*rbp]
smsw word [rsi + 2*rsi]
smsw word [rdi + 2*rdi]

