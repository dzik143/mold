; m,r without 8-bit combinations:
; m16, r16
; m32, r32
; m64, r64

; [rip + disp32]
${mnemonic} word  [rip + 0x13], cx, 0
${mnemonic} dword [rip + 0x14], edx, 1
${mnemonic} qword [rip + 0x15], rsi, 2

${mnemonic} word  [rip + 0x1235], cx, 3
${mnemonic} dword [rip + 0x1236], edx, 4
${mnemonic} qword [rip + 0x1237], rsi, 5

${mnemonic} word  [rip + 0x12345679], cx, 6
${mnemonic} dword [rip + 0x1234567a], edx, 7
${mnemonic} qword [rip + 0x1234567b], rsi, 8

; [rip + base]
${mnemonic} word  [rbx], cx, 9
${mnemonic} dword [rcx], edx, 10
${mnemonic} qword [rdx], rsi, 11

; [rip + base + disp8]
${mnemonic} word  [rbx + 0x13], cx, 12
${mnemonic} dword [rcx + 0x14], edx, 13
${mnemonic} qword [rdx + 0x15], rsi, 14

; [rip + base + disp32]
${mnemonic} word  [rbx + 0x1235], cx, 15
${mnemonic} dword [rcx + 0x1236], edx, 16
${mnemonic} qword [rdx + 0x1237], rsi, 17

${mnemonic} word  [rbx + 0x12345679], cx, 18
${mnemonic} dword [rcx + 0x1234567a], edx, 19
${mnemonic} qword [rdx + 0x1234567b], rsi, 20

; [rip + base + index]
${mnemonic} word  [rbx + rcx], cx, 21
${mnemonic} dword [rcx + rsi], edx, 22
${mnemonic} qword [rdx + rdi], rsi, 23

; [rip + base + scale * index]
${mnemonic} word  [rbx + 4 * rcx], cx, 24
${mnemonic} dword [rcx + 8 * rsi], edx, 25
${mnemonic} qword [rdx + 8 * rdi], rsi, 26

; [rip + base + index + disp8]
${mnemonic} word  [rbx + rcx + 0x13], cx, 27
${mnemonic} dword [rcx + rsi + 0x14], edx, 28
${mnemonic} qword [rdx + rdi + 0x15], rsi, 29

; [rip + base + index + disp32]
${mnemonic} word  [rbx + rcx + 0x1235], cx, 30
${mnemonic} dword [rcx + rsi + 0x1236], edx, 31
${mnemonic} qword [rdx + rdi + 0x1237], rsi, 32

${mnemonic} word  [rbx + rcx + 0x12345679], cx, 33
${mnemonic} dword [rcx + rsi + 0x1234567a], edx, 34
${mnemonic} qword [rdx + rdi + 0x1234567b], rsi, 35

; [rip + base + scale * index + disp8]
${mnemonic} word  [rbx + 4 * rcx + 0x13], cx, 36
${mnemonic} dword [rcx + 8 * rsi + 0x14], edx, 37
${mnemonic} qword [rdx + 8 * rdi + 0x15], rsi, 38

; [rip + base + scale * index + disp32]
${mnemonic} word  [rbx + 4 * rcx + 0x1235], cx, 39
${mnemonic} dword [rcx + 8 * rsi + 0x1236], edx, 40
${mnemonic} qword [rdx + 8 * rdi + 0x1237], rsi, 41

${mnemonic} word  [rbx + 4 * rcx + 0x12345679], cx, 42
${mnemonic} dword [rcx + 8 * rsi + 0x1234567a], edx, 43
${mnemonic} qword [rdx + 8 * rdi + 0x1234567b], rsi, 44

; [scale * index]
${mnemonic} word  [4 * rcx], cx, 45
${mnemonic} dword [8 * rsi], edx, 46
${mnemonic} qword [8 * rdi], rsi, 47

; [scale * index + disp8]
${mnemonic} word  [4 * rcx + 0x13], cx, 48
${mnemonic} dword [8 * rsi + 0x14], edx, 49
${mnemonic} qword [8 * rdi + 0x15], rsi, 50

; [scale * index + disp32]
${mnemonic} word  [4 * rcx + 0x1235], cx, 51
${mnemonic} dword [8 * rsi + 0x1236], edx, 52
${mnemonic} qword [8 * rdi + 0x1237], rsi, 53

${mnemonic} word  [4 * rcx + 0x12345679], cx, 54
${mnemonic} dword [8 * rsi + 0x1234567a], edx, 55
${mnemonic} qword [8 * rdi + 0x1234567b], rsi, 56

; Use rbp as base or index.
${mnemonic} word [rbp], ax, 57
${mnemonic} word [rbp + 0x12], ax, 58
${mnemonic} word [rbp + 0x1234], ax, 59
${mnemonic} word [rbp + 0x12345678], ax, 60

${mnemonic} dword [4 * rbp], eax, 61
${mnemonic} dword [4 * rbp + 0x12], eax, 62
${mnemonic} dword [4 * rbp + 0x1234], eax, 63
${mnemonic} dword [4 * rbp + 0x12345678], eax, 64

${mnemonic} qword [rbx + 4 * rbp], rax, 65
${mnemonic} qword [rbx + 4 * rbp + 0x12], rax, 66
${mnemonic} qword [rbx + 4 * rbp + 0x1234], rax, 67
${mnemonic} qword [rbx + 4 * rbp + 0x12345678], rax, 68

; Use rsp as base.
${mnemonic} word [rsp], ax, 69
${mnemonic} word [rsp + 0x12], ax, 70
${mnemonic} word [rsp + 0x1234], ax, 71
${mnemonic} word [rsp + 0x12345678], ax, 72

${mnemonic} dword [rsp + rax], eax, 73
${mnemonic} dword [rsp + rbp], eax, 74
${mnemonic} dword [rsp + 2*rbp], eax, 75
${mnemonic} dword [rsp + 4*rbp], eax, 76
${mnemonic} dword [rsp + 8*rbp], eax, 77

; use each register as indirect.
${mnemonic} dword [rax], eax, 78
${mnemonic} dword [rcx], eax, 79
${mnemonic} dword [rdx], eax, 80
${mnemonic} dword [rbx], eax, 81
${mnemonic} dword [rsp], eax, 82
${mnemonic} dword [rbp], eax, 83
${mnemonic} dword [rsi], eax, 84
${mnemonic} dword [rdi], eax, 85

; use each register as indirect.
; rsp is forbidden as index
${mnemonic} qword [rax + 2*rax], rax, 0xff
${mnemonic} qword [rcx + 2*rcx], rax, 0xee
${mnemonic} qword [rdx + 2*rdx], rax, 0xdd
${mnemonic} qword [rbx + 2*rbx], rax, 0xcc
${mnemonic} qword [rbp + 2*rbp], rax, 0xbb
${mnemonic} qword [rsi + 2*rsi], rax, 0xaa
${mnemonic} qword [rdi + 2*rdi], rax, 0x99
