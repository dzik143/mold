use64
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
imul cx,  word  [rip + 0x13]
imul edx, dword [rip + 0x14]
imul rsi, qword [rip + 0x15]

imul cx,  word  [rip + 0x1235]
imul edx, dword [rip + 0x1236]
imul rsi, qword [rip + 0x1237]

imul cx,  word  [rip + 0x12345679]
imul edx, dword [rip + 0x1234567a]
imul rsi, qword [rip + 0x1234567b]

; [rip + base]
imul cx,  word  [rbx]
imul edx, dword [rcx]
imul rsi, qword [rdx]

; [rip + base + disp8]
imul cx,  word  [rbx + 0x13]
imul edx, dword [rcx + 0x14]
imul rsi, qword [rdx + 0x15]

; [rip + base + disp32]
imul cx,  word  [rbx + 0x1235]
imul edx, dword [rcx + 0x1236]
imul rsi, qword [rdx + 0x1237]

imul cx,  word  [rbx + 0x12345679]
imul edx, dword [rcx + 0x1234567a]
imul rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
imul cx,  word  [rbx + rcx]
imul edx, dword [rcx + rsi]
imul rsi, qword [rdx + rdi]

; [rip + base + scale * index]
imul cx,  word  [rbx + 4 * rcx]
imul edx, dword [rcx + 8 * rsi]
imul rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
imul cx,  word  [rbx + rcx + 0x13]
imul edx, dword [rcx + rsi + 0x14]
imul rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
imul cx,  word  [rbx + rcx + 0x1235]
imul edx, dword [rcx + rsi + 0x1236]
imul rsi, qword [rdx + rdi + 0x1237]

imul cx,  word  [rbx + rcx + 0x12345679]
imul edx, dword [rcx + rsi + 0x1234567a]
imul rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
imul cx,  word  [rbx + 4 * rcx + 0x13]
imul edx, dword [rcx + 8 * rsi + 0x14]
imul rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
imul cx,  word  [rbx + 4 * rcx + 0x1235]
imul edx, dword [rcx + 8 * rsi + 0x1236]
imul rsi, qword [rdx + 8 * rdi + 0x1237]

imul cx,  word  [rbx + 4 * rcx + 0x12345679]
imul edx, dword [rcx + 8 * rsi + 0x1234567a]
imul rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
imul cx,  word  [4 * rcx]
imul edx, dword [8 * rsi]
imul rsi, qword [8 * rdi]

; [scale * index + disp8]
imul cx,  word  [4 * rcx + 0x13]
imul edx, dword [8 * rsi + 0x14]
imul rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
imul cx,  word  [4 * rcx + 0x1235]
imul edx, dword [8 * rsi + 0x1236]
imul rsi, qword [8 * rdi + 0x1237]

imul cx,  word  [4 * rcx + 0x12345679]
imul edx, dword [8 * rsi + 0x1234567a]
imul rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
imul ax, word [rbp]
imul ax, word [rbp + 0x12]
imul ax, word [rbp + 0x1234]
imul ax, word [rbp + 0x12345678]

imul eax, dword [4 * rbp]
imul eax, dword [4 * rbp + 0x12]
imul eax, dword [4 * rbp + 0x1234]
imul eax, dword [4 * rbp + 0x12345678]

imul rax, qword [rbx + 4 * rbp]
imul rax, qword [rbx + 4 * rbp + 0x12]
imul rax, qword [rbx + 4 * rbp + 0x1234]
imul rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
imul ax, word [rsp]
imul ax, word [rsp + 0x12]
imul ax, word [rsp + 0x1234]
imul ax, word [rsp + 0x12345678]

imul eax, dword [rsp + rax]
imul eax, dword [rsp + rbp]
imul eax, dword [rsp + 2*rbp]
imul eax, dword [rsp + 4*rbp]
imul eax, dword [rsp + 8*rbp]

; use each register as indirect.
imul ax, word [rax]
imul ax, word [rcx]
imul ax, word [rdx]
imul ax, word [rbx]
imul ax, word [rsp]
imul ax, word [rbp]
imul ax, word [rsi]
imul ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
imul eax, dword [rax + 2*rax]
imul eax, dword [rcx + 2*rcx]
imul eax, dword [rdx + 2*rdx]
imul eax, dword [rbx + 2*rbx]
imul eax, dword [rbp + 2*rbp]
imul eax, dword [rsi + 2*rsi]
imul eax, dword [rdi + 2*rdi]
