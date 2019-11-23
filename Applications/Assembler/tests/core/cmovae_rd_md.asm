use64
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
cmovae cx,  word  [rip + 0x13]
cmovae edx, dword [rip + 0x14]
cmovae rsi, qword [rip + 0x15]

cmovae cx,  word  [rip + 0x1235]
cmovae edx, dword [rip + 0x1236]
cmovae rsi, qword [rip + 0x1237]

cmovae cx,  word  [rip + 0x12345679]
cmovae edx, dword [rip + 0x1234567a]
cmovae rsi, qword [rip + 0x1234567b]

; [rip + base]
cmovae cx,  word  [rbx]
cmovae edx, dword [rcx]
cmovae rsi, qword [rdx]

; [rip + base + disp8]
cmovae cx,  word  [rbx + 0x13]
cmovae edx, dword [rcx + 0x14]
cmovae rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmovae cx,  word  [rbx + 0x1235]
cmovae edx, dword [rcx + 0x1236]
cmovae rsi, qword [rdx + 0x1237]

cmovae cx,  word  [rbx + 0x12345679]
cmovae edx, dword [rcx + 0x1234567a]
cmovae rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmovae cx,  word  [rbx + rcx]
cmovae edx, dword [rcx + rsi]
cmovae rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmovae cx,  word  [rbx + 4 * rcx]
cmovae edx, dword [rcx + 8 * rsi]
cmovae rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmovae cx,  word  [rbx + rcx + 0x13]
cmovae edx, dword [rcx + rsi + 0x14]
cmovae rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmovae cx,  word  [rbx + rcx + 0x1235]
cmovae edx, dword [rcx + rsi + 0x1236]
cmovae rsi, qword [rdx + rdi + 0x1237]

cmovae cx,  word  [rbx + rcx + 0x12345679]
cmovae edx, dword [rcx + rsi + 0x1234567a]
cmovae rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmovae cx,  word  [rbx + 4 * rcx + 0x13]
cmovae edx, dword [rcx + 8 * rsi + 0x14]
cmovae rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmovae cx,  word  [rbx + 4 * rcx + 0x1235]
cmovae edx, dword [rcx + 8 * rsi + 0x1236]
cmovae rsi, qword [rdx + 8 * rdi + 0x1237]

cmovae cx,  word  [rbx + 4 * rcx + 0x12345679]
cmovae edx, dword [rcx + 8 * rsi + 0x1234567a]
cmovae rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmovae cx,  word  [4 * rcx]
cmovae edx, dword [8 * rsi]
cmovae rsi, qword [8 * rdi]

; [scale * index + disp8]
cmovae cx,  word  [4 * rcx + 0x13]
cmovae edx, dword [8 * rsi + 0x14]
cmovae rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmovae cx,  word  [4 * rcx + 0x1235]
cmovae edx, dword [8 * rsi + 0x1236]
cmovae rsi, qword [8 * rdi + 0x1237]

cmovae cx,  word  [4 * rcx + 0x12345679]
cmovae edx, dword [8 * rsi + 0x1234567a]
cmovae rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmovae ax, word [rbp]
cmovae ax, word [rbp + 0x12]
cmovae ax, word [rbp + 0x1234]
cmovae ax, word [rbp + 0x12345678]

cmovae eax, dword [4 * rbp]
cmovae eax, dword [4 * rbp + 0x12]
cmovae eax, dword [4 * rbp + 0x1234]
cmovae eax, dword [4 * rbp + 0x12345678]

cmovae rax, qword [rbx + 4 * rbp]
cmovae rax, qword [rbx + 4 * rbp + 0x12]
cmovae rax, qword [rbx + 4 * rbp + 0x1234]
cmovae rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmovae ax, word [rsp]
cmovae ax, word [rsp + 0x12]
cmovae ax, word [rsp + 0x1234]
cmovae ax, word [rsp + 0x12345678]

cmovae eax, dword [rsp + rax]
cmovae eax, dword [rsp + rbp]
cmovae eax, dword [rsp + 2*rbp]
cmovae eax, dword [rsp + 4*rbp]
cmovae eax, dword [rsp + 8*rbp]

; use each register as indirect.
cmovae ax, word [rax]
cmovae ax, word [rcx]
cmovae ax, word [rdx]
cmovae ax, word [rbx]
cmovae ax, word [rsp]
cmovae ax, word [rbp]
cmovae ax, word [rsi]
cmovae ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmovae eax, dword [rax + 2*rax]
cmovae eax, dword [rcx + 2*rcx]
cmovae eax, dword [rdx + 2*rdx]
cmovae eax, dword [rbx + 2*rbx]
cmovae eax, dword [rbp + 2*rbp]
cmovae eax, dword [rsi + 2*rsi]
cmovae eax, dword [rdi + 2*rdi]
