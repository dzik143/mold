use64
; ------------------------------------------------------------------------------
; opcode r,cl
; ------------------------------------------------------------------------------
rcl al, cl
rcl cl, cl
rcl dl, cl
rcl bl, cl
rcl ah, cl
rcl ch, cl
rcl dh, cl
rcl bh, cl
rcl ax, cl
rcl cx, cl
rcl dx, cl
rcl bx, cl
rcl sp, cl
rcl bp, cl
rcl si, cl
rcl di, cl
rcl eax, cl
rcl ecx, cl
rcl edx, cl
rcl ebx, cl
rcl esp, cl
rcl ebp, cl
rcl esi, cl
rcl edi, cl
rcl rax, cl
rcl rcx, cl
rcl rdx, cl
rcl rbx, cl
rcl rsp, cl
rcl rbp, cl
rcl rsi, cl
rcl rdi, cl

; ------------------------------------------------------------------------------
; opcode r,imm8
; ------------------------------------------------------------------------------
; immediate to each register: 8-bit
rcl al, -127
rcl cl, -100
rcl dl, -23
rcl bl, -1
rcl ah, 0
rcl ch, 1
rcl dh, 0x12
rcl bh, 0xff

; immediate to each register: 16-bit
rcl ax, 0x50
rcl cx, 0x51
rcl dx, 0x52
rcl bx, 0x53
rcl sp, 0x54
rcl bp, 0x55
rcl si, 0x56
rcl di, 0x57

; immediate to each register: 32-bit
rcl eax, 0xa0
rcl ecx, 0xa1
rcl edx, 0xa2
rcl ebx, 0xa3
rcl esp, 0xa4
rcl ebp, 0xa5
rcl esi, 0xa6
rcl edi, 0xa7

; immediate to each register: 64-bit
rcl rax, 0x88
rcl rcx, 0x99
rcl rdx, 0xaa
rcl rbx, 0xbb
rcl rsp, 0xcc
rcl rbp, 0xdd
rcl rsi, 0xee
rcl rdi, 0xff

; ------------------------------------------------------------------------------
; opcode m,cl
; ------------------------------------------------------------------------------
rcl byte[rip + 0x12], cl
rcl word[rip + 0x13], cl
rcl dword [rip + 0x14], cl
rcl qword [rip + 0x15], cl
rcl byte[rip + 0x1234], cl
rcl word[rip + 0x1235], cl
rcl dword [rip + 0x1236], cl
rcl qword [rip + 0x1237], cl
rcl byte[rip + 0x12345678], cl
rcl word[rip + 0x12345679], cl
rcl dword [rip + 0x1234567a], cl
rcl qword [rip + 0x1234567b], cl
rcl byte[rax], cl
rcl word[rbx], cl
rcl dword [rcx], cl
rcl qword [rdx], cl
rcl byte[rax + 0x12], cl
rcl word[rbx + 0x13], cl
rcl dword [rcx + 0x14], cl
rcl qword [rdx + 0x15], cl
rcl byte[rax + 0x1234], cl
rcl word[rbx + 0x1235], cl
rcl dword [rcx + 0x1236], cl
rcl qword [rdx + 0x1237], cl
rcl byte[rax + 0x12345678], cl
rcl word[rbx + 0x12345679], cl
rcl dword [rcx + 0x1234567a], cl
rcl qword [rdx + 0x1234567b], cl
rcl byte[rax + rbx], cl
rcl word[rbx + rcx], cl
rcl dword [rcx + rsi], cl
rcl qword [rdx + rdi], cl
rcl byte[rax + 2 * rbx], cl
rcl word[rbx + 4 * rcx], cl
rcl dword [rcx + 8 * rsi], cl
rcl qword [rdx + 8 * rdi], cl
rcl byte[rax + rbx + 0x12], cl
rcl word[rbx + rcx + 0x13], cl
rcl dword [rcx + rsi + 0x14], cl
rcl qword [rdx + rdi + 0x15], cl
rcl byte[rax + rbx + 0x1234], cl
rcl word[rbx + rcx + 0x1235], cl
rcl dword [rcx + rsi + 0x1236], cl
rcl qword [rdx + rdi + 0x1237], cl
rcl byte[rax + rbx + 0x12345678], cl
rcl word[rbx + rcx + 0x12345679], cl
rcl dword [rcx + rsi + 0x1234567a], cl
rcl qword [rdx + rdi + 0x1234567b], cl
rcl byte[rax + 2 * rbx + 0x12], cl
rcl word[rbx + 4 * rcx + 0x13], cl
rcl dword [rcx + 8 * rsi + 0x14], cl
rcl qword [rdx + 8 * rdi + 0x15], cl
rcl byte[rax + 2 * rbx + 0x1234], cl
rcl word[rbx + 4 * rcx + 0x1235], cl
rcl dword [rcx + 8 * rsi + 0x1236], cl
rcl qword [rdx + 8 * rdi + 0x1237], cl
rcl byte[rax + 2 * rbx + 0x12345678], cl
rcl word[rbx + 4 * rcx + 0x12345679], cl
rcl dword [rcx + 8 * rsi + 0x1234567a], cl
rcl qword [rdx + 8 * rdi + 0x1234567b], cl
rcl byte[2 * rbx], cl
rcl word[4 * rcx], cl
rcl dword [8 * rsi], cl
rcl qword [8 * rdi], cl
rcl byte[2 * rbx + 0x12], cl
rcl word[4 * rcx + 0x13], cl
rcl dword [8 * rsi + 0x14], cl
rcl qword [8 * rdi + 0x15], cl
rcl byte[2 * rbx + 0x1234], cl
rcl word[4 * rcx + 0x1235], cl
rcl dword [8 * rsi + 0x1236], cl
rcl qword [8 * rdi + 0x1237], cl
rcl byte[2 * rbx + 0x12345678], cl
rcl word[4 * rcx + 0x12345679], cl
rcl dword [8 * rsi + 0x1234567a], cl
rcl qword [8 * rdi + 0x1234567b], cl
rcl byte [rbp], cl
rcl byte [rbp + 0x12], cl
rcl byte [rbp + 0x1234], cl
rcl byte [rbp + 0x12345678], cl
rcl byte [4 * rbp], cl
rcl byte [4 * rbp + 0x12], cl
rcl byte [4 * rbp + 0x1234], cl
rcl byte [4 * rbp + 0x12345678], cl
rcl byte [rbx + 4 * rbp], cl
rcl byte [rbx + 4 * rbp + 0x12], cl
rcl byte [rbx + 4 * rbp + 0x1234], cl
rcl byte [rbx + 4 * rbp + 0x12345678], cl
rcl byte [rsp], cl
rcl byte [rsp + 0x12], cl
rcl byte [rsp + 0x1234], cl
rcl byte [rsp + 0x12345678], cl
rcl byte [rsp + rax], cl
rcl byte [rsp + rbp], cl
rcl byte [rsp + 2*rbp], cl
rcl byte [rsp + 4*rbp], cl
rcl byte [rsp + 8*rbp], cl
rcl byte [rax], cl
rcl byte [rcx], cl
rcl byte [rdx], cl
rcl byte [rbx], cl
rcl byte [rsp], cl
rcl byte [rbp], cl
rcl byte [rsi], cl
rcl byte [rdi], cl
rcl byte [rax + 2*rax], cl
rcl byte [rcx + 2*rcx], cl
rcl byte [rdx + 2*rdx], cl
rcl byte [rbx + 2*rbx], cl
rcl byte [rbp + 2*rbp], cl
rcl byte [rsi + 2*rsi], cl
rcl byte [rdi + 2*rdi], cl

; ------------------------------------------------------------------------------
; opcode m,imm8
; ------------------------------------------------------------------------------
; [rip + disp32]
rcl byte  [rip + 0x12], 0x12
rcl word  [rip + 0x13], 0x13
rcl dword [rip + 0x14], 0x14
rcl qword [rip + 0x15], 0x15

rcl byte  [rip + 0x1234], 0x20
rcl word  [rip + 0x1235], 0x21
rcl dword [rip + 0x1236], 0x22
rcl qword [rip + 0x1237], 0x23

rcl byte  [rip + 0x12345678], 0x30
rcl word  [rip + 0x12345679], 0x32
rcl dword [rip + 0x1234567a], 0x34
rcl qword [rip + 0x1234567b], 0x36

; [rip + base]
rcl byte  [rax], 0x41
rcl word  [rbx], 0x45
rcl dword [rcx], 0x47
rcl qword [rdx], 0x49

; [rip + base + disp8]
rcl byte  [rax + 0x12], 0xa0
rcl word  [rbx + 0x13], 0xb0
rcl dword [rcx + 0x14], 0xc0
rcl qword [rdx + 0x15], 0xd0

; [rip + base + disp32]
rcl byte  [rax + 0x1234], 0xcc
rcl word  [rbx + 0x1235], 0xdd
rcl dword [rcx + 0x1236], 0xee
rcl qword [rdx + 0x1237], 0xff

rcl byte  [rax + 0x12345678], -127
rcl word  [rbx + 0x12345679], -100
rcl dword [rcx + 0x1234567a], -50
rcl qword [rdx + 0x1234567b], -20

; [rip + base + index]
rcl byte  [rax + rbx], 20
rcl word  [rbx + rcx], 50
rcl dword [rcx + rsi], 100
rcl qword [rdx + rdi], 128

; [rip + base + scale * index]
rcl byte  [rax + 2 * rbx], 0
rcl word  [rbx + 4 * rcx], -1
rcl dword [rcx + 8 * rsi], -2
rcl qword [rdx + 8 * rdi], -3

; [rip + base + index + disp8]
rcl byte  [rax + rbx + 0x12], 0
rcl word  [rbx + rcx + 0x13], 1
rcl dword [rcx + rsi + 0x14], 2
rcl qword [rdx + rdi + 0x15], 3

; [rip + base + index + disp32]
rcl byte  [rax + rbx + 0x1234], 0x10
rcl word  [rbx + rcx + 0x1235], 0x11
rcl dword [rcx + rsi + 0x1236], 0x12
rcl qword [rdx + rdi + 0x1237], 0x13

rcl byte  [rax + rbx + 0x12345678], 10
rcl word  [rbx + rcx + 0x12345679], 11
rcl dword [rcx + rsi + 0x1234567a], 12
rcl qword [rdx + rdi + 0x1234567b], 13

; [rip + base + scale * index + disp8]
rcl byte  [rax + 2 * rbx + 0x12], 0x12
rcl word  [rbx + 4 * rcx + 0x13], 0x13
rcl dword [rcx + 8 * rsi + 0x14], 0x14
rcl qword [rdx + 8 * rdi + 0x15], 0x15

; [rip + base + scale * index + disp32]
rcl byte  [rax + 2 * rbx + 0x1234], 0x12
rcl word  [rbx + 4 * rcx + 0x1235], 0x13
rcl dword [rcx + 8 * rsi + 0x1236], 0x14
rcl qword [rdx + 8 * rdi + 0x1237], 0x15

rcl byte  [rax + 2 * rbx + 0x12345678], 0x12
rcl word  [rbx + 4 * rcx + 0x12345679], 0x13
rcl dword [rcx + 8 * rsi + 0x1234567a], 0x14
rcl qword [rdx + 8 * rdi + 0x1234567b], 0x15

; [scale * index]
rcl byte  [2 * rbx], 0x12
rcl word  [4 * rcx], 0x13
rcl dword [8 * rsi], 0x14
rcl qword [8 * rdi], 0x15

; [scale * index + disp8]
rcl byte  [2 * rbx + 0x12], 0x12
rcl word  [4 * rcx + 0x13], 0x13
rcl dword [8 * rsi + 0x14], 0x14
rcl qword [8 * rdi + 0x15], 0x15

; [scale * index + disp32]
rcl byte  [2 * rbx + 0x1234], 0x12
rcl word  [4 * rcx + 0x1235], 0x13
rcl dword [8 * rsi + 0x1236], 0x14
rcl qword [8 * rdi + 0x1237], 0x15

rcl byte  [2 * rbx + 0x12345678], 0x12
rcl word  [4 * rcx + 0x12345679], 0x13
rcl dword [8 * rsi + 0x1234567a], 0x14
rcl qword [8 * rdi + 0x1234567b], 0x15

; Use rbp as base or index.
rcl byte [rbp], 0x12
rcl byte [rbp + 0x12], 0x13
rcl byte [rbp + 0x1234], 0x14
rcl byte [rbp + 0x12345678], 0x15

rcl word [4 * rbp], 0x12
rcl word [4 * rbp + 0x12], 0x13
rcl word [4 * rbp + 0x1234], 0x14
rcl word [4 * rbp + 0x12345678], 0x15

rcl dword [rbx + 4 * rbp], 0x12
rcl dword [rbx + 4 * rbp + 0x12], 0x13
rcl dword [rbx + 4 * rbp + 0x1234], 0x14
rcl dword [rbx + 4 * rbp + 0x12345678], 0x15

; Use rsp as base.
rcl qword [rsp], 0x12
rcl qword [rsp + 0x12], 0x13
rcl qword [rsp + 0x1234], 0x14
rcl qword [rsp + 0x12345678], 0x15

rcl byte [rsp + rax], 0x12
rcl byte [rsp + rbp], 0x13
rcl byte [rsp + 2*rbp], 0x14
rcl byte [rsp + 4*rbp], 0x15
rcl byte [rsp + 8*rbp], 0x16

; use each register as indirect.
rcl word [rax], 0x12
rcl word [rcx], 0x13
rcl word [rdx], 0x14
rcl word [rbx], 0x15
rcl word [rsp], 0x16
rcl word [rbp], 0x17
rcl word [rsi], 0x18
rcl word [rdi], 0x19

; use each register as indirect.
; rsp is forbidden as index
rcl dword [rax + 2*rax], 0x12
rcl dword [rcx + 2*rcx], 0x13
rcl dword [rdx + 2*rdx], 0x14
rcl dword [rbx + 2*rbx], 0x15
rcl dword [rbp + 2*rbp], 0x16
rcl dword [rsi + 2*rsi], 0x17
rcl dword [rdi + 2*rdi], 0x18

