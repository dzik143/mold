use64
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
cmovpe cx,  word  [rip + 0x13]
cmovpe edx, dword [rip + 0x14]
cmovpe rsi, qword [rip + 0x15]

cmovpe cx,  word  [rip + 0x1235]
cmovpe edx, dword [rip + 0x1236]
cmovpe rsi, qword [rip + 0x1237]

cmovpe cx,  word  [rip + 0x12345679]
cmovpe edx, dword [rip + 0x1234567a]
cmovpe rsi, qword [rip + 0x1234567b]

; [rip + base]
cmovpe cx,  word  [rbx]
cmovpe edx, dword [rcx]
cmovpe rsi, qword [rdx]

; [rip + base + disp8]
cmovpe cx,  word  [rbx + 0x13]
cmovpe edx, dword [rcx + 0x14]
cmovpe rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmovpe cx,  word  [rbx + 0x1235]
cmovpe edx, dword [rcx + 0x1236]
cmovpe rsi, qword [rdx + 0x1237]

cmovpe cx,  word  [rbx + 0x12345679]
cmovpe edx, dword [rcx + 0x1234567a]
cmovpe rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmovpe cx,  word  [rbx + rcx]
cmovpe edx, dword [rcx + rsi]
cmovpe rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmovpe cx,  word  [rbx + 4 * rcx]
cmovpe edx, dword [rcx + 8 * rsi]
cmovpe rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmovpe cx,  word  [rbx + rcx + 0x13]
cmovpe edx, dword [rcx + rsi + 0x14]
cmovpe rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmovpe cx,  word  [rbx + rcx + 0x1235]
cmovpe edx, dword [rcx + rsi + 0x1236]
cmovpe rsi, qword [rdx + rdi + 0x1237]

cmovpe cx,  word  [rbx + rcx + 0x12345679]
cmovpe edx, dword [rcx + rsi + 0x1234567a]
cmovpe rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmovpe cx,  word  [rbx + 4 * rcx + 0x13]
cmovpe edx, dword [rcx + 8 * rsi + 0x14]
cmovpe rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmovpe cx,  word  [rbx + 4 * rcx + 0x1235]
cmovpe edx, dword [rcx + 8 * rsi + 0x1236]
cmovpe rsi, qword [rdx + 8 * rdi + 0x1237]

cmovpe cx,  word  [rbx + 4 * rcx + 0x12345679]
cmovpe edx, dword [rcx + 8 * rsi + 0x1234567a]
cmovpe rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmovpe cx,  word  [4 * rcx]
cmovpe edx, dword [8 * rsi]
cmovpe rsi, qword [8 * rdi]

; [scale * index + disp8]
cmovpe cx,  word  [4 * rcx + 0x13]
cmovpe edx, dword [8 * rsi + 0x14]
cmovpe rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmovpe cx,  word  [4 * rcx + 0x1235]
cmovpe edx, dword [8 * rsi + 0x1236]
cmovpe rsi, qword [8 * rdi + 0x1237]

cmovpe cx,  word  [4 * rcx + 0x12345679]
cmovpe edx, dword [8 * rsi + 0x1234567a]
cmovpe rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmovpe ax, word [rbp]
cmovpe ax, word [rbp + 0x12]
cmovpe ax, word [rbp + 0x1234]
cmovpe ax, word [rbp + 0x12345678]

cmovpe eax, dword [4 * rbp]
cmovpe eax, dword [4 * rbp + 0x12]
cmovpe eax, dword [4 * rbp + 0x1234]
cmovpe eax, dword [4 * rbp + 0x12345678]

cmovpe rax, qword [rbx + 4 * rbp]
cmovpe rax, qword [rbx + 4 * rbp + 0x12]
cmovpe rax, qword [rbx + 4 * rbp + 0x1234]
cmovpe rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmovpe ax, word [rsp]
cmovpe ax, word [rsp + 0x12]
cmovpe ax, word [rsp + 0x1234]
cmovpe ax, word [rsp + 0x12345678]

cmovpe eax, dword [rsp + rax]
cmovpe eax, dword [rsp + rbp]
cmovpe eax, dword [rsp + 2*rbp]
cmovpe eax, dword [rsp + 4*rbp]
cmovpe eax, dword [rsp + 8*rbp]

; use each register as indirect.
cmovpe ax, word [rax]
cmovpe ax, word [rcx]
cmovpe ax, word [rdx]
cmovpe ax, word [rbx]
cmovpe ax, word [rsp]
cmovpe ax, word [rbp]
cmovpe ax, word [rsi]
cmovpe ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmovpe eax, dword [rax + 2*rax]
cmovpe eax, dword [rcx + 2*rcx]
cmovpe eax, dword [rdx + 2*rdx]
cmovpe eax, dword [rbx + 2*rbx]
cmovpe eax, dword [rbp + 2*rbp]
cmovpe eax, dword [rsi + 2*rsi]
cmovpe eax, dword [rdi + 2*rdi]
