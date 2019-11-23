use64
; ------------------------------------------------------------------------------
; opcode r,cl
; ------------------------------------------------------------------------------
sar al, cl
sar cl, cl
sar dl, cl
sar bl, cl
sar ah, cl
sar ch, cl
sar dh, cl
sar bh, cl
sar ax, cl
sar cx, cl
sar dx, cl
sar bx, cl
sar sp, cl
sar bp, cl
sar si, cl
sar di, cl
sar eax, cl
sar ecx, cl
sar edx, cl
sar ebx, cl
sar esp, cl
sar ebp, cl
sar esi, cl
sar edi, cl
sar rax, cl
sar rcx, cl
sar rdx, cl
sar rbx, cl
sar rsp, cl
sar rbp, cl
sar rsi, cl
sar rdi, cl

; ------------------------------------------------------------------------------
; opcode r,imm8
; ------------------------------------------------------------------------------
; immediate to each register: 8-bit
sar al, -127
sar cl, -100
sar dl, -23
sar bl, -1
sar ah, 0
sar ch, 1
sar dh, 0x12
sar bh, 0xff

; immediate to each register: 16-bit
sar ax, 0x50
sar cx, 0x51
sar dx, 0x52
sar bx, 0x53
sar sp, 0x54
sar bp, 0x55
sar si, 0x56
sar di, 0x57

; immediate to each register: 32-bit
sar eax, 0xa0
sar ecx, 0xa1
sar edx, 0xa2
sar ebx, 0xa3
sar esp, 0xa4
sar ebp, 0xa5
sar esi, 0xa6
sar edi, 0xa7

; immediate to each register: 64-bit
sar rax, 0x88
sar rcx, 0x99
sar rdx, 0xaa
sar rbx, 0xbb
sar rsp, 0xcc
sar rbp, 0xdd
sar rsi, 0xee
sar rdi, 0xff

; ------------------------------------------------------------------------------
; opcode m,cl
; ------------------------------------------------------------------------------
sar byte[rip + 0x12], cl
sar word[rip + 0x13], cl
sar dword [rip + 0x14], cl
sar qword [rip + 0x15], cl
sar byte[rip + 0x1234], cl
sar word[rip + 0x1235], cl
sar dword [rip + 0x1236], cl
sar qword [rip + 0x1237], cl
sar byte[rip + 0x12345678], cl
sar word[rip + 0x12345679], cl
sar dword [rip + 0x1234567a], cl
sar qword [rip + 0x1234567b], cl
sar byte[rax], cl
sar word[rbx], cl
sar dword [rcx], cl
sar qword [rdx], cl
sar byte[rax + 0x12], cl
sar word[rbx + 0x13], cl
sar dword [rcx + 0x14], cl
sar qword [rdx + 0x15], cl
sar byte[rax + 0x1234], cl
sar word[rbx + 0x1235], cl
sar dword [rcx + 0x1236], cl
sar qword [rdx + 0x1237], cl
sar byte[rax + 0x12345678], cl
sar word[rbx + 0x12345679], cl
sar dword [rcx + 0x1234567a], cl
sar qword [rdx + 0x1234567b], cl
sar byte[rax + rbx], cl
sar word[rbx + rcx], cl
sar dword [rcx + rsi], cl
sar qword [rdx + rdi], cl
sar byte[rax + 2 * rbx], cl
sar word[rbx + 4 * rcx], cl
sar dword [rcx + 8 * rsi], cl
sar qword [rdx + 8 * rdi], cl
sar byte[rax + rbx + 0x12], cl
sar word[rbx + rcx + 0x13], cl
sar dword [rcx + rsi + 0x14], cl
sar qword [rdx + rdi + 0x15], cl
sar byte[rax + rbx + 0x1234], cl
sar word[rbx + rcx + 0x1235], cl
sar dword [rcx + rsi + 0x1236], cl
sar qword [rdx + rdi + 0x1237], cl
sar byte[rax + rbx + 0x12345678], cl
sar word[rbx + rcx + 0x12345679], cl
sar dword [rcx + rsi + 0x1234567a], cl
sar qword [rdx + rdi + 0x1234567b], cl
sar byte[rax + 2 * rbx + 0x12], cl
sar word[rbx + 4 * rcx + 0x13], cl
sar dword [rcx + 8 * rsi + 0x14], cl
sar qword [rdx + 8 * rdi + 0x15], cl
sar byte[rax + 2 * rbx + 0x1234], cl
sar word[rbx + 4 * rcx + 0x1235], cl
sar dword [rcx + 8 * rsi + 0x1236], cl
sar qword [rdx + 8 * rdi + 0x1237], cl
sar byte[rax + 2 * rbx + 0x12345678], cl
sar word[rbx + 4 * rcx + 0x12345679], cl
sar dword [rcx + 8 * rsi + 0x1234567a], cl
sar qword [rdx + 8 * rdi + 0x1234567b], cl
sar byte[2 * rbx], cl
sar word[4 * rcx], cl
sar dword [8 * rsi], cl
sar qword [8 * rdi], cl
sar byte[2 * rbx + 0x12], cl
sar word[4 * rcx + 0x13], cl
sar dword [8 * rsi + 0x14], cl
sar qword [8 * rdi + 0x15], cl
sar byte[2 * rbx + 0x1234], cl
sar word[4 * rcx + 0x1235], cl
sar dword [8 * rsi + 0x1236], cl
sar qword [8 * rdi + 0x1237], cl
sar byte[2 * rbx + 0x12345678], cl
sar word[4 * rcx + 0x12345679], cl
sar dword [8 * rsi + 0x1234567a], cl
sar qword [8 * rdi + 0x1234567b], cl
sar byte [rbp], cl
sar byte [rbp + 0x12], cl
sar byte [rbp + 0x1234], cl
sar byte [rbp + 0x12345678], cl
sar byte [4 * rbp], cl
sar byte [4 * rbp + 0x12], cl
sar byte [4 * rbp + 0x1234], cl
sar byte [4 * rbp + 0x12345678], cl
sar byte [rbx + 4 * rbp], cl
sar byte [rbx + 4 * rbp + 0x12], cl
sar byte [rbx + 4 * rbp + 0x1234], cl
sar byte [rbx + 4 * rbp + 0x12345678], cl
sar byte [rsp], cl
sar byte [rsp + 0x12], cl
sar byte [rsp + 0x1234], cl
sar byte [rsp + 0x12345678], cl
sar byte [rsp + rax], cl
sar byte [rsp + rbp], cl
sar byte [rsp + 2*rbp], cl
sar byte [rsp + 4*rbp], cl
sar byte [rsp + 8*rbp], cl
sar byte [rax], cl
sar byte [rcx], cl
sar byte [rdx], cl
sar byte [rbx], cl
sar byte [rsp], cl
sar byte [rbp], cl
sar byte [rsi], cl
sar byte [rdi], cl
sar byte [rax + 2*rax], cl
sar byte [rcx + 2*rcx], cl
sar byte [rdx + 2*rdx], cl
sar byte [rbx + 2*rbx], cl
sar byte [rbp + 2*rbp], cl
sar byte [rsi + 2*rsi], cl
sar byte [rdi + 2*rdi], cl

; ------------------------------------------------------------------------------
; opcode m,imm8
; ------------------------------------------------------------------------------
; [rip + disp32]
sar byte  [rip + 0x12], 0x12
sar word  [rip + 0x13], 0x13
sar dword [rip + 0x14], 0x14
sar qword [rip + 0x15], 0x15

sar byte  [rip + 0x1234], 0x20
sar word  [rip + 0x1235], 0x21
sar dword [rip + 0x1236], 0x22
sar qword [rip + 0x1237], 0x23

sar byte  [rip + 0x12345678], 0x30
sar word  [rip + 0x12345679], 0x32
sar dword [rip + 0x1234567a], 0x34
sar qword [rip + 0x1234567b], 0x36

; [rip + base]
sar byte  [rax], 0x41
sar word  [rbx], 0x45
sar dword [rcx], 0x47
sar qword [rdx], 0x49

; [rip + base + disp8]
sar byte  [rax + 0x12], 0xa0
sar word  [rbx + 0x13], 0xb0
sar dword [rcx + 0x14], 0xc0
sar qword [rdx + 0x15], 0xd0

; [rip + base + disp32]
sar byte  [rax + 0x1234], 0xcc
sar word  [rbx + 0x1235], 0xdd
sar dword [rcx + 0x1236], 0xee
sar qword [rdx + 0x1237], 0xff

sar byte  [rax + 0x12345678], -127
sar word  [rbx + 0x12345679], -100
sar dword [rcx + 0x1234567a], -50
sar qword [rdx + 0x1234567b], -20

; [rip + base + index]
sar byte  [rax + rbx], 20
sar word  [rbx + rcx], 50
sar dword [rcx + rsi], 100
sar qword [rdx + rdi], 128

; [rip + base + scale * index]
sar byte  [rax + 2 * rbx], 0
sar word  [rbx + 4 * rcx], -1
sar dword [rcx + 8 * rsi], -2
sar qword [rdx + 8 * rdi], -3

; [rip + base + index + disp8]
sar byte  [rax + rbx + 0x12], 0
sar word  [rbx + rcx + 0x13], 1
sar dword [rcx + rsi + 0x14], 2
sar qword [rdx + rdi + 0x15], 3

; [rip + base + index + disp32]
sar byte  [rax + rbx + 0x1234], 0x10
sar word  [rbx + rcx + 0x1235], 0x11
sar dword [rcx + rsi + 0x1236], 0x12
sar qword [rdx + rdi + 0x1237], 0x13

sar byte  [rax + rbx + 0x12345678], 10
sar word  [rbx + rcx + 0x12345679], 11
sar dword [rcx + rsi + 0x1234567a], 12
sar qword [rdx + rdi + 0x1234567b], 13

; [rip + base + scale * index + disp8]
sar byte  [rax + 2 * rbx + 0x12], 0x12
sar word  [rbx + 4 * rcx + 0x13], 0x13
sar dword [rcx + 8 * rsi + 0x14], 0x14
sar qword [rdx + 8 * rdi + 0x15], 0x15

; [rip + base + scale * index + disp32]
sar byte  [rax + 2 * rbx + 0x1234], 0x12
sar word  [rbx + 4 * rcx + 0x1235], 0x13
sar dword [rcx + 8 * rsi + 0x1236], 0x14
sar qword [rdx + 8 * rdi + 0x1237], 0x15

sar byte  [rax + 2 * rbx + 0x12345678], 0x12
sar word  [rbx + 4 * rcx + 0x12345679], 0x13
sar dword [rcx + 8 * rsi + 0x1234567a], 0x14
sar qword [rdx + 8 * rdi + 0x1234567b], 0x15

; [scale * index]
sar byte  [2 * rbx], 0x12
sar word  [4 * rcx], 0x13
sar dword [8 * rsi], 0x14
sar qword [8 * rdi], 0x15

; [scale * index + disp8]
sar byte  [2 * rbx + 0x12], 0x12
sar word  [4 * rcx + 0x13], 0x13
sar dword [8 * rsi + 0x14], 0x14
sar qword [8 * rdi + 0x15], 0x15

; [scale * index + disp32]
sar byte  [2 * rbx + 0x1234], 0x12
sar word  [4 * rcx + 0x1235], 0x13
sar dword [8 * rsi + 0x1236], 0x14
sar qword [8 * rdi + 0x1237], 0x15

sar byte  [2 * rbx + 0x12345678], 0x12
sar word  [4 * rcx + 0x12345679], 0x13
sar dword [8 * rsi + 0x1234567a], 0x14
sar qword [8 * rdi + 0x1234567b], 0x15

; Use rbp as base or index.
sar byte [rbp], 0x12
sar byte [rbp + 0x12], 0x13
sar byte [rbp + 0x1234], 0x14
sar byte [rbp + 0x12345678], 0x15

sar word [4 * rbp], 0x12
sar word [4 * rbp + 0x12], 0x13
sar word [4 * rbp + 0x1234], 0x14
sar word [4 * rbp + 0x12345678], 0x15

sar dword [rbx + 4 * rbp], 0x12
sar dword [rbx + 4 * rbp + 0x12], 0x13
sar dword [rbx + 4 * rbp + 0x1234], 0x14
sar dword [rbx + 4 * rbp + 0x12345678], 0x15

; Use rsp as base.
sar qword [rsp], 0x12
sar qword [rsp + 0x12], 0x13
sar qword [rsp + 0x1234], 0x14
sar qword [rsp + 0x12345678], 0x15

sar byte [rsp + rax], 0x12
sar byte [rsp + rbp], 0x13
sar byte [rsp + 2*rbp], 0x14
sar byte [rsp + 4*rbp], 0x15
sar byte [rsp + 8*rbp], 0x16

; use each register as indirect.
sar word [rax], 0x12
sar word [rcx], 0x13
sar word [rdx], 0x14
sar word [rbx], 0x15
sar word [rsp], 0x16
sar word [rbp], 0x17
sar word [rsi], 0x18
sar word [rdi], 0x19

; use each register as indirect.
; rsp is forbidden as index
sar dword [rax + 2*rax], 0x12
sar dword [rcx + 2*rcx], 0x13
sar dword [rdx + 2*rdx], 0x14
sar dword [rbx + 2*rbx], 0x15
sar dword [rbp + 2*rbp], 0x16
sar dword [rsi + 2*rsi], 0x17
sar dword [rdi + 2*rdi], 0x18

