use64
; ------------------------------------------------------------------------------
; opcode rd
; ------------------------------------------------------------------------------
str ax
str cx
str dx
str bx
str sp
str bp
str si
str di
str eax
str ecx
str edx
str ebx
str esp
str ebp
str esi
str edi
str rax
str rcx
str rdx
str rbx
str rsp
str rbp
str rsi
str rdi

; ------------------------------------------------------------------------------
; opcode m16
; ------------------------------------------------------------------------------
str word [rip + 0x13]
str word [rip + 0x1235]
str word [rip + 0x12345679]
str word [rbx]
str word [rcx + 0x14]
str word [rdx + 0x15]
str word [rbx + 0x1235]
str word [rbx + 0x12345679]
str word [rbx + rcx]
str word [rbx + 4 * rcx]
str word [rbx + rcx + 0x13]
str word [rbx + rcx + 0x1235]
str word [rbx + rcx + 0x12345679]
str word [rbx + 4 * rcx + 0x13]
str word [rbx + 4 * rcx + 0x1235]
str word [rbx + 8 * rcx + 0x12345679]
str word [4 * rcx]
str word [4 * rcx + 0x13]
str word [4 * rcx + 0x1235]
str word [4 * rcx + 0x12345679]
str word [rbp]
str word [rbp + 0x12]
str word [rbp + 0x1234]
str word [rbp + 0x12345678]
str word [4 * rbp]
str word [4 * rbp + 0x12]
str word [4 * rbp + 0x1234]
str word [4 * rbp + 0x12345678]
str word [rbx + 4 * rbp]
str word [rbx + 4 * rbp + 0x12]
str word [rbx + 4 * rbp + 0x1234]
str word [rbx + 4 * rbp + 0x12345678]
str word [rsp]
str word [rsp + 0x12]
str word [rsp + 0x1234]
str word [rsp + 0x12345678]
str word [rsp + rax]
str word [rsp + rbp]
str word [rsp + 2*rbp]
str word [rsp + 4*rbp]
str word [rsp + 8*rbp]
str word [rax]
str word [rcx]
str word [rdx]
str word [rbx]
str word [rsp]
str word [rbp]
str word [rsi]
str word [rdi]
str word [rax + 2*rax]
str word [rcx + 2*rcx]
str word [rdx + 2*rdx]
str word [rbx + 2*rbx]
str word [rbp + 2*rbp]
str word [rsi + 2*rsi]
str word [rdi + 2*rdi]

