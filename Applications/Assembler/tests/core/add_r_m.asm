use64

; [rip + disp32]
add bl,  byte  [rip + 0x12]
add cx,  word  [rip + 0x13]
add edx, dword [rip + 0x14]
add rsi, qword [rip + 0x15]

add bl,  byte  [rip + 0x1234]
add cx,  word  [rip + 0x1235]
add edx, dword [rip + 0x1236]
add rsi, qword [rip + 0x1237]

add bl,  byte  [rip + 0x12345678]
add cx,  word  [rip + 0x12345679]
add edx, dword [rip + 0x1234567a]
add rsi, qword [rip + 0x1234567b]

; [rip + base]
add bl,  byte  [rax]
add cx,  word  [rbx]
add edx, dword [rcx]
add rsi, qword [rdx]

; [rip + base + disp8]
add bl,  byte  [rax + 0x12]
add cx,  word  [rbx + 0x13]
add edx, dword [rcx + 0x14]
add rsi, qword [rdx + 0x15]

; [rip + base + disp32]
add bl,  byte  [rax + 0x1234]
add cx,  word  [rbx + 0x1235]
add edx, dword [rcx + 0x1236]
add rsi, qword [rdx + 0x1237]

add bl,  byte  [rax + 0x12345678]
add cx,  word  [rbx + 0x12345679]
add edx, dword [rcx + 0x1234567a]
add rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
add bl,  byte  [rax + rbx]
add cx,  word  [rbx + rcx]
add edx, dword [rcx + rsi]
add rsi, qword [rdx + rdi]

; [rip + base + scale * index]
add bl,  byte  [rax + 2 * rbx]
add cx,  word  [rbx + 4 * rcx]
add edx, dword [rcx + 8 * rsi]
add rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
add bl,  byte  [rax + rbx + 0x12]
add cx,  word  [rbx + rcx + 0x13]
add edx, dword [rcx + rsi + 0x14]
add rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
add bl,  byte  [rax + rbx + 0x1234]
add cx,  word  [rbx + rcx + 0x1235]
add edx, dword [rcx + rsi + 0x1236]
add rsi, qword [rdx + rdi + 0x1237]

add bl,  byte  [rax + rbx + 0x12345678]
add cx,  word  [rbx + rcx + 0x12345679]
add edx, dword [rcx + rsi + 0x1234567a]
add rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
add bl,  byte  [rax + 2 * rbx + 0x12]
add cx,  word  [rbx + 4 * rcx + 0x13]
add edx, dword [rcx + 8 * rsi + 0x14]
add rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
add bl,  byte  [rax + 2 * rbx + 0x1234]
add cx,  word  [rbx + 4 * rcx + 0x1235]
add edx, dword [rcx + 8 * rsi + 0x1236]
add rsi, qword [rdx + 8 * rdi + 0x1237]

add bl,  byte  [rax + 2 * rbx + 0x12345678]
add cx,  word  [rbx + 4 * rcx + 0x12345679]
add edx, dword [rcx + 8 * rsi + 0x1234567a]
add rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
add bl,  byte  [2 * rbx]
add cx,  word  [4 * rcx]
add edx, dword [8 * rsi]
add rsi, qword [8 * rdi]

; [scale * index + disp8]
add bl,  byte  [2 * rbx + 0x12]
add cx,  word  [4 * rcx + 0x13]
add edx, dword [8 * rsi + 0x14]
add rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
add bl,  byte  [2 * rbx + 0x1234]
add cx,  word  [4 * rcx + 0x1235]
add edx, dword [8 * rsi + 0x1236]
add rsi, qword [8 * rdi + 0x1237]

add bl,  byte  [2 * rbx + 0x12345678]
add cx,  word  [4 * rcx + 0x12345679]
add edx, dword [8 * rsi + 0x1234567a]
add rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
add al, byte [rbp]
add al, byte [rbp + 0x12]
add al, byte [rbp + 0x1234]
add al, byte [rbp + 0x12345678]

add al, byte [4 * rbp]
add al, byte [4 * rbp + 0x12]
add al, byte [4 * rbp + 0x1234]
add al, byte [4 * rbp + 0x12345678]

add al, byte [rbx + 4 * rbp]
add al, byte [rbx + 4 * rbp + 0x12]
add al, byte [rbx + 4 * rbp + 0x1234]
add al, byte [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
add al, byte [rsp]
add al, byte [rsp + 0x12]
add al, byte [rsp + 0x1234]
add al, byte [rsp + 0x12345678]

add al, byte [rsp + rax]
add al, byte [rsp + rbp]
add al, byte [rsp + 2*rbp]
add al, byte [rsp + 4*rbp]
add al, byte [rsp + 8*rbp]

; use each register as indirect.
add al, byte [rax]
add al, byte [rcx]
add al, byte [rdx]
add al, byte [rbx]
add al, byte [rsp]
add al, byte [rbp]
add al, byte [rsi]
add al, byte [rdi]

; use each register as indirect.
; rsp is forbidden as index
add al, byte [rax + 2*rax]
add al, byte [rcx + 2*rcx]
add al, byte [rdx + 2*rdx]
add al, byte [rbx + 2*rbx]
add al, byte [rbp + 2*rbp]
add al, byte [rsi + 2*rsi]
add al, byte [rdi + 2*rdi]
