use64
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
cmovbe cx,  word  [rip + 0x13]
cmovbe edx, dword [rip + 0x14]
cmovbe rsi, qword [rip + 0x15]

cmovbe cx,  word  [rip + 0x1235]
cmovbe edx, dword [rip + 0x1236]
cmovbe rsi, qword [rip + 0x1237]

cmovbe cx,  word  [rip + 0x12345679]
cmovbe edx, dword [rip + 0x1234567a]
cmovbe rsi, qword [rip + 0x1234567b]

; [rip + base]
cmovbe cx,  word  [rbx]
cmovbe edx, dword [rcx]
cmovbe rsi, qword [rdx]

; [rip + base + disp8]
cmovbe cx,  word  [rbx + 0x13]
cmovbe edx, dword [rcx + 0x14]
cmovbe rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmovbe cx,  word  [rbx + 0x1235]
cmovbe edx, dword [rcx + 0x1236]
cmovbe rsi, qword [rdx + 0x1237]

cmovbe cx,  word  [rbx + 0x12345679]
cmovbe edx, dword [rcx + 0x1234567a]
cmovbe rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmovbe cx,  word  [rbx + rcx]
cmovbe edx, dword [rcx + rsi]
cmovbe rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmovbe cx,  word  [rbx + 4 * rcx]
cmovbe edx, dword [rcx + 8 * rsi]
cmovbe rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmovbe cx,  word  [rbx + rcx + 0x13]
cmovbe edx, dword [rcx + rsi + 0x14]
cmovbe rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmovbe cx,  word  [rbx + rcx + 0x1235]
cmovbe edx, dword [rcx + rsi + 0x1236]
cmovbe rsi, qword [rdx + rdi + 0x1237]

cmovbe cx,  word  [rbx + rcx + 0x12345679]
cmovbe edx, dword [rcx + rsi + 0x1234567a]
cmovbe rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmovbe cx,  word  [rbx + 4 * rcx + 0x13]
cmovbe edx, dword [rcx + 8 * rsi + 0x14]
cmovbe rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmovbe cx,  word  [rbx + 4 * rcx + 0x1235]
cmovbe edx, dword [rcx + 8 * rsi + 0x1236]
cmovbe rsi, qword [rdx + 8 * rdi + 0x1237]

cmovbe cx,  word  [rbx + 4 * rcx + 0x12345679]
cmovbe edx, dword [rcx + 8 * rsi + 0x1234567a]
cmovbe rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmovbe cx,  word  [4 * rcx]
cmovbe edx, dword [8 * rsi]
cmovbe rsi, qword [8 * rdi]

; [scale * index + disp8]
cmovbe cx,  word  [4 * rcx + 0x13]
cmovbe edx, dword [8 * rsi + 0x14]
cmovbe rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmovbe cx,  word  [4 * rcx + 0x1235]
cmovbe edx, dword [8 * rsi + 0x1236]
cmovbe rsi, qword [8 * rdi + 0x1237]

cmovbe cx,  word  [4 * rcx + 0x12345679]
cmovbe edx, dword [8 * rsi + 0x1234567a]
cmovbe rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmovbe ax, word [rbp]
cmovbe ax, word [rbp + 0x12]
cmovbe ax, word [rbp + 0x1234]
cmovbe ax, word [rbp + 0x12345678]

cmovbe eax, dword [4 * rbp]
cmovbe eax, dword [4 * rbp + 0x12]
cmovbe eax, dword [4 * rbp + 0x1234]
cmovbe eax, dword [4 * rbp + 0x12345678]

cmovbe rax, qword [rbx + 4 * rbp]
cmovbe rax, qword [rbx + 4 * rbp + 0x12]
cmovbe rax, qword [rbx + 4 * rbp + 0x1234]
cmovbe rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmovbe ax, word [rsp]
cmovbe ax, word [rsp + 0x12]
cmovbe ax, word [rsp + 0x1234]
cmovbe ax, word [rsp + 0x12345678]

cmovbe eax, dword [rsp + rax]
cmovbe eax, dword [rsp + rbp]
cmovbe eax, dword [rsp + 2*rbp]
cmovbe eax, dword [rsp + 4*rbp]
cmovbe eax, dword [rsp + 8*rbp]

; use each register as indirect.
cmovbe ax, word [rax]
cmovbe ax, word [rcx]
cmovbe ax, word [rdx]
cmovbe ax, word [rbx]
cmovbe ax, word [rsp]
cmovbe ax, word [rbp]
cmovbe ax, word [rsi]
cmovbe ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmovbe eax, dword [rax + 2*rax]
cmovbe eax, dword [rcx + 2*rcx]
cmovbe eax, dword [rdx + 2*rdx]
cmovbe eax, dword [rbx + 2*rbx]
cmovbe eax, dword [rbp + 2*rbp]
cmovbe eax, dword [rsi + 2*rsi]
cmovbe eax, dword [rdi + 2*rdi]
