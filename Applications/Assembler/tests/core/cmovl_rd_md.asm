use64
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
cmovl cx,  word  [rip + 0x13]
cmovl edx, dword [rip + 0x14]
cmovl rsi, qword [rip + 0x15]

cmovl cx,  word  [rip + 0x1235]
cmovl edx, dword [rip + 0x1236]
cmovl rsi, qword [rip + 0x1237]

cmovl cx,  word  [rip + 0x12345679]
cmovl edx, dword [rip + 0x1234567a]
cmovl rsi, qword [rip + 0x1234567b]

; [rip + base]
cmovl cx,  word  [rbx]
cmovl edx, dword [rcx]
cmovl rsi, qword [rdx]

; [rip + base + disp8]
cmovl cx,  word  [rbx + 0x13]
cmovl edx, dword [rcx + 0x14]
cmovl rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmovl cx,  word  [rbx + 0x1235]
cmovl edx, dword [rcx + 0x1236]
cmovl rsi, qword [rdx + 0x1237]

cmovl cx,  word  [rbx + 0x12345679]
cmovl edx, dword [rcx + 0x1234567a]
cmovl rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmovl cx,  word  [rbx + rcx]
cmovl edx, dword [rcx + rsi]
cmovl rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmovl cx,  word  [rbx + 4 * rcx]
cmovl edx, dword [rcx + 8 * rsi]
cmovl rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmovl cx,  word  [rbx + rcx + 0x13]
cmovl edx, dword [rcx + rsi + 0x14]
cmovl rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmovl cx,  word  [rbx + rcx + 0x1235]
cmovl edx, dword [rcx + rsi + 0x1236]
cmovl rsi, qword [rdx + rdi + 0x1237]

cmovl cx,  word  [rbx + rcx + 0x12345679]
cmovl edx, dword [rcx + rsi + 0x1234567a]
cmovl rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmovl cx,  word  [rbx + 4 * rcx + 0x13]
cmovl edx, dword [rcx + 8 * rsi + 0x14]
cmovl rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmovl cx,  word  [rbx + 4 * rcx + 0x1235]
cmovl edx, dword [rcx + 8 * rsi + 0x1236]
cmovl rsi, qword [rdx + 8 * rdi + 0x1237]

cmovl cx,  word  [rbx + 4 * rcx + 0x12345679]
cmovl edx, dword [rcx + 8 * rsi + 0x1234567a]
cmovl rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmovl cx,  word  [4 * rcx]
cmovl edx, dword [8 * rsi]
cmovl rsi, qword [8 * rdi]

; [scale * index + disp8]
cmovl cx,  word  [4 * rcx + 0x13]
cmovl edx, dword [8 * rsi + 0x14]
cmovl rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmovl cx,  word  [4 * rcx + 0x1235]
cmovl edx, dword [8 * rsi + 0x1236]
cmovl rsi, qword [8 * rdi + 0x1237]

cmovl cx,  word  [4 * rcx + 0x12345679]
cmovl edx, dword [8 * rsi + 0x1234567a]
cmovl rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmovl ax, word [rbp]
cmovl ax, word [rbp + 0x12]
cmovl ax, word [rbp + 0x1234]
cmovl ax, word [rbp + 0x12345678]

cmovl eax, dword [4 * rbp]
cmovl eax, dword [4 * rbp + 0x12]
cmovl eax, dword [4 * rbp + 0x1234]
cmovl eax, dword [4 * rbp + 0x12345678]

cmovl rax, qword [rbx + 4 * rbp]
cmovl rax, qword [rbx + 4 * rbp + 0x12]
cmovl rax, qword [rbx + 4 * rbp + 0x1234]
cmovl rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmovl ax, word [rsp]
cmovl ax, word [rsp + 0x12]
cmovl ax, word [rsp + 0x1234]
cmovl ax, word [rsp + 0x12345678]

cmovl eax, dword [rsp + rax]
cmovl eax, dword [rsp + rbp]
cmovl eax, dword [rsp + 2*rbp]
cmovl eax, dword [rsp + 4*rbp]
cmovl eax, dword [rsp + 8*rbp]

; use each register as indirect.
cmovl ax, word [rax]
cmovl ax, word [rcx]
cmovl ax, word [rdx]
cmovl ax, word [rbx]
cmovl ax, word [rsp]
cmovl ax, word [rbp]
cmovl ax, word [rsi]
cmovl ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmovl eax, dword [rax + 2*rax]
cmovl eax, dword [rcx + 2*rcx]
cmovl eax, dword [rdx + 2*rdx]
cmovl eax, dword [rbx + 2*rbx]
cmovl eax, dword [rbp + 2*rbp]
cmovl eax, dword [rsi + 2*rsi]
cmovl eax, dword [rdi + 2*rdi]
