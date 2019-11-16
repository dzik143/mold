use64

; [rip + disp32]
cmp bl,  byte  [rip + 0x12]
cmp cx,  word  [rip + 0x13]
cmp edx, dword [rip + 0x14]
cmp rsi, qword [rip + 0x15]

cmp bl,  byte  [rip + 0x1234]
cmp cx,  word  [rip + 0x1235]
cmp edx, dword [rip + 0x1236]
cmp rsi, qword [rip + 0x1237]

cmp bl,  byte  [rip + 0x12345678]
cmp cx,  word  [rip + 0x12345679]
cmp edx, dword [rip + 0x1234567a]
cmp rsi, qword [rip + 0x1234567b]

; [rip + base]
cmp bl,  byte  [rax]
cmp cx,  word  [rbx]
cmp edx, dword [rcx]
cmp rsi, qword [rdx]

; [rip + base + disp8]
cmp bl,  byte  [rax + 0x12]
cmp cx,  word  [rbx + 0x13]
cmp edx, dword [rcx + 0x14]
cmp rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmp bl,  byte  [rax + 0x1234]
cmp cx,  word  [rbx + 0x1235]
cmp edx, dword [rcx + 0x1236]
cmp rsi, qword [rdx + 0x1237]

cmp bl,  byte  [rax + 0x12345678]
cmp cx,  word  [rbx + 0x12345679]
cmp edx, dword [rcx + 0x1234567a]
cmp rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmp bl,  byte  [rax + rbx]
cmp cx,  word  [rbx + rcx]
cmp edx, dword [rcx + rsi]
cmp rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmp bl,  byte  [rax + 2 * rbx]
cmp cx,  word  [rbx + 4 * rcx]
cmp edx, dword [rcx + 8 * rsi]
cmp rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmp bl,  byte  [rax + rbx + 0x12]
cmp cx,  word  [rbx + rcx + 0x13]
cmp edx, dword [rcx + rsi + 0x14]
cmp rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmp bl,  byte  [rax + rbx + 0x1234]
cmp cx,  word  [rbx + rcx + 0x1235]
cmp edx, dword [rcx + rsi + 0x1236]
cmp rsi, qword [rdx + rdi + 0x1237]

cmp bl,  byte  [rax + rbx + 0x12345678]
cmp cx,  word  [rbx + rcx + 0x12345679]
cmp edx, dword [rcx + rsi + 0x1234567a]
cmp rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmp bl,  byte  [rax + 2 * rbx + 0x12]
cmp cx,  word  [rbx + 4 * rcx + 0x13]
cmp edx, dword [rcx + 8 * rsi + 0x14]
cmp rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmp bl,  byte  [rax + 2 * rbx + 0x1234]
cmp cx,  word  [rbx + 4 * rcx + 0x1235]
cmp edx, dword [rcx + 8 * rsi + 0x1236]
cmp rsi, qword [rdx + 8 * rdi + 0x1237]

cmp bl,  byte  [rax + 2 * rbx + 0x12345678]
cmp cx,  word  [rbx + 4 * rcx + 0x12345679]
cmp edx, dword [rcx + 8 * rsi + 0x1234567a]
cmp rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmp bl,  byte  [2 * rbx]
cmp cx,  word  [4 * rcx]
cmp edx, dword [8 * rsi]
cmp rsi, qword [8 * rdi]

; [scale * index + disp8]
cmp bl,  byte  [2 * rbx + 0x12]
cmp cx,  word  [4 * rcx + 0x13]
cmp edx, dword [8 * rsi + 0x14]
cmp rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmp bl,  byte  [2 * rbx + 0x1234]
cmp cx,  word  [4 * rcx + 0x1235]
cmp edx, dword [8 * rsi + 0x1236]
cmp rsi, qword [8 * rdi + 0x1237]

cmp bl,  byte  [2 * rbx + 0x12345678]
cmp cx,  word  [4 * rcx + 0x12345679]
cmp edx, dword [8 * rsi + 0x1234567a]
cmp rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmp al, byte [rbp]
cmp al, byte [rbp + 0x12]
cmp al, byte [rbp + 0x1234]
cmp al, byte [rbp + 0x12345678]

cmp al, byte [4 * rbp]
cmp al, byte [4 * rbp + 0x12]
cmp al, byte [4 * rbp + 0x1234]
cmp al, byte [4 * rbp + 0x12345678]

cmp al, byte [rbx + 4 * rbp]
cmp al, byte [rbx + 4 * rbp + 0x12]
cmp al, byte [rbx + 4 * rbp + 0x1234]
cmp al, byte [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmp al, byte [rsp]
cmp al, byte [rsp + 0x12]
cmp al, byte [rsp + 0x1234]
cmp al, byte [rsp + 0x12345678]

cmp al, byte [rsp + rax]
cmp al, byte [rsp + rbp]
cmp al, byte [rsp + 2*rbp]
cmp al, byte [rsp + 4*rbp]
cmp al, byte [rsp + 8*rbp]

; use each register as indirect.
cmp al, byte [rax]
cmp al, byte [rcx]
cmp al, byte [rdx]
cmp al, byte [rbx]
cmp al, byte [rsp]
cmp al, byte [rbp]
cmp al, byte [rsi]
cmp al, byte [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmp al, byte [rax + 2*rax]
cmp al, byte [rcx + 2*rcx]
cmp al, byte [rdx + 2*rdx]
cmp al, byte [rbx + 2*rbx]
cmp al, byte [rbp + 2*rbp]
cmp al, byte [rsi + 2*rsi]
cmp al, byte [rdi + 2*rdi]
