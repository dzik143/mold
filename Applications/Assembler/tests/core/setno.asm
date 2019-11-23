use64
; ------------------------------------------------------------------------------
; opcode r8
; ------------------------------------------------------------------------------
setno al
setno cl
setno dl
setno bl
setno ah
setno ch
setno dh
setno bh

; ------------------------------------------------------------------------------
; opcode m8
; ------------------------------------------------------------------------------
setno byte [rip + 0x13]
setno byte [rip + 0x1235]
setno byte [rip + 0x12345679]
setno byte [rbx]
setno byte [rcx + 0x14]
setno byte [rdx + 0x15]
setno byte [rbx + 0x1235]
setno byte [rbx + 0x12345679]
setno byte [rbx + rcx]
setno byte [rbx + 4 * rcx]
setno byte [rbx + rcx + 0x13]
setno byte [rbx + rcx + 0x1235]
setno byte [rbx + rcx + 0x12345679]
setno byte [rbx + 4 * rcx + 0x13]
setno byte [rbx + 4 * rcx + 0x1235]
setno byte [rbx + 8 * rcx + 0x12345679]
setno byte [4 * rcx]
setno byte [4 * rcx + 0x13]
setno byte [4 * rcx + 0x1235]
setno byte [4 * rcx + 0x12345679]
setno byte [rbp]
setno byte [rbp + 0x12]
setno byte [rbp + 0x1234]
setno byte [rbp + 0x12345678]
setno byte [4 * rbp]
setno byte [4 * rbp + 0x12]
setno byte [4 * rbp + 0x1234]
setno byte [4 * rbp + 0x12345678]
setno byte [rbx + 4 * rbp]
setno byte [rbx + 4 * rbp + 0x12]
setno byte [rbx + 4 * rbp + 0x1234]
setno byte [rbx + 4 * rbp + 0x12345678]
setno byte [rsp]
setno byte [rsp + 0x12]
setno byte [rsp + 0x1234]
setno byte [rsp + 0x12345678]
setno byte [rsp + rax]
setno byte [rsp + rbp]
setno byte [rsp + 2*rbp]
setno byte [rsp + 4*rbp]
setno byte [rsp + 8*rbp]
setno byte [rax]
setno byte [rcx]
setno byte [rdx]
setno byte [rbx]
setno byte [rsp]
setno byte [rbp]
setno byte [rsi]
setno byte [rdi]
setno byte [rax + 2*rax]
setno byte [rcx + 2*rcx]
setno byte [rdx + 2*rdx]
setno byte [rbx + 2*rbx]
setno byte [rbp + 2*rbp]
setno byte [rsi + 2*rsi]
setno byte [rdi + 2*rdi]

