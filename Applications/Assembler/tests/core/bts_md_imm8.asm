use64

; [rip + disp32]
bts word  [rip + 0x12], 0x12
bts word  [rip + 0x13], 0x13
bts dword [rip + 0x14], 0x14
bts qword [rip + 0x15], 0x15

bts word  [rip + 0x1234], 0x20
bts word  [rip + 0x1235], 0x21
bts dword [rip + 0x1236], 0x22
bts qword [rip + 0x1237], 0x23

bts word  [rip + 0x12345678], 0x30
bts word  [rip + 0x12345679], 0x32
bts dword [rip + 0x1234567a], 0x34
bts qword [rip + 0x1234567b], 0x36

; [rip + base]
bts word  [rax], 0x41
bts word  [rbx], 0x45
bts dword [rcx], 0x47
bts qword [rdx], 0x49

; [rip + base + disp8]
bts word  [rax + 0x12], 0xa0
bts word  [rbx + 0x13], 0xb0
bts dword [rcx + 0x14], 0xc0
bts qword [rdx + 0x15], 0xd0

; [rip + base + disp32]
bts word  [rax + 0x1234], 0xcc
bts word  [rbx + 0x1235], 0xdd
bts dword [rcx + 0x1236], 0xee
bts qword [rdx + 0x1237], 0xff

bts word  [rax + 0x12345678], -127
bts word  [rbx + 0x12345679], -100
bts dword [rcx + 0x1234567a], -50
bts qword [rdx + 0x1234567b], -20

; [rip + base + index]
bts word  [rax + rbx], 20
bts word  [rbx + rcx], 50
bts dword [rcx + rsi], 100
bts qword [rdx + rdi], 128

; [rip + base + scale * index]
bts word  [rax + 2 * rbx], 0
bts word  [rbx + 4 * rcx], -1
bts dword [rcx + 8 * rsi], -2
bts qword [rdx + 8 * rdi], -3

; [rip + base + index + disp8]
bts word  [rax + rbx + 0x12], 0
bts word  [rbx + rcx + 0x13], 1
bts dword [rcx + rsi + 0x14], 2
bts qword [rdx + rdi + 0x15], 3

; [rip + base + index + disp32]
bts word  [rax + rbx + 0x1234], 0x10
bts word  [rbx + rcx + 0x1235], 0x11
bts dword [rcx + rsi + 0x1236], 0x12
bts qword [rdx + rdi + 0x1237], 0x13

bts word  [rax + rbx + 0x12345678], 10
bts word  [rbx + rcx + 0x12345679], 11
bts dword [rcx + rsi + 0x1234567a], 12
bts qword [rdx + rdi + 0x1234567b], 13

; [rip + base + scale * index + disp8]
bts word  [rax + 2 * rbx + 0x12], 0x12
bts word  [rbx + 4 * rcx + 0x13], 0x13
bts dword [rcx + 8 * rsi + 0x14], 0x14
bts qword [rdx + 8 * rdi + 0x15], 0x15

; [rip + base + scale * index + disp32]
bts word  [rax + 2 * rbx + 0x1234], 0x12
bts word  [rbx + 4 * rcx + 0x1235], 0x13
bts dword [rcx + 8 * rsi + 0x1236], 0x14
bts qword [rdx + 8 * rdi + 0x1237], 0x15

bts word  [rax + 2 * rbx + 0x12345678], 0x12
bts word  [rbx + 4 * rcx + 0x12345679], 0x13
bts dword [rcx + 8 * rsi + 0x1234567a], 0x14
bts qword [rdx + 8 * rdi + 0x1234567b], 0x15

; [scale * index]
bts word  [2 * rbx], 0x12
bts word  [4 * rcx], 0x13
bts dword [8 * rsi], 0x14
bts qword [8 * rdi], 0x15

; [scale * index + disp8]
bts word  [2 * rbx + 0x12], 0x12
bts word  [4 * rcx + 0x13], 0x13
bts dword [8 * rsi + 0x14], 0x14
bts qword [8 * rdi + 0x15], 0x15

; [scale * index + disp32]
bts word  [2 * rbx + 0x1234], 0x12
bts word  [4 * rcx + 0x1235], 0x13
bts dword [8 * rsi + 0x1236], 0x14
bts qword [8 * rdi + 0x1237], 0x15

bts word  [2 * rbx + 0x12345678], 0x12
bts word  [4 * rcx + 0x12345679], 0x13
bts dword [8 * rsi + 0x1234567a], 0x14
bts qword [8 * rdi + 0x1234567b], 0x15

; Use rbp as base or index.
bts word [rbp], 0x12
bts word [rbp + 0x12], 0x13
bts word [rbp + 0x1234], 0x14
bts word [rbp + 0x12345678], 0x15

bts word [4 * rbp], 0x12
bts word [4 * rbp + 0x12], 0x13
bts word [4 * rbp + 0x1234], 0x14
bts word [4 * rbp + 0x12345678], 0x15

bts dword [rbx + 4 * rbp], 0x12
bts dword [rbx + 4 * rbp + 0x12], 0x13
bts dword [rbx + 4 * rbp + 0x1234], 0x14
bts dword [rbx + 4 * rbp + 0x12345678], 0x15

; Use rsp as base.
bts qword [rsp], 0x12
bts qword [rsp + 0x12], 0x13
bts qword [rsp + 0x1234], 0x14
bts qword [rsp + 0x12345678], 0x15

bts word [rsp + rax], 0x12
bts word [rsp + rbp], 0x13
bts word [rsp + 2*rbp], 0x14
bts word [rsp + 4*rbp], 0x15
bts word [rsp + 8*rbp], 0x16

; use each register as indirect.
bts dword [rax], 0x12
bts dword [rcx], 0x13
bts dword [rdx], 0x14
bts dword [rbx], 0x15
bts dword [rsp], 0x16
bts dword [rbp], 0x17
bts dword [rsi], 0x18
bts dword [rdi], 0x19

; use each register as indirect.
; rsp is forbidden as index
bts qword [rax + 2*rax], 0x12
bts qword [rcx + 2*rcx], 0x13
bts qword [rdx + 2*rdx], 0x14
bts qword [rbx + 2*rbx], 0x15
bts qword [rbp + 2*rbp], 0x16
bts qword [rsi + 2*rsi], 0x17
bts qword [rdi + 2*rdi], 0x18
