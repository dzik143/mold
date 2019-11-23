use64
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
cmovng cx,  word  [rip + 0x13]
cmovng edx, dword [rip + 0x14]
cmovng rsi, qword [rip + 0x15]

cmovng cx,  word  [rip + 0x1235]
cmovng edx, dword [rip + 0x1236]
cmovng rsi, qword [rip + 0x1237]

cmovng cx,  word  [rip + 0x12345679]
cmovng edx, dword [rip + 0x1234567a]
cmovng rsi, qword [rip + 0x1234567b]

; [rip + base]
cmovng cx,  word  [rbx]
cmovng edx, dword [rcx]
cmovng rsi, qword [rdx]

; [rip + base + disp8]
cmovng cx,  word  [rbx + 0x13]
cmovng edx, dword [rcx + 0x14]
cmovng rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmovng cx,  word  [rbx + 0x1235]
cmovng edx, dword [rcx + 0x1236]
cmovng rsi, qword [rdx + 0x1237]

cmovng cx,  word  [rbx + 0x12345679]
cmovng edx, dword [rcx + 0x1234567a]
cmovng rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmovng cx,  word  [rbx + rcx]
cmovng edx, dword [rcx + rsi]
cmovng rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmovng cx,  word  [rbx + 4 * rcx]
cmovng edx, dword [rcx + 8 * rsi]
cmovng rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmovng cx,  word  [rbx + rcx + 0x13]
cmovng edx, dword [rcx + rsi + 0x14]
cmovng rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmovng cx,  word  [rbx + rcx + 0x1235]
cmovng edx, dword [rcx + rsi + 0x1236]
cmovng rsi, qword [rdx + rdi + 0x1237]

cmovng cx,  word  [rbx + rcx + 0x12345679]
cmovng edx, dword [rcx + rsi + 0x1234567a]
cmovng rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmovng cx,  word  [rbx + 4 * rcx + 0x13]
cmovng edx, dword [rcx + 8 * rsi + 0x14]
cmovng rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmovng cx,  word  [rbx + 4 * rcx + 0x1235]
cmovng edx, dword [rcx + 8 * rsi + 0x1236]
cmovng rsi, qword [rdx + 8 * rdi + 0x1237]

cmovng cx,  word  [rbx + 4 * rcx + 0x12345679]
cmovng edx, dword [rcx + 8 * rsi + 0x1234567a]
cmovng rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmovng cx,  word  [4 * rcx]
cmovng edx, dword [8 * rsi]
cmovng rsi, qword [8 * rdi]

; [scale * index + disp8]
cmovng cx,  word  [4 * rcx + 0x13]
cmovng edx, dword [8 * rsi + 0x14]
cmovng rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmovng cx,  word  [4 * rcx + 0x1235]
cmovng edx, dword [8 * rsi + 0x1236]
cmovng rsi, qword [8 * rdi + 0x1237]

cmovng cx,  word  [4 * rcx + 0x12345679]
cmovng edx, dword [8 * rsi + 0x1234567a]
cmovng rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmovng ax, word [rbp]
cmovng ax, word [rbp + 0x12]
cmovng ax, word [rbp + 0x1234]
cmovng ax, word [rbp + 0x12345678]

cmovng eax, dword [4 * rbp]
cmovng eax, dword [4 * rbp + 0x12]
cmovng eax, dword [4 * rbp + 0x1234]
cmovng eax, dword [4 * rbp + 0x12345678]

cmovng rax, qword [rbx + 4 * rbp]
cmovng rax, qword [rbx + 4 * rbp + 0x12]
cmovng rax, qword [rbx + 4 * rbp + 0x1234]
cmovng rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmovng ax, word [rsp]
cmovng ax, word [rsp + 0x12]
cmovng ax, word [rsp + 0x1234]
cmovng ax, word [rsp + 0x12345678]

cmovng eax, dword [rsp + rax]
cmovng eax, dword [rsp + rbp]
cmovng eax, dword [rsp + 2*rbp]
cmovng eax, dword [rsp + 4*rbp]
cmovng eax, dword [rsp + 8*rbp]

; use each register as indirect.
cmovng ax, word [rax]
cmovng ax, word [rcx]
cmovng ax, word [rdx]
cmovng ax, word [rbx]
cmovng ax, word [rsp]
cmovng ax, word [rbp]
cmovng ax, word [rsi]
cmovng ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmovng eax, dword [rax + 2*rax]
cmovng eax, dword [rcx + 2*rcx]
cmovng eax, dword [rdx + 2*rdx]
cmovng eax, dword [rbx + 2*rbx]
cmovng eax, dword [rbp + 2*rbp]
cmovng eax, dword [rsi + 2*rsi]
cmovng eax, dword [rdi + 2*rdi]
