use64
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
cmovo cx,  word  [rip + 0x13]
cmovo edx, dword [rip + 0x14]
cmovo rsi, qword [rip + 0x15]

cmovo cx,  word  [rip + 0x1235]
cmovo edx, dword [rip + 0x1236]
cmovo rsi, qword [rip + 0x1237]

cmovo cx,  word  [rip + 0x12345679]
cmovo edx, dword [rip + 0x1234567a]
cmovo rsi, qword [rip + 0x1234567b]

; [rip + base]
cmovo cx,  word  [rbx]
cmovo edx, dword [rcx]
cmovo rsi, qword [rdx]

; [rip + base + disp8]
cmovo cx,  word  [rbx + 0x13]
cmovo edx, dword [rcx + 0x14]
cmovo rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmovo cx,  word  [rbx + 0x1235]
cmovo edx, dword [rcx + 0x1236]
cmovo rsi, qword [rdx + 0x1237]

cmovo cx,  word  [rbx + 0x12345679]
cmovo edx, dword [rcx + 0x1234567a]
cmovo rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmovo cx,  word  [rbx + rcx]
cmovo edx, dword [rcx + rsi]
cmovo rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmovo cx,  word  [rbx + 4 * rcx]
cmovo edx, dword [rcx + 8 * rsi]
cmovo rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmovo cx,  word  [rbx + rcx + 0x13]
cmovo edx, dword [rcx + rsi + 0x14]
cmovo rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmovo cx,  word  [rbx + rcx + 0x1235]
cmovo edx, dword [rcx + rsi + 0x1236]
cmovo rsi, qword [rdx + rdi + 0x1237]

cmovo cx,  word  [rbx + rcx + 0x12345679]
cmovo edx, dword [rcx + rsi + 0x1234567a]
cmovo rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmovo cx,  word  [rbx + 4 * rcx + 0x13]
cmovo edx, dword [rcx + 8 * rsi + 0x14]
cmovo rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmovo cx,  word  [rbx + 4 * rcx + 0x1235]
cmovo edx, dword [rcx + 8 * rsi + 0x1236]
cmovo rsi, qword [rdx + 8 * rdi + 0x1237]

cmovo cx,  word  [rbx + 4 * rcx + 0x12345679]
cmovo edx, dword [rcx + 8 * rsi + 0x1234567a]
cmovo rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmovo cx,  word  [4 * rcx]
cmovo edx, dword [8 * rsi]
cmovo rsi, qword [8 * rdi]

; [scale * index + disp8]
cmovo cx,  word  [4 * rcx + 0x13]
cmovo edx, dword [8 * rsi + 0x14]
cmovo rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmovo cx,  word  [4 * rcx + 0x1235]
cmovo edx, dword [8 * rsi + 0x1236]
cmovo rsi, qword [8 * rdi + 0x1237]

cmovo cx,  word  [4 * rcx + 0x12345679]
cmovo edx, dword [8 * rsi + 0x1234567a]
cmovo rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmovo ax, word [rbp]
cmovo ax, word [rbp + 0x12]
cmovo ax, word [rbp + 0x1234]
cmovo ax, word [rbp + 0x12345678]

cmovo eax, dword [4 * rbp]
cmovo eax, dword [4 * rbp + 0x12]
cmovo eax, dword [4 * rbp + 0x1234]
cmovo eax, dword [4 * rbp + 0x12345678]

cmovo rax, qword [rbx + 4 * rbp]
cmovo rax, qword [rbx + 4 * rbp + 0x12]
cmovo rax, qword [rbx + 4 * rbp + 0x1234]
cmovo rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmovo ax, word [rsp]
cmovo ax, word [rsp + 0x12]
cmovo ax, word [rsp + 0x1234]
cmovo ax, word [rsp + 0x12345678]

cmovo eax, dword [rsp + rax]
cmovo eax, dword [rsp + rbp]
cmovo eax, dword [rsp + 2*rbp]
cmovo eax, dword [rsp + 4*rbp]
cmovo eax, dword [rsp + 8*rbp]

; use each register as indirect.
cmovo ax, word [rax]
cmovo ax, word [rcx]
cmovo ax, word [rdx]
cmovo ax, word [rbx]
cmovo ax, word [rsp]
cmovo ax, word [rbp]
cmovo ax, word [rsi]
cmovo ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmovo eax, dword [rax + 2*rax]
cmovo eax, dword [rcx + 2*rcx]
cmovo eax, dword [rdx + 2*rdx]
cmovo eax, dword [rbx + 2*rbx]
cmovo eax, dword [rbp + 2*rbp]
cmovo eax, dword [rsi + 2*rsi]
cmovo eax, dword [rdi + 2*rdi]
