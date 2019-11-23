use64
; ------------------------------------------------------------------------------
; opcode r,cl
; ------------------------------------------------------------------------------
shl al, cl
shl cl, cl
shl dl, cl
shl bl, cl
shl ah, cl
shl ch, cl
shl dh, cl
shl bh, cl
shl ax, cl
shl cx, cl
shl dx, cl
shl bx, cl
shl sp, cl
shl bp, cl
shl si, cl
shl di, cl
shl eax, cl
shl ecx, cl
shl edx, cl
shl ebx, cl
shl esp, cl
shl ebp, cl
shl esi, cl
shl edi, cl
shl rax, cl
shl rcx, cl
shl rdx, cl
shl rbx, cl
shl rsp, cl
shl rbp, cl
shl rsi, cl
shl rdi, cl

; ------------------------------------------------------------------------------
; opcode r,imm8
; ------------------------------------------------------------------------------
; immediate to each register: 8-bit
shl al, -127
shl cl, -100
shl dl, -23
shl bl, -1
shl ah, 0
shl ch, 1
shl dh, 0x12
shl bh, 0xff

; immediate to each register: 16-bit
shl ax, 0x50
shl cx, 0x51
shl dx, 0x52
shl bx, 0x53
shl sp, 0x54
shl bp, 0x55
shl si, 0x56
shl di, 0x57

; immediate to each register: 32-bit
shl eax, 0xa0
shl ecx, 0xa1
shl edx, 0xa2
shl ebx, 0xa3
shl esp, 0xa4
shl ebp, 0xa5
shl esi, 0xa6
shl edi, 0xa7

; immediate to each register: 64-bit
shl rax, 0x88
shl rcx, 0x99
shl rdx, 0xaa
shl rbx, 0xbb
shl rsp, 0xcc
shl rbp, 0xdd
shl rsi, 0xee
shl rdi, 0xff

; ------------------------------------------------------------------------------
; opcode m,cl
; ------------------------------------------------------------------------------
shl byte[rip + 0x12], cl
shl word[rip + 0x13], cl
shl dword [rip + 0x14], cl
shl qword [rip + 0x15], cl
shl byte[rip + 0x1234], cl
shl word[rip + 0x1235], cl
shl dword [rip + 0x1236], cl
shl qword [rip + 0x1237], cl
shl byte[rip + 0x12345678], cl
shl word[rip + 0x12345679], cl
shl dword [rip + 0x1234567a], cl
shl qword [rip + 0x1234567b], cl
shl byte[rax], cl
shl word[rbx], cl
shl dword [rcx], cl
shl qword [rdx], cl
shl byte[rax + 0x12], cl
shl word[rbx + 0x13], cl
shl dword [rcx + 0x14], cl
shl qword [rdx + 0x15], cl
shl byte[rax + 0x1234], cl
shl word[rbx + 0x1235], cl
shl dword [rcx + 0x1236], cl
shl qword [rdx + 0x1237], cl
shl byte[rax + 0x12345678], cl
shl word[rbx + 0x12345679], cl
shl dword [rcx + 0x1234567a], cl
shl qword [rdx + 0x1234567b], cl
shl byte[rax + rbx], cl
shl word[rbx + rcx], cl
shl dword [rcx + rsi], cl
shl qword [rdx + rdi], cl
shl byte[rax + 2 * rbx], cl
shl word[rbx + 4 * rcx], cl
shl dword [rcx + 8 * rsi], cl
shl qword [rdx + 8 * rdi], cl
shl byte[rax + rbx + 0x12], cl
shl word[rbx + rcx + 0x13], cl
shl dword [rcx + rsi + 0x14], cl
shl qword [rdx + rdi + 0x15], cl
shl byte[rax + rbx + 0x1234], cl
shl word[rbx + rcx + 0x1235], cl
shl dword [rcx + rsi + 0x1236], cl
shl qword [rdx + rdi + 0x1237], cl
shl byte[rax + rbx + 0x12345678], cl
shl word[rbx + rcx + 0x12345679], cl
shl dword [rcx + rsi + 0x1234567a], cl
shl qword [rdx + rdi + 0x1234567b], cl
shl byte[rax + 2 * rbx + 0x12], cl
shl word[rbx + 4 * rcx + 0x13], cl
shl dword [rcx + 8 * rsi + 0x14], cl
shl qword [rdx + 8 * rdi + 0x15], cl
shl byte[rax + 2 * rbx + 0x1234], cl
shl word[rbx + 4 * rcx + 0x1235], cl
shl dword [rcx + 8 * rsi + 0x1236], cl
shl qword [rdx + 8 * rdi + 0x1237], cl
shl byte[rax + 2 * rbx + 0x12345678], cl
shl word[rbx + 4 * rcx + 0x12345679], cl
shl dword [rcx + 8 * rsi + 0x1234567a], cl
shl qword [rdx + 8 * rdi + 0x1234567b], cl
shl byte[2 * rbx], cl
shl word[4 * rcx], cl
shl dword [8 * rsi], cl
shl qword [8 * rdi], cl
shl byte[2 * rbx + 0x12], cl
shl word[4 * rcx + 0x13], cl
shl dword [8 * rsi + 0x14], cl
shl qword [8 * rdi + 0x15], cl
shl byte[2 * rbx + 0x1234], cl
shl word[4 * rcx + 0x1235], cl
shl dword [8 * rsi + 0x1236], cl
shl qword [8 * rdi + 0x1237], cl
shl byte[2 * rbx + 0x12345678], cl
shl word[4 * rcx + 0x12345679], cl
shl dword [8 * rsi + 0x1234567a], cl
shl qword [8 * rdi + 0x1234567b], cl
shl byte [rbp], cl
shl byte [rbp + 0x12], cl
shl byte [rbp + 0x1234], cl
shl byte [rbp + 0x12345678], cl
shl byte [4 * rbp], cl
shl byte [4 * rbp + 0x12], cl
shl byte [4 * rbp + 0x1234], cl
shl byte [4 * rbp + 0x12345678], cl
shl byte [rbx + 4 * rbp], cl
shl byte [rbx + 4 * rbp + 0x12], cl
shl byte [rbx + 4 * rbp + 0x1234], cl
shl byte [rbx + 4 * rbp + 0x12345678], cl
shl byte [rsp], cl
shl byte [rsp + 0x12], cl
shl byte [rsp + 0x1234], cl
shl byte [rsp + 0x12345678], cl
shl byte [rsp + rax], cl
shl byte [rsp + rbp], cl
shl byte [rsp + 2*rbp], cl
shl byte [rsp + 4*rbp], cl
shl byte [rsp + 8*rbp], cl
shl byte [rax], cl
shl byte [rcx], cl
shl byte [rdx], cl
shl byte [rbx], cl
shl byte [rsp], cl
shl byte [rbp], cl
shl byte [rsi], cl
shl byte [rdi], cl
shl byte [rax + 2*rax], cl
shl byte [rcx + 2*rcx], cl
shl byte [rdx + 2*rdx], cl
shl byte [rbx + 2*rbx], cl
shl byte [rbp + 2*rbp], cl
shl byte [rsi + 2*rsi], cl
shl byte [rdi + 2*rdi], cl

; ------------------------------------------------------------------------------
; opcode m,imm8
; ------------------------------------------------------------------------------
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

