use64

; [rip + disp32]
rol byte  [rip + 0x12], 0x12
rol word  [rip + 0x13], 0x13
rol dword [rip + 0x14], 0x14
rol qword [rip + 0x15], 0x15

rol byte  [rip + 0x1234], 0x20
rol word  [rip + 0x1235], 0x21
rol dword [rip + 0x1236], 0x22
rol qword [rip + 0x1237], 0x23

rol byte  [rip + 0x12345678], 0x30
rol word  [rip + 0x12345679], 0x32
rol dword [rip + 0x1234567a], 0x34
rol qword [rip + 0x1234567b], 0x36

; [rip + base]
rol byte  [rax], 0x41
rol word  [rbx], 0x45
rol dword [rcx], 0x47
rol qword [rdx], 0x49

; [rip + base + disp8]
rol byte  [rax + 0x12], 0xa0
rol word  [rbx + 0x13], 0xb0
rol dword [rcx + 0x14], 0xc0
rol qword [rdx + 0x15], 0xd0

; [rip + base + disp32]
rol byte  [rax + 0x1234], 0xcc
rol word  [rbx + 0x1235], 0xdd
rol dword [rcx + 0x1236], 0xee
rol qword [rdx + 0x1237], 0xff

rol byte  [rax + 0x12345678], -127
rol word  [rbx + 0x12345679], -100
rol dword [rcx + 0x1234567a], -50
rol qword [rdx + 0x1234567b], -20

; [rip + base + index]
rol byte  [rax + rbx], 20
rol word  [rbx + rcx], 50
rol dword [rcx + rsi], 100
rol qword [rdx + rdi], 128

; [rip + base + scale * index]
rol byte  [rax + 2 * rbx], 0
rol word  [rbx + 4 * rcx], -1
rol dword [rcx + 8 * rsi], -2
rol qword [rdx + 8 * rdi], -3

; [rip + base + index + disp8]
rol byte  [rax + rbx + 0x12], 0
rol word  [rbx + rcx + 0x13], 1
rol dword [rcx + rsi + 0x14], 2
rol qword [rdx + rdi + 0x15], 3

; [rip + base + index + disp32]
rol byte  [rax + rbx + 0x1234], 0x10
rol word  [rbx + rcx + 0x1235], 0x11
rol dword [rcx + rsi + 0x1236], 0x12
rol qword [rdx + rdi + 0x1237], 0x13

rol byte  [rax + rbx + 0x12345678], 10
rol word  [rbx + rcx + 0x12345679], 11
rol dword [rcx + rsi + 0x1234567a], 12
rol qword [rdx + rdi + 0x1234567b], 13

; [rip + base + scale * index + disp8]
rol byte  [rax + 2 * rbx + 0x12], 0x12
rol word  [rbx + 4 * rcx + 0x13], 0x13
rol dword [rcx + 8 * rsi + 0x14], 0x14
rol qword [rdx + 8 * rdi + 0x15], 0x15

; [rip + base + scale * index + disp32]
rol byte  [rax + 2 * rbx + 0x1234], 0x12
rol word  [rbx + 4 * rcx + 0x1235], 0x13
rol dword [rcx + 8 * rsi + 0x1236], 0x14
rol qword [rdx + 8 * rdi + 0x1237], 0x15

rol byte  [rax + 2 * rbx + 0x12345678], 0x12
rol word  [rbx + 4 * rcx + 0x12345679], 0x13
rol dword [rcx + 8 * rsi + 0x1234567a], 0x14
rol qword [rdx + 8 * rdi + 0x1234567b], 0x15

; [scale * index]
rol byte  [2 * rbx], 0x12
rol word  [4 * rcx], 0x13
rol dword [8 * rsi], 0x14
rol qword [8 * rdi], 0x15

; [scale * index + disp8]
rol byte  [2 * rbx + 0x12], 0x12
rol word  [4 * rcx + 0x13], 0x13
rol dword [8 * rsi + 0x14], 0x14
rol qword [8 * rdi + 0x15], 0x15

; [scale * index + disp32]
rol byte  [2 * rbx + 0x1234], 0x12
rol word  [4 * rcx + 0x1235], 0x13
rol dword [8 * rsi + 0x1236], 0x14
rol qword [8 * rdi + 0x1237], 0x15

rol byte  [2 * rbx + 0x12345678], 0x12
rol word  [4 * rcx + 0x12345679], 0x13
rol dword [8 * rsi + 0x1234567a], 0x14
rol qword [8 * rdi + 0x1234567b], 0x15

; Use rbp as base or index.
rol byte [rbp], 0x12
rol byte [rbp + 0x12], 0x13
rol byte [rbp + 0x1234], 0x14
rol byte [rbp + 0x12345678], 0x15

rol word [4 * rbp], 0x12
rol word [4 * rbp + 0x12], 0x13
rol word [4 * rbp + 0x1234], 0x14
rol word [4 * rbp + 0x12345678], 0x15

rol dword [rbx + 4 * rbp], 0x12
rol dword [rbx + 4 * rbp + 0x12], 0x13
rol dword [rbx + 4 * rbp + 0x1234], 0x14
rol dword [rbx + 4 * rbp + 0x12345678], 0x15

; Use rsp as base.
rol qword [rsp], 0x12
rol qword [rsp + 0x12], 0x13
rol qword [rsp + 0x1234], 0x14
rol qword [rsp + 0x12345678], 0x15

rol byte [rsp + rax], 0x12
rol byte [rsp + rbp], 0x13
rol byte [rsp + 2*rbp], 0x14
rol byte [rsp + 4*rbp], 0x15
rol byte [rsp + 8*rbp], 0x16

; use each register as indirect.
rol word [rax], 0x12
rol word [rcx], 0x13
rol word [rdx], 0x14
rol word [rbx], 0x15
rol word [rsp], 0x16
rol word [rbp], 0x17
rol word [rsi], 0x18
rol word [rdi], 0x19

; use each register as indirect.
; rsp is forbidden as index
rol dword [rax + 2*rax], 0x12
rol dword [rcx + 2*rcx], 0x13
rol dword [rdx + 2*rdx], 0x14
rol dword [rbx + 2*rbx], 0x15
rol dword [rbp + 2*rbp], 0x16
rol dword [rsi + 2*rsi], 0x17
rol dword [rdi + 2*rdi], 0x18
