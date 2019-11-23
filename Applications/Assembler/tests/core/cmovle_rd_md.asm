use64
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
cmovle cx,  word  [rip + 0x13]
cmovle edx, dword [rip + 0x14]
cmovle rsi, qword [rip + 0x15]

cmovle cx,  word  [rip + 0x1235]
cmovle edx, dword [rip + 0x1236]
cmovle rsi, qword [rip + 0x1237]

cmovle cx,  word  [rip + 0x12345679]
cmovle edx, dword [rip + 0x1234567a]
cmovle rsi, qword [rip + 0x1234567b]

; [rip + base]
cmovle cx,  word  [rbx]
cmovle edx, dword [rcx]
cmovle rsi, qword [rdx]

; [rip + base + disp8]
cmovle cx,  word  [rbx + 0x13]
cmovle edx, dword [rcx + 0x14]
cmovle rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmovle cx,  word  [rbx + 0x1235]
cmovle edx, dword [rcx + 0x1236]
cmovle rsi, qword [rdx + 0x1237]

cmovle cx,  word  [rbx + 0x12345679]
cmovle edx, dword [rcx + 0x1234567a]
cmovle rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmovle cx,  word  [rbx + rcx]
cmovle edx, dword [rcx + rsi]
cmovle rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmovle cx,  word  [rbx + 4 * rcx]
cmovle edx, dword [rcx + 8 * rsi]
cmovle rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmovle cx,  word  [rbx + rcx + 0x13]
cmovle edx, dword [rcx + rsi + 0x14]
cmovle rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmovle cx,  word  [rbx + rcx + 0x1235]
cmovle edx, dword [rcx + rsi + 0x1236]
cmovle rsi, qword [rdx + rdi + 0x1237]

cmovle cx,  word  [rbx + rcx + 0x12345679]
cmovle edx, dword [rcx + rsi + 0x1234567a]
cmovle rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmovle cx,  word  [rbx + 4 * rcx + 0x13]
cmovle edx, dword [rcx + 8 * rsi + 0x14]
cmovle rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmovle cx,  word  [rbx + 4 * rcx + 0x1235]
cmovle edx, dword [rcx + 8 * rsi + 0x1236]
cmovle rsi, qword [rdx + 8 * rdi + 0x1237]

cmovle cx,  word  [rbx + 4 * rcx + 0x12345679]
cmovle edx, dword [rcx + 8 * rsi + 0x1234567a]
cmovle rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmovle cx,  word  [4 * rcx]
cmovle edx, dword [8 * rsi]
cmovle rsi, qword [8 * rdi]

; [scale * index + disp8]
cmovle cx,  word  [4 * rcx + 0x13]
cmovle edx, dword [8 * rsi + 0x14]
cmovle rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmovle cx,  word  [4 * rcx + 0x1235]
cmovle edx, dword [8 * rsi + 0x1236]
cmovle rsi, qword [8 * rdi + 0x1237]

cmovle cx,  word  [4 * rcx + 0x12345679]
cmovle edx, dword [8 * rsi + 0x1234567a]
cmovle rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmovle ax, word [rbp]
cmovle ax, word [rbp + 0x12]
cmovle ax, word [rbp + 0x1234]
cmovle ax, word [rbp + 0x12345678]

cmovle eax, dword [4 * rbp]
cmovle eax, dword [4 * rbp + 0x12]
cmovle eax, dword [4 * rbp + 0x1234]
cmovle eax, dword [4 * rbp + 0x12345678]

cmovle rax, qword [rbx + 4 * rbp]
cmovle rax, qword [rbx + 4 * rbp + 0x12]
cmovle rax, qword [rbx + 4 * rbp + 0x1234]
cmovle rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmovle ax, word [rsp]
cmovle ax, word [rsp + 0x12]
cmovle ax, word [rsp + 0x1234]
cmovle ax, word [rsp + 0x12345678]

cmovle eax, dword [rsp + rax]
cmovle eax, dword [rsp + rbp]
cmovle eax, dword [rsp + 2*rbp]
cmovle eax, dword [rsp + 4*rbp]
cmovle eax, dword [rsp + 8*rbp]

; use each register as indirect.
cmovle ax, word [rax]
cmovle ax, word [rcx]
cmovle ax, word [rdx]
cmovle ax, word [rbx]
cmovle ax, word [rsp]
cmovle ax, word [rbp]
cmovle ax, word [rsi]
cmovle ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmovle eax, dword [rax + 2*rax]
cmovle eax, dword [rcx + 2*rcx]
cmovle eax, dword [rdx + 2*rdx]
cmovle eax, dword [rbx + 2*rbx]
cmovle eax, dword [rbp + 2*rbp]
cmovle eax, dword [rsi + 2*rsi]
cmovle eax, dword [rdi + 2*rdi]
