use64
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
nop word  [rip + 0x13]
nop dword [rip + 0x14]
nop qword [rip + 0x15]

nop word  [rip + 0x1235]
nop dword [rip + 0x1236]
nop qword [rip + 0x1237]

nop word  [rip + 0x12345679]
nop dword [rip + 0x1234567a]
nop qword [rip + 0x1234567b]

; [rip + base]
nop word  [rbx]
nop dword [rcx]
nop qword [rdx]

; [rip + base + disp8]
nop word  [rbx + 0x13]
nop dword [rcx + 0x14]
nop qword [rdx + 0x15]

; [rip + base + disp32]
nop word  [rbx + 0x1235]
nop dword [rcx + 0x1236]
nop qword [rdx + 0x1237]

nop word  [rbx + 0x12345679]
nop dword [rcx + 0x1234567a]
nop qword [rdx + 0x1234567b]

; [rip + base + index]
nop word  [rbx + rcx]
nop dword [rcx + rsi]
nop qword [rdx + rdi]

; [rip + base + scale * index]
nop word  [rbx + 4 * rcx]
nop dword [rcx + 8 * rsi]
nop qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
nop word  [rbx + rcx + 0x13]
nop dword [rcx + rsi + 0x14]
nop qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
nop word  [rbx + rcx + 0x1235]
nop dword [rcx + rsi + 0x1236]
nop qword [rdx + rdi + 0x1237]

nop word  [rbx + rcx + 0x12345679]
nop dword [rcx + rsi + 0x1234567a]
nop qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
nop word  [rbx + 4 * rcx + 0x13]
nop dword [rcx + 8 * rsi + 0x14]
nop qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
nop word  [rbx + 4 * rcx + 0x1235]
nop dword [rcx + 8 * rsi + 0x1236]
nop qword [rdx + 8 * rdi + 0x1237]

nop word  [rbx + 4 * rcx + 0x12345679]
nop dword [rcx + 8 * rsi + 0x1234567a]
nop qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
nop word  [4 * rcx]
nop dword [8 * rsi]
nop qword [8 * rdi]

; [scale * index + disp8]
nop word  [4 * rcx + 0x13]
nop dword [8 * rsi + 0x14]
nop qword [8 * rdi + 0x15]

; [scale * index + disp32]
nop word  [4 * rcx + 0x1235]
nop dword [8 * rsi + 0x1236]
nop qword [8 * rdi + 0x1237]

nop word  [4 * rcx + 0x12345679]
nop dword [8 * rsi + 0x1234567a]
nop qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
nop word [rbp]
nop word [rbp + 0x12]
nop word [rbp + 0x1234]
nop word [rbp + 0x12345678]

nop dword [4 * rbp]
nop dword [4 * rbp + 0x12]
nop dword [4 * rbp + 0x1234]
nop dword [4 * rbp + 0x12345678]

nop qword [rbx + 4 * rbp]
nop qword [rbx + 4 * rbp + 0x12]
nop qword [rbx + 4 * rbp + 0x1234]
nop qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
nop word [rsp]
nop word [rsp + 0x12]
nop word [rsp + 0x1234]
nop word [rsp + 0x12345678]

nop dword [rsp + rax]
nop dword [rsp + rbp]
nop dword [rsp + 2*rbp]
nop dword [rsp + 4*rbp]
nop dword [rsp + 8*rbp]

; use each register as indirect.
nop word [rax]
nop word [rcx]
nop word [rdx]
nop word [rbx]
nop word [rsp]
nop word [rbp]
nop word [rsi]
nop word [rdi]

; use each register as indirect.
; rsp is forbidden as index
nop dword [rax + 2*rax]
nop dword [rcx + 2*rcx]
nop dword [rdx + 2*rdx]
nop dword [rbx + 2*rbx]
nop dword [rbp + 2*rbp]
nop dword [rsi + 2*rsi]
nop dword [rdi + 2*rdi]
