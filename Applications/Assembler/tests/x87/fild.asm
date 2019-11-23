use64
; ------------------------------------------------------------------------------
; opcode md
; ------------------------------------------------------------------------------
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
fild word  [rip + 0x13]
fild dword [rip + 0x14]
fild qword [rip + 0x15]

fild word  [rip + 0x1235]
fild dword [rip + 0x1236]
fild qword [rip + 0x1237]

fild word  [rip + 0x12345679]
fild dword [rip + 0x1234567a]
fild qword [rip + 0x1234567b]

; [rip + base]
fild word  [rbx]
fild dword [rcx]
fild qword [rdx]

; [rip + base + disp8]
fild word  [rbx + 0x13]
fild dword [rcx + 0x14]
fild qword [rdx + 0x15]

; [rip + base + disp32]
fild word  [rbx + 0x1235]
fild dword [rcx + 0x1236]
fild qword [rdx + 0x1237]

fild word  [rbx + 0x12345679]
fild dword [rcx + 0x1234567a]
fild qword [rdx + 0x1234567b]

; [rip + base + index]
fild word  [rbx + rcx]
fild dword [rcx + rsi]
fild qword [rdx + rdi]

; [rip + base + scale * index]
fild word  [rbx + 4 * rcx]
fild dword [rcx + 8 * rsi]
fild qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
fild word  [rbx + rcx + 0x13]
fild dword [rcx + rsi + 0x14]
fild qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
fild word  [rbx + rcx + 0x1235]
fild dword [rcx + rsi + 0x1236]
fild qword [rdx + rdi + 0x1237]

fild word  [rbx + rcx + 0x12345679]
fild dword [rcx + rsi + 0x1234567a]
fild qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
fild word  [rbx + 4 * rcx + 0x13]
fild dword [rcx + 8 * rsi + 0x14]
fild qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
fild word  [rbx + 4 * rcx + 0x1235]
fild dword [rcx + 8 * rsi + 0x1236]
fild qword [rdx + 8 * rdi + 0x1237]

fild word  [rbx + 4 * rcx + 0x12345679]
fild dword [rcx + 8 * rsi + 0x1234567a]
fild qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
fild word  [4 * rcx]
fild dword [8 * rsi]
fild qword [8 * rdi]

; [scale * index + disp8]
fild word  [4 * rcx + 0x13]
fild dword [8 * rsi + 0x14]
fild qword [8 * rdi + 0x15]

; [scale * index + disp32]
fild word  [4 * rcx + 0x1235]
fild dword [8 * rsi + 0x1236]
fild qword [8 * rdi + 0x1237]

fild word  [4 * rcx + 0x12345679]
fild dword [8 * rsi + 0x1234567a]
fild qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
fild word [rbp]
fild word [rbp + 0x12]
fild word [rbp + 0x1234]
fild word [rbp + 0x12345678]

fild dword [4 * rbp]
fild dword [4 * rbp + 0x12]
fild dword [4 * rbp + 0x1234]
fild dword [4 * rbp + 0x12345678]

fild qword [rbx + 4 * rbp]
fild qword [rbx + 4 * rbp + 0x12]
fild qword [rbx + 4 * rbp + 0x1234]
fild qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fild word [rsp]
fild word [rsp + 0x12]
fild word [rsp + 0x1234]
fild word [rsp + 0x12345678]

fild dword [rsp + rax]
fild dword [rsp + rbp]
fild dword [rsp + 2*rbp]
fild dword [rsp + 4*rbp]
fild dword [rsp + 8*rbp]

; use each register as indirect.
fild word [rax]
fild word [rcx]
fild word [rdx]
fild word [rbx]
fild word [rsp]
fild word [rbp]
fild word [rsi]
fild word [rdi]

; use each register as indirect.
; rsp is forbidden as index
fild dword [rax + 2*rax]
fild dword [rcx + 2*rcx]
fild dword [rdx + 2*rdx]
fild dword [rbx + 2*rbx]
fild dword [rbp + 2*rbp]
fild dword [rsi + 2*rsi]
fild dword [rdi + 2*rdi]

