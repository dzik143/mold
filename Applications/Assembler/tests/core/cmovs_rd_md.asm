use64
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
cmovs cx,  word  [rip + 0x13]
cmovs edx, dword [rip + 0x14]
cmovs rsi, qword [rip + 0x15]

cmovs cx,  word  [rip + 0x1235]
cmovs edx, dword [rip + 0x1236]
cmovs rsi, qword [rip + 0x1237]

cmovs cx,  word  [rip + 0x12345679]
cmovs edx, dword [rip + 0x1234567a]
cmovs rsi, qword [rip + 0x1234567b]

; [rip + base]
cmovs cx,  word  [rbx]
cmovs edx, dword [rcx]
cmovs rsi, qword [rdx]

; [rip + base + disp8]
cmovs cx,  word  [rbx + 0x13]
cmovs edx, dword [rcx + 0x14]
cmovs rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmovs cx,  word  [rbx + 0x1235]
cmovs edx, dword [rcx + 0x1236]
cmovs rsi, qword [rdx + 0x1237]

cmovs cx,  word  [rbx + 0x12345679]
cmovs edx, dword [rcx + 0x1234567a]
cmovs rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmovs cx,  word  [rbx + rcx]
cmovs edx, dword [rcx + rsi]
cmovs rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmovs cx,  word  [rbx + 4 * rcx]
cmovs edx, dword [rcx + 8 * rsi]
cmovs rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmovs cx,  word  [rbx + rcx + 0x13]
cmovs edx, dword [rcx + rsi + 0x14]
cmovs rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmovs cx,  word  [rbx + rcx + 0x1235]
cmovs edx, dword [rcx + rsi + 0x1236]
cmovs rsi, qword [rdx + rdi + 0x1237]

cmovs cx,  word  [rbx + rcx + 0x12345679]
cmovs edx, dword [rcx + rsi + 0x1234567a]
cmovs rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmovs cx,  word  [rbx + 4 * rcx + 0x13]
cmovs edx, dword [rcx + 8 * rsi + 0x14]
cmovs rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmovs cx,  word  [rbx + 4 * rcx + 0x1235]
cmovs edx, dword [rcx + 8 * rsi + 0x1236]
cmovs rsi, qword [rdx + 8 * rdi + 0x1237]

cmovs cx,  word  [rbx + 4 * rcx + 0x12345679]
cmovs edx, dword [rcx + 8 * rsi + 0x1234567a]
cmovs rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmovs cx,  word  [4 * rcx]
cmovs edx, dword [8 * rsi]
cmovs rsi, qword [8 * rdi]

; [scale * index + disp8]
cmovs cx,  word  [4 * rcx + 0x13]
cmovs edx, dword [8 * rsi + 0x14]
cmovs rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmovs cx,  word  [4 * rcx + 0x1235]
cmovs edx, dword [8 * rsi + 0x1236]
cmovs rsi, qword [8 * rdi + 0x1237]

cmovs cx,  word  [4 * rcx + 0x12345679]
cmovs edx, dword [8 * rsi + 0x1234567a]
cmovs rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmovs ax, word [rbp]
cmovs ax, word [rbp + 0x12]
cmovs ax, word [rbp + 0x1234]
cmovs ax, word [rbp + 0x12345678]

cmovs eax, dword [4 * rbp]
cmovs eax, dword [4 * rbp + 0x12]
cmovs eax, dword [4 * rbp + 0x1234]
cmovs eax, dword [4 * rbp + 0x12345678]

cmovs rax, qword [rbx + 4 * rbp]
cmovs rax, qword [rbx + 4 * rbp + 0x12]
cmovs rax, qword [rbx + 4 * rbp + 0x1234]
cmovs rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmovs ax, word [rsp]
cmovs ax, word [rsp + 0x12]
cmovs ax, word [rsp + 0x1234]
cmovs ax, word [rsp + 0x12345678]

cmovs eax, dword [rsp + rax]
cmovs eax, dword [rsp + rbp]
cmovs eax, dword [rsp + 2*rbp]
cmovs eax, dword [rsp + 4*rbp]
cmovs eax, dword [rsp + 8*rbp]

; use each register as indirect.
cmovs ax, word [rax]
cmovs ax, word [rcx]
cmovs ax, word [rdx]
cmovs ax, word [rbx]
cmovs ax, word [rsp]
cmovs ax, word [rbp]
cmovs ax, word [rsi]
cmovs ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmovs eax, dword [rax + 2*rax]
cmovs eax, dword [rcx + 2*rcx]
cmovs eax, dword [rdx + 2*rdx]
cmovs eax, dword [rbx + 2*rbx]
cmovs eax, dword [rbp + 2*rbp]
cmovs eax, dword [rsi + 2*rsi]
cmovs eax, dword [rdi + 2*rdi]
