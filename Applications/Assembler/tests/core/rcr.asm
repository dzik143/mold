use64
; ------------------------------------------------------------------------------
; opcode r,cl
; ------------------------------------------------------------------------------
rcr al, cl
rcr cl, cl
rcr dl, cl
rcr bl, cl
rcr ah, cl
rcr ch, cl
rcr dh, cl
rcr bh, cl
rcr ax, cl
rcr cx, cl
rcr dx, cl
rcr bx, cl
rcr sp, cl
rcr bp, cl
rcr si, cl
rcr di, cl
rcr eax, cl
rcr ecx, cl
rcr edx, cl
rcr ebx, cl
rcr esp, cl
rcr ebp, cl
rcr esi, cl
rcr edi, cl
rcr rax, cl
rcr rcx, cl
rcr rdx, cl
rcr rbx, cl
rcr rsp, cl
rcr rbp, cl
rcr rsi, cl
rcr rdi, cl

; ------------------------------------------------------------------------------
; opcode r,imm8
; ------------------------------------------------------------------------------
; immediate to each register: 8-bit
rcr al, -127
rcr cl, -100
rcr dl, -23
rcr bl, -1
rcr ah, 0
rcr ch, 1
rcr dh, 0x12
rcr bh, 0xff

; immediate to each register: 16-bit
rcr ax, 0x50
rcr cx, 0x51
rcr dx, 0x52
rcr bx, 0x53
rcr sp, 0x54
rcr bp, 0x55
rcr si, 0x56
rcr di, 0x57

; immediate to each register: 32-bit
rcr eax, 0xa0
rcr ecx, 0xa1
rcr edx, 0xa2
rcr ebx, 0xa3
rcr esp, 0xa4
rcr ebp, 0xa5
rcr esi, 0xa6
rcr edi, 0xa7

; immediate to each register: 64-bit
rcr rax, 0x88
rcr rcx, 0x99
rcr rdx, 0xaa
rcr rbx, 0xbb
rcr rsp, 0xcc
rcr rbp, 0xdd
rcr rsi, 0xee
rcr rdi, 0xff

; ------------------------------------------------------------------------------
; opcode m,cl
; ------------------------------------------------------------------------------
rcr byte[rip + 0x12], cl
rcr word[rip + 0x13], cl
rcr dword [rip + 0x14], cl
rcr qword [rip + 0x15], cl
rcr byte[rip + 0x1234], cl
rcr word[rip + 0x1235], cl
rcr dword [rip + 0x1236], cl
rcr qword [rip + 0x1237], cl
rcr byte[rip + 0x12345678], cl
rcr word[rip + 0x12345679], cl
rcr dword [rip + 0x1234567a], cl
rcr qword [rip + 0x1234567b], cl
rcr byte[rax], cl
rcr word[rbx], cl
rcr dword [rcx], cl
rcr qword [rdx], cl
rcr byte[rax + 0x12], cl
rcr word[rbx + 0x13], cl
rcr dword [rcx + 0x14], cl
rcr qword [rdx + 0x15], cl
rcr byte[rax + 0x1234], cl
rcr word[rbx + 0x1235], cl
rcr dword [rcx + 0x1236], cl
rcr qword [rdx + 0x1237], cl
rcr byte[rax + 0x12345678], cl
rcr word[rbx + 0x12345679], cl
rcr dword [rcx + 0x1234567a], cl
rcr qword [rdx + 0x1234567b], cl
rcr byte[rax + rbx], cl
rcr word[rbx + rcx], cl
rcr dword [rcx + rsi], cl
rcr qword [rdx + rdi], cl
rcr byte[rax + 2 * rbx], cl
rcr word[rbx + 4 * rcx], cl
rcr dword [rcx + 8 * rsi], cl
rcr qword [rdx + 8 * rdi], cl
rcr byte[rax + rbx + 0x12], cl
rcr word[rbx + rcx + 0x13], cl
rcr dword [rcx + rsi + 0x14], cl
rcr qword [rdx + rdi + 0x15], cl
rcr byte[rax + rbx + 0x1234], cl
rcr word[rbx + rcx + 0x1235], cl
rcr dword [rcx + rsi + 0x1236], cl
rcr qword [rdx + rdi + 0x1237], cl
rcr byte[rax + rbx + 0x12345678], cl
rcr word[rbx + rcx + 0x12345679], cl
rcr dword [rcx + rsi + 0x1234567a], cl
rcr qword [rdx + rdi + 0x1234567b], cl
rcr byte[rax + 2 * rbx + 0x12], cl
rcr word[rbx + 4 * rcx + 0x13], cl
rcr dword [rcx + 8 * rsi + 0x14], cl
rcr qword [rdx + 8 * rdi + 0x15], cl
rcr byte[rax + 2 * rbx + 0x1234], cl
rcr word[rbx + 4 * rcx + 0x1235], cl
rcr dword [rcx + 8 * rsi + 0x1236], cl
rcr qword [rdx + 8 * rdi + 0x1237], cl
rcr byte[rax + 2 * rbx + 0x12345678], cl
rcr word[rbx + 4 * rcx + 0x12345679], cl
rcr dword [rcx + 8 * rsi + 0x1234567a], cl
rcr qword [rdx + 8 * rdi + 0x1234567b], cl
rcr byte[2 * rbx], cl
rcr word[4 * rcx], cl
rcr dword [8 * rsi], cl
rcr qword [8 * rdi], cl
rcr byte[2 * rbx + 0x12], cl
rcr word[4 * rcx + 0x13], cl
rcr dword [8 * rsi + 0x14], cl
rcr qword [8 * rdi + 0x15], cl
rcr byte[2 * rbx + 0x1234], cl
rcr word[4 * rcx + 0x1235], cl
rcr dword [8 * rsi + 0x1236], cl
rcr qword [8 * rdi + 0x1237], cl
rcr byte[2 * rbx + 0x12345678], cl
rcr word[4 * rcx + 0x12345679], cl
rcr dword [8 * rsi + 0x1234567a], cl
rcr qword [8 * rdi + 0x1234567b], cl
rcr byte [rbp], cl
rcr byte [rbp + 0x12], cl
rcr byte [rbp + 0x1234], cl
rcr byte [rbp + 0x12345678], cl
rcr byte [4 * rbp], cl
rcr byte [4 * rbp + 0x12], cl
rcr byte [4 * rbp + 0x1234], cl
rcr byte [4 * rbp + 0x12345678], cl
rcr byte [rbx + 4 * rbp], cl
rcr byte [rbx + 4 * rbp + 0x12], cl
rcr byte [rbx + 4 * rbp + 0x1234], cl
rcr byte [rbx + 4 * rbp + 0x12345678], cl
rcr byte [rsp], cl
rcr byte [rsp + 0x12], cl
rcr byte [rsp + 0x1234], cl
rcr byte [rsp + 0x12345678], cl
rcr byte [rsp + rax], cl
rcr byte [rsp + rbp], cl
rcr byte [rsp + 2*rbp], cl
rcr byte [rsp + 4*rbp], cl
rcr byte [rsp + 8*rbp], cl
rcr byte [rax], cl
rcr byte [rcx], cl
rcr byte [rdx], cl
rcr byte [rbx], cl
rcr byte [rsp], cl
rcr byte [rbp], cl
rcr byte [rsi], cl
rcr byte [rdi], cl
rcr byte [rax + 2*rax], cl
rcr byte [rcx + 2*rcx], cl
rcr byte [rdx + 2*rdx], cl
rcr byte [rbx + 2*rbx], cl
rcr byte [rbp + 2*rbp], cl
rcr byte [rsi + 2*rsi], cl
rcr byte [rdi + 2*rdi], cl

; ------------------------------------------------------------------------------
; opcode m,imm8
; ------------------------------------------------------------------------------
; [rip + disp32]
rcr byte  [rip + 0x12], 0x12
rcr word  [rip + 0x13], 0x13
rcr dword [rip + 0x14], 0x14
rcr qword [rip + 0x15], 0x15

rcr byte  [rip + 0x1234], 0x20
rcr word  [rip + 0x1235], 0x21
rcr dword [rip + 0x1236], 0x22
rcr qword [rip + 0x1237], 0x23

rcr byte  [rip + 0x12345678], 0x30
rcr word  [rip + 0x12345679], 0x32
rcr dword [rip + 0x1234567a], 0x34
rcr qword [rip + 0x1234567b], 0x36

; [rip + base]
rcr byte  [rax], 0x41
rcr word  [rbx], 0x45
rcr dword [rcx], 0x47
rcr qword [rdx], 0x49

; [rip + base + disp8]
rcr byte  [rax + 0x12], 0xa0
rcr word  [rbx + 0x13], 0xb0
rcr dword [rcx + 0x14], 0xc0
rcr qword [rdx + 0x15], 0xd0

; [rip + base + disp32]
rcr byte  [rax + 0x1234], 0xcc
rcr word  [rbx + 0x1235], 0xdd
rcr dword [rcx + 0x1236], 0xee
rcr qword [rdx + 0x1237], 0xff

rcr byte  [rax + 0x12345678], -127
rcr word  [rbx + 0x12345679], -100
rcr dword [rcx + 0x1234567a], -50
rcr qword [rdx + 0x1234567b], -20

; [rip + base + index]
rcr byte  [rax + rbx], 20
rcr word  [rbx + rcx], 50
rcr dword [rcx + rsi], 100
rcr qword [rdx + rdi], 128

; [rip + base + scale * index]
rcr byte  [rax + 2 * rbx], 0
rcr word  [rbx + 4 * rcx], -1
rcr dword [rcx + 8 * rsi], -2
rcr qword [rdx + 8 * rdi], -3

; [rip + base + index + disp8]
rcr byte  [rax + rbx + 0x12], 0
rcr word  [rbx + rcx + 0x13], 1
rcr dword [rcx + rsi + 0x14], 2
rcr qword [rdx + rdi + 0x15], 3

; [rip + base + index + disp32]
rcr byte  [rax + rbx + 0x1234], 0x10
rcr word  [rbx + rcx + 0x1235], 0x11
rcr dword [rcx + rsi + 0x1236], 0x12
rcr qword [rdx + rdi + 0x1237], 0x13

rcr byte  [rax + rbx + 0x12345678], 10
rcr word  [rbx + rcx + 0x12345679], 11
rcr dword [rcx + rsi + 0x1234567a], 12
rcr qword [rdx + rdi + 0x1234567b], 13

; [rip + base + scale * index + disp8]
rcr byte  [rax + 2 * rbx + 0x12], 0x12
rcr word  [rbx + 4 * rcx + 0x13], 0x13
rcr dword [rcx + 8 * rsi + 0x14], 0x14
rcr qword [rdx + 8 * rdi + 0x15], 0x15

; [rip + base + scale * index + disp32]
rcr byte  [rax + 2 * rbx + 0x1234], 0x12
rcr word  [rbx + 4 * rcx + 0x1235], 0x13
rcr dword [rcx + 8 * rsi + 0x1236], 0x14
rcr qword [rdx + 8 * rdi + 0x1237], 0x15

rcr byte  [rax + 2 * rbx + 0x12345678], 0x12
rcr word  [rbx + 4 * rcx + 0x12345679], 0x13
rcr dword [rcx + 8 * rsi + 0x1234567a], 0x14
rcr qword [rdx + 8 * rdi + 0x1234567b], 0x15

; [scale * index]
rcr byte  [2 * rbx], 0x12
rcr word  [4 * rcx], 0x13
rcr dword [8 * rsi], 0x14
rcr qword [8 * rdi], 0x15

; [scale * index + disp8]
rcr byte  [2 * rbx + 0x12], 0x12
rcr word  [4 * rcx + 0x13], 0x13
rcr dword [8 * rsi + 0x14], 0x14
rcr qword [8 * rdi + 0x15], 0x15

; [scale * index + disp32]
rcr byte  [2 * rbx + 0x1234], 0x12
rcr word  [4 * rcx + 0x1235], 0x13
rcr dword [8 * rsi + 0x1236], 0x14
rcr qword [8 * rdi + 0x1237], 0x15

rcr byte  [2 * rbx + 0x12345678], 0x12
rcr word  [4 * rcx + 0x12345679], 0x13
rcr dword [8 * rsi + 0x1234567a], 0x14
rcr qword [8 * rdi + 0x1234567b], 0x15

; Use rbp as base or index.
rcr byte [rbp], 0x12
rcr byte [rbp + 0x12], 0x13
rcr byte [rbp + 0x1234], 0x14
rcr byte [rbp + 0x12345678], 0x15

rcr word [4 * rbp], 0x12
rcr word [4 * rbp + 0x12], 0x13
rcr word [4 * rbp + 0x1234], 0x14
rcr word [4 * rbp + 0x12345678], 0x15

rcr dword [rbx + 4 * rbp], 0x12
rcr dword [rbx + 4 * rbp + 0x12], 0x13
rcr dword [rbx + 4 * rbp + 0x1234], 0x14
rcr dword [rbx + 4 * rbp + 0x12345678], 0x15

; Use rsp as base.
rcr qword [rsp], 0x12
rcr qword [rsp + 0x12], 0x13
rcr qword [rsp + 0x1234], 0x14
rcr qword [rsp + 0x12345678], 0x15

rcr byte [rsp + rax], 0x12
rcr byte [rsp + rbp], 0x13
rcr byte [rsp + 2*rbp], 0x14
rcr byte [rsp + 4*rbp], 0x15
rcr byte [rsp + 8*rbp], 0x16

; use each register as indirect.
rcr word [rax], 0x12
rcr word [rcx], 0x13
rcr word [rdx], 0x14
rcr word [rbx], 0x15
rcr word [rsp], 0x16
rcr word [rbp], 0x17
rcr word [rsi], 0x18
rcr word [rdi], 0x19

; use each register as indirect.
; rsp is forbidden as index
rcr dword [rax + 2*rax], 0x12
rcr dword [rcx + 2*rcx], 0x13
rcr dword [rdx + 2*rdx], 0x14
rcr dword [rbx + 2*rbx], 0x15
rcr dword [rbp + 2*rbp], 0x16
rcr dword [rsi + 2*rsi], 0x17
rcr dword [rdi + 2*rdi], 0x18

