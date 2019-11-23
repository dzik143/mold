use64
; ------------------------------------------------------------------------------
; opcode r8
; ------------------------------------------------------------------------------
setna al
setna cl
setna dl
setna bl
setna ah
setna ch
setna dh
setna bh

; ------------------------------------------------------------------------------
; opcode m8
; ------------------------------------------------------------------------------
setna byte [rip + 0x13]
setna byte [rip + 0x1235]
setna byte [rip + 0x12345679]
setna byte [rbx]
setna byte [rcx + 0x14]
setna byte [rdx + 0x15]
setna byte [rbx + 0x1235]
setna byte [rbx + 0x12345679]
setna byte [rbx + rcx]
setna byte [rbx + 4 * rcx]
setna byte [rbx + rcx + 0x13]
setna byte [rbx + rcx + 0x1235]
setna byte [rbx + rcx + 0x12345679]
setna byte [rbx + 4 * rcx + 0x13]
setna byte [rbx + 4 * rcx + 0x1235]
setna byte [rbx + 8 * rcx + 0x12345679]
setna byte [4 * rcx]
setna byte [4 * rcx + 0x13]
setna byte [4 * rcx + 0x1235]
setna byte [4 * rcx + 0x12345679]
setna byte [rbp]
setna byte [rbp + 0x12]
setna byte [rbp + 0x1234]
setna byte [rbp + 0x12345678]
setna byte [4 * rbp]
setna byte [4 * rbp + 0x12]
setna byte [4 * rbp + 0x1234]
setna byte [4 * rbp + 0x12345678]
setna byte [rbx + 4 * rbp]
setna byte [rbx + 4 * rbp + 0x12]
setna byte [rbx + 4 * rbp + 0x1234]
setna byte [rbx + 4 * rbp + 0x12345678]
setna byte [rsp]
setna byte [rsp + 0x12]
setna byte [rsp + 0x1234]
setna byte [rsp + 0x12345678]
setna byte [rsp + rax]
setna byte [rsp + rbp]
setna byte [rsp + 2*rbp]
setna byte [rsp + 4*rbp]
setna byte [rsp + 8*rbp]
setna byte [rax]
setna byte [rcx]
setna byte [rdx]
setna byte [rbx]
setna byte [rsp]
setna byte [rbp]
setna byte [rsi]
setna byte [rdi]
setna byte [rax + 2*rax]
setna byte [rcx + 2*rcx]
setna byte [rdx + 2*rdx]
setna byte [rbx + 2*rbx]
setna byte [rbp + 2*rbp]
setna byte [rsi + 2*rsi]
setna byte [rdi + 2*rdi]

