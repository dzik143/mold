use64

; [rip + disp32]
or bl,  byte  [rip + 0x12]
or cx,  word  [rip + 0x13]
or edx, dword [rip + 0x14]
or rsi, qword [rip + 0x15]

or bl,  byte  [rip + 0x1234]
or cx,  word  [rip + 0x1235]
or edx, dword [rip + 0x1236]
or rsi, qword [rip + 0x1237]

or bl,  byte  [rip + 0x12345678]
or cx,  word  [rip + 0x12345679]
or edx, dword [rip + 0x1234567a]
or rsi, qword [rip + 0x1234567b]

; [rip + base]
or bl,  byte  [rax]
or cx,  word  [rbx]
or edx, dword [rcx]
or rsi, qword [rdx]

; [rip + base + disp8]
or bl,  byte  [rax + 0x12]
or cx,  word  [rbx + 0x13]
or edx, dword [rcx + 0x14]
or rsi, qword [rdx + 0x15]

; [rip + base + disp32]
or bl,  byte  [rax + 0x1234]
or cx,  word  [rbx + 0x1235]
or edx, dword [rcx + 0x1236]
or rsi, qword [rdx + 0x1237]

or bl,  byte  [rax + 0x12345678]
or cx,  word  [rbx + 0x12345679]
or edx, dword [rcx + 0x1234567a]
or rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
or bl,  byte  [rax + rbx]
or cx,  word  [rbx + rcx]
or edx, dword [rcx + rsi]
or rsi, qword [rdx + rdi]

; [rip + base + scale * index]
or bl,  byte  [rax + 2 * rbx]
or cx,  word  [rbx + 4 * rcx]
or edx, dword [rcx + 8 * rsi]
or rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
or bl,  byte  [rax + rbx + 0x12]
or cx,  word  [rbx + rcx + 0x13]
or edx, dword [rcx + rsi + 0x14]
or rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
or bl,  byte  [rax + rbx + 0x1234]
or cx,  word  [rbx + rcx + 0x1235]
or edx, dword [rcx + rsi + 0x1236]
or rsi, qword [rdx + rdi + 0x1237]

or bl,  byte  [rax + rbx + 0x12345678]
or cx,  word  [rbx + rcx + 0x12345679]
or edx, dword [rcx + rsi + 0x1234567a]
or rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
or bl,  byte  [rax + 2 * rbx + 0x12]
or cx,  word  [rbx + 4 * rcx + 0x13]
or edx, dword [rcx + 8 * rsi + 0x14]
or rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
or bl,  byte  [rax + 2 * rbx + 0x1234]
or cx,  word  [rbx + 4 * rcx + 0x1235]
or edx, dword [rcx + 8 * rsi + 0x1236]
or rsi, qword [rdx + 8 * rdi + 0x1237]

or bl,  byte  [rax + 2 * rbx + 0x12345678]
or cx,  word  [rbx + 4 * rcx + 0x12345679]
or edx, dword [rcx + 8 * rsi + 0x1234567a]
or rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
or bl,  byte  [2 * rbx]
or cx,  word  [4 * rcx]
or edx, dword [8 * rsi]
or rsi, qword [8 * rdi]

; [scale * index + disp8]
or bl,  byte  [2 * rbx + 0x12]
or cx,  word  [4 * rcx + 0x13]
or edx, dword [8 * rsi + 0x14]
or rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
or bl,  byte  [2 * rbx + 0x1234]
or cx,  word  [4 * rcx + 0x1235]
or edx, dword [8 * rsi + 0x1236]
or rsi, qword [8 * rdi + 0x1237]

or bl,  byte  [2 * rbx + 0x12345678]
or cx,  word  [4 * rcx + 0x12345679]
or edx, dword [8 * rsi + 0x1234567a]
or rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
or al, byte [rbp]
or al, byte [rbp + 0x12]
or al, byte [rbp + 0x1234]
or al, byte [rbp + 0x12345678]

or al, byte [4 * rbp]
or al, byte [4 * rbp + 0x12]
or al, byte [4 * rbp + 0x1234]
or al, byte [4 * rbp + 0x12345678]

or al, byte [rbx + 4 * rbp]
or al, byte [rbx + 4 * rbp + 0x12]
or al, byte [rbx + 4 * rbp + 0x1234]
or al, byte [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
or al, byte [rsp]
or al, byte [rsp + 0x12]
or al, byte [rsp + 0x1234]
or al, byte [rsp + 0x12345678]

or al, byte [rsp + rax]
or al, byte [rsp + rbp]
or al, byte [rsp + 2*rbp]
or al, byte [rsp + 4*rbp]
or al, byte [rsp + 8*rbp]

; use each register as indirect.
or al, byte [rax]
or al, byte [rcx]
or al, byte [rdx]
or al, byte [rbx]
or al, byte [rsp]
or al, byte [rbp]
or al, byte [rsi]
or al, byte [rdi]

; use each register as indirect.
; rsp is forbidden as index
or al, byte [rax + 2*rax]
or al, byte [rcx + 2*rcx]
or al, byte [rdx + 2*rdx]
or al, byte [rbx + 2*rbx]
or al, byte [rbp + 2*rbp]
or al, byte [rsi + 2*rsi]
or al, byte [rdi + 2*rdi]
