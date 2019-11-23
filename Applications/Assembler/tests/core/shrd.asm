use64
; ------------------------------------------------------------------------------
; opcode rd,rd,cl
; ------------------------------------------------------------------------------
; r,r without 8-bit combinations:
; r16, r16, cl
; r32, r32, cl
; r64, r64, cl

; 16-bit registers
shrd ax, ax, cl
shrd ax, cx, cl
shrd ax, dx, cl
shrd ax, bx, cl
shrd ax, sp, cl
shrd ax, bp, cl
shrd ax, si, cl
shrd ax, di, cl

shrd ax, ax, cl
shrd cx, ax, cl
shrd dx, ax, cl
shrd bx, ax, cl
shrd sp, ax, cl
shrd bp, ax, cl
shrd si, ax, cl
shrd di, ax, cl

shrd ax, di, cl
shrd cx, si, cl
shrd dx, bp, cl
shrd bx, sp, cl
shrd sp, bx, cl
shrd bp, dx, cl
shrd si, cx, cl
shrd di, ax, cl

; 32-bit registers
shrd eax, eax, cl
shrd eax, ecx, cl
shrd eax, edx, cl
shrd eax, ebx, cl
shrd eax, esp, cl
shrd eax, ebp, cl
shrd eax, esi, cl
shrd eax, edi, cl

shrd eax, eax, cl
shrd ecx, eax, cl
shrd edx, eax, cl
shrd ebx, eax, cl
shrd esp, eax, cl
shrd ebp, eax, cl
shrd esi, eax, cl
shrd edi, eax, cl

shrd eax, edi, cl
shrd ecx, esi, cl
shrd edx, ebp, cl
shrd ebx, esp, cl
shrd esp, ebx, cl
shrd ebp, edx, cl
shrd esi, ecx, cl
shrd edi, eax, cl

; 64-bit registers
shrd rax, rax, cl
shrd rax, rcx, cl
shrd rax, rdx, cl
shrd rax, rbx, cl
shrd rax, rsp, cl
shrd rax, rbp, cl
shrd rax, rsi, cl
shrd rax, rdi, cl

shrd rax, rax, cl
shrd rcx, rax, cl
shrd rdx, rax, cl
shrd rbx, rax, cl
shrd rsp, rax, cl
shrd rbp, rax, cl
shrd rsi, rax, cl
shrd rdi, rax, cl

shrd rax, rdi, cl
shrd rcx, rsi, cl
shrd rdx, rbp, cl
shrd rbx, rsp, cl
shrd rsp, rbx, cl
shrd rbp, rdx, cl
shrd rsi, rcx, cl
shrd rdi, rax, cl

; ------------------------------------------------------------------------------
; opcode rd,rd,imm8
; ------------------------------------------------------------------------------
; r,r without 8-bit combinations:
; r16, r16, imm8
; r32, r32, imm8
; r64, r64, imm8

; 16-bit registers
shrd ax, ax, 0
shrd ax, cx, 1
shrd ax, dx, 2
shrd ax, bx, 3
shrd ax, sp, 4
shrd ax, bp, 5
shrd ax, si, 6
shrd ax, di, 7

shrd ax, ax, 0x12
shrd cx, ax, 0x13
shrd dx, ax, 0x14
shrd bx, ax, 0x15
shrd sp, ax, 0x16
shrd bp, ax, 0x17
shrd si, ax, 0x18
shrd di, ax, 0x19

shrd ax, di, 100
shrd cx, si, 101
shrd dx, bp, 102
shrd bx, sp, 103
shrd sp, bx, 104
shrd bp, dx, 105
shrd si, cx, 106
shrd di, ax, 107

; 32-bit registers
shrd eax, eax, 0x88
shrd eax, ecx, 0x99
shrd eax, edx, 0xaa
shrd eax, ebx, 0xbb
shrd eax, esp, 0xcc
shrd eax, ebp, 0xdd
shrd eax, esi, 0xee
shrd eax, edi, 0xff

shrd eax, eax, 0xf0
shrd ecx, eax, 0xe0
shrd edx, eax, 0xd0
shrd ebx, eax, 0xc0
shrd esp, eax, 0xb0 
shrd ebp, eax, 0xa0
shrd esi, eax, 0x90
shrd edi, eax, 0x80

shrd eax, edi, 10
shrd ecx, esi, 20
shrd edx, ebp, 30
shrd ebx, esp, 40
shrd esp, ebx, 50
shrd ebp, edx, 60
shrd esi, ecx, 70
shrd edi, eax, 80

; 64-bit registers
shrd rax, rax, 0
shrd rax, rcx, 1
shrd rax, rdx, 2
shrd rax, rbx, 3
shrd rax, rsp, 4
shrd rax, rbp, 5
shrd rax, rsi, 6
shrd rax, rdi, 7

shrd rax, rax, 0x12
shrd rcx, rax, 0x13
shrd rdx, rax, 0x14
shrd rbx, rax, 0x15
shrd rsp, rax, 0x16
shrd rbp, rax, 0x17
shrd rsi, rax, 0x18
shrd rdi, rax, 0x19

shrd rax, rdi, 100
shrd rcx, rsi, 101
shrd rdx, rbp, 102
shrd rbx, rsp, 103
shrd rsp, rbx, 104
shrd rbp, rdx, 105
shrd rsi, rcx, 106
shrd rdi, rax, 107

; ------------------------------------------------------------------------------
; opcode md,rd,cl
; ------------------------------------------------------------------------------
; m,r without 8-bit combinations:
; m16, r16
; m32, r32
; m64, r64

; [rip + disp32]
shrd word  [rip + 0x13], cx, cl
shrd dword [rip + 0x14], edx, cl
shrd qword [rip + 0x15], rsi, cl

shrd word  [rip + 0x1235], cx, cl
shrd dword [rip + 0x1236], edx, cl
shrd qword [rip + 0x1237], rsi, cl

shrd word  [rip + 0x12345679], cx, cl
shrd dword [rip + 0x1234567a], edx, cl
shrd qword [rip + 0x1234567b], rsi, cl

; [rip + base]
shrd word  [rbx], cx, cl
shrd dword [rcx], edx, cl
shrd qword [rdx], rsi, cl

; [rip + base + disp8]
shrd word  [rbx + 0x13], cx, cl
shrd dword [rcx + 0x14], edx, cl
shrd qword [rdx + 0x15], rsi, cl

; [rip + base + disp32]
shrd word  [rbx + 0x1235], cx, cl
shrd dword [rcx + 0x1236], edx, cl
shrd qword [rdx + 0x1237], rsi, cl

shrd word  [rbx + 0x12345679], cx, cl
shrd dword [rcx + 0x1234567a], edx, cl
shrd qword [rdx + 0x1234567b], rsi, cl

; [rip + base + index]
shrd word  [rbx + rcx], cx, cl
shrd dword [rcx + rsi], edx, cl
shrd qword [rdx + rdi], rsi, cl

; [rip + base + scale * index]
shrd word  [rbx + 4 * rcx], cx, cl
shrd dword [rcx + 8 * rsi], edx, cl
shrd qword [rdx + 8 * rdi], rsi, cl

; [rip + base + index + disp8]
shrd word  [rbx + rcx + 0x13], cx, cl
shrd dword [rcx + rsi + 0x14], edx, cl
shrd qword [rdx + rdi + 0x15], rsi, cl

; [rip + base + index + disp32]
shrd word  [rbx + rcx + 0x1235], cx, cl
shrd dword [rcx + rsi + 0x1236], edx, cl
shrd qword [rdx + rdi + 0x1237], rsi, cl

shrd word  [rbx + rcx + 0x12345679], cx, cl
shrd dword [rcx + rsi + 0x1234567a], edx, cl
shrd qword [rdx + rdi + 0x1234567b], rsi, cl

; [rip + base + scale * index + disp8]
shrd word  [rbx + 4 * rcx + 0x13], cx, cl
shrd dword [rcx + 8 * rsi + 0x14], edx, cl
shrd qword [rdx + 8 * rdi + 0x15], rsi, cl

; [rip + base + scale * index + disp32]
shrd word  [rbx + 4 * rcx + 0x1235], cx, cl
shrd dword [rcx + 8 * rsi + 0x1236], edx, cl
shrd qword [rdx + 8 * rdi + 0x1237], rsi, cl

shrd word  [rbx + 4 * rcx + 0x12345679], cx, cl
shrd dword [rcx + 8 * rsi + 0x1234567a], edx, cl
shrd qword [rdx + 8 * rdi + 0x1234567b], rsi, cl

; [scale * index]
shrd word  [4 * rcx], cx, cl
shrd dword [8 * rsi], edx, cl
shrd qword [8 * rdi], rsi, cl

; [scale * index + disp8]
shrd word  [4 * rcx + 0x13], cx, cl
shrd dword [8 * rsi + 0x14], edx, cl
shrd qword [8 * rdi + 0x15], rsi, cl

; [scale * index + disp32]
shrd word  [4 * rcx + 0x1235], cx, cl
shrd dword [8 * rsi + 0x1236], edx, cl
shrd qword [8 * rdi + 0x1237], rsi, cl

shrd word  [4 * rcx + 0x12345679], cx, cl
shrd dword [8 * rsi + 0x1234567a], edx, cl
shrd qword [8 * rdi + 0x1234567b], rsi, cl

; Use rbp as base or index.
shrd word [rbp], ax, cl
shrd word [rbp + 0x12], ax, cl
shrd word [rbp + 0x1234], ax, cl
shrd word [rbp + 0x12345678], ax, cl

shrd dword [4 * rbp], eax, cl
shrd dword [4 * rbp + 0x12], eax, cl
shrd dword [4 * rbp + 0x1234], eax, cl
shrd dword [4 * rbp + 0x12345678], eax, cl

shrd qword [rbx + 4 * rbp], rax, cl
shrd qword [rbx + 4 * rbp + 0x12], rax, cl
shrd qword [rbx + 4 * rbp + 0x1234], rax, cl
shrd qword [rbx + 4 * rbp + 0x12345678], rax, cl

; Use rsp as base.
shrd word [rsp], ax, cl
shrd word [rsp + 0x12], ax, cl
shrd word [rsp + 0x1234], ax, cl
shrd word [rsp + 0x12345678], ax, cl

shrd dword [rsp + rax], eax, cl
shrd dword [rsp + rbp], eax, cl
shrd dword [rsp + 2*rbp], eax, cl
shrd dword [rsp + 4*rbp], eax, cl
shrd dword [rsp + 8*rbp], eax, cl

; use each register as indirect.
shrd dword [rax], eax, cl
shrd dword [rcx], eax, cl
shrd dword [rdx], eax, cl
shrd dword [rbx], eax, cl
shrd dword [rsp], eax, cl
shrd dword [rbp], eax, cl
shrd dword [rsi], eax, cl
shrd dword [rdi], eax, cl

; use each register as indirect.
; rsp is forbidden as index
shrd qword [rax + 2*rax], rax, cl
shrd qword [rcx + 2*rcx], rax, cl
shrd qword [rdx + 2*rdx], rax, cl
shrd qword [rbx + 2*rbx], rax, cl
shrd qword [rbp + 2*rbp], rax, cl
shrd qword [rsi + 2*rsi], rax, cl
shrd qword [rdi + 2*rdi], rax, cl

; ------------------------------------------------------------------------------
; opcode md,rd,imm8
; ------------------------------------------------------------------------------
; m,r without 8-bit combinations:
; m16, r16
; m32, r32
; m64, r64

; [rip + disp32]
shrd word  [rip + 0x13], cx, 0
shrd dword [rip + 0x14], edx, 1
shrd qword [rip + 0x15], rsi, 2

shrd word  [rip + 0x1235], cx, 3
shrd dword [rip + 0x1236], edx, 4
shrd qword [rip + 0x1237], rsi, 5

shrd word  [rip + 0x12345679], cx, 6
shrd dword [rip + 0x1234567a], edx, 7
shrd qword [rip + 0x1234567b], rsi, 8

; [rip + base]
shrd word  [rbx], cx, 9
shrd dword [rcx], edx, 10
shrd qword [rdx], rsi, 11

; [rip + base + disp8]
shrd word  [rbx + 0x13], cx, 12
shrd dword [rcx + 0x14], edx, 13
shrd qword [rdx + 0x15], rsi, 14

; [rip + base + disp32]
shrd word  [rbx + 0x1235], cx, 15
shrd dword [rcx + 0x1236], edx, 16
shrd qword [rdx + 0x1237], rsi, 17

shrd word  [rbx + 0x12345679], cx, 18
shrd dword [rcx + 0x1234567a], edx, 19
shrd qword [rdx + 0x1234567b], rsi, 20

; [rip + base + index]
shrd word  [rbx + rcx], cx, 21
shrd dword [rcx + rsi], edx, 22
shrd qword [rdx + rdi], rsi, 23

; [rip + base + scale * index]
shrd word  [rbx + 4 * rcx], cx, 24
shrd dword [rcx + 8 * rsi], edx, 25
shrd qword [rdx + 8 * rdi], rsi, 26

; [rip + base + index + disp8]
shrd word  [rbx + rcx + 0x13], cx, 27
shrd dword [rcx + rsi + 0x14], edx, 28
shrd qword [rdx + rdi + 0x15], rsi, 29

; [rip + base + index + disp32]
shrd word  [rbx + rcx + 0x1235], cx, 30
shrd dword [rcx + rsi + 0x1236], edx, 31
shrd qword [rdx + rdi + 0x1237], rsi, 32

shrd word  [rbx + rcx + 0x12345679], cx, 33
shrd dword [rcx + rsi + 0x1234567a], edx, 34
shrd qword [rdx + rdi + 0x1234567b], rsi, 35

; [rip + base + scale * index + disp8]
shrd word  [rbx + 4 * rcx + 0x13], cx, 36
shrd dword [rcx + 8 * rsi + 0x14], edx, 37
shrd qword [rdx + 8 * rdi + 0x15], rsi, 38

; [rip + base + scale * index + disp32]
shrd word  [rbx + 4 * rcx + 0x1235], cx, 39
shrd dword [rcx + 8 * rsi + 0x1236], edx, 40
shrd qword [rdx + 8 * rdi + 0x1237], rsi, 41

shrd word  [rbx + 4 * rcx + 0x12345679], cx, 42
shrd dword [rcx + 8 * rsi + 0x1234567a], edx, 43
shrd qword [rdx + 8 * rdi + 0x1234567b], rsi, 44

; [scale * index]
shrd word  [4 * rcx], cx, 45
shrd dword [8 * rsi], edx, 46
shrd qword [8 * rdi], rsi, 47

; [scale * index + disp8]
shrd word  [4 * rcx + 0x13], cx, 48
shrd dword [8 * rsi + 0x14], edx, 49
shrd qword [8 * rdi + 0x15], rsi, 50

; [scale * index + disp32]
shrd word  [4 * rcx + 0x1235], cx, 51
shrd dword [8 * rsi + 0x1236], edx, 52
shrd qword [8 * rdi + 0x1237], rsi, 53

shrd word  [4 * rcx + 0x12345679], cx, 54
shrd dword [8 * rsi + 0x1234567a], edx, 55
shrd qword [8 * rdi + 0x1234567b], rsi, 56

; Use rbp as base or index.
shrd word [rbp], ax, 57
shrd word [rbp + 0x12], ax, 58
shrd word [rbp + 0x1234], ax, 59
shrd word [rbp + 0x12345678], ax, 60

shrd dword [4 * rbp], eax, 61
shrd dword [4 * rbp + 0x12], eax, 62
shrd dword [4 * rbp + 0x1234], eax, 63
shrd dword [4 * rbp + 0x12345678], eax, 64

shrd qword [rbx + 4 * rbp], rax, 65
shrd qword [rbx + 4 * rbp + 0x12], rax, 66
shrd qword [rbx + 4 * rbp + 0x1234], rax, 67
shrd qword [rbx + 4 * rbp + 0x12345678], rax, 68

; Use rsp as base.
shrd word [rsp], ax, 69
shrd word [rsp + 0x12], ax, 70
shrd word [rsp + 0x1234], ax, 71
shrd word [rsp + 0x12345678], ax, 72

shrd dword [rsp + rax], eax, 73
shrd dword [rsp + rbp], eax, 74
shrd dword [rsp + 2*rbp], eax, 75
shrd dword [rsp + 4*rbp], eax, 76
shrd dword [rsp + 8*rbp], eax, 77

; use each register as indirect.
shrd dword [rax], eax, 78
shrd dword [rcx], eax, 79
shrd dword [rdx], eax, 80
shrd dword [rbx], eax, 81
shrd dword [rsp], eax, 82
shrd dword [rbp], eax, 83
shrd dword [rsi], eax, 84
shrd dword [rdi], eax, 85

; use each register as indirect.
; rsp is forbidden as index
shrd qword [rax + 2*rax], rax, 0xff
shrd qword [rcx + 2*rcx], rax, 0xee
shrd qword [rdx + 2*rdx], rax, 0xdd
shrd qword [rbx + 2*rbx], rax, 0xcc
shrd qword [rbp + 2*rbp], rax, 0xbb
shrd qword [rsi + 2*rsi], rax, 0xaa
shrd qword [rdi + 2*rdi], rax, 0x99

