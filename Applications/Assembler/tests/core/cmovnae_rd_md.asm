use64
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
cmovnae cx,  word  [rip + 0x13]
cmovnae edx, dword [rip + 0x14]
cmovnae rsi, qword [rip + 0x15]

cmovnae cx,  word  [rip + 0x1235]
cmovnae edx, dword [rip + 0x1236]
cmovnae rsi, qword [rip + 0x1237]

cmovnae cx,  word  [rip + 0x12345679]
cmovnae edx, dword [rip + 0x1234567a]
cmovnae rsi, qword [rip + 0x1234567b]

; [rip + base]
cmovnae cx,  word  [rbx]
cmovnae edx, dword [rcx]
cmovnae rsi, qword [rdx]

; [rip + base + disp8]
cmovnae cx,  word  [rbx + 0x13]
cmovnae edx, dword [rcx + 0x14]
cmovnae rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmovnae cx,  word  [rbx + 0x1235]
cmovnae edx, dword [rcx + 0x1236]
cmovnae rsi, qword [rdx + 0x1237]

cmovnae cx,  word  [rbx + 0x12345679]
cmovnae edx, dword [rcx + 0x1234567a]
cmovnae rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmovnae cx,  word  [rbx + rcx]
cmovnae edx, dword [rcx + rsi]
cmovnae rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmovnae cx,  word  [rbx + 4 * rcx]
cmovnae edx, dword [rcx + 8 * rsi]
cmovnae rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmovnae cx,  word  [rbx + rcx + 0x13]
cmovnae edx, dword [rcx + rsi + 0x14]
cmovnae rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmovnae cx,  word  [rbx + rcx + 0x1235]
cmovnae edx, dword [rcx + rsi + 0x1236]
cmovnae rsi, qword [rdx + rdi + 0x1237]

cmovnae cx,  word  [rbx + rcx + 0x12345679]
cmovnae edx, dword [rcx + rsi + 0x1234567a]
cmovnae rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmovnae cx,  word  [rbx + 4 * rcx + 0x13]
cmovnae edx, dword [rcx + 8 * rsi + 0x14]
cmovnae rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmovnae cx,  word  [rbx + 4 * rcx + 0x1235]
cmovnae edx, dword [rcx + 8 * rsi + 0x1236]
cmovnae rsi, qword [rdx + 8 * rdi + 0x1237]

cmovnae cx,  word  [rbx + 4 * rcx + 0x12345679]
cmovnae edx, dword [rcx + 8 * rsi + 0x1234567a]
cmovnae rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmovnae cx,  word  [4 * rcx]
cmovnae edx, dword [8 * rsi]
cmovnae rsi, qword [8 * rdi]

; [scale * index + disp8]
cmovnae cx,  word  [4 * rcx + 0x13]
cmovnae edx, dword [8 * rsi + 0x14]
cmovnae rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmovnae cx,  word  [4 * rcx + 0x1235]
cmovnae edx, dword [8 * rsi + 0x1236]
cmovnae rsi, qword [8 * rdi + 0x1237]

cmovnae cx,  word  [4 * rcx + 0x12345679]
cmovnae edx, dword [8 * rsi + 0x1234567a]
cmovnae rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmovnae ax, word [rbp]
cmovnae ax, word [rbp + 0x12]
cmovnae ax, word [rbp + 0x1234]
cmovnae ax, word [rbp + 0x12345678]

cmovnae eax, dword [4 * rbp]
cmovnae eax, dword [4 * rbp + 0x12]
cmovnae eax, dword [4 * rbp + 0x1234]
cmovnae eax, dword [4 * rbp + 0x12345678]

cmovnae rax, qword [rbx + 4 * rbp]
cmovnae rax, qword [rbx + 4 * rbp + 0x12]
cmovnae rax, qword [rbx + 4 * rbp + 0x1234]
cmovnae rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmovnae ax, word [rsp]
cmovnae ax, word [rsp + 0x12]
cmovnae ax, word [rsp + 0x1234]
cmovnae ax, word [rsp + 0x12345678]

cmovnae eax, dword [rsp + rax]
cmovnae eax, dword [rsp + rbp]
cmovnae eax, dword [rsp + 2*rbp]
cmovnae eax, dword [rsp + 4*rbp]
cmovnae eax, dword [rsp + 8*rbp]

; use each register as indirect.
cmovnae ax, word [rax]
cmovnae ax, word [rcx]
cmovnae ax, word [rdx]
cmovnae ax, word [rbx]
cmovnae ax, word [rsp]
cmovnae ax, word [rbp]
cmovnae ax, word [rsi]
cmovnae ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmovnae eax, dword [rax + 2*rax]
cmovnae eax, dword [rcx + 2*rcx]
cmovnae eax, dword [rdx + 2*rdx]
cmovnae eax, dword [rbx + 2*rbx]
cmovnae eax, dword [rbp + 2*rbp]
cmovnae eax, dword [rsi + 2*rsi]
cmovnae eax, dword [rdi + 2*rdi]
