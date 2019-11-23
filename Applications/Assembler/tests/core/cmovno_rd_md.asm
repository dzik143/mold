use64
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
cmovno cx,  word  [rip + 0x13]
cmovno edx, dword [rip + 0x14]
cmovno rsi, qword [rip + 0x15]

cmovno cx,  word  [rip + 0x1235]
cmovno edx, dword [rip + 0x1236]
cmovno rsi, qword [rip + 0x1237]

cmovno cx,  word  [rip + 0x12345679]
cmovno edx, dword [rip + 0x1234567a]
cmovno rsi, qword [rip + 0x1234567b]

; [rip + base]
cmovno cx,  word  [rbx]
cmovno edx, dword [rcx]
cmovno rsi, qword [rdx]

; [rip + base + disp8]
cmovno cx,  word  [rbx + 0x13]
cmovno edx, dword [rcx + 0x14]
cmovno rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmovno cx,  word  [rbx + 0x1235]
cmovno edx, dword [rcx + 0x1236]
cmovno rsi, qword [rdx + 0x1237]

cmovno cx,  word  [rbx + 0x12345679]
cmovno edx, dword [rcx + 0x1234567a]
cmovno rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmovno cx,  word  [rbx + rcx]
cmovno edx, dword [rcx + rsi]
cmovno rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmovno cx,  word  [rbx + 4 * rcx]
cmovno edx, dword [rcx + 8 * rsi]
cmovno rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmovno cx,  word  [rbx + rcx + 0x13]
cmovno edx, dword [rcx + rsi + 0x14]
cmovno rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmovno cx,  word  [rbx + rcx + 0x1235]
cmovno edx, dword [rcx + rsi + 0x1236]
cmovno rsi, qword [rdx + rdi + 0x1237]

cmovno cx,  word  [rbx + rcx + 0x12345679]
cmovno edx, dword [rcx + rsi + 0x1234567a]
cmovno rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmovno cx,  word  [rbx + 4 * rcx + 0x13]
cmovno edx, dword [rcx + 8 * rsi + 0x14]
cmovno rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmovno cx,  word  [rbx + 4 * rcx + 0x1235]
cmovno edx, dword [rcx + 8 * rsi + 0x1236]
cmovno rsi, qword [rdx + 8 * rdi + 0x1237]

cmovno cx,  word  [rbx + 4 * rcx + 0x12345679]
cmovno edx, dword [rcx + 8 * rsi + 0x1234567a]
cmovno rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmovno cx,  word  [4 * rcx]
cmovno edx, dword [8 * rsi]
cmovno rsi, qword [8 * rdi]

; [scale * index + disp8]
cmovno cx,  word  [4 * rcx + 0x13]
cmovno edx, dword [8 * rsi + 0x14]
cmovno rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmovno cx,  word  [4 * rcx + 0x1235]
cmovno edx, dword [8 * rsi + 0x1236]
cmovno rsi, qword [8 * rdi + 0x1237]

cmovno cx,  word  [4 * rcx + 0x12345679]
cmovno edx, dword [8 * rsi + 0x1234567a]
cmovno rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmovno ax, word [rbp]
cmovno ax, word [rbp + 0x12]
cmovno ax, word [rbp + 0x1234]
cmovno ax, word [rbp + 0x12345678]

cmovno eax, dword [4 * rbp]
cmovno eax, dword [4 * rbp + 0x12]
cmovno eax, dword [4 * rbp + 0x1234]
cmovno eax, dword [4 * rbp + 0x12345678]

cmovno rax, qword [rbx + 4 * rbp]
cmovno rax, qword [rbx + 4 * rbp + 0x12]
cmovno rax, qword [rbx + 4 * rbp + 0x1234]
cmovno rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmovno ax, word [rsp]
cmovno ax, word [rsp + 0x12]
cmovno ax, word [rsp + 0x1234]
cmovno ax, word [rsp + 0x12345678]

cmovno eax, dword [rsp + rax]
cmovno eax, dword [rsp + rbp]
cmovno eax, dword [rsp + 2*rbp]
cmovno eax, dword [rsp + 4*rbp]
cmovno eax, dword [rsp + 8*rbp]

; use each register as indirect.
cmovno ax, word [rax]
cmovno ax, word [rcx]
cmovno ax, word [rdx]
cmovno ax, word [rbx]
cmovno ax, word [rsp]
cmovno ax, word [rbp]
cmovno ax, word [rsi]
cmovno ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmovno eax, dword [rax + 2*rax]
cmovno eax, dword [rcx + 2*rcx]
cmovno eax, dword [rdx + 2*rdx]
cmovno eax, dword [rbx + 2*rbx]
cmovno eax, dword [rbp + 2*rbp]
cmovno eax, dword [rsi + 2*rsi]
cmovno eax, dword [rdi + 2*rdi]
