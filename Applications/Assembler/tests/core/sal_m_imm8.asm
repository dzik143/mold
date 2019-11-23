use64

; [rip + disp32]
sal byte  [rip + 0x12], 0x12
sal word  [rip + 0x13], 0x13
sal dword [rip + 0x14], 0x14
sal qword [rip + 0x15], 0x15

sal byte  [rip + 0x1234], 0x20
sal word  [rip + 0x1235], 0x21
sal dword [rip + 0x1236], 0x22
sal qword [rip + 0x1237], 0x23

sal byte  [rip + 0x12345678], 0x30
sal word  [rip + 0x12345679], 0x32
sal dword [rip + 0x1234567a], 0x34
sal qword [rip + 0x1234567b], 0x36

; [rip + base]
sal byte  [rax], 0x41
sal word  [rbx], 0x45
sal dword [rcx], 0x47
sal qword [rdx], 0x49

; [rip + base + disp8]
sal byte  [rax + 0x12], 0xa0
sal word  [rbx + 0x13], 0xb0
sal dword [rcx + 0x14], 0xc0
sal qword [rdx + 0x15], 0xd0

; [rip + base + disp32]
sal byte  [rax + 0x1234], 0xcc
sal word  [rbx + 0x1235], 0xdd
sal dword [rcx + 0x1236], 0xee
sal qword [rdx + 0x1237], 0xff

sal byte  [rax + 0x12345678], -127
sal word  [rbx + 0x12345679], -100
sal dword [rcx + 0x1234567a], -50
sal qword [rdx + 0x1234567b], -20

; [rip + base + index]
sal byte  [rax + rbx], 20
sal word  [rbx + rcx], 50
sal dword [rcx + rsi], 100
sal qword [rdx + rdi], 128

; [rip + base + scale * index]
sal byte  [rax + 2 * rbx], 0
sal word  [rbx + 4 * rcx], -1
sal dword [rcx + 8 * rsi], -2
sal qword [rdx + 8 * rdi], -3

; [rip + base + index + disp8]
sal byte  [rax + rbx + 0x12], 0
sal word  [rbx + rcx + 0x13], 1
sal dword [rcx + rsi + 0x14], 2
sal qword [rdx + rdi + 0x15], 3

; [rip + base + index + disp32]
sal byte  [rax + rbx + 0x1234], 0x10
sal word  [rbx + rcx + 0x1235], 0x11
sal dword [rcx + rsi + 0x1236], 0x12
sal qword [rdx + rdi + 0x1237], 0x13

sal byte  [rax + rbx + 0x12345678], 10
sal word  [rbx + rcx + 0x12345679], 11
sal dword [rcx + rsi + 0x1234567a], 12
sal qword [rdx + rdi + 0x1234567b], 13

; [rip + base + scale * index + disp8]
sal byte  [rax + 2 * rbx + 0x12], 0x12
sal word  [rbx + 4 * rcx + 0x13], 0x13
sal dword [rcx + 8 * rsi + 0x14], 0x14
sal qword [rdx + 8 * rdi + 0x15], 0x15

; [rip + base + scale * index + disp32]
sal byte  [rax + 2 * rbx + 0x1234], 0x12
sal word  [rbx + 4 * rcx + 0x1235], 0x13
sal dword [rcx + 8 * rsi + 0x1236], 0x14
sal qword [rdx + 8 * rdi + 0x1237], 0x15

sal byte  [rax + 2 * rbx + 0x12345678], 0x12
sal word  [rbx + 4 * rcx + 0x12345679], 0x13
sal dword [rcx + 8 * rsi + 0x1234567a], 0x14
sal qword [rdx + 8 * rdi + 0x1234567b], 0x15

; [scale * index]
sal byte  [2 * rbx], 0x12
sal word  [4 * rcx], 0x13
sal dword [8 * rsi], 0x14
sal qword [8 * rdi], 0x15

; [scale * index + disp8]
sal byte  [2 * rbx + 0x12], 0x12
sal word  [4 * rcx + 0x13], 0x13
sal dword [8 * rsi + 0x14], 0x14
sal qword [8 * rdi + 0x15], 0x15

; [scale * index + disp32]
sal byte  [2 * rbx + 0x1234], 0x12
sal word  [4 * rcx + 0x1235], 0x13
sal dword [8 * rsi + 0x1236], 0x14
sal qword [8 * rdi + 0x1237], 0x15

sal byte  [2 * rbx + 0x12345678], 0x12
sal word  [4 * rcx + 0x12345679], 0x13
sal dword [8 * rsi + 0x1234567a], 0x14
sal qword [8 * rdi + 0x1234567b], 0x15

; Use rbp as base or index.
sal byte [rbp], 0x12
sal byte [rbp + 0x12], 0x13
sal byte [rbp + 0x1234], 0x14
sal byte [rbp + 0x12345678], 0x15

sal word [4 * rbp], 0x12
sal word [4 * rbp + 0x12], 0x13
sal word [4 * rbp + 0x1234], 0x14
sal word [4 * rbp + 0x12345678], 0x15

sal dword [rbx + 4 * rbp], 0x12
sal dword [rbx + 4 * rbp + 0x12], 0x13
sal dword [rbx + 4 * rbp + 0x1234], 0x14
sal dword [rbx + 4 * rbp + 0x12345678], 0x15

; Use rsp as base.
sal qword [rsp], 0x12
sal qword [rsp + 0x12], 0x13
sal qword [rsp + 0x1234], 0x14
sal qword [rsp + 0x12345678], 0x15

sal byte [rsp + rax], 0x12
sal byte [rsp + rbp], 0x13
sal byte [rsp + 2*rbp], 0x14
sal byte [rsp + 4*rbp], 0x15
sal byte [rsp + 8*rbp], 0x16

; use each register as indirect.
sal word [rax], 0x12
sal word [rcx], 0x13
sal word [rdx], 0x14
sal word [rbx], 0x15
sal word [rsp], 0x16
sal word [rbp], 0x17
sal word [rsi], 0x18
sal word [rdi], 0x19

; use each register as indirect.
; rsp is forbidden as index
sal dword [rax + 2*rax], 0x12
sal dword [rcx + 2*rcx], 0x13
sal dword [rdx + 2*rdx], 0x14
sal dword [rbx + 2*rbx], 0x15
sal dword [rbp + 2*rbp], 0x16
sal dword [rsi + 2*rsi], 0x17
sal dword [rdi + 2*rdi], 0x18
