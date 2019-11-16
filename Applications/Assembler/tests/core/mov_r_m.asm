use64

; [rip + disp32]
mov bl,  byte  [rip + 0x12]
mov cx,  word  [rip + 0x13]
mov edx, dword [rip + 0x14]
mov rsi, qword [rip + 0x15]

mov bl,  byte  [rip + 0x1234]
mov cx,  word  [rip + 0x1235]
mov edx, dword [rip + 0x1236]
mov rsi, qword [rip + 0x1237]

mov bl,  byte  [rip + 0x12345678]
mov cx,  word  [rip + 0x12345679]
mov edx, dword [rip + 0x1234567a]
mov rsi, qword [rip + 0x1234567b]

; [rip + base]
mov bl,  byte  [rax]
mov cx,  word  [rbx]
mov edx, dword [rcx]
mov rsi, qword [rdx]

; [rip + base + disp8]
mov bl,  byte  [rax + 0x12]
mov cx,  word  [rbx + 0x13]
mov edx, dword [rcx + 0x14]
mov rsi, qword [rdx + 0x15]

; [rip + base + disp32]
mov bl,  byte  [rax + 0x1234]
mov cx,  word  [rbx + 0x1235]
mov edx, dword [rcx + 0x1236]
mov rsi, qword [rdx + 0x1237]

mov bl,  byte  [rax + 0x12345678]
mov cx,  word  [rbx + 0x12345679]
mov edx, dword [rcx + 0x1234567a]
mov rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
mov bl,  byte  [rax + rbx]
mov cx,  word  [rbx + rcx]
mov edx, dword [rcx + rsi]
mov rsi, qword [rdx + rdi]

; [rip + base + scale * index]
mov bl,  byte  [rax + 2 * rbx]
mov cx,  word  [rbx + 4 * rcx]
mov edx, dword [rcx + 8 * rsi]
mov rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
mov bl,  byte  [rax + rbx + 0x12]
mov cx,  word  [rbx + rcx + 0x13]
mov edx, dword [rcx + rsi + 0x14]
mov rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
mov bl,  byte  [rax + rbx + 0x1234]
mov cx,  word  [rbx + rcx + 0x1235]
mov edx, dword [rcx + rsi + 0x1236]
mov rsi, qword [rdx + rdi + 0x1237]

mov bl,  byte  [rax + rbx + 0x12345678]
mov cx,  word  [rbx + rcx + 0x12345679]
mov edx, dword [rcx + rsi + 0x1234567a]
mov rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
mov bl,  byte  [rax + 2 * rbx + 0x12]
mov cx,  word  [rbx + 4 * rcx + 0x13]
mov edx, dword [rcx + 8 * rsi + 0x14]
mov rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
mov bl,  byte  [rax + 2 * rbx + 0x1234]
mov cx,  word  [rbx + 4 * rcx + 0x1235]
mov edx, dword [rcx + 8 * rsi + 0x1236]
mov rsi, qword [rdx + 8 * rdi + 0x1237]

mov bl,  byte  [rax + 2 * rbx + 0x12345678]
mov cx,  word  [rbx + 4 * rcx + 0x12345679]
mov edx, dword [rcx + 8 * rsi + 0x1234567a]
mov rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
mov bl,  byte  [2 * rbx]
mov cx,  word  [4 * rcx]
mov edx, dword [8 * rsi]
mov rsi, qword [8 * rdi]

; [scale * index + disp8]
mov bl,  byte  [2 * rbx + 0x12]
mov cx,  word  [4 * rcx + 0x13]
mov edx, dword [8 * rsi + 0x14]
mov rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
mov bl,  byte  [2 * rbx + 0x1234]
mov cx,  word  [4 * rcx + 0x1235]
mov edx, dword [8 * rsi + 0x1236]
mov rsi, qword [8 * rdi + 0x1237]

mov bl,  byte  [2 * rbx + 0x12345678]
mov cx,  word  [4 * rcx + 0x12345679]
mov edx, dword [8 * rsi + 0x1234567a]
mov rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
mov al, byte [rbp]
mov al, byte [rbp + 0x12]
mov al, byte [rbp + 0x1234]
mov al, byte [rbp + 0x12345678]

mov al, byte [4 * rbp]
mov al, byte [4 * rbp + 0x12]
mov al, byte [4 * rbp + 0x1234]
mov al, byte [4 * rbp + 0x12345678]

mov al, byte [rbx + 4 * rbp]
mov al, byte [rbx + 4 * rbp + 0x12]
mov al, byte [rbx + 4 * rbp + 0x1234]
mov al, byte [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
mov al, byte [rsp]
mov al, byte [rsp + 0x12]
mov al, byte [rsp + 0x1234]
mov al, byte [rsp + 0x12345678]

mov al, byte [rsp + rax]
mov al, byte [rsp + rbp]
mov al, byte [rsp + 2*rbp]
mov al, byte [rsp + 4*rbp]
mov al, byte [rsp + 8*rbp]

; use each register as indirect.
mov al, byte [rax]
mov al, byte [rcx]
mov al, byte [rdx]
mov al, byte [rbx]
mov al, byte [rsp]
mov al, byte [rbp]
mov al, byte [rsi]
mov al, byte [rdi]

; use each register as indirect.
; rsp is forbidden as index
mov al, byte [rax + 2*rax]
mov al, byte [rcx + 2*rcx]
mov al, byte [rdx + 2*rdx]
mov al, byte [rbx + 2*rbx]
mov al, byte [rbp + 2*rbp]
mov al, byte [rsi + 2*rsi]
mov al, byte [rdi + 2*rdi]
