use64

; [rip + disp32]
btr word  [rip + 0x12], 0x12
btr word  [rip + 0x13], 0x13
btr dword [rip + 0x14], 0x14
btr qword [rip + 0x15], 0x15

btr word  [rip + 0x1234], 0x20
btr word  [rip + 0x1235], 0x21
btr dword [rip + 0x1236], 0x22
btr qword [rip + 0x1237], 0x23

btr word  [rip + 0x12345678], 0x30
btr word  [rip + 0x12345679], 0x32
btr dword [rip + 0x1234567a], 0x34
btr qword [rip + 0x1234567b], 0x36

; [rip + base]
btr word  [rax], 0x41
btr word  [rbx], 0x45
btr dword [rcx], 0x47
btr qword [rdx], 0x49

; [rip + base + disp8]
btr word  [rax + 0x12], 0xa0
btr word  [rbx + 0x13], 0xb0
btr dword [rcx + 0x14], 0xc0
btr qword [rdx + 0x15], 0xd0

; [rip + base + disp32]
btr word  [rax + 0x1234], 0xcc
btr word  [rbx + 0x1235], 0xdd
btr dword [rcx + 0x1236], 0xee
btr qword [rdx + 0x1237], 0xff

btr word  [rax + 0x12345678], -127
btr word  [rbx + 0x12345679], -100
btr dword [rcx + 0x1234567a], -50
btr qword [rdx + 0x1234567b], -20

; [rip + base + index]
btr word  [rax + rbx], 20
btr word  [rbx + rcx], 50
btr dword [rcx + rsi], 100
btr qword [rdx + rdi], 128

; [rip + base + scale * index]
btr word  [rax + 2 * rbx], 0
btr word  [rbx + 4 * rcx], -1
btr dword [rcx + 8 * rsi], -2
btr qword [rdx + 8 * rdi], -3

; [rip + base + index + disp8]
btr word  [rax + rbx + 0x12], 0
btr word  [rbx + rcx + 0x13], 1
btr dword [rcx + rsi + 0x14], 2
btr qword [rdx + rdi + 0x15], 3

; [rip + base + index + disp32]
btr word  [rax + rbx + 0x1234], 0x10
btr word  [rbx + rcx + 0x1235], 0x11
btr dword [rcx + rsi + 0x1236], 0x12
btr qword [rdx + rdi + 0x1237], 0x13

btr word  [rax + rbx + 0x12345678], 10
btr word  [rbx + rcx + 0x12345679], 11
btr dword [rcx + rsi + 0x1234567a], 12
btr qword [rdx + rdi + 0x1234567b], 13

; [rip + base + scale * index + disp8]
btr word  [rax + 2 * rbx + 0x12], 0x12
btr word  [rbx + 4 * rcx + 0x13], 0x13
btr dword [rcx + 8 * rsi + 0x14], 0x14
btr qword [rdx + 8 * rdi + 0x15], 0x15

; [rip + base + scale * index + disp32]
btr word  [rax + 2 * rbx + 0x1234], 0x12
btr word  [rbx + 4 * rcx + 0x1235], 0x13
btr dword [rcx + 8 * rsi + 0x1236], 0x14
btr qword [rdx + 8 * rdi + 0x1237], 0x15

btr word  [rax + 2 * rbx + 0x12345678], 0x12
btr word  [rbx + 4 * rcx + 0x12345679], 0x13
btr dword [rcx + 8 * rsi + 0x1234567a], 0x14
btr qword [rdx + 8 * rdi + 0x1234567b], 0x15

; [scale * index]
btr word  [2 * rbx], 0x12
btr word  [4 * rcx], 0x13
btr dword [8 * rsi], 0x14
btr qword [8 * rdi], 0x15

; [scale * index + disp8]
btr word  [2 * rbx + 0x12], 0x12
btr word  [4 * rcx + 0x13], 0x13
btr dword [8 * rsi + 0x14], 0x14
btr qword [8 * rdi + 0x15], 0x15

; [scale * index + disp32]
btr word  [2 * rbx + 0x1234], 0x12
btr word  [4 * rcx + 0x1235], 0x13
btr dword [8 * rsi + 0x1236], 0x14
btr qword [8 * rdi + 0x1237], 0x15

btr word  [2 * rbx + 0x12345678], 0x12
btr word  [4 * rcx + 0x12345679], 0x13
btr dword [8 * rsi + 0x1234567a], 0x14
btr qword [8 * rdi + 0x1234567b], 0x15

; Use rbp as base or index.
btr word [rbp], 0x12
btr word [rbp + 0x12], 0x13
btr word [rbp + 0x1234], 0x14
btr word [rbp + 0x12345678], 0x15

btr word [4 * rbp], 0x12
btr word [4 * rbp + 0x12], 0x13
btr word [4 * rbp + 0x1234], 0x14
btr word [4 * rbp + 0x12345678], 0x15

btr dword [rbx + 4 * rbp], 0x12
btr dword [rbx + 4 * rbp + 0x12], 0x13
btr dword [rbx + 4 * rbp + 0x1234], 0x14
btr dword [rbx + 4 * rbp + 0x12345678], 0x15

; Use rsp as base.
btr qword [rsp], 0x12
btr qword [rsp + 0x12], 0x13
btr qword [rsp + 0x1234], 0x14
btr qword [rsp + 0x12345678], 0x15

btr word [rsp + rax], 0x12
btr word [rsp + rbp], 0x13
btr word [rsp + 2*rbp], 0x14
btr word [rsp + 4*rbp], 0x15
btr word [rsp + 8*rbp], 0x16

; use each register as indirect.
btr dword [rax], 0x12
btr dword [rcx], 0x13
btr dword [rdx], 0x14
btr dword [rbx], 0x15
btr dword [rsp], 0x16
btr dword [rbp], 0x17
btr dword [rsi], 0x18
btr dword [rdi], 0x19

; use each register as indirect.
; rsp is forbidden as index
btr qword [rax + 2*rax], 0x12
btr qword [rcx + 2*rcx], 0x13
btr qword [rdx + 2*rdx], 0x14
btr qword [rbx + 2*rbx], 0x15
btr qword [rbp + 2*rbp], 0x16
btr qword [rsi + 2*rsi], 0x17
btr qword [rdi + 2*rdi], 0x18
