use64

; [rip + disp32]
sar byte  [rip + 0x12], 0x12
sar word  [rip + 0x13], 0x13
sar dword [rip + 0x14], 0x14
sar qword [rip + 0x15], 0x15

sar byte  [rip + 0x1234], 0x20
sar word  [rip + 0x1235], 0x21
sar dword [rip + 0x1236], 0x22
sar qword [rip + 0x1237], 0x23

sar byte  [rip + 0x12345678], 0x30
sar word  [rip + 0x12345679], 0x32
sar dword [rip + 0x1234567a], 0x34
sar qword [rip + 0x1234567b], 0x36

; [rip + base]
sar byte  [rax], 0x41
sar word  [rbx], 0x45
sar dword [rcx], 0x47
sar qword [rdx], 0x49

; [rip + base + disp8]
sar byte  [rax + 0x12], 0xa0
sar word  [rbx + 0x13], 0xb0
sar dword [rcx + 0x14], 0xc0
sar qword [rdx + 0x15], 0xd0

; [rip + base + disp32]
sar byte  [rax + 0x1234], 0xcc
sar word  [rbx + 0x1235], 0xdd
sar dword [rcx + 0x1236], 0xee
sar qword [rdx + 0x1237], 0xff

sar byte  [rax + 0x12345678], -127
sar word  [rbx + 0x12345679], -100
sar dword [rcx + 0x1234567a], -50
sar qword [rdx + 0x1234567b], -20

; [rip + base + index]
sar byte  [rax + rbx], 20
sar word  [rbx + rcx], 50
sar dword [rcx + rsi], 100
sar qword [rdx + rdi], 128

; [rip + base + scale * index]
sar byte  [rax + 2 * rbx], 0
sar word  [rbx + 4 * rcx], -1
sar dword [rcx + 8 * rsi], -2
sar qword [rdx + 8 * rdi], -3

; [rip + base + index + disp8]
sar byte  [rax + rbx + 0x12], 0
sar word  [rbx + rcx + 0x13], 1
sar dword [rcx + rsi + 0x14], 2
sar qword [rdx + rdi + 0x15], 3

; [rip + base + index + disp32]
sar byte  [rax + rbx + 0x1234], 0x10
sar word  [rbx + rcx + 0x1235], 0x11
sar dword [rcx + rsi + 0x1236], 0x12
sar qword [rdx + rdi + 0x1237], 0x13

sar byte  [rax + rbx + 0x12345678], 10
sar word  [rbx + rcx + 0x12345679], 11
sar dword [rcx + rsi + 0x1234567a], 12
sar qword [rdx + rdi + 0x1234567b], 13

; [rip + base + scale * index + disp8]
sar byte  [rax + 2 * rbx + 0x12], 0x12
sar word  [rbx + 4 * rcx + 0x13], 0x13
sar dword [rcx + 8 * rsi + 0x14], 0x14
sar qword [rdx + 8 * rdi + 0x15], 0x15

; [rip + base + scale * index + disp32]
sar byte  [rax + 2 * rbx + 0x1234], 0x12
sar word  [rbx + 4 * rcx + 0x1235], 0x13
sar dword [rcx + 8 * rsi + 0x1236], 0x14
sar qword [rdx + 8 * rdi + 0x1237], 0x15

sar byte  [rax + 2 * rbx + 0x12345678], 0x12
sar word  [rbx + 4 * rcx + 0x12345679], 0x13
sar dword [rcx + 8 * rsi + 0x1234567a], 0x14
sar qword [rdx + 8 * rdi + 0x1234567b], 0x15

; [scale * index]
sar byte  [2 * rbx], 0x12
sar word  [4 * rcx], 0x13
sar dword [8 * rsi], 0x14
sar qword [8 * rdi], 0x15

; [scale * index + disp8]
sar byte  [2 * rbx + 0x12], 0x12
sar word  [4 * rcx + 0x13], 0x13
sar dword [8 * rsi + 0x14], 0x14
sar qword [8 * rdi + 0x15], 0x15

; [scale * index + disp32]
sar byte  [2 * rbx + 0x1234], 0x12
sar word  [4 * rcx + 0x1235], 0x13
sar dword [8 * rsi + 0x1236], 0x14
sar qword [8 * rdi + 0x1237], 0x15

sar byte  [2 * rbx + 0x12345678], 0x12
sar word  [4 * rcx + 0x12345679], 0x13
sar dword [8 * rsi + 0x1234567a], 0x14
sar qword [8 * rdi + 0x1234567b], 0x15

; Use rbp as base or index.
sar byte [rbp], 0x12
sar byte [rbp + 0x12], 0x13
sar byte [rbp + 0x1234], 0x14
sar byte [rbp + 0x12345678], 0x15

sar word [4 * rbp], 0x12
sar word [4 * rbp + 0x12], 0x13
sar word [4 * rbp + 0x1234], 0x14
sar word [4 * rbp + 0x12345678], 0x15

sar dword [rbx + 4 * rbp], 0x12
sar dword [rbx + 4 * rbp + 0x12], 0x13
sar dword [rbx + 4 * rbp + 0x1234], 0x14
sar dword [rbx + 4 * rbp + 0x12345678], 0x15

; Use rsp as base.
sar qword [rsp], 0x12
sar qword [rsp + 0x12], 0x13
sar qword [rsp + 0x1234], 0x14
sar qword [rsp + 0x12345678], 0x15

sar byte [rsp + rax], 0x12
sar byte [rsp + rbp], 0x13
sar byte [rsp + 2*rbp], 0x14
sar byte [rsp + 4*rbp], 0x15
sar byte [rsp + 8*rbp], 0x16

; use each register as indirect.
sar word [rax], 0x12
sar word [rcx], 0x13
sar word [rdx], 0x14
sar word [rbx], 0x15
sar word [rsp], 0x16
sar word [rbp], 0x17
sar word [rsi], 0x18
sar word [rdi], 0x19

; use each register as indirect.
; rsp is forbidden as index
sar dword [rax + 2*rax], 0x12
sar dword [rcx + 2*rcx], 0x13
sar dword [rdx + 2*rdx], 0x14
sar dword [rbx + 2*rbx], 0x15
sar dword [rbp + 2*rbp], 0x16
sar dword [rsi + 2*rsi], 0x17
sar dword [rdi + 2*rdi], 0x18
