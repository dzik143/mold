use64
; ------------------------------------------------------------------------------
; opcode r,cl
; ------------------------------------------------------------------------------
shr al, cl
shr cl, cl
shr dl, cl
shr bl, cl
shr ah, cl
shr ch, cl
shr dh, cl
shr bh, cl
shr ax, cl
shr cx, cl
shr dx, cl
shr bx, cl
shr sp, cl
shr bp, cl
shr si, cl
shr di, cl
shr eax, cl
shr ecx, cl
shr edx, cl
shr ebx, cl
shr esp, cl
shr ebp, cl
shr esi, cl
shr edi, cl
shr rax, cl
shr rcx, cl
shr rdx, cl
shr rbx, cl
shr rsp, cl
shr rbp, cl
shr rsi, cl
shr rdi, cl

; ------------------------------------------------------------------------------
; opcode r,imm8
; ------------------------------------------------------------------------------
; immediate to each register: 8-bit
shr al, -127
shr cl, -100
shr dl, -23
shr bl, -1
shr ah, 0
shr ch, 1
shr dh, 0x12
shr bh, 0xff

; immediate to each register: 16-bit
shr ax, 0x50
shr cx, 0x51
shr dx, 0x52
shr bx, 0x53
shr sp, 0x54
shr bp, 0x55
shr si, 0x56
shr di, 0x57

; immediate to each register: 32-bit
shr eax, 0xa0
shr ecx, 0xa1
shr edx, 0xa2
shr ebx, 0xa3
shr esp, 0xa4
shr ebp, 0xa5
shr esi, 0xa6
shr edi, 0xa7

; immediate to each register: 64-bit
shr rax, 0x88
shr rcx, 0x99
shr rdx, 0xaa
shr rbx, 0xbb
shr rsp, 0xcc
shr rbp, 0xdd
shr rsi, 0xee
shr rdi, 0xff

; ------------------------------------------------------------------------------
; opcode m,cl
; ------------------------------------------------------------------------------
shr byte[rip + 0x12], cl
shr word[rip + 0x13], cl
shr dword [rip + 0x14], cl
shr qword [rip + 0x15], cl
shr byte[rip + 0x1234], cl
shr word[rip + 0x1235], cl
shr dword [rip + 0x1236], cl
shr qword [rip + 0x1237], cl
shr byte[rip + 0x12345678], cl
shr word[rip + 0x12345679], cl
shr dword [rip + 0x1234567a], cl
shr qword [rip + 0x1234567b], cl
shr byte[rax], cl
shr word[rbx], cl
shr dword [rcx], cl
shr qword [rdx], cl
shr byte[rax + 0x12], cl
shr word[rbx + 0x13], cl
shr dword [rcx + 0x14], cl
shr qword [rdx + 0x15], cl
shr byte[rax + 0x1234], cl
shr word[rbx + 0x1235], cl
shr dword [rcx + 0x1236], cl
shr qword [rdx + 0x1237], cl
shr byte[rax + 0x12345678], cl
shr word[rbx + 0x12345679], cl
shr dword [rcx + 0x1234567a], cl
shr qword [rdx + 0x1234567b], cl
shr byte[rax + rbx], cl
shr word[rbx + rcx], cl
shr dword [rcx + rsi], cl
shr qword [rdx + rdi], cl
shr byte[rax + 2 * rbx], cl
shr word[rbx + 4 * rcx], cl
shr dword [rcx + 8 * rsi], cl
shr qword [rdx + 8 * rdi], cl
shr byte[rax + rbx + 0x12], cl
shr word[rbx + rcx + 0x13], cl
shr dword [rcx + rsi + 0x14], cl
shr qword [rdx + rdi + 0x15], cl
shr byte[rax + rbx + 0x1234], cl
shr word[rbx + rcx + 0x1235], cl
shr dword [rcx + rsi + 0x1236], cl
shr qword [rdx + rdi + 0x1237], cl
shr byte[rax + rbx + 0x12345678], cl
shr word[rbx + rcx + 0x12345679], cl
shr dword [rcx + rsi + 0x1234567a], cl
shr qword [rdx + rdi + 0x1234567b], cl
shr byte[rax + 2 * rbx + 0x12], cl
shr word[rbx + 4 * rcx + 0x13], cl
shr dword [rcx + 8 * rsi + 0x14], cl
shr qword [rdx + 8 * rdi + 0x15], cl
shr byte[rax + 2 * rbx + 0x1234], cl
shr word[rbx + 4 * rcx + 0x1235], cl
shr dword [rcx + 8 * rsi + 0x1236], cl
shr qword [rdx + 8 * rdi + 0x1237], cl
shr byte[rax + 2 * rbx + 0x12345678], cl
shr word[rbx + 4 * rcx + 0x12345679], cl
shr dword [rcx + 8 * rsi + 0x1234567a], cl
shr qword [rdx + 8 * rdi + 0x1234567b], cl
shr byte[2 * rbx], cl
shr word[4 * rcx], cl
shr dword [8 * rsi], cl
shr qword [8 * rdi], cl
shr byte[2 * rbx + 0x12], cl
shr word[4 * rcx + 0x13], cl
shr dword [8 * rsi + 0x14], cl
shr qword [8 * rdi + 0x15], cl
shr byte[2 * rbx + 0x1234], cl
shr word[4 * rcx + 0x1235], cl
shr dword [8 * rsi + 0x1236], cl
shr qword [8 * rdi + 0x1237], cl
shr byte[2 * rbx + 0x12345678], cl
shr word[4 * rcx + 0x12345679], cl
shr dword [8 * rsi + 0x1234567a], cl
shr qword [8 * rdi + 0x1234567b], cl
shr byte [rbp], cl
shr byte [rbp + 0x12], cl
shr byte [rbp + 0x1234], cl
shr byte [rbp + 0x12345678], cl
shr byte [4 * rbp], cl
shr byte [4 * rbp + 0x12], cl
shr byte [4 * rbp + 0x1234], cl
shr byte [4 * rbp + 0x12345678], cl
shr byte [rbx + 4 * rbp], cl
shr byte [rbx + 4 * rbp + 0x12], cl
shr byte [rbx + 4 * rbp + 0x1234], cl
shr byte [rbx + 4 * rbp + 0x12345678], cl
shr byte [rsp], cl
shr byte [rsp + 0x12], cl
shr byte [rsp + 0x1234], cl
shr byte [rsp + 0x12345678], cl
shr byte [rsp + rax], cl
shr byte [rsp + rbp], cl
shr byte [rsp + 2*rbp], cl
shr byte [rsp + 4*rbp], cl
shr byte [rsp + 8*rbp], cl
shr byte [rax], cl
shr byte [rcx], cl
shr byte [rdx], cl
shr byte [rbx], cl
shr byte [rsp], cl
shr byte [rbp], cl
shr byte [rsi], cl
shr byte [rdi], cl
shr byte [rax + 2*rax], cl
shr byte [rcx + 2*rcx], cl
shr byte [rdx + 2*rdx], cl
shr byte [rbx + 2*rbx], cl
shr byte [rbp + 2*rbp], cl
shr byte [rsi + 2*rsi], cl
shr byte [rdi + 2*rdi], cl

; ------------------------------------------------------------------------------
; opcode m,imm8
; ------------------------------------------------------------------------------
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

