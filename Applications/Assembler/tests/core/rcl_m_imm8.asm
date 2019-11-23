use64

; [rip + disp32]
rcl byte  [rip + 0x12], 0x12
rcl word  [rip + 0x13], 0x13
rcl dword [rip + 0x14], 0x14
rcl qword [rip + 0x15], 0x15

rcl byte  [rip + 0x1234], 0x20
rcl word  [rip + 0x1235], 0x21
rcl dword [rip + 0x1236], 0x22
rcl qword [rip + 0x1237], 0x23

rcl byte  [rip + 0x12345678], 0x30
rcl word  [rip + 0x12345679], 0x32
rcl dword [rip + 0x1234567a], 0x34
rcl qword [rip + 0x1234567b], 0x36

; [rip + base]
rcl byte  [rax], 0x41
rcl word  [rbx], 0x45
rcl dword [rcx], 0x47
rcl qword [rdx], 0x49

; [rip + base + disp8]
rcl byte  [rax + 0x12], 0xa0
rcl word  [rbx + 0x13], 0xb0
rcl dword [rcx + 0x14], 0xc0
rcl qword [rdx + 0x15], 0xd0

; [rip + base + disp32]
rcl byte  [rax + 0x1234], 0xcc
rcl word  [rbx + 0x1235], 0xdd
rcl dword [rcx + 0x1236], 0xee
rcl qword [rdx + 0x1237], 0xff

rcl byte  [rax + 0x12345678], -127
rcl word  [rbx + 0x12345679], -100
rcl dword [rcx + 0x1234567a], -50
rcl qword [rdx + 0x1234567b], -20

; [rip + base + index]
rcl byte  [rax + rbx], 20
rcl word  [rbx + rcx], 50
rcl dword [rcx + rsi], 100
rcl qword [rdx + rdi], 128

; [rip + base + scale * index]
rcl byte  [rax + 2 * rbx], 0
rcl word  [rbx + 4 * rcx], -1
rcl dword [rcx + 8 * rsi], -2
rcl qword [rdx + 8 * rdi], -3

; [rip + base + index + disp8]
rcl byte  [rax + rbx + 0x12], 0
rcl word  [rbx + rcx + 0x13], 1
rcl dword [rcx + rsi + 0x14], 2
rcl qword [rdx + rdi + 0x15], 3

; [rip + base + index + disp32]
rcl byte  [rax + rbx + 0x1234], 0x10
rcl word  [rbx + rcx + 0x1235], 0x11
rcl dword [rcx + rsi + 0x1236], 0x12
rcl qword [rdx + rdi + 0x1237], 0x13

rcl byte  [rax + rbx + 0x12345678], 10
rcl word  [rbx + rcx + 0x12345679], 11
rcl dword [rcx + rsi + 0x1234567a], 12
rcl qword [rdx + rdi + 0x1234567b], 13

; [rip + base + scale * index + disp8]
rcl byte  [rax + 2 * rbx + 0x12], 0x12
rcl word  [rbx + 4 * rcx + 0x13], 0x13
rcl dword [rcx + 8 * rsi + 0x14], 0x14
rcl qword [rdx + 8 * rdi + 0x15], 0x15

; [rip + base + scale * index + disp32]
rcl byte  [rax + 2 * rbx + 0x1234], 0x12
rcl word  [rbx + 4 * rcx + 0x1235], 0x13
rcl dword [rcx + 8 * rsi + 0x1236], 0x14
rcl qword [rdx + 8 * rdi + 0x1237], 0x15

rcl byte  [rax + 2 * rbx + 0x12345678], 0x12
rcl word  [rbx + 4 * rcx + 0x12345679], 0x13
rcl dword [rcx + 8 * rsi + 0x1234567a], 0x14
rcl qword [rdx + 8 * rdi + 0x1234567b], 0x15

; [scale * index]
rcl byte  [2 * rbx], 0x12
rcl word  [4 * rcx], 0x13
rcl dword [8 * rsi], 0x14
rcl qword [8 * rdi], 0x15

; [scale * index + disp8]
rcl byte  [2 * rbx + 0x12], 0x12
rcl word  [4 * rcx + 0x13], 0x13
rcl dword [8 * rsi + 0x14], 0x14
rcl qword [8 * rdi + 0x15], 0x15

; [scale * index + disp32]
rcl byte  [2 * rbx + 0x1234], 0x12
rcl word  [4 * rcx + 0x1235], 0x13
rcl dword [8 * rsi + 0x1236], 0x14
rcl qword [8 * rdi + 0x1237], 0x15

rcl byte  [2 * rbx + 0x12345678], 0x12
rcl word  [4 * rcx + 0x12345679], 0x13
rcl dword [8 * rsi + 0x1234567a], 0x14
rcl qword [8 * rdi + 0x1234567b], 0x15

; Use rbp as base or index.
rcl byte [rbp], 0x12
rcl byte [rbp + 0x12], 0x13
rcl byte [rbp + 0x1234], 0x14
rcl byte [rbp + 0x12345678], 0x15

rcl word [4 * rbp], 0x12
rcl word [4 * rbp + 0x12], 0x13
rcl word [4 * rbp + 0x1234], 0x14
rcl word [4 * rbp + 0x12345678], 0x15

rcl dword [rbx + 4 * rbp], 0x12
rcl dword [rbx + 4 * rbp + 0x12], 0x13
rcl dword [rbx + 4 * rbp + 0x1234], 0x14
rcl dword [rbx + 4 * rbp + 0x12345678], 0x15

; Use rsp as base.
rcl qword [rsp], 0x12
rcl qword [rsp + 0x12], 0x13
rcl qword [rsp + 0x1234], 0x14
rcl qword [rsp + 0x12345678], 0x15

rcl byte [rsp + rax], 0x12
rcl byte [rsp + rbp], 0x13
rcl byte [rsp + 2*rbp], 0x14
rcl byte [rsp + 4*rbp], 0x15
rcl byte [rsp + 8*rbp], 0x16

; use each register as indirect.
rcl word [rax], 0x12
rcl word [rcx], 0x13
rcl word [rdx], 0x14
rcl word [rbx], 0x15
rcl word [rsp], 0x16
rcl word [rbp], 0x17
rcl word [rsi], 0x18
rcl word [rdi], 0x19

; use each register as indirect.
; rsp is forbidden as index
rcl dword [rax + 2*rax], 0x12
rcl dword [rcx + 2*rcx], 0x13
rcl dword [rdx + 2*rdx], 0x14
rcl dword [rbx + 2*rbx], 0x15
rcl dword [rbp + 2*rbp], 0x16
rcl dword [rsi + 2*rsi], 0x17
rcl dword [rdi + 2*rdi], 0x18
