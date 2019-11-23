use64

; [rip + disp32]
ror byte  [rip + 0x12], 0x12
ror word  [rip + 0x13], 0x13
ror dword [rip + 0x14], 0x14
ror qword [rip + 0x15], 0x15

ror byte  [rip + 0x1234], 0x20
ror word  [rip + 0x1235], 0x21
ror dword [rip + 0x1236], 0x22
ror qword [rip + 0x1237], 0x23

ror byte  [rip + 0x12345678], 0x30
ror word  [rip + 0x12345679], 0x32
ror dword [rip + 0x1234567a], 0x34
ror qword [rip + 0x1234567b], 0x36

; [rip + base]
ror byte  [rax], 0x41
ror word  [rbx], 0x45
ror dword [rcx], 0x47
ror qword [rdx], 0x49

; [rip + base + disp8]
ror byte  [rax + 0x12], 0xa0
ror word  [rbx + 0x13], 0xb0
ror dword [rcx + 0x14], 0xc0
ror qword [rdx + 0x15], 0xd0

; [rip + base + disp32]
ror byte  [rax + 0x1234], 0xcc
ror word  [rbx + 0x1235], 0xdd
ror dword [rcx + 0x1236], 0xee
ror qword [rdx + 0x1237], 0xff

ror byte  [rax + 0x12345678], -127
ror word  [rbx + 0x12345679], -100
ror dword [rcx + 0x1234567a], -50
ror qword [rdx + 0x1234567b], -20

; [rip + base + index]
ror byte  [rax + rbx], 20
ror word  [rbx + rcx], 50
ror dword [rcx + rsi], 100
ror qword [rdx + rdi], 128

; [rip + base + scale * index]
ror byte  [rax + 2 * rbx], 0
ror word  [rbx + 4 * rcx], -1
ror dword [rcx + 8 * rsi], -2
ror qword [rdx + 8 * rdi], -3

; [rip + base + index + disp8]
ror byte  [rax + rbx + 0x12], 0
ror word  [rbx + rcx + 0x13], 1
ror dword [rcx + rsi + 0x14], 2
ror qword [rdx + rdi + 0x15], 3

; [rip + base + index + disp32]
ror byte  [rax + rbx + 0x1234], 0x10
ror word  [rbx + rcx + 0x1235], 0x11
ror dword [rcx + rsi + 0x1236], 0x12
ror qword [rdx + rdi + 0x1237], 0x13

ror byte  [rax + rbx + 0x12345678], 10
ror word  [rbx + rcx + 0x12345679], 11
ror dword [rcx + rsi + 0x1234567a], 12
ror qword [rdx + rdi + 0x1234567b], 13

; [rip + base + scale * index + disp8]
ror byte  [rax + 2 * rbx + 0x12], 0x12
ror word  [rbx + 4 * rcx + 0x13], 0x13
ror dword [rcx + 8 * rsi + 0x14], 0x14
ror qword [rdx + 8 * rdi + 0x15], 0x15

; [rip + base + scale * index + disp32]
ror byte  [rax + 2 * rbx + 0x1234], 0x12
ror word  [rbx + 4 * rcx + 0x1235], 0x13
ror dword [rcx + 8 * rsi + 0x1236], 0x14
ror qword [rdx + 8 * rdi + 0x1237], 0x15

ror byte  [rax + 2 * rbx + 0x12345678], 0x12
ror word  [rbx + 4 * rcx + 0x12345679], 0x13
ror dword [rcx + 8 * rsi + 0x1234567a], 0x14
ror qword [rdx + 8 * rdi + 0x1234567b], 0x15

; [scale * index]
ror byte  [2 * rbx], 0x12
ror word  [4 * rcx], 0x13
ror dword [8 * rsi], 0x14
ror qword [8 * rdi], 0x15

; [scale * index + disp8]
ror byte  [2 * rbx + 0x12], 0x12
ror word  [4 * rcx + 0x13], 0x13
ror dword [8 * rsi + 0x14], 0x14
ror qword [8 * rdi + 0x15], 0x15

; [scale * index + disp32]
ror byte  [2 * rbx + 0x1234], 0x12
ror word  [4 * rcx + 0x1235], 0x13
ror dword [8 * rsi + 0x1236], 0x14
ror qword [8 * rdi + 0x1237], 0x15

ror byte  [2 * rbx + 0x12345678], 0x12
ror word  [4 * rcx + 0x12345679], 0x13
ror dword [8 * rsi + 0x1234567a], 0x14
ror qword [8 * rdi + 0x1234567b], 0x15

; Use rbp as base or index.
ror byte [rbp], 0x12
ror byte [rbp + 0x12], 0x13
ror byte [rbp + 0x1234], 0x14
ror byte [rbp + 0x12345678], 0x15

ror word [4 * rbp], 0x12
ror word [4 * rbp + 0x12], 0x13
ror word [4 * rbp + 0x1234], 0x14
ror word [4 * rbp + 0x12345678], 0x15

ror dword [rbx + 4 * rbp], 0x12
ror dword [rbx + 4 * rbp + 0x12], 0x13
ror dword [rbx + 4 * rbp + 0x1234], 0x14
ror dword [rbx + 4 * rbp + 0x12345678], 0x15

; Use rsp as base.
ror qword [rsp], 0x12
ror qword [rsp + 0x12], 0x13
ror qword [rsp + 0x1234], 0x14
ror qword [rsp + 0x12345678], 0x15

ror byte [rsp + rax], 0x12
ror byte [rsp + rbp], 0x13
ror byte [rsp + 2*rbp], 0x14
ror byte [rsp + 4*rbp], 0x15
ror byte [rsp + 8*rbp], 0x16

; use each register as indirect.
ror word [rax], 0x12
ror word [rcx], 0x13
ror word [rdx], 0x14
ror word [rbx], 0x15
ror word [rsp], 0x16
ror word [rbp], 0x17
ror word [rsi], 0x18
ror word [rdi], 0x19

; use each register as indirect.
; rsp is forbidden as index
ror dword [rax + 2*rax], 0x12
ror dword [rcx + 2*rcx], 0x13
ror dword [rdx + 2*rdx], 0x14
ror dword [rbx + 2*rbx], 0x15
ror dword [rbp + 2*rbp], 0x16
ror dword [rsi + 2*rsi], 0x17
ror dword [rdi + 2*rdi], 0x18
