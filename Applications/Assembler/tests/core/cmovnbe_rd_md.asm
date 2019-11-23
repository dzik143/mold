use64
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
cmovnbe cx,  word  [rip + 0x13]
cmovnbe edx, dword [rip + 0x14]
cmovnbe rsi, qword [rip + 0x15]

cmovnbe cx,  word  [rip + 0x1235]
cmovnbe edx, dword [rip + 0x1236]
cmovnbe rsi, qword [rip + 0x1237]

cmovnbe cx,  word  [rip + 0x12345679]
cmovnbe edx, dword [rip + 0x1234567a]
cmovnbe rsi, qword [rip + 0x1234567b]

; [rip + base]
cmovnbe cx,  word  [rbx]
cmovnbe edx, dword [rcx]
cmovnbe rsi, qword [rdx]

; [rip + base + disp8]
cmovnbe cx,  word  [rbx + 0x13]
cmovnbe edx, dword [rcx + 0x14]
cmovnbe rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmovnbe cx,  word  [rbx + 0x1235]
cmovnbe edx, dword [rcx + 0x1236]
cmovnbe rsi, qword [rdx + 0x1237]

cmovnbe cx,  word  [rbx + 0x12345679]
cmovnbe edx, dword [rcx + 0x1234567a]
cmovnbe rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmovnbe cx,  word  [rbx + rcx]
cmovnbe edx, dword [rcx + rsi]
cmovnbe rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmovnbe cx,  word  [rbx + 4 * rcx]
cmovnbe edx, dword [rcx + 8 * rsi]
cmovnbe rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmovnbe cx,  word  [rbx + rcx + 0x13]
cmovnbe edx, dword [rcx + rsi + 0x14]
cmovnbe rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmovnbe cx,  word  [rbx + rcx + 0x1235]
cmovnbe edx, dword [rcx + rsi + 0x1236]
cmovnbe rsi, qword [rdx + rdi + 0x1237]

cmovnbe cx,  word  [rbx + rcx + 0x12345679]
cmovnbe edx, dword [rcx + rsi + 0x1234567a]
cmovnbe rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmovnbe cx,  word  [rbx + 4 * rcx + 0x13]
cmovnbe edx, dword [rcx + 8 * rsi + 0x14]
cmovnbe rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmovnbe cx,  word  [rbx + 4 * rcx + 0x1235]
cmovnbe edx, dword [rcx + 8 * rsi + 0x1236]
cmovnbe rsi, qword [rdx + 8 * rdi + 0x1237]

cmovnbe cx,  word  [rbx + 4 * rcx + 0x12345679]
cmovnbe edx, dword [rcx + 8 * rsi + 0x1234567a]
cmovnbe rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmovnbe cx,  word  [4 * rcx]
cmovnbe edx, dword [8 * rsi]
cmovnbe rsi, qword [8 * rdi]

; [scale * index + disp8]
cmovnbe cx,  word  [4 * rcx + 0x13]
cmovnbe edx, dword [8 * rsi + 0x14]
cmovnbe rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmovnbe cx,  word  [4 * rcx + 0x1235]
cmovnbe edx, dword [8 * rsi + 0x1236]
cmovnbe rsi, qword [8 * rdi + 0x1237]

cmovnbe cx,  word  [4 * rcx + 0x12345679]
cmovnbe edx, dword [8 * rsi + 0x1234567a]
cmovnbe rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmovnbe ax, word [rbp]
cmovnbe ax, word [rbp + 0x12]
cmovnbe ax, word [rbp + 0x1234]
cmovnbe ax, word [rbp + 0x12345678]

cmovnbe eax, dword [4 * rbp]
cmovnbe eax, dword [4 * rbp + 0x12]
cmovnbe eax, dword [4 * rbp + 0x1234]
cmovnbe eax, dword [4 * rbp + 0x12345678]

cmovnbe rax, qword [rbx + 4 * rbp]
cmovnbe rax, qword [rbx + 4 * rbp + 0x12]
cmovnbe rax, qword [rbx + 4 * rbp + 0x1234]
cmovnbe rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmovnbe ax, word [rsp]
cmovnbe ax, word [rsp + 0x12]
cmovnbe ax, word [rsp + 0x1234]
cmovnbe ax, word [rsp + 0x12345678]

cmovnbe eax, dword [rsp + rax]
cmovnbe eax, dword [rsp + rbp]
cmovnbe eax, dword [rsp + 2*rbp]
cmovnbe eax, dword [rsp + 4*rbp]
cmovnbe eax, dword [rsp + 8*rbp]

; use each register as indirect.
cmovnbe ax, word [rax]
cmovnbe ax, word [rcx]
cmovnbe ax, word [rdx]
cmovnbe ax, word [rbx]
cmovnbe ax, word [rsp]
cmovnbe ax, word [rbp]
cmovnbe ax, word [rsi]
cmovnbe ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmovnbe eax, dword [rax + 2*rax]
cmovnbe eax, dword [rcx + 2*rcx]
cmovnbe eax, dword [rdx + 2*rdx]
cmovnbe eax, dword [rbx + 2*rbx]
cmovnbe eax, dword [rbp + 2*rbp]
cmovnbe eax, dword [rsi + 2*rsi]
cmovnbe eax, dword [rdi + 2*rdi]
