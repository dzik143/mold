use64
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
cmovnz cx,  word  [rip + 0x13]
cmovnz edx, dword [rip + 0x14]
cmovnz rsi, qword [rip + 0x15]

cmovnz cx,  word  [rip + 0x1235]
cmovnz edx, dword [rip + 0x1236]
cmovnz rsi, qword [rip + 0x1237]

cmovnz cx,  word  [rip + 0x12345679]
cmovnz edx, dword [rip + 0x1234567a]
cmovnz rsi, qword [rip + 0x1234567b]

; [rip + base]
cmovnz cx,  word  [rbx]
cmovnz edx, dword [rcx]
cmovnz rsi, qword [rdx]

; [rip + base + disp8]
cmovnz cx,  word  [rbx + 0x13]
cmovnz edx, dword [rcx + 0x14]
cmovnz rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmovnz cx,  word  [rbx + 0x1235]
cmovnz edx, dword [rcx + 0x1236]
cmovnz rsi, qword [rdx + 0x1237]

cmovnz cx,  word  [rbx + 0x12345679]
cmovnz edx, dword [rcx + 0x1234567a]
cmovnz rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmovnz cx,  word  [rbx + rcx]
cmovnz edx, dword [rcx + rsi]
cmovnz rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmovnz cx,  word  [rbx + 4 * rcx]
cmovnz edx, dword [rcx + 8 * rsi]
cmovnz rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmovnz cx,  word  [rbx + rcx + 0x13]
cmovnz edx, dword [rcx + rsi + 0x14]
cmovnz rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmovnz cx,  word  [rbx + rcx + 0x1235]
cmovnz edx, dword [rcx + rsi + 0x1236]
cmovnz rsi, qword [rdx + rdi + 0x1237]

cmovnz cx,  word  [rbx + rcx + 0x12345679]
cmovnz edx, dword [rcx + rsi + 0x1234567a]
cmovnz rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmovnz cx,  word  [rbx + 4 * rcx + 0x13]
cmovnz edx, dword [rcx + 8 * rsi + 0x14]
cmovnz rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmovnz cx,  word  [rbx + 4 * rcx + 0x1235]
cmovnz edx, dword [rcx + 8 * rsi + 0x1236]
cmovnz rsi, qword [rdx + 8 * rdi + 0x1237]

cmovnz cx,  word  [rbx + 4 * rcx + 0x12345679]
cmovnz edx, dword [rcx + 8 * rsi + 0x1234567a]
cmovnz rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmovnz cx,  word  [4 * rcx]
cmovnz edx, dword [8 * rsi]
cmovnz rsi, qword [8 * rdi]

; [scale * index + disp8]
cmovnz cx,  word  [4 * rcx + 0x13]
cmovnz edx, dword [8 * rsi + 0x14]
cmovnz rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmovnz cx,  word  [4 * rcx + 0x1235]
cmovnz edx, dword [8 * rsi + 0x1236]
cmovnz rsi, qword [8 * rdi + 0x1237]

cmovnz cx,  word  [4 * rcx + 0x12345679]
cmovnz edx, dword [8 * rsi + 0x1234567a]
cmovnz rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmovnz ax, word [rbp]
cmovnz ax, word [rbp + 0x12]
cmovnz ax, word [rbp + 0x1234]
cmovnz ax, word [rbp + 0x12345678]

cmovnz eax, dword [4 * rbp]
cmovnz eax, dword [4 * rbp + 0x12]
cmovnz eax, dword [4 * rbp + 0x1234]
cmovnz eax, dword [4 * rbp + 0x12345678]

cmovnz rax, qword [rbx + 4 * rbp]
cmovnz rax, qword [rbx + 4 * rbp + 0x12]
cmovnz rax, qword [rbx + 4 * rbp + 0x1234]
cmovnz rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmovnz ax, word [rsp]
cmovnz ax, word [rsp + 0x12]
cmovnz ax, word [rsp + 0x1234]
cmovnz ax, word [rsp + 0x12345678]

cmovnz eax, dword [rsp + rax]
cmovnz eax, dword [rsp + rbp]
cmovnz eax, dword [rsp + 2*rbp]
cmovnz eax, dword [rsp + 4*rbp]
cmovnz eax, dword [rsp + 8*rbp]

; use each register as indirect.
cmovnz ax, word [rax]
cmovnz ax, word [rcx]
cmovnz ax, word [rdx]
cmovnz ax, word [rbx]
cmovnz ax, word [rsp]
cmovnz ax, word [rbp]
cmovnz ax, word [rsi]
cmovnz ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmovnz eax, dword [rax + 2*rax]
cmovnz eax, dword [rcx + 2*rcx]
cmovnz eax, dword [rdx + 2*rdx]
cmovnz eax, dword [rbx + 2*rbx]
cmovnz eax, dword [rbp + 2*rbp]
cmovnz eax, dword [rsi + 2*rsi]
cmovnz eax, dword [rdi + 2*rdi]
