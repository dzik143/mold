use64
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
cmovnp cx,  word  [rip + 0x13]
cmovnp edx, dword [rip + 0x14]
cmovnp rsi, qword [rip + 0x15]

cmovnp cx,  word  [rip + 0x1235]
cmovnp edx, dword [rip + 0x1236]
cmovnp rsi, qword [rip + 0x1237]

cmovnp cx,  word  [rip + 0x12345679]
cmovnp edx, dword [rip + 0x1234567a]
cmovnp rsi, qword [rip + 0x1234567b]

; [rip + base]
cmovnp cx,  word  [rbx]
cmovnp edx, dword [rcx]
cmovnp rsi, qword [rdx]

; [rip + base + disp8]
cmovnp cx,  word  [rbx + 0x13]
cmovnp edx, dword [rcx + 0x14]
cmovnp rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmovnp cx,  word  [rbx + 0x1235]
cmovnp edx, dword [rcx + 0x1236]
cmovnp rsi, qword [rdx + 0x1237]

cmovnp cx,  word  [rbx + 0x12345679]
cmovnp edx, dword [rcx + 0x1234567a]
cmovnp rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmovnp cx,  word  [rbx + rcx]
cmovnp edx, dword [rcx + rsi]
cmovnp rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmovnp cx,  word  [rbx + 4 * rcx]
cmovnp edx, dword [rcx + 8 * rsi]
cmovnp rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmovnp cx,  word  [rbx + rcx + 0x13]
cmovnp edx, dword [rcx + rsi + 0x14]
cmovnp rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmovnp cx,  word  [rbx + rcx + 0x1235]
cmovnp edx, dword [rcx + rsi + 0x1236]
cmovnp rsi, qword [rdx + rdi + 0x1237]

cmovnp cx,  word  [rbx + rcx + 0x12345679]
cmovnp edx, dword [rcx + rsi + 0x1234567a]
cmovnp rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmovnp cx,  word  [rbx + 4 * rcx + 0x13]
cmovnp edx, dword [rcx + 8 * rsi + 0x14]
cmovnp rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmovnp cx,  word  [rbx + 4 * rcx + 0x1235]
cmovnp edx, dword [rcx + 8 * rsi + 0x1236]
cmovnp rsi, qword [rdx + 8 * rdi + 0x1237]

cmovnp cx,  word  [rbx + 4 * rcx + 0x12345679]
cmovnp edx, dword [rcx + 8 * rsi + 0x1234567a]
cmovnp rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmovnp cx,  word  [4 * rcx]
cmovnp edx, dword [8 * rsi]
cmovnp rsi, qword [8 * rdi]

; [scale * index + disp8]
cmovnp cx,  word  [4 * rcx + 0x13]
cmovnp edx, dword [8 * rsi + 0x14]
cmovnp rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmovnp cx,  word  [4 * rcx + 0x1235]
cmovnp edx, dword [8 * rsi + 0x1236]
cmovnp rsi, qword [8 * rdi + 0x1237]

cmovnp cx,  word  [4 * rcx + 0x12345679]
cmovnp edx, dword [8 * rsi + 0x1234567a]
cmovnp rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmovnp ax, word [rbp]
cmovnp ax, word [rbp + 0x12]
cmovnp ax, word [rbp + 0x1234]
cmovnp ax, word [rbp + 0x12345678]

cmovnp eax, dword [4 * rbp]
cmovnp eax, dword [4 * rbp + 0x12]
cmovnp eax, dword [4 * rbp + 0x1234]
cmovnp eax, dword [4 * rbp + 0x12345678]

cmovnp rax, qword [rbx + 4 * rbp]
cmovnp rax, qword [rbx + 4 * rbp + 0x12]
cmovnp rax, qword [rbx + 4 * rbp + 0x1234]
cmovnp rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmovnp ax, word [rsp]
cmovnp ax, word [rsp + 0x12]
cmovnp ax, word [rsp + 0x1234]
cmovnp ax, word [rsp + 0x12345678]

cmovnp eax, dword [rsp + rax]
cmovnp eax, dword [rsp + rbp]
cmovnp eax, dword [rsp + 2*rbp]
cmovnp eax, dword [rsp + 4*rbp]
cmovnp eax, dword [rsp + 8*rbp]

; use each register as indirect.
cmovnp ax, word [rax]
cmovnp ax, word [rcx]
cmovnp ax, word [rdx]
cmovnp ax, word [rbx]
cmovnp ax, word [rsp]
cmovnp ax, word [rbp]
cmovnp ax, word [rsi]
cmovnp ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmovnp eax, dword [rax + 2*rax]
cmovnp eax, dword [rcx + 2*rcx]
cmovnp eax, dword [rdx + 2*rdx]
cmovnp eax, dword [rbx + 2*rbx]
cmovnp eax, dword [rbp + 2*rbp]
cmovnp eax, dword [rsi + 2*rsi]
cmovnp eax, dword [rdi + 2*rdi]
