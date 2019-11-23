use64

; [rip + disp32]
shr byte  [rip + 0x12], 0x12
shr word  [rip + 0x13], 0x13
shr dword [rip + 0x14], 0x14
shr qword [rip + 0x15], 0x15

shr byte  [rip + 0x1234], 0x20
shr word  [rip + 0x1235], 0x21
shr dword [rip + 0x1236], 0x22
shr qword [rip + 0x1237], 0x23

shr byte  [rip + 0x12345678], 0x30
shr word  [rip + 0x12345679], 0x32
shr dword [rip + 0x1234567a], 0x34
shr qword [rip + 0x1234567b], 0x36

; [rip + base]
shr byte  [rax], 0x41
shr word  [rbx], 0x45
shr dword [rcx], 0x47
shr qword [rdx], 0x49

; [rip + base + disp8]
shr byte  [rax + 0x12], 0xa0
shr word  [rbx + 0x13], 0xb0
shr dword [rcx + 0x14], 0xc0
shr qword [rdx + 0x15], 0xd0

; [rip + base + disp32]
shr byte  [rax + 0x1234], 0xcc
shr word  [rbx + 0x1235], 0xdd
shr dword [rcx + 0x1236], 0xee
shr qword [rdx + 0x1237], 0xff

shr byte  [rax + 0x12345678], -127
shr word  [rbx + 0x12345679], -100
shr dword [rcx + 0x1234567a], -50
shr qword [rdx + 0x1234567b], -20

; [rip + base + index]
shr byte  [rax + rbx], 20
shr word  [rbx + rcx], 50
shr dword [rcx + rsi], 100
shr qword [rdx + rdi], 128

; [rip + base + scale * index]
shr byte  [rax + 2 * rbx], 0
shr word  [rbx + 4 * rcx], -1
shr dword [rcx + 8 * rsi], -2
shr qword [rdx + 8 * rdi], -3

; [rip + base + index + disp8]
shr byte  [rax + rbx + 0x12], 0
shr word  [rbx + rcx + 0x13], 1
shr dword [rcx + rsi + 0x14], 2
shr qword [rdx + rdi + 0x15], 3

; [rip + base + index + disp32]
shr byte  [rax + rbx + 0x1234], 0x10
shr word  [rbx + rcx + 0x1235], 0x11
shr dword [rcx + rsi + 0x1236], 0x12
shr qword [rdx + rdi + 0x1237], 0x13

shr byte  [rax + rbx + 0x12345678], 10
shr word  [rbx + rcx + 0x12345679], 11
shr dword [rcx + rsi + 0x1234567a], 12
shr qword [rdx + rdi + 0x1234567b], 13

; [rip + base + scale * index + disp8]
shr byte  [rax + 2 * rbx + 0x12], 0x12
shr word  [rbx + 4 * rcx + 0x13], 0x13
shr dword [rcx + 8 * rsi + 0x14], 0x14
shr qword [rdx + 8 * rdi + 0x15], 0x15

; [rip + base + scale * index + disp32]
shr byte  [rax + 2 * rbx + 0x1234], 0x12
shr word  [rbx + 4 * rcx + 0x1235], 0x13
shr dword [rcx + 8 * rsi + 0x1236], 0x14
shr qword [rdx + 8 * rdi + 0x1237], 0x15

shr byte  [rax + 2 * rbx + 0x12345678], 0x12
shr word  [rbx + 4 * rcx + 0x12345679], 0x13
shr dword [rcx + 8 * rsi + 0x1234567a], 0x14
shr qword [rdx + 8 * rdi + 0x1234567b], 0x15

; [scale * index]
shr byte  [2 * rbx], 0x12
shr word  [4 * rcx], 0x13
shr dword [8 * rsi], 0x14
shr qword [8 * rdi], 0x15

; [scale * index + disp8]
shr byte  [2 * rbx + 0x12], 0x12
shr word  [4 * rcx + 0x13], 0x13
shr dword [8 * rsi + 0x14], 0x14
shr qword [8 * rdi + 0x15], 0x15

; [scale * index + disp32]
shr byte  [2 * rbx + 0x1234], 0x12
shr word  [4 * rcx + 0x1235], 0x13
shr dword [8 * rsi + 0x1236], 0x14
shr qword [8 * rdi + 0x1237], 0x15

shr byte  [2 * rbx + 0x12345678], 0x12
shr word  [4 * rcx + 0x12345679], 0x13
shr dword [8 * rsi + 0x1234567a], 0x14
shr qword [8 * rdi + 0x1234567b], 0x15

; Use rbp as base or index.
shr byte [rbp], 0x12
shr byte [rbp + 0x12], 0x13
shr byte [rbp + 0x1234], 0x14
shr byte [rbp + 0x12345678], 0x15

shr word [4 * rbp], 0x12
shr word [4 * rbp + 0x12], 0x13
shr word [4 * rbp + 0x1234], 0x14
shr word [4 * rbp + 0x12345678], 0x15

shr dword [rbx + 4 * rbp], 0x12
shr dword [rbx + 4 * rbp + 0x12], 0x13
shr dword [rbx + 4 * rbp + 0x1234], 0x14
shr dword [rbx + 4 * rbp + 0x12345678], 0x15

; Use rsp as base.
shr qword [rsp], 0x12
shr qword [rsp + 0x12], 0x13
shr qword [rsp + 0x1234], 0x14
shr qword [rsp + 0x12345678], 0x15

shr byte [rsp + rax], 0x12
shr byte [rsp + rbp], 0x13
shr byte [rsp + 2*rbp], 0x14
shr byte [rsp + 4*rbp], 0x15
shr byte [rsp + 8*rbp], 0x16

; use each register as indirect.
shr word [rax], 0x12
shr word [rcx], 0x13
shr word [rdx], 0x14
shr word [rbx], 0x15
shr word [rsp], 0x16
shr word [rbp], 0x17
shr word [rsi], 0x18
shr word [rdi], 0x19

; use each register as indirect.
; rsp is forbidden as index
shr dword [rax + 2*rax], 0x12
shr dword [rcx + 2*rcx], 0x13
shr dword [rdx + 2*rdx], 0x14
shr dword [rbx + 2*rbx], 0x15
shr dword [rbp + 2*rbp], 0x16
shr dword [rsi + 2*rsi], 0x17
shr dword [rdi + 2*rdi], 0x18
