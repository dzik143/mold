use64
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
cmovg cx,  word  [rip + 0x13]
cmovg edx, dword [rip + 0x14]
cmovg rsi, qword [rip + 0x15]

cmovg cx,  word  [rip + 0x1235]
cmovg edx, dword [rip + 0x1236]
cmovg rsi, qword [rip + 0x1237]

cmovg cx,  word  [rip + 0x12345679]
cmovg edx, dword [rip + 0x1234567a]
cmovg rsi, qword [rip + 0x1234567b]

; [rip + base]
cmovg cx,  word  [rbx]
cmovg edx, dword [rcx]
cmovg rsi, qword [rdx]

; [rip + base + disp8]
cmovg cx,  word  [rbx + 0x13]
cmovg edx, dword [rcx + 0x14]
cmovg rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmovg cx,  word  [rbx + 0x1235]
cmovg edx, dword [rcx + 0x1236]
cmovg rsi, qword [rdx + 0x1237]

cmovg cx,  word  [rbx + 0x12345679]
cmovg edx, dword [rcx + 0x1234567a]
cmovg rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmovg cx,  word  [rbx + rcx]
cmovg edx, dword [rcx + rsi]
cmovg rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmovg cx,  word  [rbx + 4 * rcx]
cmovg edx, dword [rcx + 8 * rsi]
cmovg rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmovg cx,  word  [rbx + rcx + 0x13]
cmovg edx, dword [rcx + rsi + 0x14]
cmovg rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmovg cx,  word  [rbx + rcx + 0x1235]
cmovg edx, dword [rcx + rsi + 0x1236]
cmovg rsi, qword [rdx + rdi + 0x1237]

cmovg cx,  word  [rbx + rcx + 0x12345679]
cmovg edx, dword [rcx + rsi + 0x1234567a]
cmovg rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmovg cx,  word  [rbx + 4 * rcx + 0x13]
cmovg edx, dword [rcx + 8 * rsi + 0x14]
cmovg rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmovg cx,  word  [rbx + 4 * rcx + 0x1235]
cmovg edx, dword [rcx + 8 * rsi + 0x1236]
cmovg rsi, qword [rdx + 8 * rdi + 0x1237]

cmovg cx,  word  [rbx + 4 * rcx + 0x12345679]
cmovg edx, dword [rcx + 8 * rsi + 0x1234567a]
cmovg rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmovg cx,  word  [4 * rcx]
cmovg edx, dword [8 * rsi]
cmovg rsi, qword [8 * rdi]

; [scale * index + disp8]
cmovg cx,  word  [4 * rcx + 0x13]
cmovg edx, dword [8 * rsi + 0x14]
cmovg rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmovg cx,  word  [4 * rcx + 0x1235]
cmovg edx, dword [8 * rsi + 0x1236]
cmovg rsi, qword [8 * rdi + 0x1237]

cmovg cx,  word  [4 * rcx + 0x12345679]
cmovg edx, dword [8 * rsi + 0x1234567a]
cmovg rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmovg ax, word [rbp]
cmovg ax, word [rbp + 0x12]
cmovg ax, word [rbp + 0x1234]
cmovg ax, word [rbp + 0x12345678]

cmovg eax, dword [4 * rbp]
cmovg eax, dword [4 * rbp + 0x12]
cmovg eax, dword [4 * rbp + 0x1234]
cmovg eax, dword [4 * rbp + 0x12345678]

cmovg rax, qword [rbx + 4 * rbp]
cmovg rax, qword [rbx + 4 * rbp + 0x12]
cmovg rax, qword [rbx + 4 * rbp + 0x1234]
cmovg rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmovg ax, word [rsp]
cmovg ax, word [rsp + 0x12]
cmovg ax, word [rsp + 0x1234]
cmovg ax, word [rsp + 0x12345678]

cmovg eax, dword [rsp + rax]
cmovg eax, dword [rsp + rbp]
cmovg eax, dword [rsp + 2*rbp]
cmovg eax, dword [rsp + 4*rbp]
cmovg eax, dword [rsp + 8*rbp]

; use each register as indirect.
cmovg ax, word [rax]
cmovg ax, word [rcx]
cmovg ax, word [rdx]
cmovg ax, word [rbx]
cmovg ax, word [rsp]
cmovg ax, word [rbp]
cmovg ax, word [rsi]
cmovg ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmovg eax, dword [rax + 2*rax]
cmovg eax, dword [rcx + 2*rcx]
cmovg eax, dword [rdx + 2*rdx]
cmovg eax, dword [rbx + 2*rbx]
cmovg eax, dword [rbp + 2*rbp]
cmovg eax, dword [rsi + 2*rsi]
cmovg eax, dword [rdi + 2*rdi]
