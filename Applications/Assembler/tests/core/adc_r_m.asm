use64

; [rip + disp32]
adc bl,  byte  [rip + 0x12]
adc cx,  word  [rip + 0x13]
adc edx, dword [rip + 0x14]
adc rsi, qword [rip + 0x15]

adc bl,  byte  [rip + 0x1234]
adc cx,  word  [rip + 0x1235]
adc edx, dword [rip + 0x1236]
adc rsi, qword [rip + 0x1237]

adc bl,  byte  [rip + 0x12345678]
adc cx,  word  [rip + 0x12345679]
adc edx, dword [rip + 0x1234567a]
adc rsi, qword [rip + 0x1234567b]

; [rip + base]
adc bl,  byte  [rax]
adc cx,  word  [rbx]
adc edx, dword [rcx]
adc rsi, qword [rdx]

; [rip + base + disp8]
adc bl,  byte  [rax + 0x12]
adc cx,  word  [rbx + 0x13]
adc edx, dword [rcx + 0x14]
adc rsi, qword [rdx + 0x15]

; [rip + base + disp32]
adc bl,  byte  [rax + 0x1234]
adc cx,  word  [rbx + 0x1235]
adc edx, dword [rcx + 0x1236]
adc rsi, qword [rdx + 0x1237]

adc bl,  byte  [rax + 0x12345678]
adc cx,  word  [rbx + 0x12345679]
adc edx, dword [rcx + 0x1234567a]
adc rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
adc bl,  byte  [rax + rbx]
adc cx,  word  [rbx + rcx]
adc edx, dword [rcx + rsi]
adc rsi, qword [rdx + rdi]

; [rip + base + scale * index]
adc bl,  byte  [rax + 2 * rbx]
adc cx,  word  [rbx + 4 * rcx]
adc edx, dword [rcx + 8 * rsi]
adc rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
adc bl,  byte  [rax + rbx + 0x12]
adc cx,  word  [rbx + rcx + 0x13]
adc edx, dword [rcx + rsi + 0x14]
adc rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
adc bl,  byte  [rax + rbx + 0x1234]
adc cx,  word  [rbx + rcx + 0x1235]
adc edx, dword [rcx + rsi + 0x1236]
adc rsi, qword [rdx + rdi + 0x1237]

adc bl,  byte  [rax + rbx + 0x12345678]
adc cx,  word  [rbx + rcx + 0x12345679]
adc edx, dword [rcx + rsi + 0x1234567a]
adc rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
adc bl,  byte  [rax + 2 * rbx + 0x12]
adc cx,  word  [rbx + 4 * rcx + 0x13]
adc edx, dword [rcx + 8 * rsi + 0x14]
adc rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
adc bl,  byte  [rax + 2 * rbx + 0x1234]
adc cx,  word  [rbx + 4 * rcx + 0x1235]
adc edx, dword [rcx + 8 * rsi + 0x1236]
adc rsi, qword [rdx + 8 * rdi + 0x1237]

adc bl,  byte  [rax + 2 * rbx + 0x12345678]
adc cx,  word  [rbx + 4 * rcx + 0x12345679]
adc edx, dword [rcx + 8 * rsi + 0x1234567a]
adc rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
adc bl,  byte  [2 * rbx]
adc cx,  word  [4 * rcx]
adc edx, dword [8 * rsi]
adc rsi, qword [8 * rdi]

; [scale * index + disp8]
adc bl,  byte  [2 * rbx + 0x12]
adc cx,  word  [4 * rcx + 0x13]
adc edx, dword [8 * rsi + 0x14]
adc rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
adc bl,  byte  [2 * rbx + 0x1234]
adc cx,  word  [4 * rcx + 0x1235]
adc edx, dword [8 * rsi + 0x1236]
adc rsi, qword [8 * rdi + 0x1237]

adc bl,  byte  [2 * rbx + 0x12345678]
adc cx,  word  [4 * rcx + 0x12345679]
adc edx, dword [8 * rsi + 0x1234567a]
adc rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
adc al, byte [rbp]
adc al, byte [rbp + 0x12]
adc al, byte [rbp + 0x1234]
adc al, byte [rbp + 0x12345678]

adc al, byte [4 * rbp]
adc al, byte [4 * rbp + 0x12]
adc al, byte [4 * rbp + 0x1234]
adc al, byte [4 * rbp + 0x12345678]

adc al, byte [rbx + 4 * rbp]
adc al, byte [rbx + 4 * rbp + 0x12]
adc al, byte [rbx + 4 * rbp + 0x1234]
adc al, byte [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
adc al, byte [rsp]
adc al, byte [rsp + 0x12]
adc al, byte [rsp + 0x1234]
adc al, byte [rsp + 0x12345678]

adc al, byte [rsp + rax]
adc al, byte [rsp + rbp]
adc al, byte [rsp + 2*rbp]
adc al, byte [rsp + 4*rbp]
adc al, byte [rsp + 8*rbp]

; use each register as indirect.
adc al, byte [rax]
adc al, byte [rcx]
adc al, byte [rdx]
adc al, byte [rbx]
adc al, byte [rsp]
adc al, byte [rbp]
adc al, byte [rsi]
adc al, byte [rdi]

; use each register as indirect.
; rsp is forbidden as index
adc al, byte [rax + 2*rax]
adc al, byte [rcx + 2*rcx]
adc al, byte [rdx + 2*rdx]
adc al, byte [rbx + 2*rbx]
adc al, byte [rbp + 2*rbp]
adc al, byte [rsi + 2*rsi]
adc al, byte [rdi + 2*rdi]
