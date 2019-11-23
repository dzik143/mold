use64

; [rip + disp32]
btc word  [rip + 0x12], 0x12
btc word  [rip + 0x13], 0x13
btc dword [rip + 0x14], 0x14
btc qword [rip + 0x15], 0x15

btc word  [rip + 0x1234], 0x20
btc word  [rip + 0x1235], 0x21
btc dword [rip + 0x1236], 0x22
btc qword [rip + 0x1237], 0x23

btc word  [rip + 0x12345678], 0x30
btc word  [rip + 0x12345679], 0x32
btc dword [rip + 0x1234567a], 0x34
btc qword [rip + 0x1234567b], 0x36

; [rip + base]
btc word  [rax], 0x41
btc word  [rbx], 0x45
btc dword [rcx], 0x47
btc qword [rdx], 0x49

; [rip + base + disp8]
btc word  [rax + 0x12], 0xa0
btc word  [rbx + 0x13], 0xb0
btc dword [rcx + 0x14], 0xc0
btc qword [rdx + 0x15], 0xd0

; [rip + base + disp32]
btc word  [rax + 0x1234], 0xcc
btc word  [rbx + 0x1235], 0xdd
btc dword [rcx + 0x1236], 0xee
btc qword [rdx + 0x1237], 0xff

btc word  [rax + 0x12345678], -127
btc word  [rbx + 0x12345679], -100
btc dword [rcx + 0x1234567a], -50
btc qword [rdx + 0x1234567b], -20

; [rip + base + index]
btc word  [rax + rbx], 20
btc word  [rbx + rcx], 50
btc dword [rcx + rsi], 100
btc qword [rdx + rdi], 128

; [rip + base + scale * index]
btc word  [rax + 2 * rbx], 0
btc word  [rbx + 4 * rcx], -1
btc dword [rcx + 8 * rsi], -2
btc qword [rdx + 8 * rdi], -3

; [rip + base + index + disp8]
btc word  [rax + rbx + 0x12], 0
btc word  [rbx + rcx + 0x13], 1
btc dword [rcx + rsi + 0x14], 2
btc qword [rdx + rdi + 0x15], 3

; [rip + base + index + disp32]
btc word  [rax + rbx + 0x1234], 0x10
btc word  [rbx + rcx + 0x1235], 0x11
btc dword [rcx + rsi + 0x1236], 0x12
btc qword [rdx + rdi + 0x1237], 0x13

btc word  [rax + rbx + 0x12345678], 10
btc word  [rbx + rcx + 0x12345679], 11
btc dword [rcx + rsi + 0x1234567a], 12
btc qword [rdx + rdi + 0x1234567b], 13

; [rip + base + scale * index + disp8]
btc word  [rax + 2 * rbx + 0x12], 0x12
btc word  [rbx + 4 * rcx + 0x13], 0x13
btc dword [rcx + 8 * rsi + 0x14], 0x14
btc qword [rdx + 8 * rdi + 0x15], 0x15

; [rip + base + scale * index + disp32]
btc word  [rax + 2 * rbx + 0x1234], 0x12
btc word  [rbx + 4 * rcx + 0x1235], 0x13
btc dword [rcx + 8 * rsi + 0x1236], 0x14
btc qword [rdx + 8 * rdi + 0x1237], 0x15

btc word  [rax + 2 * rbx + 0x12345678], 0x12
btc word  [rbx + 4 * rcx + 0x12345679], 0x13
btc dword [rcx + 8 * rsi + 0x1234567a], 0x14
btc qword [rdx + 8 * rdi + 0x1234567b], 0x15

; [scale * index]
btc word  [2 * rbx], 0x12
btc word  [4 * rcx], 0x13
btc dword [8 * rsi], 0x14
btc qword [8 * rdi], 0x15

; [scale * index + disp8]
btc word  [2 * rbx + 0x12], 0x12
btc word  [4 * rcx + 0x13], 0x13
btc dword [8 * rsi + 0x14], 0x14
btc qword [8 * rdi + 0x15], 0x15

; [scale * index + disp32]
btc word  [2 * rbx + 0x1234], 0x12
btc word  [4 * rcx + 0x1235], 0x13
btc dword [8 * rsi + 0x1236], 0x14
btc qword [8 * rdi + 0x1237], 0x15

btc word  [2 * rbx + 0x12345678], 0x12
btc word  [4 * rcx + 0x12345679], 0x13
btc dword [8 * rsi + 0x1234567a], 0x14
btc qword [8 * rdi + 0x1234567b], 0x15

; Use rbp as base or index.
btc word [rbp], 0x12
btc word [rbp + 0x12], 0x13
btc word [rbp + 0x1234], 0x14
btc word [rbp + 0x12345678], 0x15

btc word [4 * rbp], 0x12
btc word [4 * rbp + 0x12], 0x13
btc word [4 * rbp + 0x1234], 0x14
btc word [4 * rbp + 0x12345678], 0x15

btc dword [rbx + 4 * rbp], 0x12
btc dword [rbx + 4 * rbp + 0x12], 0x13
btc dword [rbx + 4 * rbp + 0x1234], 0x14
btc dword [rbx + 4 * rbp + 0x12345678], 0x15

; Use rsp as base.
btc qword [rsp], 0x12
btc qword [rsp + 0x12], 0x13
btc qword [rsp + 0x1234], 0x14
btc qword [rsp + 0x12345678], 0x15

btc word [rsp + rax], 0x12
btc word [rsp + rbp], 0x13
btc word [rsp + 2*rbp], 0x14
btc word [rsp + 4*rbp], 0x15
btc word [rsp + 8*rbp], 0x16

; use each register as indirect.
btc dword [rax], 0x12
btc dword [rcx], 0x13
btc dword [rdx], 0x14
btc dword [rbx], 0x15
btc dword [rsp], 0x16
btc dword [rbp], 0x17
btc dword [rsi], 0x18
btc dword [rdi], 0x19

; use each register as indirect.
; rsp is forbidden as index
btc qword [rax + 2*rax], 0x12
btc qword [rcx + 2*rcx], 0x13
btc qword [rdx + 2*rdx], 0x14
btc qword [rbx + 2*rbx], 0x15
btc qword [rbp + 2*rbp], 0x16
btc qword [rsi + 2*rsi], 0x17
btc qword [rdi + 2*rdi], 0x18
