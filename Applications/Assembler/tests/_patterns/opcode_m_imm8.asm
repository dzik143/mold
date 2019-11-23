; [rip + disp32]
${mnemonic} byte  [rip + 0x12], 0x12
${mnemonic} word  [rip + 0x13], 0x13
${mnemonic} dword [rip + 0x14], 0x14
${mnemonic} qword [rip + 0x15], 0x15

${mnemonic} byte  [rip + 0x1234], 0x20
${mnemonic} word  [rip + 0x1235], 0x21
${mnemonic} dword [rip + 0x1236], 0x22
${mnemonic} qword [rip + 0x1237], 0x23

${mnemonic} byte  [rip + 0x12345678], 0x30
${mnemonic} word  [rip + 0x12345679], 0x32
${mnemonic} dword [rip + 0x1234567a], 0x34
${mnemonic} qword [rip + 0x1234567b], 0x36

; [rip + base]
${mnemonic} byte  [rax], 0x41
${mnemonic} word  [rbx], 0x45
${mnemonic} dword [rcx], 0x47
${mnemonic} qword [rdx], 0x49

; [rip + base + disp8]
${mnemonic} byte  [rax + 0x12], 0xa0
${mnemonic} word  [rbx + 0x13], 0xb0
${mnemonic} dword [rcx + 0x14], 0xc0
${mnemonic} qword [rdx + 0x15], 0xd0

; [rip + base + disp32]
${mnemonic} byte  [rax + 0x1234], 0xcc
${mnemonic} word  [rbx + 0x1235], 0xdd
${mnemonic} dword [rcx + 0x1236], 0xee
${mnemonic} qword [rdx + 0x1237], 0xff

${mnemonic} byte  [rax + 0x12345678], -127
${mnemonic} word  [rbx + 0x12345679], -100
${mnemonic} dword [rcx + 0x1234567a], -50
${mnemonic} qword [rdx + 0x1234567b], -20

; [rip + base + index]
${mnemonic} byte  [rax + rbx], 20
${mnemonic} word  [rbx + rcx], 50
${mnemonic} dword [rcx + rsi], 100
${mnemonic} qword [rdx + rdi], 128

; [rip + base + scale * index]
${mnemonic} byte  [rax + 2 * rbx], 0
${mnemonic} word  [rbx + 4 * rcx], -1
${mnemonic} dword [rcx + 8 * rsi], -2
${mnemonic} qword [rdx + 8 * rdi], -3

; [rip + base + index + disp8]
${mnemonic} byte  [rax + rbx + 0x12], 0
${mnemonic} word  [rbx + rcx + 0x13], 1
${mnemonic} dword [rcx + rsi + 0x14], 2
${mnemonic} qword [rdx + rdi + 0x15], 3

; [rip + base + index + disp32]
${mnemonic} byte  [rax + rbx + 0x1234], 0x10
${mnemonic} word  [rbx + rcx + 0x1235], 0x11
${mnemonic} dword [rcx + rsi + 0x1236], 0x12
${mnemonic} qword [rdx + rdi + 0x1237], 0x13

${mnemonic} byte  [rax + rbx + 0x12345678], 10
${mnemonic} word  [rbx + rcx + 0x12345679], 11
${mnemonic} dword [rcx + rsi + 0x1234567a], 12
${mnemonic} qword [rdx + rdi + 0x1234567b], 13

; [rip + base + scale * index + disp8]
${mnemonic} byte  [rax + 2 * rbx + 0x12], 0x12
${mnemonic} word  [rbx + 4 * rcx + 0x13], 0x13
${mnemonic} dword [rcx + 8 * rsi + 0x14], 0x14
${mnemonic} qword [rdx + 8 * rdi + 0x15], 0x15

; [rip + base + scale * index + disp32]
${mnemonic} byte  [rax + 2 * rbx + 0x1234], 0x12
${mnemonic} word  [rbx + 4 * rcx + 0x1235], 0x13
${mnemonic} dword [rcx + 8 * rsi + 0x1236], 0x14
${mnemonic} qword [rdx + 8 * rdi + 0x1237], 0x15

${mnemonic} byte  [rax + 2 * rbx + 0x12345678], 0x12
${mnemonic} word  [rbx + 4 * rcx + 0x12345679], 0x13
${mnemonic} dword [rcx + 8 * rsi + 0x1234567a], 0x14
${mnemonic} qword [rdx + 8 * rdi + 0x1234567b], 0x15

; [scale * index]
${mnemonic} byte  [2 * rbx], 0x12
${mnemonic} word  [4 * rcx], 0x13
${mnemonic} dword [8 * rsi], 0x14
${mnemonic} qword [8 * rdi], 0x15

; [scale * index + disp8]
${mnemonic} byte  [2 * rbx + 0x12], 0x12
${mnemonic} word  [4 * rcx + 0x13], 0x13
${mnemonic} dword [8 * rsi + 0x14], 0x14
${mnemonic} qword [8 * rdi + 0x15], 0x15

; [scale * index + disp32]
${mnemonic} byte  [2 * rbx + 0x1234], 0x12
${mnemonic} word  [4 * rcx + 0x1235], 0x13
${mnemonic} dword [8 * rsi + 0x1236], 0x14
${mnemonic} qword [8 * rdi + 0x1237], 0x15

${mnemonic} byte  [2 * rbx + 0x12345678], 0x12
${mnemonic} word  [4 * rcx + 0x12345679], 0x13
${mnemonic} dword [8 * rsi + 0x1234567a], 0x14
${mnemonic} qword [8 * rdi + 0x1234567b], 0x15

; Use rbp as base or index.
${mnemonic} byte [rbp], 0x12
${mnemonic} byte [rbp + 0x12], 0x13
${mnemonic} byte [rbp + 0x1234], 0x14
${mnemonic} byte [rbp + 0x12345678], 0x15

${mnemonic} word [4 * rbp], 0x12
${mnemonic} word [4 * rbp + 0x12], 0x13
${mnemonic} word [4 * rbp + 0x1234], 0x14
${mnemonic} word [4 * rbp + 0x12345678], 0x15

${mnemonic} dword [rbx + 4 * rbp], 0x12
${mnemonic} dword [rbx + 4 * rbp + 0x12], 0x13
${mnemonic} dword [rbx + 4 * rbp + 0x1234], 0x14
${mnemonic} dword [rbx + 4 * rbp + 0x12345678], 0x15

; Use rsp as base.
${mnemonic} qword [rsp], 0x12
${mnemonic} qword [rsp + 0x12], 0x13
${mnemonic} qword [rsp + 0x1234], 0x14
${mnemonic} qword [rsp + 0x12345678], 0x15

${mnemonic} byte [rsp + rax], 0x12
${mnemonic} byte [rsp + rbp], 0x13
${mnemonic} byte [rsp + 2*rbp], 0x14
${mnemonic} byte [rsp + 4*rbp], 0x15
${mnemonic} byte [rsp + 8*rbp], 0x16

; use each register as indirect.
${mnemonic} word [rax], 0x12
${mnemonic} word [rcx], 0x13
${mnemonic} word [rdx], 0x14
${mnemonic} word [rbx], 0x15
${mnemonic} word [rsp], 0x16
${mnemonic} word [rbp], 0x17
${mnemonic} word [rsi], 0x18
${mnemonic} word [rdi], 0x19

; use each register as indirect.
; rsp is forbidden as index
${mnemonic} dword [rax + 2*rax], 0x12
${mnemonic} dword [rcx + 2*rcx], 0x13
${mnemonic} dword [rdx + 2*rdx], 0x14
${mnemonic} dword [rbx + 2*rbx], 0x15
${mnemonic} dword [rbp + 2*rbp], 0x16
${mnemonic} dword [rsi + 2*rsi], 0x17
${mnemonic} dword [rdi + 2*rdi], 0x18
