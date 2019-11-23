use64
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
cmovne cx,  word  [rip + 0x13]
cmovne edx, dword [rip + 0x14]
cmovne rsi, qword [rip + 0x15]

cmovne cx,  word  [rip + 0x1235]
cmovne edx, dword [rip + 0x1236]
cmovne rsi, qword [rip + 0x1237]

cmovne cx,  word  [rip + 0x12345679]
cmovne edx, dword [rip + 0x1234567a]
cmovne rsi, qword [rip + 0x1234567b]

; [rip + base]
cmovne cx,  word  [rbx]
cmovne edx, dword [rcx]
cmovne rsi, qword [rdx]

; [rip + base + disp8]
cmovne cx,  word  [rbx + 0x13]
cmovne edx, dword [rcx + 0x14]
cmovne rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmovne cx,  word  [rbx + 0x1235]
cmovne edx, dword [rcx + 0x1236]
cmovne rsi, qword [rdx + 0x1237]

cmovne cx,  word  [rbx + 0x12345679]
cmovne edx, dword [rcx + 0x1234567a]
cmovne rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmovne cx,  word  [rbx + rcx]
cmovne edx, dword [rcx + rsi]
cmovne rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmovne cx,  word  [rbx + 4 * rcx]
cmovne edx, dword [rcx + 8 * rsi]
cmovne rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmovne cx,  word  [rbx + rcx + 0x13]
cmovne edx, dword [rcx + rsi + 0x14]
cmovne rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmovne cx,  word  [rbx + rcx + 0x1235]
cmovne edx, dword [rcx + rsi + 0x1236]
cmovne rsi, qword [rdx + rdi + 0x1237]

cmovne cx,  word  [rbx + rcx + 0x12345679]
cmovne edx, dword [rcx + rsi + 0x1234567a]
cmovne rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmovne cx,  word  [rbx + 4 * rcx + 0x13]
cmovne edx, dword [rcx + 8 * rsi + 0x14]
cmovne rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmovne cx,  word  [rbx + 4 * rcx + 0x1235]
cmovne edx, dword [rcx + 8 * rsi + 0x1236]
cmovne rsi, qword [rdx + 8 * rdi + 0x1237]

cmovne cx,  word  [rbx + 4 * rcx + 0x12345679]
cmovne edx, dword [rcx + 8 * rsi + 0x1234567a]
cmovne rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmovne cx,  word  [4 * rcx]
cmovne edx, dword [8 * rsi]
cmovne rsi, qword [8 * rdi]

; [scale * index + disp8]
cmovne cx,  word  [4 * rcx + 0x13]
cmovne edx, dword [8 * rsi + 0x14]
cmovne rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmovne cx,  word  [4 * rcx + 0x1235]
cmovne edx, dword [8 * rsi + 0x1236]
cmovne rsi, qword [8 * rdi + 0x1237]

cmovne cx,  word  [4 * rcx + 0x12345679]
cmovne edx, dword [8 * rsi + 0x1234567a]
cmovne rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmovne ax, word [rbp]
cmovne ax, word [rbp + 0x12]
cmovne ax, word [rbp + 0x1234]
cmovne ax, word [rbp + 0x12345678]

cmovne eax, dword [4 * rbp]
cmovne eax, dword [4 * rbp + 0x12]
cmovne eax, dword [4 * rbp + 0x1234]
cmovne eax, dword [4 * rbp + 0x12345678]

cmovne rax, qword [rbx + 4 * rbp]
cmovne rax, qword [rbx + 4 * rbp + 0x12]
cmovne rax, qword [rbx + 4 * rbp + 0x1234]
cmovne rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmovne ax, word [rsp]
cmovne ax, word [rsp + 0x12]
cmovne ax, word [rsp + 0x1234]
cmovne ax, word [rsp + 0x12345678]

cmovne eax, dword [rsp + rax]
cmovne eax, dword [rsp + rbp]
cmovne eax, dword [rsp + 2*rbp]
cmovne eax, dword [rsp + 4*rbp]
cmovne eax, dword [rsp + 8*rbp]

; use each register as indirect.
cmovne ax, word [rax]
cmovne ax, word [rcx]
cmovne ax, word [rdx]
cmovne ax, word [rbx]
cmovne ax, word [rsp]
cmovne ax, word [rbp]
cmovne ax, word [rsi]
cmovne ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmovne eax, dword [rax + 2*rax]
cmovne eax, dword [rcx + 2*rcx]
cmovne eax, dword [rdx + 2*rdx]
cmovne eax, dword [rbx + 2*rbx]
cmovne eax, dword [rbp + 2*rbp]
cmovne eax, dword [rsi + 2*rsi]
cmovne eax, dword [rdi + 2*rdi]
