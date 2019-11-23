use64
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
cmovpo cx,  word  [rip + 0x13]
cmovpo edx, dword [rip + 0x14]
cmovpo rsi, qword [rip + 0x15]

cmovpo cx,  word  [rip + 0x1235]
cmovpo edx, dword [rip + 0x1236]
cmovpo rsi, qword [rip + 0x1237]

cmovpo cx,  word  [rip + 0x12345679]
cmovpo edx, dword [rip + 0x1234567a]
cmovpo rsi, qword [rip + 0x1234567b]

; [rip + base]
cmovpo cx,  word  [rbx]
cmovpo edx, dword [rcx]
cmovpo rsi, qword [rdx]

; [rip + base + disp8]
cmovpo cx,  word  [rbx + 0x13]
cmovpo edx, dword [rcx + 0x14]
cmovpo rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmovpo cx,  word  [rbx + 0x1235]
cmovpo edx, dword [rcx + 0x1236]
cmovpo rsi, qword [rdx + 0x1237]

cmovpo cx,  word  [rbx + 0x12345679]
cmovpo edx, dword [rcx + 0x1234567a]
cmovpo rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmovpo cx,  word  [rbx + rcx]
cmovpo edx, dword [rcx + rsi]
cmovpo rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmovpo cx,  word  [rbx + 4 * rcx]
cmovpo edx, dword [rcx + 8 * rsi]
cmovpo rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmovpo cx,  word  [rbx + rcx + 0x13]
cmovpo edx, dword [rcx + rsi + 0x14]
cmovpo rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmovpo cx,  word  [rbx + rcx + 0x1235]
cmovpo edx, dword [rcx + rsi + 0x1236]
cmovpo rsi, qword [rdx + rdi + 0x1237]

cmovpo cx,  word  [rbx + rcx + 0x12345679]
cmovpo edx, dword [rcx + rsi + 0x1234567a]
cmovpo rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmovpo cx,  word  [rbx + 4 * rcx + 0x13]
cmovpo edx, dword [rcx + 8 * rsi + 0x14]
cmovpo rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmovpo cx,  word  [rbx + 4 * rcx + 0x1235]
cmovpo edx, dword [rcx + 8 * rsi + 0x1236]
cmovpo rsi, qword [rdx + 8 * rdi + 0x1237]

cmovpo cx,  word  [rbx + 4 * rcx + 0x12345679]
cmovpo edx, dword [rcx + 8 * rsi + 0x1234567a]
cmovpo rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmovpo cx,  word  [4 * rcx]
cmovpo edx, dword [8 * rsi]
cmovpo rsi, qword [8 * rdi]

; [scale * index + disp8]
cmovpo cx,  word  [4 * rcx + 0x13]
cmovpo edx, dword [8 * rsi + 0x14]
cmovpo rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmovpo cx,  word  [4 * rcx + 0x1235]
cmovpo edx, dword [8 * rsi + 0x1236]
cmovpo rsi, qword [8 * rdi + 0x1237]

cmovpo cx,  word  [4 * rcx + 0x12345679]
cmovpo edx, dword [8 * rsi + 0x1234567a]
cmovpo rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmovpo ax, word [rbp]
cmovpo ax, word [rbp + 0x12]
cmovpo ax, word [rbp + 0x1234]
cmovpo ax, word [rbp + 0x12345678]

cmovpo eax, dword [4 * rbp]
cmovpo eax, dword [4 * rbp + 0x12]
cmovpo eax, dword [4 * rbp + 0x1234]
cmovpo eax, dword [4 * rbp + 0x12345678]

cmovpo rax, qword [rbx + 4 * rbp]
cmovpo rax, qword [rbx + 4 * rbp + 0x12]
cmovpo rax, qword [rbx + 4 * rbp + 0x1234]
cmovpo rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmovpo ax, word [rsp]
cmovpo ax, word [rsp + 0x12]
cmovpo ax, word [rsp + 0x1234]
cmovpo ax, word [rsp + 0x12345678]

cmovpo eax, dword [rsp + rax]
cmovpo eax, dword [rsp + rbp]
cmovpo eax, dword [rsp + 2*rbp]
cmovpo eax, dword [rsp + 4*rbp]
cmovpo eax, dword [rsp + 8*rbp]

; use each register as indirect.
cmovpo ax, word [rax]
cmovpo ax, word [rcx]
cmovpo ax, word [rdx]
cmovpo ax, word [rbx]
cmovpo ax, word [rsp]
cmovpo ax, word [rbp]
cmovpo ax, word [rsi]
cmovpo ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmovpo eax, dword [rax + 2*rax]
cmovpo eax, dword [rcx + 2*rcx]
cmovpo eax, dword [rdx + 2*rdx]
cmovpo eax, dword [rbx + 2*rbx]
cmovpo eax, dword [rbp + 2*rbp]
cmovpo eax, dword [rsi + 2*rsi]
cmovpo eax, dword [rdi + 2*rdi]
