use64
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
cmovnb cx,  word  [rip + 0x13]
cmovnb edx, dword [rip + 0x14]
cmovnb rsi, qword [rip + 0x15]

cmovnb cx,  word  [rip + 0x1235]
cmovnb edx, dword [rip + 0x1236]
cmovnb rsi, qword [rip + 0x1237]

cmovnb cx,  word  [rip + 0x12345679]
cmovnb edx, dword [rip + 0x1234567a]
cmovnb rsi, qword [rip + 0x1234567b]

; [rip + base]
cmovnb cx,  word  [rbx]
cmovnb edx, dword [rcx]
cmovnb rsi, qword [rdx]

; [rip + base + disp8]
cmovnb cx,  word  [rbx + 0x13]
cmovnb edx, dword [rcx + 0x14]
cmovnb rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmovnb cx,  word  [rbx + 0x1235]
cmovnb edx, dword [rcx + 0x1236]
cmovnb rsi, qword [rdx + 0x1237]

cmovnb cx,  word  [rbx + 0x12345679]
cmovnb edx, dword [rcx + 0x1234567a]
cmovnb rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmovnb cx,  word  [rbx + rcx]
cmovnb edx, dword [rcx + rsi]
cmovnb rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmovnb cx,  word  [rbx + 4 * rcx]
cmovnb edx, dword [rcx + 8 * rsi]
cmovnb rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmovnb cx,  word  [rbx + rcx + 0x13]
cmovnb edx, dword [rcx + rsi + 0x14]
cmovnb rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmovnb cx,  word  [rbx + rcx + 0x1235]
cmovnb edx, dword [rcx + rsi + 0x1236]
cmovnb rsi, qword [rdx + rdi + 0x1237]

cmovnb cx,  word  [rbx + rcx + 0x12345679]
cmovnb edx, dword [rcx + rsi + 0x1234567a]
cmovnb rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmovnb cx,  word  [rbx + 4 * rcx + 0x13]
cmovnb edx, dword [rcx + 8 * rsi + 0x14]
cmovnb rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmovnb cx,  word  [rbx + 4 * rcx + 0x1235]
cmovnb edx, dword [rcx + 8 * rsi + 0x1236]
cmovnb rsi, qword [rdx + 8 * rdi + 0x1237]

cmovnb cx,  word  [rbx + 4 * rcx + 0x12345679]
cmovnb edx, dword [rcx + 8 * rsi + 0x1234567a]
cmovnb rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmovnb cx,  word  [4 * rcx]
cmovnb edx, dword [8 * rsi]
cmovnb rsi, qword [8 * rdi]

; [scale * index + disp8]
cmovnb cx,  word  [4 * rcx + 0x13]
cmovnb edx, dword [8 * rsi + 0x14]
cmovnb rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmovnb cx,  word  [4 * rcx + 0x1235]
cmovnb edx, dword [8 * rsi + 0x1236]
cmovnb rsi, qword [8 * rdi + 0x1237]

cmovnb cx,  word  [4 * rcx + 0x12345679]
cmovnb edx, dword [8 * rsi + 0x1234567a]
cmovnb rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmovnb ax, word [rbp]
cmovnb ax, word [rbp + 0x12]
cmovnb ax, word [rbp + 0x1234]
cmovnb ax, word [rbp + 0x12345678]

cmovnb eax, dword [4 * rbp]
cmovnb eax, dword [4 * rbp + 0x12]
cmovnb eax, dword [4 * rbp + 0x1234]
cmovnb eax, dword [4 * rbp + 0x12345678]

cmovnb rax, qword [rbx + 4 * rbp]
cmovnb rax, qword [rbx + 4 * rbp + 0x12]
cmovnb rax, qword [rbx + 4 * rbp + 0x1234]
cmovnb rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmovnb ax, word [rsp]
cmovnb ax, word [rsp + 0x12]
cmovnb ax, word [rsp + 0x1234]
cmovnb ax, word [rsp + 0x12345678]

cmovnb eax, dword [rsp + rax]
cmovnb eax, dword [rsp + rbp]
cmovnb eax, dword [rsp + 2*rbp]
cmovnb eax, dword [rsp + 4*rbp]
cmovnb eax, dword [rsp + 8*rbp]

; use each register as indirect.
cmovnb ax, word [rax]
cmovnb ax, word [rcx]
cmovnb ax, word [rdx]
cmovnb ax, word [rbx]
cmovnb ax, word [rsp]
cmovnb ax, word [rbp]
cmovnb ax, word [rsi]
cmovnb ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmovnb eax, dword [rax + 2*rax]
cmovnb eax, dword [rcx + 2*rcx]
cmovnb eax, dword [rdx + 2*rdx]
cmovnb eax, dword [rbx + 2*rbx]
cmovnb eax, dword [rbp + 2*rbp]
cmovnb eax, dword [rsi + 2*rsi]
cmovnb eax, dword [rdi + 2*rdi]
