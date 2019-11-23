use64
; ------------------------------------------------------------------------------
; opcode rd,rd,cl
; ------------------------------------------------------------------------------
; r,r without 8-bit combinations:
; r16, r16, cl
; r32, r32, cl
; r64, r64, cl

; 16-bit registers
shld ax, ax, cl
shld ax, cx, cl
shld ax, dx, cl
shld ax, bx, cl
shld ax, sp, cl
shld ax, bp, cl
shld ax, si, cl
shld ax, di, cl

shld ax, ax, cl
shld cx, ax, cl
shld dx, ax, cl
shld bx, ax, cl
shld sp, ax, cl
shld bp, ax, cl
shld si, ax, cl
shld di, ax, cl

shld ax, di, cl
shld cx, si, cl
shld dx, bp, cl
shld bx, sp, cl
shld sp, bx, cl
shld bp, dx, cl
shld si, cx, cl
shld di, ax, cl

; 32-bit registers
shld eax, eax, cl
shld eax, ecx, cl
shld eax, edx, cl
shld eax, ebx, cl
shld eax, esp, cl
shld eax, ebp, cl
shld eax, esi, cl
shld eax, edi, cl

shld eax, eax, cl
shld ecx, eax, cl
shld edx, eax, cl
shld ebx, eax, cl
shld esp, eax, cl
shld ebp, eax, cl
shld esi, eax, cl
shld edi, eax, cl

shld eax, edi, cl
shld ecx, esi, cl
shld edx, ebp, cl
shld ebx, esp, cl
shld esp, ebx, cl
shld ebp, edx, cl
shld esi, ecx, cl
shld edi, eax, cl

; 64-bit registers
shld rax, rax, cl
shld rax, rcx, cl
shld rax, rdx, cl
shld rax, rbx, cl
shld rax, rsp, cl
shld rax, rbp, cl
shld rax, rsi, cl
shld rax, rdi, cl

shld rax, rax, cl
shld rcx, rax, cl
shld rdx, rax, cl
shld rbx, rax, cl
shld rsp, rax, cl
shld rbp, rax, cl
shld rsi, rax, cl
shld rdi, rax, cl

shld rax, rdi, cl
shld rcx, rsi, cl
shld rdx, rbp, cl
shld rbx, rsp, cl
shld rsp, rbx, cl
shld rbp, rdx, cl
shld rsi, rcx, cl
shld rdi, rax, cl

; ------------------------------------------------------------------------------
; opcode rd,rd,imm8
; ------------------------------------------------------------------------------
; r,r without 8-bit combinations:
; r16, r16, imm8
; r32, r32, imm8
; r64, r64, imm8

; 16-bit registers
shld ax, ax, 0
shld ax, cx, 1
shld ax, dx, 2
shld ax, bx, 3
shld ax, sp, 4
shld ax, bp, 5
shld ax, si, 6
shld ax, di, 7

shld ax, ax, 0x12
shld cx, ax, 0x13
shld dx, ax, 0x14
shld bx, ax, 0x15
shld sp, ax, 0x16
shld bp, ax, 0x17
shld si, ax, 0x18
shld di, ax, 0x19

shld ax, di, 100
shld cx, si, 101
shld dx, bp, 102
shld bx, sp, 103
shld sp, bx, 104
shld bp, dx, 105
shld si, cx, 106
shld di, ax, 107

; 32-bit registers
shld eax, eax, 0x88
shld eax, ecx, 0x99
shld eax, edx, 0xaa
shld eax, ebx, 0xbb
shld eax, esp, 0xcc
shld eax, ebp, 0xdd
shld eax, esi, 0xee
shld eax, edi, 0xff

shld eax, eax, 0xf0
shld ecx, eax, 0xe0
shld edx, eax, 0xd0
shld ebx, eax, 0xc0
shld esp, eax, 0xb0 
shld ebp, eax, 0xa0
shld esi, eax, 0x90
shld edi, eax, 0x80

shld eax, edi, 10
shld ecx, esi, 20
shld edx, ebp, 30
shld ebx, esp, 40
shld esp, ebx, 50
shld ebp, edx, 60
shld esi, ecx, 70
shld edi, eax, 80

; 64-bit registers
shld rax, rax, 0
shld rax, rcx, 1
shld rax, rdx, 2
shld rax, rbx, 3
shld rax, rsp, 4
shld rax, rbp, 5
shld rax, rsi, 6
shld rax, rdi, 7

shld rax, rax, 0x12
shld rcx, rax, 0x13
shld rdx, rax, 0x14
shld rbx, rax, 0x15
shld rsp, rax, 0x16
shld rbp, rax, 0x17
shld rsi, rax, 0x18
shld rdi, rax, 0x19

shld rax, rdi, 100
shld rcx, rsi, 101
shld rdx, rbp, 102
shld rbx, rsp, 103
shld rsp, rbx, 104
shld rbp, rdx, 105
shld rsi, rcx, 106
shld rdi, rax, 107

; ------------------------------------------------------------------------------
; opcode md,rd,cl
; ------------------------------------------------------------------------------
; m,r without 8-bit combinations:
; m16, r16
; m32, r32
; m64, r64

; [rip + disp32]
shld word  [rip + 0x13], cx, cl
shld dword [rip + 0x14], edx, cl
shld qword [rip + 0x15], rsi, cl

shld word  [rip + 0x1235], cx, cl
shld dword [rip + 0x1236], edx, cl
shld qword [rip + 0x1237], rsi, cl

shld word  [rip + 0x12345679], cx, cl
shld dword [rip + 0x1234567a], edx, cl
shld qword [rip + 0x1234567b], rsi, cl

; [rip + base]
shld word  [rbx], cx, cl
shld dword [rcx], edx, cl
shld qword [rdx], rsi, cl

; [rip + base + disp8]
shld word  [rbx + 0x13], cx, cl
shld dword [rcx + 0x14], edx, cl
shld qword [rdx + 0x15], rsi, cl

; [rip + base + disp32]
shld word  [rbx + 0x1235], cx, cl
shld dword [rcx + 0x1236], edx, cl
shld qword [rdx + 0x1237], rsi, cl

shld word  [rbx + 0x12345679], cx, cl
shld dword [rcx + 0x1234567a], edx, cl
shld qword [rdx + 0x1234567b], rsi, cl

; [rip + base + index]
shld word  [rbx + rcx], cx, cl
shld dword [rcx + rsi], edx, cl
shld qword [rdx + rdi], rsi, cl

; [rip + base + scale * index]
shld word  [rbx + 4 * rcx], cx, cl
shld dword [rcx + 8 * rsi], edx, cl
shld qword [rdx + 8 * rdi], rsi, cl

; [rip + base + index + disp8]
shld word  [rbx + rcx + 0x13], cx, cl
shld dword [rcx + rsi + 0x14], edx, cl
shld qword [rdx + rdi + 0x15], rsi, cl

; [rip + base + index + disp32]
shld word  [rbx + rcx + 0x1235], cx, cl
shld dword [rcx + rsi + 0x1236], edx, cl
shld qword [rdx + rdi + 0x1237], rsi, cl

shld word  [rbx + rcx + 0x12345679], cx, cl
shld dword [rcx + rsi + 0x1234567a], edx, cl
shld qword [rdx + rdi + 0x1234567b], rsi, cl

; [rip + base + scale * index + disp8]
shld word  [rbx + 4 * rcx + 0x13], cx, cl
shld dword [rcx + 8 * rsi + 0x14], edx, cl
shld qword [rdx + 8 * rdi + 0x15], rsi, cl

; [rip + base + scale * index + disp32]
shld word  [rbx + 4 * rcx + 0x1235], cx, cl
shld dword [rcx + 8 * rsi + 0x1236], edx, cl
shld qword [rdx + 8 * rdi + 0x1237], rsi, cl

shld word  [rbx + 4 * rcx + 0x12345679], cx, cl
shld dword [rcx + 8 * rsi + 0x1234567a], edx, cl
shld qword [rdx + 8 * rdi + 0x1234567b], rsi, cl

; [scale * index]
shld word  [4 * rcx], cx, cl
shld dword [8 * rsi], edx, cl
shld qword [8 * rdi], rsi, cl

; [scale * index + disp8]
shld word  [4 * rcx + 0x13], cx, cl
shld dword [8 * rsi + 0x14], edx, cl
shld qword [8 * rdi + 0x15], rsi, cl

; [scale * index + disp32]
shld word  [4 * rcx + 0x1235], cx, cl
shld dword [8 * rsi + 0x1236], edx, cl
shld qword [8 * rdi + 0x1237], rsi, cl

shld word  [4 * rcx + 0x12345679], cx, cl
shld dword [8 * rsi + 0x1234567a], edx, cl
shld qword [8 * rdi + 0x1234567b], rsi, cl

; Use rbp as base or index.
shld word [rbp], ax, cl
shld word [rbp + 0x12], ax, cl
shld word [rbp + 0x1234], ax, cl
shld word [rbp + 0x12345678], ax, cl

shld dword [4 * rbp], eax, cl
shld dword [4 * rbp + 0x12], eax, cl
shld dword [4 * rbp + 0x1234], eax, cl
shld dword [4 * rbp + 0x12345678], eax, cl

shld qword [rbx + 4 * rbp], rax, cl
shld qword [rbx + 4 * rbp + 0x12], rax, cl
shld qword [rbx + 4 * rbp + 0x1234], rax, cl
shld qword [rbx + 4 * rbp + 0x12345678], rax, cl

; Use rsp as base.
shld word [rsp], ax, cl
shld word [rsp + 0x12], ax, cl
shld word [rsp + 0x1234], ax, cl
shld word [rsp + 0x12345678], ax, cl

shld dword [rsp + rax], eax, cl
shld dword [rsp + rbp], eax, cl
shld dword [rsp + 2*rbp], eax, cl
shld dword [rsp + 4*rbp], eax, cl
shld dword [rsp + 8*rbp], eax, cl

; use each register as indirect.
shld dword [rax], eax, cl
shld dword [rcx], eax, cl
shld dword [rdx], eax, cl
shld dword [rbx], eax, cl
shld dword [rsp], eax, cl
shld dword [rbp], eax, cl
shld dword [rsi], eax, cl
shld dword [rdi], eax, cl

; use each register as indirect.
; rsp is forbidden as index
shld qword [rax + 2*rax], rax, cl
shld qword [rcx + 2*rcx], rax, cl
shld qword [rdx + 2*rdx], rax, cl
shld qword [rbx + 2*rbx], rax, cl
shld qword [rbp + 2*rbp], rax, cl
shld qword [rsi + 2*rsi], rax, cl
shld qword [rdi + 2*rdi], rax, cl

; ------------------------------------------------------------------------------
; opcode md,rd,imm8
; ------------------------------------------------------------------------------
; m,r without 8-bit combinations:
; m16, r16
; m32, r32
; m64, r64

; [rip + disp32]
shld word  [rip + 0x13], cx, 0
shld dword [rip + 0x14], edx, 1
shld qword [rip + 0x15], rsi, 2

shld word  [rip + 0x1235], cx, 3
shld dword [rip + 0x1236], edx, 4
shld qword [rip + 0x1237], rsi, 5

shld word  [rip + 0x12345679], cx, 6
shld dword [rip + 0x1234567a], edx, 7
shld qword [rip + 0x1234567b], rsi, 8

; [rip + base]
shld word  [rbx], cx, 9
shld dword [rcx], edx, 10
shld qword [rdx], rsi, 11

; [rip + base + disp8]
shld word  [rbx + 0x13], cx, 12
shld dword [rcx + 0x14], edx, 13
shld qword [rdx + 0x15], rsi, 14

; [rip + base + disp32]
shld word  [rbx + 0x1235], cx, 15
shld dword [rcx + 0x1236], edx, 16
shld qword [rdx + 0x1237], rsi, 17

shld word  [rbx + 0x12345679], cx, 18
shld dword [rcx + 0x1234567a], edx, 19
shld qword [rdx + 0x1234567b], rsi, 20

; [rip + base + index]
shld word  [rbx + rcx], cx, 21
shld dword [rcx + rsi], edx, 22
shld qword [rdx + rdi], rsi, 23

; [rip + base + scale * index]
shld word  [rbx + 4 * rcx], cx, 24
shld dword [rcx + 8 * rsi], edx, 25
shld qword [rdx + 8 * rdi], rsi, 26

; [rip + base + index + disp8]
shld word  [rbx + rcx + 0x13], cx, 27
shld dword [rcx + rsi + 0x14], edx, 28
shld qword [rdx + rdi + 0x15], rsi, 29

; [rip + base + index + disp32]
shld word  [rbx + rcx + 0x1235], cx, 30
shld dword [rcx + rsi + 0x1236], edx, 31
shld qword [rdx + rdi + 0x1237], rsi, 32

shld word  [rbx + rcx + 0x12345679], cx, 33
shld dword [rcx + rsi + 0x1234567a], edx, 34
shld qword [rdx + rdi + 0x1234567b], rsi, 35

; [rip + base + scale * index + disp8]
shld word  [rbx + 4 * rcx + 0x13], cx, 36
shld dword [rcx + 8 * rsi + 0x14], edx, 37
shld qword [rdx + 8 * rdi + 0x15], rsi, 38

; [rip + base + scale * index + disp32]
shld word  [rbx + 4 * rcx + 0x1235], cx, 39
shld dword [rcx + 8 * rsi + 0x1236], edx, 40
shld qword [rdx + 8 * rdi + 0x1237], rsi, 41

shld word  [rbx + 4 * rcx + 0x12345679], cx, 42
shld dword [rcx + 8 * rsi + 0x1234567a], edx, 43
shld qword [rdx + 8 * rdi + 0x1234567b], rsi, 44

; [scale * index]
shld word  [4 * rcx], cx, 45
shld dword [8 * rsi], edx, 46
shld qword [8 * rdi], rsi, 47

; [scale * index + disp8]
shld word  [4 * rcx + 0x13], cx, 48
shld dword [8 * rsi + 0x14], edx, 49
shld qword [8 * rdi + 0x15], rsi, 50

; [scale * index + disp32]
shld word  [4 * rcx + 0x1235], cx, 51
shld dword [8 * rsi + 0x1236], edx, 52
shld qword [8 * rdi + 0x1237], rsi, 53

shld word  [4 * rcx + 0x12345679], cx, 54
shld dword [8 * rsi + 0x1234567a], edx, 55
shld qword [8 * rdi + 0x1234567b], rsi, 56

; Use rbp as base or index.
shld word [rbp], ax, 57
shld word [rbp + 0x12], ax, 58
shld word [rbp + 0x1234], ax, 59
shld word [rbp + 0x12345678], ax, 60

shld dword [4 * rbp], eax, 61
shld dword [4 * rbp + 0x12], eax, 62
shld dword [4 * rbp + 0x1234], eax, 63
shld dword [4 * rbp + 0x12345678], eax, 64

shld qword [rbx + 4 * rbp], rax, 65
shld qword [rbx + 4 * rbp + 0x12], rax, 66
shld qword [rbx + 4 * rbp + 0x1234], rax, 67
shld qword [rbx + 4 * rbp + 0x12345678], rax, 68

; Use rsp as base.
shld word [rsp], ax, 69
shld word [rsp + 0x12], ax, 70
shld word [rsp + 0x1234], ax, 71
shld word [rsp + 0x12345678], ax, 72

shld dword [rsp + rax], eax, 73
shld dword [rsp + rbp], eax, 74
shld dword [rsp + 2*rbp], eax, 75
shld dword [rsp + 4*rbp], eax, 76
shld dword [rsp + 8*rbp], eax, 77

; use each register as indirect.
shld dword [rax], eax, 78
shld dword [rcx], eax, 79
shld dword [rdx], eax, 80
shld dword [rbx], eax, 81
shld dword [rsp], eax, 82
shld dword [rbp], eax, 83
shld dword [rsi], eax, 84
shld dword [rdi], eax, 85

; use each register as indirect.
; rsp is forbidden as index
shld qword [rax + 2*rax], rax, 0xff
shld qword [rcx + 2*rcx], rax, 0xee
shld qword [rdx + 2*rdx], rax, 0xdd
shld qword [rbx + 2*rbx], rax, 0xcc
shld qword [rbp + 2*rbp], rax, 0xbb
shld qword [rsi + 2*rsi], rax, 0xaa
shld qword [rdi + 2*rdi], rax, 0x99

