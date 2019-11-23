use64
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
cmovna cx,  word  [rip + 0x13]
cmovna edx, dword [rip + 0x14]
cmovna rsi, qword [rip + 0x15]

cmovna cx,  word  [rip + 0x1235]
cmovna edx, dword [rip + 0x1236]
cmovna rsi, qword [rip + 0x1237]

cmovna cx,  word  [rip + 0x12345679]
cmovna edx, dword [rip + 0x1234567a]
cmovna rsi, qword [rip + 0x1234567b]

; [rip + base]
cmovna cx,  word  [rbx]
cmovna edx, dword [rcx]
cmovna rsi, qword [rdx]

; [rip + base + disp8]
cmovna cx,  word  [rbx + 0x13]
cmovna edx, dword [rcx + 0x14]
cmovna rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmovna cx,  word  [rbx + 0x1235]
cmovna edx, dword [rcx + 0x1236]
cmovna rsi, qword [rdx + 0x1237]

cmovna cx,  word  [rbx + 0x12345679]
cmovna edx, dword [rcx + 0x1234567a]
cmovna rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmovna cx,  word  [rbx + rcx]
cmovna edx, dword [rcx + rsi]
cmovna rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmovna cx,  word  [rbx + 4 * rcx]
cmovna edx, dword [rcx + 8 * rsi]
cmovna rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmovna cx,  word  [rbx + rcx + 0x13]
cmovna edx, dword [rcx + rsi + 0x14]
cmovna rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmovna cx,  word  [rbx + rcx + 0x1235]
cmovna edx, dword [rcx + rsi + 0x1236]
cmovna rsi, qword [rdx + rdi + 0x1237]

cmovna cx,  word  [rbx + rcx + 0x12345679]
cmovna edx, dword [rcx + rsi + 0x1234567a]
cmovna rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmovna cx,  word  [rbx + 4 * rcx + 0x13]
cmovna edx, dword [rcx + 8 * rsi + 0x14]
cmovna rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmovna cx,  word  [rbx + 4 * rcx + 0x1235]
cmovna edx, dword [rcx + 8 * rsi + 0x1236]
cmovna rsi, qword [rdx + 8 * rdi + 0x1237]

cmovna cx,  word  [rbx + 4 * rcx + 0x12345679]
cmovna edx, dword [rcx + 8 * rsi + 0x1234567a]
cmovna rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmovna cx,  word  [4 * rcx]
cmovna edx, dword [8 * rsi]
cmovna rsi, qword [8 * rdi]

; [scale * index + disp8]
cmovna cx,  word  [4 * rcx + 0x13]
cmovna edx, dword [8 * rsi + 0x14]
cmovna rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmovna cx,  word  [4 * rcx + 0x1235]
cmovna edx, dword [8 * rsi + 0x1236]
cmovna rsi, qword [8 * rdi + 0x1237]

cmovna cx,  word  [4 * rcx + 0x12345679]
cmovna edx, dword [8 * rsi + 0x1234567a]
cmovna rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmovna ax, word [rbp]
cmovna ax, word [rbp + 0x12]
cmovna ax, word [rbp + 0x1234]
cmovna ax, word [rbp + 0x12345678]

cmovna eax, dword [4 * rbp]
cmovna eax, dword [4 * rbp + 0x12]
cmovna eax, dword [4 * rbp + 0x1234]
cmovna eax, dword [4 * rbp + 0x12345678]

cmovna rax, qword [rbx + 4 * rbp]
cmovna rax, qword [rbx + 4 * rbp + 0x12]
cmovna rax, qword [rbx + 4 * rbp + 0x1234]
cmovna rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmovna ax, word [rsp]
cmovna ax, word [rsp + 0x12]
cmovna ax, word [rsp + 0x1234]
cmovna ax, word [rsp + 0x12345678]

cmovna eax, dword [rsp + rax]
cmovna eax, dword [rsp + rbp]
cmovna eax, dword [rsp + 2*rbp]
cmovna eax, dword [rsp + 4*rbp]
cmovna eax, dword [rsp + 8*rbp]

; use each register as indirect.
cmovna ax, word [rax]
cmovna ax, word [rcx]
cmovna ax, word [rdx]
cmovna ax, word [rbx]
cmovna ax, word [rsp]
cmovna ax, word [rbp]
cmovna ax, word [rsi]
cmovna ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmovna eax, dword [rax + 2*rax]
cmovna eax, dword [rcx + 2*rcx]
cmovna eax, dword [rdx + 2*rdx]
cmovna eax, dword [rbx + 2*rbx]
cmovna eax, dword [rbp + 2*rbp]
cmovna eax, dword [rsi + 2*rsi]
cmovna eax, dword [rdi + 2*rdi]
