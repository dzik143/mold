use64
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
cmova cx,  word  [rip + 0x13]
cmova edx, dword [rip + 0x14]
cmova rsi, qword [rip + 0x15]

cmova cx,  word  [rip + 0x1235]
cmova edx, dword [rip + 0x1236]
cmova rsi, qword [rip + 0x1237]

cmova cx,  word  [rip + 0x12345679]
cmova edx, dword [rip + 0x1234567a]
cmova rsi, qword [rip + 0x1234567b]

; [rip + base]
cmova cx,  word  [rbx]
cmova edx, dword [rcx]
cmova rsi, qword [rdx]

; [rip + base + disp8]
cmova cx,  word  [rbx + 0x13]
cmova edx, dword [rcx + 0x14]
cmova rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmova cx,  word  [rbx + 0x1235]
cmova edx, dword [rcx + 0x1236]
cmova rsi, qword [rdx + 0x1237]

cmova cx,  word  [rbx + 0x12345679]
cmova edx, dword [rcx + 0x1234567a]
cmova rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmova cx,  word  [rbx + rcx]
cmova edx, dword [rcx + rsi]
cmova rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmova cx,  word  [rbx + 4 * rcx]
cmova edx, dword [rcx + 8 * rsi]
cmova rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmova cx,  word  [rbx + rcx + 0x13]
cmova edx, dword [rcx + rsi + 0x14]
cmova rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmova cx,  word  [rbx + rcx + 0x1235]
cmova edx, dword [rcx + rsi + 0x1236]
cmova rsi, qword [rdx + rdi + 0x1237]

cmova cx,  word  [rbx + rcx + 0x12345679]
cmova edx, dword [rcx + rsi + 0x1234567a]
cmova rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmova cx,  word  [rbx + 4 * rcx + 0x13]
cmova edx, dword [rcx + 8 * rsi + 0x14]
cmova rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmova cx,  word  [rbx + 4 * rcx + 0x1235]
cmova edx, dword [rcx + 8 * rsi + 0x1236]
cmova rsi, qword [rdx + 8 * rdi + 0x1237]

cmova cx,  word  [rbx + 4 * rcx + 0x12345679]
cmova edx, dword [rcx + 8 * rsi + 0x1234567a]
cmova rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmova cx,  word  [4 * rcx]
cmova edx, dword [8 * rsi]
cmova rsi, qword [8 * rdi]

; [scale * index + disp8]
cmova cx,  word  [4 * rcx + 0x13]
cmova edx, dword [8 * rsi + 0x14]
cmova rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmova cx,  word  [4 * rcx + 0x1235]
cmova edx, dword [8 * rsi + 0x1236]
cmova rsi, qword [8 * rdi + 0x1237]

cmova cx,  word  [4 * rcx + 0x12345679]
cmova edx, dword [8 * rsi + 0x1234567a]
cmova rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmova ax, word [rbp]
cmova ax, word [rbp + 0x12]
cmova ax, word [rbp + 0x1234]
cmova ax, word [rbp + 0x12345678]

cmova eax, dword [4 * rbp]
cmova eax, dword [4 * rbp + 0x12]
cmova eax, dword [4 * rbp + 0x1234]
cmova eax, dword [4 * rbp + 0x12345678]

cmova rax, qword [rbx + 4 * rbp]
cmova rax, qword [rbx + 4 * rbp + 0x12]
cmova rax, qword [rbx + 4 * rbp + 0x1234]
cmova rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmova ax, word [rsp]
cmova ax, word [rsp + 0x12]
cmova ax, word [rsp + 0x1234]
cmova ax, word [rsp + 0x12345678]

cmova eax, dword [rsp + rax]
cmova eax, dword [rsp + rbp]
cmova eax, dword [rsp + 2*rbp]
cmova eax, dword [rsp + 4*rbp]
cmova eax, dword [rsp + 8*rbp]

; use each register as indirect.
cmova ax, word [rax]
cmova ax, word [rcx]
cmova ax, word [rdx]
cmova ax, word [rbx]
cmova ax, word [rsp]
cmova ax, word [rbp]
cmova ax, word [rsi]
cmova ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmova eax, dword [rax + 2*rax]
cmova eax, dword [rcx + 2*rcx]
cmova eax, dword [rdx + 2*rdx]
cmova eax, dword [rbx + 2*rbx]
cmova eax, dword [rbp + 2*rbp]
cmova eax, dword [rsi + 2*rsi]
cmova eax, dword [rdi + 2*rdi]
