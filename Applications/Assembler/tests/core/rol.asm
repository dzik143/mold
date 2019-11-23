use64
; ------------------------------------------------------------------------------
; opcode r,cl
; ------------------------------------------------------------------------------
rol al, cl
rol cl, cl
rol dl, cl
rol bl, cl
rol ah, cl
rol ch, cl
rol dh, cl
rol bh, cl
rol ax, cl
rol cx, cl
rol dx, cl
rol bx, cl
rol sp, cl
rol bp, cl
rol si, cl
rol di, cl
rol eax, cl
rol ecx, cl
rol edx, cl
rol ebx, cl
rol esp, cl
rol ebp, cl
rol esi, cl
rol edi, cl
rol rax, cl
rol rcx, cl
rol rdx, cl
rol rbx, cl
rol rsp, cl
rol rbp, cl
rol rsi, cl
rol rdi, cl

; ------------------------------------------------------------------------------
; opcode r,imm8
; ------------------------------------------------------------------------------
; immediate to each register: 8-bit
rol al, -127
rol cl, -100
rol dl, -23
rol bl, -1
rol ah, 0
rol ch, 1
rol dh, 0x12
rol bh, 0xff

; immediate to each register: 16-bit
rol ax, 0x50
rol cx, 0x51
rol dx, 0x52
rol bx, 0x53
rol sp, 0x54
rol bp, 0x55
rol si, 0x56
rol di, 0x57

; immediate to each register: 32-bit
rol eax, 0xa0
rol ecx, 0xa1
rol edx, 0xa2
rol ebx, 0xa3
rol esp, 0xa4
rol ebp, 0xa5
rol esi, 0xa6
rol edi, 0xa7

; immediate to each register: 64-bit
rol rax, 0x88
rol rcx, 0x99
rol rdx, 0xaa
rol rbx, 0xbb
rol rsp, 0xcc
rol rbp, 0xdd
rol rsi, 0xee
rol rdi, 0xff

; ------------------------------------------------------------------------------
; opcode m,cl
; ------------------------------------------------------------------------------
rol byte[rip + 0x12], cl
rol word[rip + 0x13], cl
rol dword [rip + 0x14], cl
rol qword [rip + 0x15], cl
rol byte[rip + 0x1234], cl
rol word[rip + 0x1235], cl
rol dword [rip + 0x1236], cl
rol qword [rip + 0x1237], cl
rol byte[rip + 0x12345678], cl
rol word[rip + 0x12345679], cl
rol dword [rip + 0x1234567a], cl
rol qword [rip + 0x1234567b], cl
rol byte[rax], cl
rol word[rbx], cl
rol dword [rcx], cl
rol qword [rdx], cl
rol byte[rax + 0x12], cl
rol word[rbx + 0x13], cl
rol dword [rcx + 0x14], cl
rol qword [rdx + 0x15], cl
rol byte[rax + 0x1234], cl
rol word[rbx + 0x1235], cl
rol dword [rcx + 0x1236], cl
rol qword [rdx + 0x1237], cl
rol byte[rax + 0x12345678], cl
rol word[rbx + 0x12345679], cl
rol dword [rcx + 0x1234567a], cl
rol qword [rdx + 0x1234567b], cl
rol byte[rax + rbx], cl
rol word[rbx + rcx], cl
rol dword [rcx + rsi], cl
rol qword [rdx + rdi], cl
rol byte[rax + 2 * rbx], cl
rol word[rbx + 4 * rcx], cl
rol dword [rcx + 8 * rsi], cl
rol qword [rdx + 8 * rdi], cl
rol byte[rax + rbx + 0x12], cl
rol word[rbx + rcx + 0x13], cl
rol dword [rcx + rsi + 0x14], cl
rol qword [rdx + rdi + 0x15], cl
rol byte[rax + rbx + 0x1234], cl
rol word[rbx + rcx + 0x1235], cl
rol dword [rcx + rsi + 0x1236], cl
rol qword [rdx + rdi + 0x1237], cl
rol byte[rax + rbx + 0x12345678], cl
rol word[rbx + rcx + 0x12345679], cl
rol dword [rcx + rsi + 0x1234567a], cl
rol qword [rdx + rdi + 0x1234567b], cl
rol byte[rax + 2 * rbx + 0x12], cl
rol word[rbx + 4 * rcx + 0x13], cl
rol dword [rcx + 8 * rsi + 0x14], cl
rol qword [rdx + 8 * rdi + 0x15], cl
rol byte[rax + 2 * rbx + 0x1234], cl
rol word[rbx + 4 * rcx + 0x1235], cl
rol dword [rcx + 8 * rsi + 0x1236], cl
rol qword [rdx + 8 * rdi + 0x1237], cl
rol byte[rax + 2 * rbx + 0x12345678], cl
rol word[rbx + 4 * rcx + 0x12345679], cl
rol dword [rcx + 8 * rsi + 0x1234567a], cl
rol qword [rdx + 8 * rdi + 0x1234567b], cl
rol byte[2 * rbx], cl
rol word[4 * rcx], cl
rol dword [8 * rsi], cl
rol qword [8 * rdi], cl
rol byte[2 * rbx + 0x12], cl
rol word[4 * rcx + 0x13], cl
rol dword [8 * rsi + 0x14], cl
rol qword [8 * rdi + 0x15], cl
rol byte[2 * rbx + 0x1234], cl
rol word[4 * rcx + 0x1235], cl
rol dword [8 * rsi + 0x1236], cl
rol qword [8 * rdi + 0x1237], cl
rol byte[2 * rbx + 0x12345678], cl
rol word[4 * rcx + 0x12345679], cl
rol dword [8 * rsi + 0x1234567a], cl
rol qword [8 * rdi + 0x1234567b], cl
rol byte [rbp], cl
rol byte [rbp + 0x12], cl
rol byte [rbp + 0x1234], cl
rol byte [rbp + 0x12345678], cl
rol byte [4 * rbp], cl
rol byte [4 * rbp + 0x12], cl
rol byte [4 * rbp + 0x1234], cl
rol byte [4 * rbp + 0x12345678], cl
rol byte [rbx + 4 * rbp], cl
rol byte [rbx + 4 * rbp + 0x12], cl
rol byte [rbx + 4 * rbp + 0x1234], cl
rol byte [rbx + 4 * rbp + 0x12345678], cl
rol byte [rsp], cl
rol byte [rsp + 0x12], cl
rol byte [rsp + 0x1234], cl
rol byte [rsp + 0x12345678], cl
rol byte [rsp + rax], cl
rol byte [rsp + rbp], cl
rol byte [rsp + 2*rbp], cl
rol byte [rsp + 4*rbp], cl
rol byte [rsp + 8*rbp], cl
rol byte [rax], cl
rol byte [rcx], cl
rol byte [rdx], cl
rol byte [rbx], cl
rol byte [rsp], cl
rol byte [rbp], cl
rol byte [rsi], cl
rol byte [rdi], cl
rol byte [rax + 2*rax], cl
rol byte [rcx + 2*rcx], cl
rol byte [rdx + 2*rdx], cl
rol byte [rbx + 2*rbx], cl
rol byte [rbp + 2*rbp], cl
rol byte [rsi + 2*rsi], cl
rol byte [rdi + 2*rdi], cl

; ------------------------------------------------------------------------------
; opcode m,imm8
; ------------------------------------------------------------------------------
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

