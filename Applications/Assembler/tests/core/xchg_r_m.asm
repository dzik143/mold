use64

; [rip + disp32]
xchg bl,  byte  [rip + 0x12]
xchg cx,  word  [rip + 0x13]
xchg edx, dword [rip + 0x14]
xchg rsi, qword [rip + 0x15]

xchg bl,  byte  [rip + 0x1234]
xchg cx,  word  [rip + 0x1235]
xchg edx, dword [rip + 0x1236]
xchg rsi, qword [rip + 0x1237]

xchg bl,  byte  [rip + 0x12345678]
xchg cx,  word  [rip + 0x12345679]
xchg edx, dword [rip + 0x1234567a]
xchg rsi, qword [rip + 0x1234567b]

; [rip + base]
xchg bl,  byte  [rax]
xchg cx,  word  [rbx]
xchg edx, dword [rcx]
xchg rsi, qword [rdx]

; [rip + base + disp8]
xchg bl,  byte  [rax + 0x12]
xchg cx,  word  [rbx + 0x13]
xchg edx, dword [rcx + 0x14]
xchg rsi, qword [rdx + 0x15]

; [rip + base + disp32]
xchg bl,  byte  [rax + 0x1234]
xchg cx,  word  [rbx + 0x1235]
xchg edx, dword [rcx + 0x1236]
xchg rsi, qword [rdx + 0x1237]

xchg bl,  byte  [rax + 0x12345678]
xchg cx,  word  [rbx + 0x12345679]
xchg edx, dword [rcx + 0x1234567a]
xchg rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
xchg bl,  byte  [rax + rbx]
xchg cx,  word  [rbx + rcx]
xchg edx, dword [rcx + rsi]
xchg rsi, qword [rdx + rdi]

; [rip + base + scale * index]
xchg bl,  byte  [rax + 2 * rbx]
xchg cx,  word  [rbx + 4 * rcx]
xchg edx, dword [rcx + 8 * rsi]
xchg rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
xchg bl,  byte  [rax + rbx + 0x12]
xchg cx,  word  [rbx + rcx + 0x13]
xchg edx, dword [rcx + rsi + 0x14]
xchg rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
xchg bl,  byte  [rax + rbx + 0x1234]
xchg cx,  word  [rbx + rcx + 0x1235]
xchg edx, dword [rcx + rsi + 0x1236]
xchg rsi, qword [rdx + rdi + 0x1237]

xchg bl,  byte  [rax + rbx + 0x12345678]
xchg cx,  word  [rbx + rcx + 0x12345679]
xchg edx, dword [rcx + rsi + 0x1234567a]
xchg rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
xchg bl,  byte  [rax + 2 * rbx + 0x12]
xchg cx,  word  [rbx + 4 * rcx + 0x13]
xchg edx, dword [rcx + 8 * rsi + 0x14]
xchg rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
xchg bl,  byte  [rax + 2 * rbx + 0x1234]
xchg cx,  word  [rbx + 4 * rcx + 0x1235]
xchg edx, dword [rcx + 8 * rsi + 0x1236]
xchg rsi, qword [rdx + 8 * rdi + 0x1237]

xchg bl,  byte  [rax + 2 * rbx + 0x12345678]
xchg cx,  word  [rbx + 4 * rcx + 0x12345679]
xchg edx, dword [rcx + 8 * rsi + 0x1234567a]
xchg rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
xchg bl,  byte  [2 * rbx]
xchg cx,  word  [4 * rcx]
xchg edx, dword [8 * rsi]
xchg rsi, qword [8 * rdi]

; [scale * index + disp8]
xchg bl,  byte  [2 * rbx + 0x12]
xchg cx,  word  [4 * rcx + 0x13]
xchg edx, dword [8 * rsi + 0x14]
xchg rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
xchg bl,  byte  [2 * rbx + 0x1234]
xchg cx,  word  [4 * rcx + 0x1235]
xchg edx, dword [8 * rsi + 0x1236]
xchg rsi, qword [8 * rdi + 0x1237]

xchg bl,  byte  [2 * rbx + 0x12345678]
xchg cx,  word  [4 * rcx + 0x12345679]
xchg edx, dword [8 * rsi + 0x1234567a]
xchg rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
xchg al, byte [rbp]
xchg al, byte [rbp + 0x12]
xchg al, byte [rbp + 0x1234]
xchg al, byte [rbp + 0x12345678]

xchg al, byte [4 * rbp]
xchg al, byte [4 * rbp + 0x12]
xchg al, byte [4 * rbp + 0x1234]
xchg al, byte [4 * rbp + 0x12345678]

xchg al, byte [rbx + 4 * rbp]
xchg al, byte [rbx + 4 * rbp + 0x12]
xchg al, byte [rbx + 4 * rbp + 0x1234]
xchg al, byte [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
xchg al, byte [rsp]
xchg al, byte [rsp + 0x12]
xchg al, byte [rsp + 0x1234]
xchg al, byte [rsp + 0x12345678]

xchg al, byte [rsp + rax]
xchg al, byte [rsp + rbp]
xchg al, byte [rsp + 2*rbp]
xchg al, byte [rsp + 4*rbp]
xchg al, byte [rsp + 8*rbp]

; use each register as indirect.
xchg al, byte [rax]
xchg al, byte [rcx]
xchg al, byte [rdx]
xchg al, byte [rbx]
xchg al, byte [rsp]
xchg al, byte [rbp]
xchg al, byte [rsi]
xchg al, byte [rdi]

; use each register as indirect.
; rsp is forbidden as index
xchg al, byte [rax + 2*rax]
xchg al, byte [rcx + 2*rcx]
xchg al, byte [rdx + 2*rdx]
xchg al, byte [rbx + 2*rbx]
xchg al, byte [rbp + 2*rbp]
xchg al, byte [rsi + 2*rsi]
xchg al, byte [rdi + 2*rdi]
