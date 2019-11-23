use64

; [rip + disp32]
xor bl,  byte  [rip + 0x12]
xor cx,  word  [rip + 0x13]
xor edx, dword [rip + 0x14]
xor rsi, qword [rip + 0x15]

xor bl,  byte  [rip + 0x1234]
xor cx,  word  [rip + 0x1235]
xor edx, dword [rip + 0x1236]
xor rsi, qword [rip + 0x1237]

xor bl,  byte  [rip + 0x12345678]
xor cx,  word  [rip + 0x12345679]
xor edx, dword [rip + 0x1234567a]
xor rsi, qword [rip + 0x1234567b]

; [rip + base]
xor bl,  byte  [rax]
xor cx,  word  [rbx]
xor edx, dword [rcx]
xor rsi, qword [rdx]

; [rip + base + disp8]
xor bl,  byte  [rax + 0x12]
xor cx,  word  [rbx + 0x13]
xor edx, dword [rcx + 0x14]
xor rsi, qword [rdx + 0x15]

; [rip + base + disp32]
xor bl,  byte  [rax + 0x1234]
xor cx,  word  [rbx + 0x1235]
xor edx, dword [rcx + 0x1236]
xor rsi, qword [rdx + 0x1237]

xor bl,  byte  [rax + 0x12345678]
xor cx,  word  [rbx + 0x12345679]
xor edx, dword [rcx + 0x1234567a]
xor rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
xor bl,  byte  [rax + rbx]
xor cx,  word  [rbx + rcx]
xor edx, dword [rcx + rsi]
xor rsi, qword [rdx + rdi]

; [rip + base + scale * index]
xor bl,  byte  [rax + 2 * rbx]
xor cx,  word  [rbx + 4 * rcx]
xor edx, dword [rcx + 8 * rsi]
xor rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
xor bl,  byte  [rax + rbx + 0x12]
xor cx,  word  [rbx + rcx + 0x13]
xor edx, dword [rcx + rsi + 0x14]
xor rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
xor bl,  byte  [rax + rbx + 0x1234]
xor cx,  word  [rbx + rcx + 0x1235]
xor edx, dword [rcx + rsi + 0x1236]
xor rsi, qword [rdx + rdi + 0x1237]

xor bl,  byte  [rax + rbx + 0x12345678]
xor cx,  word  [rbx + rcx + 0x12345679]
xor edx, dword [rcx + rsi + 0x1234567a]
xor rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
xor bl,  byte  [rax + 2 * rbx + 0x12]
xor cx,  word  [rbx + 4 * rcx + 0x13]
xor edx, dword [rcx + 8 * rsi + 0x14]
xor rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
xor bl,  byte  [rax + 2 * rbx + 0x1234]
xor cx,  word  [rbx + 4 * rcx + 0x1235]
xor edx, dword [rcx + 8 * rsi + 0x1236]
xor rsi, qword [rdx + 8 * rdi + 0x1237]

xor bl,  byte  [rax + 2 * rbx + 0x12345678]
xor cx,  word  [rbx + 4 * rcx + 0x12345679]
xor edx, dword [rcx + 8 * rsi + 0x1234567a]
xor rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
xor bl,  byte  [2 * rbx]
xor cx,  word  [4 * rcx]
xor edx, dword [8 * rsi]
xor rsi, qword [8 * rdi]

; [scale * index + disp8]
xor bl,  byte  [2 * rbx + 0x12]
xor cx,  word  [4 * rcx + 0x13]
xor edx, dword [8 * rsi + 0x14]
xor rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
xor bl,  byte  [2 * rbx + 0x1234]
xor cx,  word  [4 * rcx + 0x1235]
xor edx, dword [8 * rsi + 0x1236]
xor rsi, qword [8 * rdi + 0x1237]

xor bl,  byte  [2 * rbx + 0x12345678]
xor cx,  word  [4 * rcx + 0x12345679]
xor edx, dword [8 * rsi + 0x1234567a]
xor rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
xor al, byte [rbp]
xor al, byte [rbp + 0x12]
xor al, byte [rbp + 0x1234]
xor al, byte [rbp + 0x12345678]

xor al, byte [4 * rbp]
xor al, byte [4 * rbp + 0x12]
xor al, byte [4 * rbp + 0x1234]
xor al, byte [4 * rbp + 0x12345678]

xor al, byte [rbx + 4 * rbp]
xor al, byte [rbx + 4 * rbp + 0x12]
xor al, byte [rbx + 4 * rbp + 0x1234]
xor al, byte [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
xor al, byte [rsp]
xor al, byte [rsp + 0x12]
xor al, byte [rsp + 0x1234]
xor al, byte [rsp + 0x12345678]

xor al, byte [rsp + rax]
xor al, byte [rsp + rbp]
xor al, byte [rsp + 2*rbp]
xor al, byte [rsp + 4*rbp]
xor al, byte [rsp + 8*rbp]

; use each register as indirect.
xor al, byte [rax]
xor al, byte [rcx]
xor al, byte [rdx]
xor al, byte [rbx]
xor al, byte [rsp]
xor al, byte [rbp]
xor al, byte [rsi]
xor al, byte [rdi]

; use each register as indirect.
; rsp is forbidden as index
xor al, byte [rax + 2*rax]
xor al, byte [rcx + 2*rcx]
xor al, byte [rdx + 2*rdx]
xor al, byte [rbx + 2*rbx]
xor al, byte [rbp + 2*rbp]
xor al, byte [rsi + 2*rsi]
xor al, byte [rdi + 2*rdi]
