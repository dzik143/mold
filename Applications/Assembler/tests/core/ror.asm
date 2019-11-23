use64
; ------------------------------------------------------------------------------
; opcode r,cl
; ------------------------------------------------------------------------------
ror al, cl
ror cl, cl
ror dl, cl
ror bl, cl
ror ah, cl
ror ch, cl
ror dh, cl
ror bh, cl
ror ax, cl
ror cx, cl
ror dx, cl
ror bx, cl
ror sp, cl
ror bp, cl
ror si, cl
ror di, cl
ror eax, cl
ror ecx, cl
ror edx, cl
ror ebx, cl
ror esp, cl
ror ebp, cl
ror esi, cl
ror edi, cl
ror rax, cl
ror rcx, cl
ror rdx, cl
ror rbx, cl
ror rsp, cl
ror rbp, cl
ror rsi, cl
ror rdi, cl

; ------------------------------------------------------------------------------
; opcode r,imm8
; ------------------------------------------------------------------------------
; immediate to each register: 8-bit
ror al, -127
ror cl, -100
ror dl, -23
ror bl, -1
ror ah, 0
ror ch, 1
ror dh, 0x12
ror bh, 0xff

; immediate to each register: 16-bit
ror ax, 0x50
ror cx, 0x51
ror dx, 0x52
ror bx, 0x53
ror sp, 0x54
ror bp, 0x55
ror si, 0x56
ror di, 0x57

; immediate to each register: 32-bit
ror eax, 0xa0
ror ecx, 0xa1
ror edx, 0xa2
ror ebx, 0xa3
ror esp, 0xa4
ror ebp, 0xa5
ror esi, 0xa6
ror edi, 0xa7

; immediate to each register: 64-bit
ror rax, 0x88
ror rcx, 0x99
ror rdx, 0xaa
ror rbx, 0xbb
ror rsp, 0xcc
ror rbp, 0xdd
ror rsi, 0xee
ror rdi, 0xff

; ------------------------------------------------------------------------------
; opcode m,cl
; ------------------------------------------------------------------------------
ror byte[rip + 0x12], cl
ror word[rip + 0x13], cl
ror dword [rip + 0x14], cl
ror qword [rip + 0x15], cl
ror byte[rip + 0x1234], cl
ror word[rip + 0x1235], cl
ror dword [rip + 0x1236], cl
ror qword [rip + 0x1237], cl
ror byte[rip + 0x12345678], cl
ror word[rip + 0x12345679], cl
ror dword [rip + 0x1234567a], cl
ror qword [rip + 0x1234567b], cl
ror byte[rax], cl
ror word[rbx], cl
ror dword [rcx], cl
ror qword [rdx], cl
ror byte[rax + 0x12], cl
ror word[rbx + 0x13], cl
ror dword [rcx + 0x14], cl
ror qword [rdx + 0x15], cl
ror byte[rax + 0x1234], cl
ror word[rbx + 0x1235], cl
ror dword [rcx + 0x1236], cl
ror qword [rdx + 0x1237], cl
ror byte[rax + 0x12345678], cl
ror word[rbx + 0x12345679], cl
ror dword [rcx + 0x1234567a], cl
ror qword [rdx + 0x1234567b], cl
ror byte[rax + rbx], cl
ror word[rbx + rcx], cl
ror dword [rcx + rsi], cl
ror qword [rdx + rdi], cl
ror byte[rax + 2 * rbx], cl
ror word[rbx + 4 * rcx], cl
ror dword [rcx + 8 * rsi], cl
ror qword [rdx + 8 * rdi], cl
ror byte[rax + rbx + 0x12], cl
ror word[rbx + rcx + 0x13], cl
ror dword [rcx + rsi + 0x14], cl
ror qword [rdx + rdi + 0x15], cl
ror byte[rax + rbx + 0x1234], cl
ror word[rbx + rcx + 0x1235], cl
ror dword [rcx + rsi + 0x1236], cl
ror qword [rdx + rdi + 0x1237], cl
ror byte[rax + rbx + 0x12345678], cl
ror word[rbx + rcx + 0x12345679], cl
ror dword [rcx + rsi + 0x1234567a], cl
ror qword [rdx + rdi + 0x1234567b], cl
ror byte[rax + 2 * rbx + 0x12], cl
ror word[rbx + 4 * rcx + 0x13], cl
ror dword [rcx + 8 * rsi + 0x14], cl
ror qword [rdx + 8 * rdi + 0x15], cl
ror byte[rax + 2 * rbx + 0x1234], cl
ror word[rbx + 4 * rcx + 0x1235], cl
ror dword [rcx + 8 * rsi + 0x1236], cl
ror qword [rdx + 8 * rdi + 0x1237], cl
ror byte[rax + 2 * rbx + 0x12345678], cl
ror word[rbx + 4 * rcx + 0x12345679], cl
ror dword [rcx + 8 * rsi + 0x1234567a], cl
ror qword [rdx + 8 * rdi + 0x1234567b], cl
ror byte[2 * rbx], cl
ror word[4 * rcx], cl
ror dword [8 * rsi], cl
ror qword [8 * rdi], cl
ror byte[2 * rbx + 0x12], cl
ror word[4 * rcx + 0x13], cl
ror dword [8 * rsi + 0x14], cl
ror qword [8 * rdi + 0x15], cl
ror byte[2 * rbx + 0x1234], cl
ror word[4 * rcx + 0x1235], cl
ror dword [8 * rsi + 0x1236], cl
ror qword [8 * rdi + 0x1237], cl
ror byte[2 * rbx + 0x12345678], cl
ror word[4 * rcx + 0x12345679], cl
ror dword [8 * rsi + 0x1234567a], cl
ror qword [8 * rdi + 0x1234567b], cl
ror byte [rbp], cl
ror byte [rbp + 0x12], cl
ror byte [rbp + 0x1234], cl
ror byte [rbp + 0x12345678], cl
ror byte [4 * rbp], cl
ror byte [4 * rbp + 0x12], cl
ror byte [4 * rbp + 0x1234], cl
ror byte [4 * rbp + 0x12345678], cl
ror byte [rbx + 4 * rbp], cl
ror byte [rbx + 4 * rbp + 0x12], cl
ror byte [rbx + 4 * rbp + 0x1234], cl
ror byte [rbx + 4 * rbp + 0x12345678], cl
ror byte [rsp], cl
ror byte [rsp + 0x12], cl
ror byte [rsp + 0x1234], cl
ror byte [rsp + 0x12345678], cl
ror byte [rsp + rax], cl
ror byte [rsp + rbp], cl
ror byte [rsp + 2*rbp], cl
ror byte [rsp + 4*rbp], cl
ror byte [rsp + 8*rbp], cl
ror byte [rax], cl
ror byte [rcx], cl
ror byte [rdx], cl
ror byte [rbx], cl
ror byte [rsp], cl
ror byte [rbp], cl
ror byte [rsi], cl
ror byte [rdi], cl
ror byte [rax + 2*rax], cl
ror byte [rcx + 2*rcx], cl
ror byte [rdx + 2*rdx], cl
ror byte [rbx + 2*rbx], cl
ror byte [rbp + 2*rbp], cl
ror byte [rsi + 2*rsi], cl
ror byte [rdi + 2*rdi], cl

; ------------------------------------------------------------------------------
; opcode m,imm8
; ------------------------------------------------------------------------------
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

