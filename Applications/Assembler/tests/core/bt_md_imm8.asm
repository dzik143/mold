use64

; [rip + disp32]
bt word  [rip + 0x12], 0x12
bt word  [rip + 0x13], 0x13
bt dword [rip + 0x14], 0x14
bt qword [rip + 0x15], 0x15

bt word  [rip + 0x1234], 0x20
bt word  [rip + 0x1235], 0x21
bt dword [rip + 0x1236], 0x22
bt qword [rip + 0x1237], 0x23

bt word  [rip + 0x12345678], 0x30
bt word  [rip + 0x12345679], 0x32
bt dword [rip + 0x1234567a], 0x34
bt qword [rip + 0x1234567b], 0x36

; [rip + base]
bt word  [rax], 0x41
bt word  [rbx], 0x45
bt dword [rcx], 0x47
bt qword [rdx], 0x49

; [rip + base + disp8]
bt word  [rax + 0x12], 0xa0
bt word  [rbx + 0x13], 0xb0
bt dword [rcx + 0x14], 0xc0
bt qword [rdx + 0x15], 0xd0

; [rip + base + disp32]
bt word  [rax + 0x1234], 0xcc
bt word  [rbx + 0x1235], 0xdd
bt dword [rcx + 0x1236], 0xee
bt qword [rdx + 0x1237], 0xff

bt word  [rax + 0x12345678], -127
bt word  [rbx + 0x12345679], -100
bt dword [rcx + 0x1234567a], -50
bt qword [rdx + 0x1234567b], -20

; [rip + base + index]
bt word  [rax + rbx], 20
bt word  [rbx + rcx], 50
bt dword [rcx + rsi], 100
bt qword [rdx + rdi], 128

; [rip + base + scale * index]
bt word  [rax + 2 * rbx], 0
bt word  [rbx + 4 * rcx], -1
bt dword [rcx + 8 * rsi], -2
bt qword [rdx + 8 * rdi], -3

; [rip + base + index + disp8]
bt word  [rax + rbx + 0x12], 0
bt word  [rbx + rcx + 0x13], 1
bt dword [rcx + rsi + 0x14], 2
bt qword [rdx + rdi + 0x15], 3

; [rip + base + index + disp32]
bt word  [rax + rbx + 0x1234], 0x10
bt word  [rbx + rcx + 0x1235], 0x11
bt dword [rcx + rsi + 0x1236], 0x12
bt qword [rdx + rdi + 0x1237], 0x13

bt word  [rax + rbx + 0x12345678], 10
bt word  [rbx + rcx + 0x12345679], 11
bt dword [rcx + rsi + 0x1234567a], 12
bt qword [rdx + rdi + 0x1234567b], 13

; [rip + base + scale * index + disp8]
bt word  [rax + 2 * rbx + 0x12], 0x12
bt word  [rbx + 4 * rcx + 0x13], 0x13
bt dword [rcx + 8 * rsi + 0x14], 0x14
bt qword [rdx + 8 * rdi + 0x15], 0x15

; [rip + base + scale * index + disp32]
bt word  [rax + 2 * rbx + 0x1234], 0x12
bt word  [rbx + 4 * rcx + 0x1235], 0x13
bt dword [rcx + 8 * rsi + 0x1236], 0x14
bt qword [rdx + 8 * rdi + 0x1237], 0x15

bt word  [rax + 2 * rbx + 0x12345678], 0x12
bt word  [rbx + 4 * rcx + 0x12345679], 0x13
bt dword [rcx + 8 * rsi + 0x1234567a], 0x14
bt qword [rdx + 8 * rdi + 0x1234567b], 0x15

; [scale * index]
bt word  [2 * rbx], 0x12
bt word  [4 * rcx], 0x13
bt dword [8 * rsi], 0x14
bt qword [8 * rdi], 0x15

; [scale * index + disp8]
bt word  [2 * rbx + 0x12], 0x12
bt word  [4 * rcx + 0x13], 0x13
bt dword [8 * rsi + 0x14], 0x14
bt qword [8 * rdi + 0x15], 0x15

; [scale * index + disp32]
bt word  [2 * rbx + 0x1234], 0x12
bt word  [4 * rcx + 0x1235], 0x13
bt dword [8 * rsi + 0x1236], 0x14
bt qword [8 * rdi + 0x1237], 0x15

bt word  [2 * rbx + 0x12345678], 0x12
bt word  [4 * rcx + 0x12345679], 0x13
bt dword [8 * rsi + 0x1234567a], 0x14
bt qword [8 * rdi + 0x1234567b], 0x15

; Use rbp as base or index.
bt word [rbp], 0x12
bt word [rbp + 0x12], 0x13
bt word [rbp + 0x1234], 0x14
bt word [rbp + 0x12345678], 0x15

bt word [4 * rbp], 0x12
bt word [4 * rbp + 0x12], 0x13
bt word [4 * rbp + 0x1234], 0x14
bt word [4 * rbp + 0x12345678], 0x15

bt dword [rbx + 4 * rbp], 0x12
bt dword [rbx + 4 * rbp + 0x12], 0x13
bt dword [rbx + 4 * rbp + 0x1234], 0x14
bt dword [rbx + 4 * rbp + 0x12345678], 0x15

; Use rsp as base.
bt qword [rsp], 0x12
bt qword [rsp + 0x12], 0x13
bt qword [rsp + 0x1234], 0x14
bt qword [rsp + 0x12345678], 0x15

bt word [rsp + rax], 0x12
bt word [rsp + rbp], 0x13
bt word [rsp + 2*rbp], 0x14
bt word [rsp + 4*rbp], 0x15
bt word [rsp + 8*rbp], 0x16

; use each register as indirect.
bt dword [rax], 0x12
bt dword [rcx], 0x13
bt dword [rdx], 0x14
bt dword [rbx], 0x15
bt dword [rsp], 0x16
bt dword [rbp], 0x17
bt dword [rsi], 0x18
bt dword [rdi], 0x19

; use each register as indirect.
; rsp is forbidden as index
bt qword [rax + 2*rax], 0x12
bt qword [rcx + 2*rcx], 0x13
bt qword [rdx + 2*rdx], 0x14
bt qword [rbx + 2*rbx], 0x15
bt qword [rbp + 2*rbp], 0x16
bt qword [rsi + 2*rsi], 0x17
bt qword [rdi + 2*rdi], 0x18
