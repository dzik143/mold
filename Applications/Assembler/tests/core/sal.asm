use64
; ------------------------------------------------------------------------------
; opcode r,cl
; ------------------------------------------------------------------------------
sal al, cl
sal cl, cl
sal dl, cl
sal bl, cl
sal ah, cl
sal ch, cl
sal dh, cl
sal bh, cl
sal ax, cl
sal cx, cl
sal dx, cl
sal bx, cl
sal sp, cl
sal bp, cl
sal si, cl
sal di, cl
sal eax, cl
sal ecx, cl
sal edx, cl
sal ebx, cl
sal esp, cl
sal ebp, cl
sal esi, cl
sal edi, cl
sal rax, cl
sal rcx, cl
sal rdx, cl
sal rbx, cl
sal rsp, cl
sal rbp, cl
sal rsi, cl
sal rdi, cl

; ------------------------------------------------------------------------------
; opcode r,imm8
; ------------------------------------------------------------------------------
; immediate to each register: 8-bit
sal al, -127
sal cl, -100
sal dl, -23
sal bl, -1
sal ah, 0
sal ch, 1
sal dh, 0x12
sal bh, 0xff

; immediate to each register: 16-bit
sal ax, 0x50
sal cx, 0x51
sal dx, 0x52
sal bx, 0x53
sal sp, 0x54
sal bp, 0x55
sal si, 0x56
sal di, 0x57

; immediate to each register: 32-bit
sal eax, 0xa0
sal ecx, 0xa1
sal edx, 0xa2
sal ebx, 0xa3
sal esp, 0xa4
sal ebp, 0xa5
sal esi, 0xa6
sal edi, 0xa7

; immediate to each register: 64-bit
sal rax, 0x88
sal rcx, 0x99
sal rdx, 0xaa
sal rbx, 0xbb
sal rsp, 0xcc
sal rbp, 0xdd
sal rsi, 0xee
sal rdi, 0xff

; ------------------------------------------------------------------------------
; opcode m,cl
; ------------------------------------------------------------------------------
sal byte[rip + 0x12], cl
sal word[rip + 0x13], cl
sal dword [rip + 0x14], cl
sal qword [rip + 0x15], cl
sal byte[rip + 0x1234], cl
sal word[rip + 0x1235], cl
sal dword [rip + 0x1236], cl
sal qword [rip + 0x1237], cl
sal byte[rip + 0x12345678], cl
sal word[rip + 0x12345679], cl
sal dword [rip + 0x1234567a], cl
sal qword [rip + 0x1234567b], cl
sal byte[rax], cl
sal word[rbx], cl
sal dword [rcx], cl
sal qword [rdx], cl
sal byte[rax + 0x12], cl
sal word[rbx + 0x13], cl
sal dword [rcx + 0x14], cl
sal qword [rdx + 0x15], cl
sal byte[rax + 0x1234], cl
sal word[rbx + 0x1235], cl
sal dword [rcx + 0x1236], cl
sal qword [rdx + 0x1237], cl
sal byte[rax + 0x12345678], cl
sal word[rbx + 0x12345679], cl
sal dword [rcx + 0x1234567a], cl
sal qword [rdx + 0x1234567b], cl
sal byte[rax + rbx], cl
sal word[rbx + rcx], cl
sal dword [rcx + rsi], cl
sal qword [rdx + rdi], cl
sal byte[rax + 2 * rbx], cl
sal word[rbx + 4 * rcx], cl
sal dword [rcx + 8 * rsi], cl
sal qword [rdx + 8 * rdi], cl
sal byte[rax + rbx + 0x12], cl
sal word[rbx + rcx + 0x13], cl
sal dword [rcx + rsi + 0x14], cl
sal qword [rdx + rdi + 0x15], cl
sal byte[rax + rbx + 0x1234], cl
sal word[rbx + rcx + 0x1235], cl
sal dword [rcx + rsi + 0x1236], cl
sal qword [rdx + rdi + 0x1237], cl
sal byte[rax + rbx + 0x12345678], cl
sal word[rbx + rcx + 0x12345679], cl
sal dword [rcx + rsi + 0x1234567a], cl
sal qword [rdx + rdi + 0x1234567b], cl
sal byte[rax + 2 * rbx + 0x12], cl
sal word[rbx + 4 * rcx + 0x13], cl
sal dword [rcx + 8 * rsi + 0x14], cl
sal qword [rdx + 8 * rdi + 0x15], cl
sal byte[rax + 2 * rbx + 0x1234], cl
sal word[rbx + 4 * rcx + 0x1235], cl
sal dword [rcx + 8 * rsi + 0x1236], cl
sal qword [rdx + 8 * rdi + 0x1237], cl
sal byte[rax + 2 * rbx + 0x12345678], cl
sal word[rbx + 4 * rcx + 0x12345679], cl
sal dword [rcx + 8 * rsi + 0x1234567a], cl
sal qword [rdx + 8 * rdi + 0x1234567b], cl
sal byte[2 * rbx], cl
sal word[4 * rcx], cl
sal dword [8 * rsi], cl
sal qword [8 * rdi], cl
sal byte[2 * rbx + 0x12], cl
sal word[4 * rcx + 0x13], cl
sal dword [8 * rsi + 0x14], cl
sal qword [8 * rdi + 0x15], cl
sal byte[2 * rbx + 0x1234], cl
sal word[4 * rcx + 0x1235], cl
sal dword [8 * rsi + 0x1236], cl
sal qword [8 * rdi + 0x1237], cl
sal byte[2 * rbx + 0x12345678], cl
sal word[4 * rcx + 0x12345679], cl
sal dword [8 * rsi + 0x1234567a], cl
sal qword [8 * rdi + 0x1234567b], cl
sal byte [rbp], cl
sal byte [rbp + 0x12], cl
sal byte [rbp + 0x1234], cl
sal byte [rbp + 0x12345678], cl
sal byte [4 * rbp], cl
sal byte [4 * rbp + 0x12], cl
sal byte [4 * rbp + 0x1234], cl
sal byte [4 * rbp + 0x12345678], cl
sal byte [rbx + 4 * rbp], cl
sal byte [rbx + 4 * rbp + 0x12], cl
sal byte [rbx + 4 * rbp + 0x1234], cl
sal byte [rbx + 4 * rbp + 0x12345678], cl
sal byte [rsp], cl
sal byte [rsp + 0x12], cl
sal byte [rsp + 0x1234], cl
sal byte [rsp + 0x12345678], cl
sal byte [rsp + rax], cl
sal byte [rsp + rbp], cl
sal byte [rsp + 2*rbp], cl
sal byte [rsp + 4*rbp], cl
sal byte [rsp + 8*rbp], cl
sal byte [rax], cl
sal byte [rcx], cl
sal byte [rdx], cl
sal byte [rbx], cl
sal byte [rsp], cl
sal byte [rbp], cl
sal byte [rsi], cl
sal byte [rdi], cl
sal byte [rax + 2*rax], cl
sal byte [rcx + 2*rcx], cl
sal byte [rdx + 2*rdx], cl
sal byte [rbx + 2*rbx], cl
sal byte [rbp + 2*rbp], cl
sal byte [rsi + 2*rsi], cl
sal byte [rdi + 2*rdi], cl

; ------------------------------------------------------------------------------
; opcode m,imm8
; ------------------------------------------------------------------------------
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

