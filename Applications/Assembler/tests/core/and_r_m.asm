use64

; [rip + disp32]
and bl,  byte  [rip + 0x12]
and cx,  word  [rip + 0x13]
and edx, dword [rip + 0x14]
and rsi, qword [rip + 0x15]

and bl,  byte  [rip + 0x1234]
and cx,  word  [rip + 0x1235]
and edx, dword [rip + 0x1236]
and rsi, qword [rip + 0x1237]

and bl,  byte  [rip + 0x12345678]
and cx,  word  [rip + 0x12345679]
and edx, dword [rip + 0x1234567a]
and rsi, qword [rip + 0x1234567b]

; [rip + base]
and bl,  byte  [rax]
and cx,  word  [rbx]
and edx, dword [rcx]
and rsi, qword [rdx]

; [rip + base + disp8]
and bl,  byte  [rax + 0x12]
and cx,  word  [rbx + 0x13]
and edx, dword [rcx + 0x14]
and rsi, qword [rdx + 0x15]

; [rip + base + disp32]
and bl,  byte  [rax + 0x1234]
and cx,  word  [rbx + 0x1235]
and edx, dword [rcx + 0x1236]
and rsi, qword [rdx + 0x1237]

and bl,  byte  [rax + 0x12345678]
and cx,  word  [rbx + 0x12345679]
and edx, dword [rcx + 0x1234567a]
and rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
and bl,  byte  [rax + rbx]
and cx,  word  [rbx + rcx]
and edx, dword [rcx + rsi]
and rsi, qword [rdx + rdi]

; [rip + base + scale * index]
and bl,  byte  [rax + 2 * rbx]
and cx,  word  [rbx + 4 * rcx]
and edx, dword [rcx + 8 * rsi]
and rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
and bl,  byte  [rax + rbx + 0x12]
and cx,  word  [rbx + rcx + 0x13]
and edx, dword [rcx + rsi + 0x14]
and rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
and bl,  byte  [rax + rbx + 0x1234]
and cx,  word  [rbx + rcx + 0x1235]
and edx, dword [rcx + rsi + 0x1236]
and rsi, qword [rdx + rdi + 0x1237]

and bl,  byte  [rax + rbx + 0x12345678]
and cx,  word  [rbx + rcx + 0x12345679]
and edx, dword [rcx + rsi + 0x1234567a]
and rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
and bl,  byte  [rax + 2 * rbx + 0x12]
and cx,  word  [rbx + 4 * rcx + 0x13]
and edx, dword [rcx + 8 * rsi + 0x14]
and rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
and bl,  byte  [rax + 2 * rbx + 0x1234]
and cx,  word  [rbx + 4 * rcx + 0x1235]
and edx, dword [rcx + 8 * rsi + 0x1236]
and rsi, qword [rdx + 8 * rdi + 0x1237]

and bl,  byte  [rax + 2 * rbx + 0x12345678]
and cx,  word  [rbx + 4 * rcx + 0x12345679]
and edx, dword [rcx + 8 * rsi + 0x1234567a]
and rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
and bl,  byte  [2 * rbx]
and cx,  word  [4 * rcx]
and edx, dword [8 * rsi]
and rsi, qword [8 * rdi]

; [scale * index + disp8]
and bl,  byte  [2 * rbx + 0x12]
and cx,  word  [4 * rcx + 0x13]
and edx, dword [8 * rsi + 0x14]
and rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
and bl,  byte  [2 * rbx + 0x1234]
and cx,  word  [4 * rcx + 0x1235]
and edx, dword [8 * rsi + 0x1236]
and rsi, qword [8 * rdi + 0x1237]

and bl,  byte  [2 * rbx + 0x12345678]
and cx,  word  [4 * rcx + 0x12345679]
and edx, dword [8 * rsi + 0x1234567a]
and rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
and al, byte [rbp]
and al, byte [rbp + 0x12]
and al, byte [rbp + 0x1234]
and al, byte [rbp + 0x12345678]

and al, byte [4 * rbp]
and al, byte [4 * rbp + 0x12]
and al, byte [4 * rbp + 0x1234]
and al, byte [4 * rbp + 0x12345678]

and al, byte [rbx + 4 * rbp]
and al, byte [rbx + 4 * rbp + 0x12]
and al, byte [rbx + 4 * rbp + 0x1234]
and al, byte [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
and al, byte [rsp]
and al, byte [rsp + 0x12]
and al, byte [rsp + 0x1234]
and al, byte [rsp + 0x12345678]

and al, byte [rsp + rax]
and al, byte [rsp + rbp]
and al, byte [rsp + 2*rbp]
and al, byte [rsp + 4*rbp]
and al, byte [rsp + 8*rbp]

; use each register as indirect.
and al, byte [rax]
and al, byte [rcx]
and al, byte [rdx]
and al, byte [rbx]
and al, byte [rsp]
and al, byte [rbp]
and al, byte [rsi]
and al, byte [rdi]

; use each register as indirect.
; rsp is forbidden as index
and al, byte [rax + 2*rax]
and al, byte [rcx + 2*rcx]
and al, byte [rdx + 2*rdx]
and al, byte [rbx + 2*rbx]
and al, byte [rbp + 2*rbp]
and al, byte [rsi + 2*rsi]
and al, byte [rdi + 2*rdi]
