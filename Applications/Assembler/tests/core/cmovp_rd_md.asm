use64
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
cmovp cx,  word  [rip + 0x13]
cmovp edx, dword [rip + 0x14]
cmovp rsi, qword [rip + 0x15]

cmovp cx,  word  [rip + 0x1235]
cmovp edx, dword [rip + 0x1236]
cmovp rsi, qword [rip + 0x1237]

cmovp cx,  word  [rip + 0x12345679]
cmovp edx, dword [rip + 0x1234567a]
cmovp rsi, qword [rip + 0x1234567b]

; [rip + base]
cmovp cx,  word  [rbx]
cmovp edx, dword [rcx]
cmovp rsi, qword [rdx]

; [rip + base + disp8]
cmovp cx,  word  [rbx + 0x13]
cmovp edx, dword [rcx + 0x14]
cmovp rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmovp cx,  word  [rbx + 0x1235]
cmovp edx, dword [rcx + 0x1236]
cmovp rsi, qword [rdx + 0x1237]

cmovp cx,  word  [rbx + 0x12345679]
cmovp edx, dword [rcx + 0x1234567a]
cmovp rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmovp cx,  word  [rbx + rcx]
cmovp edx, dword [rcx + rsi]
cmovp rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmovp cx,  word  [rbx + 4 * rcx]
cmovp edx, dword [rcx + 8 * rsi]
cmovp rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmovp cx,  word  [rbx + rcx + 0x13]
cmovp edx, dword [rcx + rsi + 0x14]
cmovp rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmovp cx,  word  [rbx + rcx + 0x1235]
cmovp edx, dword [rcx + rsi + 0x1236]
cmovp rsi, qword [rdx + rdi + 0x1237]

cmovp cx,  word  [rbx + rcx + 0x12345679]
cmovp edx, dword [rcx + rsi + 0x1234567a]
cmovp rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmovp cx,  word  [rbx + 4 * rcx + 0x13]
cmovp edx, dword [rcx + 8 * rsi + 0x14]
cmovp rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmovp cx,  word  [rbx + 4 * rcx + 0x1235]
cmovp edx, dword [rcx + 8 * rsi + 0x1236]
cmovp rsi, qword [rdx + 8 * rdi + 0x1237]

cmovp cx,  word  [rbx + 4 * rcx + 0x12345679]
cmovp edx, dword [rcx + 8 * rsi + 0x1234567a]
cmovp rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmovp cx,  word  [4 * rcx]
cmovp edx, dword [8 * rsi]
cmovp rsi, qword [8 * rdi]

; [scale * index + disp8]
cmovp cx,  word  [4 * rcx + 0x13]
cmovp edx, dword [8 * rsi + 0x14]
cmovp rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmovp cx,  word  [4 * rcx + 0x1235]
cmovp edx, dword [8 * rsi + 0x1236]
cmovp rsi, qword [8 * rdi + 0x1237]

cmovp cx,  word  [4 * rcx + 0x12345679]
cmovp edx, dword [8 * rsi + 0x1234567a]
cmovp rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmovp ax, word [rbp]
cmovp ax, word [rbp + 0x12]
cmovp ax, word [rbp + 0x1234]
cmovp ax, word [rbp + 0x12345678]

cmovp eax, dword [4 * rbp]
cmovp eax, dword [4 * rbp + 0x12]
cmovp eax, dword [4 * rbp + 0x1234]
cmovp eax, dword [4 * rbp + 0x12345678]

cmovp rax, qword [rbx + 4 * rbp]
cmovp rax, qword [rbx + 4 * rbp + 0x12]
cmovp rax, qword [rbx + 4 * rbp + 0x1234]
cmovp rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmovp ax, word [rsp]
cmovp ax, word [rsp + 0x12]
cmovp ax, word [rsp + 0x1234]
cmovp ax, word [rsp + 0x12345678]

cmovp eax, dword [rsp + rax]
cmovp eax, dword [rsp + rbp]
cmovp eax, dword [rsp + 2*rbp]
cmovp eax, dword [rsp + 4*rbp]
cmovp eax, dword [rsp + 8*rbp]

; use each register as indirect.
cmovp ax, word [rax]
cmovp ax, word [rcx]
cmovp ax, word [rdx]
cmovp ax, word [rbx]
cmovp ax, word [rsp]
cmovp ax, word [rbp]
cmovp ax, word [rsi]
cmovp ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmovp eax, dword [rax + 2*rax]
cmovp eax, dword [rcx + 2*rcx]
cmovp eax, dword [rdx + 2*rdx]
cmovp eax, dword [rbx + 2*rbx]
cmovp eax, dword [rbp + 2*rbp]
cmovp eax, dword [rsi + 2*rsi]
cmovp eax, dword [rdi + 2*rdi]
