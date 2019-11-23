use64
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
cmovge cx,  word  [rip + 0x13]
cmovge edx, dword [rip + 0x14]
cmovge rsi, qword [rip + 0x15]

cmovge cx,  word  [rip + 0x1235]
cmovge edx, dword [rip + 0x1236]
cmovge rsi, qword [rip + 0x1237]

cmovge cx,  word  [rip + 0x12345679]
cmovge edx, dword [rip + 0x1234567a]
cmovge rsi, qword [rip + 0x1234567b]

; [rip + base]
cmovge cx,  word  [rbx]
cmovge edx, dword [rcx]
cmovge rsi, qword [rdx]

; [rip + base + disp8]
cmovge cx,  word  [rbx + 0x13]
cmovge edx, dword [rcx + 0x14]
cmovge rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmovge cx,  word  [rbx + 0x1235]
cmovge edx, dword [rcx + 0x1236]
cmovge rsi, qword [rdx + 0x1237]

cmovge cx,  word  [rbx + 0x12345679]
cmovge edx, dword [rcx + 0x1234567a]
cmovge rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmovge cx,  word  [rbx + rcx]
cmovge edx, dword [rcx + rsi]
cmovge rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmovge cx,  word  [rbx + 4 * rcx]
cmovge edx, dword [rcx + 8 * rsi]
cmovge rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmovge cx,  word  [rbx + rcx + 0x13]
cmovge edx, dword [rcx + rsi + 0x14]
cmovge rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmovge cx,  word  [rbx + rcx + 0x1235]
cmovge edx, dword [rcx + rsi + 0x1236]
cmovge rsi, qword [rdx + rdi + 0x1237]

cmovge cx,  word  [rbx + rcx + 0x12345679]
cmovge edx, dword [rcx + rsi + 0x1234567a]
cmovge rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmovge cx,  word  [rbx + 4 * rcx + 0x13]
cmovge edx, dword [rcx + 8 * rsi + 0x14]
cmovge rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmovge cx,  word  [rbx + 4 * rcx + 0x1235]
cmovge edx, dword [rcx + 8 * rsi + 0x1236]
cmovge rsi, qword [rdx + 8 * rdi + 0x1237]

cmovge cx,  word  [rbx + 4 * rcx + 0x12345679]
cmovge edx, dword [rcx + 8 * rsi + 0x1234567a]
cmovge rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmovge cx,  word  [4 * rcx]
cmovge edx, dword [8 * rsi]
cmovge rsi, qword [8 * rdi]

; [scale * index + disp8]
cmovge cx,  word  [4 * rcx + 0x13]
cmovge edx, dword [8 * rsi + 0x14]
cmovge rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmovge cx,  word  [4 * rcx + 0x1235]
cmovge edx, dword [8 * rsi + 0x1236]
cmovge rsi, qword [8 * rdi + 0x1237]

cmovge cx,  word  [4 * rcx + 0x12345679]
cmovge edx, dword [8 * rsi + 0x1234567a]
cmovge rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmovge ax, word [rbp]
cmovge ax, word [rbp + 0x12]
cmovge ax, word [rbp + 0x1234]
cmovge ax, word [rbp + 0x12345678]

cmovge eax, dword [4 * rbp]
cmovge eax, dword [4 * rbp + 0x12]
cmovge eax, dword [4 * rbp + 0x1234]
cmovge eax, dword [4 * rbp + 0x12345678]

cmovge rax, qword [rbx + 4 * rbp]
cmovge rax, qword [rbx + 4 * rbp + 0x12]
cmovge rax, qword [rbx + 4 * rbp + 0x1234]
cmovge rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmovge ax, word [rsp]
cmovge ax, word [rsp + 0x12]
cmovge ax, word [rsp + 0x1234]
cmovge ax, word [rsp + 0x12345678]

cmovge eax, dword [rsp + rax]
cmovge eax, dword [rsp + rbp]
cmovge eax, dword [rsp + 2*rbp]
cmovge eax, dword [rsp + 4*rbp]
cmovge eax, dword [rsp + 8*rbp]

; use each register as indirect.
cmovge ax, word [rax]
cmovge ax, word [rcx]
cmovge ax, word [rdx]
cmovge ax, word [rbx]
cmovge ax, word [rsp]
cmovge ax, word [rbp]
cmovge ax, word [rsi]
cmovge ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmovge eax, dword [rax + 2*rax]
cmovge eax, dword [rcx + 2*rcx]
cmovge eax, dword [rdx + 2*rdx]
cmovge eax, dword [rbx + 2*rbx]
cmovge eax, dword [rbp + 2*rbp]
cmovge eax, dword [rsi + 2*rsi]
cmovge eax, dword [rdi + 2*rdi]
