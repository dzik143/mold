use64
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
cmovns cx,  word  [rip + 0x13]
cmovns edx, dword [rip + 0x14]
cmovns rsi, qword [rip + 0x15]

cmovns cx,  word  [rip + 0x1235]
cmovns edx, dword [rip + 0x1236]
cmovns rsi, qword [rip + 0x1237]

cmovns cx,  word  [rip + 0x12345679]
cmovns edx, dword [rip + 0x1234567a]
cmovns rsi, qword [rip + 0x1234567b]

; [rip + base]
cmovns cx,  word  [rbx]
cmovns edx, dword [rcx]
cmovns rsi, qword [rdx]

; [rip + base + disp8]
cmovns cx,  word  [rbx + 0x13]
cmovns edx, dword [rcx + 0x14]
cmovns rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmovns cx,  word  [rbx + 0x1235]
cmovns edx, dword [rcx + 0x1236]
cmovns rsi, qword [rdx + 0x1237]

cmovns cx,  word  [rbx + 0x12345679]
cmovns edx, dword [rcx + 0x1234567a]
cmovns rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmovns cx,  word  [rbx + rcx]
cmovns edx, dword [rcx + rsi]
cmovns rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmovns cx,  word  [rbx + 4 * rcx]
cmovns edx, dword [rcx + 8 * rsi]
cmovns rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmovns cx,  word  [rbx + rcx + 0x13]
cmovns edx, dword [rcx + rsi + 0x14]
cmovns rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmovns cx,  word  [rbx + rcx + 0x1235]
cmovns edx, dword [rcx + rsi + 0x1236]
cmovns rsi, qword [rdx + rdi + 0x1237]

cmovns cx,  word  [rbx + rcx + 0x12345679]
cmovns edx, dword [rcx + rsi + 0x1234567a]
cmovns rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmovns cx,  word  [rbx + 4 * rcx + 0x13]
cmovns edx, dword [rcx + 8 * rsi + 0x14]
cmovns rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmovns cx,  word  [rbx + 4 * rcx + 0x1235]
cmovns edx, dword [rcx + 8 * rsi + 0x1236]
cmovns rsi, qword [rdx + 8 * rdi + 0x1237]

cmovns cx,  word  [rbx + 4 * rcx + 0x12345679]
cmovns edx, dword [rcx + 8 * rsi + 0x1234567a]
cmovns rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmovns cx,  word  [4 * rcx]
cmovns edx, dword [8 * rsi]
cmovns rsi, qword [8 * rdi]

; [scale * index + disp8]
cmovns cx,  word  [4 * rcx + 0x13]
cmovns edx, dword [8 * rsi + 0x14]
cmovns rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmovns cx,  word  [4 * rcx + 0x1235]
cmovns edx, dword [8 * rsi + 0x1236]
cmovns rsi, qword [8 * rdi + 0x1237]

cmovns cx,  word  [4 * rcx + 0x12345679]
cmovns edx, dword [8 * rsi + 0x1234567a]
cmovns rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmovns ax, word [rbp]
cmovns ax, word [rbp + 0x12]
cmovns ax, word [rbp + 0x1234]
cmovns ax, word [rbp + 0x12345678]

cmovns eax, dword [4 * rbp]
cmovns eax, dword [4 * rbp + 0x12]
cmovns eax, dword [4 * rbp + 0x1234]
cmovns eax, dword [4 * rbp + 0x12345678]

cmovns rax, qword [rbx + 4 * rbp]
cmovns rax, qword [rbx + 4 * rbp + 0x12]
cmovns rax, qword [rbx + 4 * rbp + 0x1234]
cmovns rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmovns ax, word [rsp]
cmovns ax, word [rsp + 0x12]
cmovns ax, word [rsp + 0x1234]
cmovns ax, word [rsp + 0x12345678]

cmovns eax, dword [rsp + rax]
cmovns eax, dword [rsp + rbp]
cmovns eax, dword [rsp + 2*rbp]
cmovns eax, dword [rsp + 4*rbp]
cmovns eax, dword [rsp + 8*rbp]

; use each register as indirect.
cmovns ax, word [rax]
cmovns ax, word [rcx]
cmovns ax, word [rdx]
cmovns ax, word [rbx]
cmovns ax, word [rsp]
cmovns ax, word [rbp]
cmovns ax, word [rsi]
cmovns ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmovns eax, dword [rax + 2*rax]
cmovns eax, dword [rcx + 2*rcx]
cmovns eax, dword [rdx + 2*rdx]
cmovns eax, dword [rbx + 2*rbx]
cmovns eax, dword [rbp + 2*rbp]
cmovns eax, dword [rsi + 2*rsi]
cmovns eax, dword [rdi + 2*rdi]
