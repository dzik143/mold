use64

; [rip + disp32]
rcr byte  [rip + 0x12], 0x12
rcr word  [rip + 0x13], 0x13
rcr dword [rip + 0x14], 0x14
rcr qword [rip + 0x15], 0x15

rcr byte  [rip + 0x1234], 0x20
rcr word  [rip + 0x1235], 0x21
rcr dword [rip + 0x1236], 0x22
rcr qword [rip + 0x1237], 0x23

rcr byte  [rip + 0x12345678], 0x30
rcr word  [rip + 0x12345679], 0x32
rcr dword [rip + 0x1234567a], 0x34
rcr qword [rip + 0x1234567b], 0x36

; [rip + base]
rcr byte  [rax], 0x41
rcr word  [rbx], 0x45
rcr dword [rcx], 0x47
rcr qword [rdx], 0x49

; [rip + base + disp8]
rcr byte  [rax + 0x12], 0xa0
rcr word  [rbx + 0x13], 0xb0
rcr dword [rcx + 0x14], 0xc0
rcr qword [rdx + 0x15], 0xd0

; [rip + base + disp32]
rcr byte  [rax + 0x1234], 0xcc
rcr word  [rbx + 0x1235], 0xdd
rcr dword [rcx + 0x1236], 0xee
rcr qword [rdx + 0x1237], 0xff

rcr byte  [rax + 0x12345678], -127
rcr word  [rbx + 0x12345679], -100
rcr dword [rcx + 0x1234567a], -50
rcr qword [rdx + 0x1234567b], -20

; [rip + base + index]
rcr byte  [rax + rbx], 20
rcr word  [rbx + rcx], 50
rcr dword [rcx + rsi], 100
rcr qword [rdx + rdi], 128

; [rip + base + scale * index]
rcr byte  [rax + 2 * rbx], 0
rcr word  [rbx + 4 * rcx], -1
rcr dword [rcx + 8 * rsi], -2
rcr qword [rdx + 8 * rdi], -3

; [rip + base + index + disp8]
rcr byte  [rax + rbx + 0x12], 0
rcr word  [rbx + rcx + 0x13], 1
rcr dword [rcx + rsi + 0x14], 2
rcr qword [rdx + rdi + 0x15], 3

; [rip + base + index + disp32]
rcr byte  [rax + rbx + 0x1234], 0x10
rcr word  [rbx + rcx + 0x1235], 0x11
rcr dword [rcx + rsi + 0x1236], 0x12
rcr qword [rdx + rdi + 0x1237], 0x13

rcr byte  [rax + rbx + 0x12345678], 10
rcr word  [rbx + rcx + 0x12345679], 11
rcr dword [rcx + rsi + 0x1234567a], 12
rcr qword [rdx + rdi + 0x1234567b], 13

; [rip + base + scale * index + disp8]
rcr byte  [rax + 2 * rbx + 0x12], 0x12
rcr word  [rbx + 4 * rcx + 0x13], 0x13
rcr dword [rcx + 8 * rsi + 0x14], 0x14
rcr qword [rdx + 8 * rdi + 0x15], 0x15

; [rip + base + scale * index + disp32]
rcr byte  [rax + 2 * rbx + 0x1234], 0x12
rcr word  [rbx + 4 * rcx + 0x1235], 0x13
rcr dword [rcx + 8 * rsi + 0x1236], 0x14
rcr qword [rdx + 8 * rdi + 0x1237], 0x15

rcr byte  [rax + 2 * rbx + 0x12345678], 0x12
rcr word  [rbx + 4 * rcx + 0x12345679], 0x13
rcr dword [rcx + 8 * rsi + 0x1234567a], 0x14
rcr qword [rdx + 8 * rdi + 0x1234567b], 0x15

; [scale * index]
rcr byte  [2 * rbx], 0x12
rcr word  [4 * rcx], 0x13
rcr dword [8 * rsi], 0x14
rcr qword [8 * rdi], 0x15

; [scale * index + disp8]
rcr byte  [2 * rbx + 0x12], 0x12
rcr word  [4 * rcx + 0x13], 0x13
rcr dword [8 * rsi + 0x14], 0x14
rcr qword [8 * rdi + 0x15], 0x15

; [scale * index + disp32]
rcr byte  [2 * rbx + 0x1234], 0x12
rcr word  [4 * rcx + 0x1235], 0x13
rcr dword [8 * rsi + 0x1236], 0x14
rcr qword [8 * rdi + 0x1237], 0x15

rcr byte  [2 * rbx + 0x12345678], 0x12
rcr word  [4 * rcx + 0x12345679], 0x13
rcr dword [8 * rsi + 0x1234567a], 0x14
rcr qword [8 * rdi + 0x1234567b], 0x15

; Use rbp as base or index.
rcr byte [rbp], 0x12
rcr byte [rbp + 0x12], 0x13
rcr byte [rbp + 0x1234], 0x14
rcr byte [rbp + 0x12345678], 0x15

rcr word [4 * rbp], 0x12
rcr word [4 * rbp + 0x12], 0x13
rcr word [4 * rbp + 0x1234], 0x14
rcr word [4 * rbp + 0x12345678], 0x15

rcr dword [rbx + 4 * rbp], 0x12
rcr dword [rbx + 4 * rbp + 0x12], 0x13
rcr dword [rbx + 4 * rbp + 0x1234], 0x14
rcr dword [rbx + 4 * rbp + 0x12345678], 0x15

; Use rsp as base.
rcr qword [rsp], 0x12
rcr qword [rsp + 0x12], 0x13
rcr qword [rsp + 0x1234], 0x14
rcr qword [rsp + 0x12345678], 0x15

rcr byte [rsp + rax], 0x12
rcr byte [rsp + rbp], 0x13
rcr byte [rsp + 2*rbp], 0x14
rcr byte [rsp + 4*rbp], 0x15
rcr byte [rsp + 8*rbp], 0x16

; use each register as indirect.
rcr word [rax], 0x12
rcr word [rcx], 0x13
rcr word [rdx], 0x14
rcr word [rbx], 0x15
rcr word [rsp], 0x16
rcr word [rbp], 0x17
rcr word [rsi], 0x18
rcr word [rdi], 0x19

; use each register as indirect.
; rsp is forbidden as index
rcr dword [rax + 2*rax], 0x12
rcr dword [rcx + 2*rcx], 0x13
rcr dword [rdx + 2*rdx], 0x14
rcr dword [rbx + 2*rbx], 0x15
rcr dword [rbp + 2*rbp], 0x16
rcr dword [rsi + 2*rsi], 0x17
rcr dword [rdi + 2*rdi], 0x18
