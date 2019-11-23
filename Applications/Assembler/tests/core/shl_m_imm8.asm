use64

; [rip + disp32]
shl byte  [rip + 0x12], 0x12
shl word  [rip + 0x13], 0x13
shl dword [rip + 0x14], 0x14
shl qword [rip + 0x15], 0x15

shl byte  [rip + 0x1234], 0x20
shl word  [rip + 0x1235], 0x21
shl dword [rip + 0x1236], 0x22
shl qword [rip + 0x1237], 0x23

shl byte  [rip + 0x12345678], 0x30
shl word  [rip + 0x12345679], 0x32
shl dword [rip + 0x1234567a], 0x34
shl qword [rip + 0x1234567b], 0x36

; [rip + base]
shl byte  [rax], 0x41
shl word  [rbx], 0x45
shl dword [rcx], 0x47
shl qword [rdx], 0x49

; [rip + base + disp8]
shl byte  [rax + 0x12], 0xa0
shl word  [rbx + 0x13], 0xb0
shl dword [rcx + 0x14], 0xc0
shl qword [rdx + 0x15], 0xd0

; [rip + base + disp32]
shl byte  [rax + 0x1234], 0xcc
shl word  [rbx + 0x1235], 0xdd
shl dword [rcx + 0x1236], 0xee
shl qword [rdx + 0x1237], 0xff

shl byte  [rax + 0x12345678], -127
shl word  [rbx + 0x12345679], -100
shl dword [rcx + 0x1234567a], -50
shl qword [rdx + 0x1234567b], -20

; [rip + base + index]
shl byte  [rax + rbx], 20
shl word  [rbx + rcx], 50
shl dword [rcx + rsi], 100
shl qword [rdx + rdi], 128

; [rip + base + scale * index]
shl byte  [rax + 2 * rbx], 0
shl word  [rbx + 4 * rcx], -1
shl dword [rcx + 8 * rsi], -2
shl qword [rdx + 8 * rdi], -3

; [rip + base + index + disp8]
shl byte  [rax + rbx + 0x12], 0
shl word  [rbx + rcx + 0x13], 1
shl dword [rcx + rsi + 0x14], 2
shl qword [rdx + rdi + 0x15], 3

; [rip + base + index + disp32]
shl byte  [rax + rbx + 0x1234], 0x10
shl word  [rbx + rcx + 0x1235], 0x11
shl dword [rcx + rsi + 0x1236], 0x12
shl qword [rdx + rdi + 0x1237], 0x13

shl byte  [rax + rbx + 0x12345678], 10
shl word  [rbx + rcx + 0x12345679], 11
shl dword [rcx + rsi + 0x1234567a], 12
shl qword [rdx + rdi + 0x1234567b], 13

; [rip + base + scale * index + disp8]
shl byte  [rax + 2 * rbx + 0x12], 0x12
shl word  [rbx + 4 * rcx + 0x13], 0x13
shl dword [rcx + 8 * rsi + 0x14], 0x14
shl qword [rdx + 8 * rdi + 0x15], 0x15

; [rip + base + scale * index + disp32]
shl byte  [rax + 2 * rbx + 0x1234], 0x12
shl word  [rbx + 4 * rcx + 0x1235], 0x13
shl dword [rcx + 8 * rsi + 0x1236], 0x14
shl qword [rdx + 8 * rdi + 0x1237], 0x15

shl byte  [rax + 2 * rbx + 0x12345678], 0x12
shl word  [rbx + 4 * rcx + 0x12345679], 0x13
shl dword [rcx + 8 * rsi + 0x1234567a], 0x14
shl qword [rdx + 8 * rdi + 0x1234567b], 0x15

; [scale * index]
shl byte  [2 * rbx], 0x12
shl word  [4 * rcx], 0x13
shl dword [8 * rsi], 0x14
shl qword [8 * rdi], 0x15

; [scale * index + disp8]
shl byte  [2 * rbx + 0x12], 0x12
shl word  [4 * rcx + 0x13], 0x13
shl dword [8 * rsi + 0x14], 0x14
shl qword [8 * rdi + 0x15], 0x15

; [scale * index + disp32]
shl byte  [2 * rbx + 0x1234], 0x12
shl word  [4 * rcx + 0x1235], 0x13
shl dword [8 * rsi + 0x1236], 0x14
shl qword [8 * rdi + 0x1237], 0x15

shl byte  [2 * rbx + 0x12345678], 0x12
shl word  [4 * rcx + 0x12345679], 0x13
shl dword [8 * rsi + 0x1234567a], 0x14
shl qword [8 * rdi + 0x1234567b], 0x15

; Use rbp as base or index.
shl byte [rbp], 0x12
shl byte [rbp + 0x12], 0x13
shl byte [rbp + 0x1234], 0x14
shl byte [rbp + 0x12345678], 0x15

shl word [4 * rbp], 0x12
shl word [4 * rbp + 0x12], 0x13
shl word [4 * rbp + 0x1234], 0x14
shl word [4 * rbp + 0x12345678], 0x15

shl dword [rbx + 4 * rbp], 0x12
shl dword [rbx + 4 * rbp + 0x12], 0x13
shl dword [rbx + 4 * rbp + 0x1234], 0x14
shl dword [rbx + 4 * rbp + 0x12345678], 0x15

; Use rsp as base.
shl qword [rsp], 0x12
shl qword [rsp + 0x12], 0x13
shl qword [rsp + 0x1234], 0x14
shl qword [rsp + 0x12345678], 0x15

shl byte [rsp + rax], 0x12
shl byte [rsp + rbp], 0x13
shl byte [rsp + 2*rbp], 0x14
shl byte [rsp + 4*rbp], 0x15
shl byte [rsp + 8*rbp], 0x16

; use each register as indirect.
shl word [rax], 0x12
shl word [rcx], 0x13
shl word [rdx], 0x14
shl word [rbx], 0x15
shl word [rsp], 0x16
shl word [rbp], 0x17
shl word [rsi], 0x18
shl word [rdi], 0x19

; use each register as indirect.
; rsp is forbidden as index
shl dword [rax + 2*rax], 0x12
shl dword [rcx + 2*rcx], 0x13
shl dword [rdx + 2*rdx], 0x14
shl dword [rbx + 2*rbx], 0x15
shl dword [rbp + 2*rbp], 0x16
shl dword [rsi + 2*rsi], 0x17
shl dword [rdi + 2*rdi], 0x18
