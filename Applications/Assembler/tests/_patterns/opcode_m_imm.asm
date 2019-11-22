use64

; [rip + disp32]
${mnemonic} byte  [rip + 0x12], 0x13
${mnemonic} word  [rip + 0x13], 0x1234
${mnemonic} dword [rip + 0x14], 0x12345678
${mnemonic} qword [rip + 0x15], 0x12345679

${mnemonic} byte  [rip + 0x1234], 0x13
${mnemonic} word  [rip + 0x1235], 0x1234
${mnemonic} dword [rip + 0x1236], 0x12345678
${mnemonic} qword [rip + 0x1237], 0x12345679

${mnemonic} byte  [rip + 0x12345678], 0x13
${mnemonic} word  [rip + 0x12345679], 0x1234
${mnemonic} dword [rip + 0x1234567a], 0x12345678
${mnemonic} qword [rip + 0x1234567b], 0x12345679

; [rip + base]
${mnemonic} byte  [rax], 0x13
${mnemonic} word  [rbx], 0x1234
${mnemonic} dword [rcx], 0x12345678
${mnemonic} qword [rdx], 0x12345679

; [rip + base + disp8]
${mnemonic} byte  [rax + 0x12], 0x13
${mnemonic} word  [rbx + 0x13], 0x1234
${mnemonic} dword [rcx + 0x14], 0x12345678
${mnemonic} qword [rdx + 0x15], 0x12345679

; [rip + base + disp32]
${mnemonic} byte  [rax + 0x1234], 0x13
${mnemonic} word  [rbx + 0x1235], 0x1234
${mnemonic} dword [rcx + 0x1236], 0x12345678
${mnemonic} qword [rdx + 0x1237], 0x12345679

${mnemonic} byte  [rax + 0x12345678], 0x13
${mnemonic} word  [rbx + 0x12345679], 0x1234
${mnemonic} dword [rcx + 0x1234567a], 0x12345678
${mnemonic} qword [rdx + 0x1234567b], 0x12345679

; [rip + base + index]
${mnemonic} byte  [rax + rbx], 0x13
${mnemonic} word  [rbx + rcx], 0x1234
${mnemonic} dword [rcx + rsi], 0x12345678
${mnemonic} qword [rdx + rdi], 0x12345679

; [rip + base + scale * index]
${mnemonic} byte  [rax + 2 * rbx], 0x13
${mnemonic} word  [rbx + 4 * rcx], 0x1234
${mnemonic} dword [rcx + 8 * rsi], 0x12345678
${mnemonic} qword [rdx + 8 * rdi], 0x12345679

; [rip + base + index + disp8]
${mnemonic} byte  [rax + rbx + 0x12], 0x13
${mnemonic} word  [rbx + rcx + 0x13], 0x1234
${mnemonic} dword [rcx + rsi + 0x14], 0x12345678
${mnemonic} qword [rdx + rdi + 0x15], 0x12345679

; [rip + base + index + disp32]
${mnemonic} byte  [rax + rbx + 0x1234], 0x13
${mnemonic} word  [rbx + rcx + 0x1235], 0x1234
${mnemonic} dword [rcx + rsi + 0x1236], 0x12345678
${mnemonic} qword [rdx + rdi + 0x1237], 0x12345679

${mnemonic} byte  [rax + rbx + 0x12345678], 0x13
${mnemonic} word  [rbx + rcx + 0x12345679], 0x1234
${mnemonic} dword [rcx + rsi + 0x1234567a], 0x12345678
${mnemonic} qword [rdx + rdi + 0x1234567b], 0x12345679

; [rip + base + scale * index + disp8]
${mnemonic} byte  [rax + 2 * rbx + 0x12], 0x13
${mnemonic} word  [rbx + 4 * rcx + 0x13], 0x1234
${mnemonic} dword [rcx + 8 * rsi + 0x14], 0x12345678
${mnemonic} qword [rdx + 8 * rdi + 0x15], 0x12345679

; [rip + base + scale * index + disp32]
${mnemonic} byte  [rax + 2 * rbx + 0x1234], 0x13
${mnemonic} word  [rbx + 4 * rcx + 0x1235], 0x1234
${mnemonic} dword [rcx + 8 * rsi + 0x1236], 0x12345678
${mnemonic} qword [rdx + 8 * rdi + 0x1237], 0x12345679

${mnemonic} byte  [rax + 2 * rbx + 0x12345678], 0x13
${mnemonic} word  [rbx + 4 * rcx + 0x12345679], 0x1234
${mnemonic} dword [rcx + 8 * rsi + 0x1234567a], 0x12345678
${mnemonic} qword [rdx + 8 * rdi + 0x1234567b], 0x12345679

; [scale * index]
${mnemonic} byte  [2 * rbx], 0x13
${mnemonic} word  [4 * rcx], 0x1234
${mnemonic} dword [8 * rsi], 0x12345678
${mnemonic} qword [8 * rdi], 0x12345679

; [scale * index + disp8]
${mnemonic} byte  [2 * rbx + 0x12], 0x13
${mnemonic} word  [4 * rcx + 0x13], 0x1234
${mnemonic} dword [8 * rsi + 0x14], 0x12345678
${mnemonic} qword [8 * rdi + 0x15], 0x12345679

; [scale * index + disp32]
${mnemonic} byte  [2 * rbx + 0x1234], 0x13
${mnemonic} word  [4 * rcx + 0x1235], 0x1234
${mnemonic} dword [8 * rsi + 0x1236], 0x12345678
${mnemonic} qword [8 * rdi + 0x1237], 0x12345679

${mnemonic} byte  [2 * rbx + 0x12345678], 0x13
${mnemonic} word  [4 * rcx + 0x12345679], 0x1234
${mnemonic} dword [8 * rsi + 0x1234567a], 0x12345678
${mnemonic} qword [8 * rdi + 0x1234567b], 0x12345679

; Use rbp as base or index.
${mnemonic} byte [rbp], 0x12
${mnemonic} byte [rbp + 0x12], 0x13
${mnemonic} byte [rbp + 0x1234], 0x14
${mnemonic} byte [rbp + 0x12345678], 0x15

${mnemonic} byte [4 * rbp], 0x12
${mnemonic} byte [4 * rbp + 0x12], 0x13
${mnemonic} byte [4 * rbp + 0x1234], 0x14
${mnemonic} byte [4 * rbp + 0x12345678], 0x15

${mnemonic} byte [rbx + 4 * rbp], 0x12
${mnemonic} byte [rbx + 4 * rbp + 0x12], 0x13
${mnemonic} byte [rbx + 4 * rbp + 0x1234], 0x14
${mnemonic} byte [rbx + 4 * rbp + 0x12345678], 0x15

; Use rsp as base.
${mnemonic} byte [rsp], 0x12
${mnemonic} byte [rsp + 0x12], 0x13
${mnemonic} byte [rsp + 0x1234], 0x14
${mnemonic} byte [rsp + 0x12345678], 0x15

${mnemonic} byte [rsp + rax], 0x12
${mnemonic} byte [rsp + rbp], 0x13
${mnemonic} byte [rsp + 2*rbp], 0x14
${mnemonic} byte [rsp + 4*rbp], 0x15
${mnemonic} byte [rsp + 8*rbp], 0x16

; use each register as indirect.
${mnemonic} byte [rax], 0x12
${mnemonic} byte [rcx], 0x13
${mnemonic} byte [rdx], 0x14
${mnemonic} byte [rbx], 0x15
${mnemonic} byte [rsp], 0x16
${mnemonic} byte [rbp], 0x17
${mnemonic} byte [rsi], 0x18
${mnemonic} byte [rdi], 0x19

; use each register as indirect.
; rsp is forbidden as index
${mnemonic} byte [rax + 2*rax], 0x12
${mnemonic} byte [rcx + 2*rcx], 0x13
${mnemonic} byte [rdx + 2*rdx], 0x14
${mnemonic} byte [rbx + 2*rbx], 0x15
${mnemonic} byte [rbp + 2*rbp], 0x16
${mnemonic} byte [rsi + 2*rsi], 0x17
${mnemonic} byte [rdi + 2*rdi], 0x18

