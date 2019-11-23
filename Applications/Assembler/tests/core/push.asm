use64
; ------------------------------------------------------------------------------
; opcode r16
; ------------------------------------------------------------------------------
push ax
push cx
push dx
push bx
push sp
push bp
push si
push di

; ------------------------------------------------------------------------------
; opcode m16
; ------------------------------------------------------------------------------
push word [rip + 0x13]
push word [rip + 0x1235]
push word [rip + 0x12345679]
push word [rbx]
push word [rcx + 0x14]
push word [rdx + 0x15]
push word [rbx + 0x1235]
push word [rbx + 0x12345679]
push word [rbx + rcx]
push word [rbx + 4 * rcx]
push word [rbx + rcx + 0x13]
push word [rbx + rcx + 0x1235]
push word [rbx + rcx + 0x12345679]
push word [rbx + 4 * rcx + 0x13]
push word [rbx + 4 * rcx + 0x1235]
push word [rbx + 8 * rcx + 0x12345679]
push word [4 * rcx]
push word [4 * rcx + 0x13]
push word [4 * rcx + 0x1235]
push word [4 * rcx + 0x12345679]
push word [rbp]
push word [rbp + 0x12]
push word [rbp + 0x1234]
push word [rbp + 0x12345678]
push word [4 * rbp]
push word [4 * rbp + 0x12]
push word [4 * rbp + 0x1234]
push word [4 * rbp + 0x12345678]
push word [rbx + 4 * rbp]
push word [rbx + 4 * rbp + 0x12]
push word [rbx + 4 * rbp + 0x1234]
push word [rbx + 4 * rbp + 0x12345678]
push word [rsp]
push word [rsp + 0x12]
push word [rsp + 0x1234]
push word [rsp + 0x12345678]
push word [rsp + rax]
push word [rsp + rbp]
push word [rsp + 2*rbp]
push word [rsp + 4*rbp]
push word [rsp + 8*rbp]
push word [rax]
push word [rcx]
push word [rdx]
push word [rbx]
push word [rsp]
push word [rbp]
push word [rsi]
push word [rdi]
push word [rax + 2*rax]
push word [rcx + 2*rcx]
push word [rdx + 2*rdx]
push word [rbx + 2*rbx]
push word [rbp + 2*rbp]
push word [rsi + 2*rsi]
push word [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode r64
; ------------------------------------------------------------------------------
push rax
push rcx
push rdx
push rbx
push rsp
push rbp
push rsi
push rdi

; ------------------------------------------------------------------------------
; opcode m64
; ------------------------------------------------------------------------------
push qword [rip + 0x13]
push qword [rip + 0x1235]
push qword [rip + 0x12345679]
push qword [rbx]
push qword [rcx + 0x14]
push qword [rdx + 0x15]
push qword [rbx + 0x1235]
push qword [rbx + 0x12345679]
push qword [rbx + rcx]
push qword [rbx + 4 * rcx]
push qword [rbx + rcx + 0x13]
push qword [rbx + rcx + 0x1235]
push qword [rbx + rcx + 0x12345679]
push qword [rbx + 4 * rcx + 0x13]
push qword [rbx + 4 * rcx + 0x1235]
push qword [rbx + 8 * rcx + 0x12345679]
push qword [4 * rcx]
push qword [4 * rcx + 0x13]
push qword [4 * rcx + 0x1235]
push qword [4 * rcx + 0x12345679]
push qword [rbp]
push qword [rbp + 0x12]
push qword [rbp + 0x1234]
push qword [rbp + 0x12345678]
push qword [4 * rbp]
push qword [4 * rbp + 0x12]
push qword [4 * rbp + 0x1234]
push qword [4 * rbp + 0x12345678]
push qword [rbx + 4 * rbp]
push qword [rbx + 4 * rbp + 0x12]
push qword [rbx + 4 * rbp + 0x1234]
push qword [rbx + 4 * rbp + 0x12345678]
push qword [rsp]
push qword [rsp + 0x12]
push qword [rsp + 0x1234]
push qword [rsp + 0x12345678]
push qword [rsp + rax]
push qword [rsp + rbp]
push qword [rsp + 2*rbp]
push qword [rsp + 4*rbp]
push qword [rsp + 8*rbp]
push qword [rax]
push qword [rcx]
push qword [rdx]
push qword [rbx]
push qword [rsp]
push qword [rbp]
push qword [rsi]
push qword [rdi]
push qword [rax + 2*rax]
push qword [rcx + 2*rcx]
push qword [rdx + 2*rdx]
push qword [rbx + 2*rbx]
push qword [rbp + 2*rbp]
push qword [rsi + 2*rsi]
push qword [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode imm8
; ------------------------------------------------------------------------------
push 0
push 1
push 0x12
push 127
push 255
push 0xff

; ------------------------------------------------------------------------------
; opcode imm16
; ------------------------------------------------------------------------------
push 0x1234
push 65535
push 32767
push 0xffff

