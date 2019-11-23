use64
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
cmovz cx,  word  [rip + 0x13]
cmovz edx, dword [rip + 0x14]
cmovz rsi, qword [rip + 0x15]

cmovz cx,  word  [rip + 0x1235]
cmovz edx, dword [rip + 0x1236]
cmovz rsi, qword [rip + 0x1237]

cmovz cx,  word  [rip + 0x12345679]
cmovz edx, dword [rip + 0x1234567a]
cmovz rsi, qword [rip + 0x1234567b]

; [rip + base]
cmovz cx,  word  [rbx]
cmovz edx, dword [rcx]
cmovz rsi, qword [rdx]

; [rip + base + disp8]
cmovz cx,  word  [rbx + 0x13]
cmovz edx, dword [rcx + 0x14]
cmovz rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmovz cx,  word  [rbx + 0x1235]
cmovz edx, dword [rcx + 0x1236]
cmovz rsi, qword [rdx + 0x1237]

cmovz cx,  word  [rbx + 0x12345679]
cmovz edx, dword [rcx + 0x1234567a]
cmovz rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmovz cx,  word  [rbx + rcx]
cmovz edx, dword [rcx + rsi]
cmovz rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmovz cx,  word  [rbx + 4 * rcx]
cmovz edx, dword [rcx + 8 * rsi]
cmovz rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmovz cx,  word  [rbx + rcx + 0x13]
cmovz edx, dword [rcx + rsi + 0x14]
cmovz rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmovz cx,  word  [rbx + rcx + 0x1235]
cmovz edx, dword [rcx + rsi + 0x1236]
cmovz rsi, qword [rdx + rdi + 0x1237]

cmovz cx,  word  [rbx + rcx + 0x12345679]
cmovz edx, dword [rcx + rsi + 0x1234567a]
cmovz rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmovz cx,  word  [rbx + 4 * rcx + 0x13]
cmovz edx, dword [rcx + 8 * rsi + 0x14]
cmovz rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmovz cx,  word  [rbx + 4 * rcx + 0x1235]
cmovz edx, dword [rcx + 8 * rsi + 0x1236]
cmovz rsi, qword [rdx + 8 * rdi + 0x1237]

cmovz cx,  word  [rbx + 4 * rcx + 0x12345679]
cmovz edx, dword [rcx + 8 * rsi + 0x1234567a]
cmovz rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmovz cx,  word  [4 * rcx]
cmovz edx, dword [8 * rsi]
cmovz rsi, qword [8 * rdi]

; [scale * index + disp8]
cmovz cx,  word  [4 * rcx + 0x13]
cmovz edx, dword [8 * rsi + 0x14]
cmovz rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmovz cx,  word  [4 * rcx + 0x1235]
cmovz edx, dword [8 * rsi + 0x1236]
cmovz rsi, qword [8 * rdi + 0x1237]

cmovz cx,  word  [4 * rcx + 0x12345679]
cmovz edx, dword [8 * rsi + 0x1234567a]
cmovz rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmovz ax, word [rbp]
cmovz ax, word [rbp + 0x12]
cmovz ax, word [rbp + 0x1234]
cmovz ax, word [rbp + 0x12345678]

cmovz eax, dword [4 * rbp]
cmovz eax, dword [4 * rbp + 0x12]
cmovz eax, dword [4 * rbp + 0x1234]
cmovz eax, dword [4 * rbp + 0x12345678]

cmovz rax, qword [rbx + 4 * rbp]
cmovz rax, qword [rbx + 4 * rbp + 0x12]
cmovz rax, qword [rbx + 4 * rbp + 0x1234]
cmovz rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmovz ax, word [rsp]
cmovz ax, word [rsp + 0x12]
cmovz ax, word [rsp + 0x1234]
cmovz ax, word [rsp + 0x12345678]

cmovz eax, dword [rsp + rax]
cmovz eax, dword [rsp + rbp]
cmovz eax, dword [rsp + 2*rbp]
cmovz eax, dword [rsp + 4*rbp]
cmovz eax, dword [rsp + 8*rbp]

; use each register as indirect.
cmovz ax, word [rax]
cmovz ax, word [rcx]
cmovz ax, word [rdx]
cmovz ax, word [rbx]
cmovz ax, word [rsp]
cmovz ax, word [rbp]
cmovz ax, word [rsi]
cmovz ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmovz eax, dword [rax + 2*rax]
cmovz eax, dword [rcx + 2*rcx]
cmovz eax, dword [rdx + 2*rdx]
cmovz eax, dword [rbx + 2*rbx]
cmovz eax, dword [rbp + 2*rbp]
cmovz eax, dword [rsi + 2*rsi]
cmovz eax, dword [rdi + 2*rdi]
