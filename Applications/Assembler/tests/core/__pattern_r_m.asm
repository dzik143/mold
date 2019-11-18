use64

; [rip + disp32]
${mnemonic} bl,  byte  [rip + 0x12]
${mnemonic} cx,  word  [rip + 0x13]
${mnemonic} edx, dword [rip + 0x14]
${mnemonic} rsi, qword [rip + 0x15]

${mnemonic} bl,  byte  [rip + 0x1234]
${mnemonic} cx,  word  [rip + 0x1235]
${mnemonic} edx, dword [rip + 0x1236]
${mnemonic} rsi, qword [rip + 0x1237]

${mnemonic} bl,  byte  [rip + 0x12345678]
${mnemonic} cx,  word  [rip + 0x12345679]
${mnemonic} edx, dword [rip + 0x1234567a]
${mnemonic} rsi, qword [rip + 0x1234567b]

; [rip + base]
${mnemonic} bl,  byte  [rax]
${mnemonic} cx,  word  [rbx]
${mnemonic} edx, dword [rcx]
${mnemonic} rsi, qword [rdx]

; [rip + base + disp8]
${mnemonic} bl,  byte  [rax + 0x12]
${mnemonic} cx,  word  [rbx + 0x13]
${mnemonic} edx, dword [rcx + 0x14]
${mnemonic} rsi, qword [rdx + 0x15]

; [rip + base + disp32]
${mnemonic} bl,  byte  [rax + 0x1234]
${mnemonic} cx,  word  [rbx + 0x1235]
${mnemonic} edx, dword [rcx + 0x1236]
${mnemonic} rsi, qword [rdx + 0x1237]

${mnemonic} bl,  byte  [rax + 0x12345678]
${mnemonic} cx,  word  [rbx + 0x12345679]
${mnemonic} edx, dword [rcx + 0x1234567a]
${mnemonic} rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
${mnemonic} bl,  byte  [rax + rbx]
${mnemonic} cx,  word  [rbx + rcx]
${mnemonic} edx, dword [rcx + rsi]
${mnemonic} rsi, qword [rdx + rdi]

; [rip + base + scale * index]
${mnemonic} bl,  byte  [rax + 2 * rbx]
${mnemonic} cx,  word  [rbx + 4 * rcx]
${mnemonic} edx, dword [rcx + 8 * rsi]
${mnemonic} rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
${mnemonic} bl,  byte  [rax + rbx + 0x12]
${mnemonic} cx,  word  [rbx + rcx + 0x13]
${mnemonic} edx, dword [rcx + rsi + 0x14]
${mnemonic} rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
${mnemonic} bl,  byte  [rax + rbx + 0x1234]
${mnemonic} cx,  word  [rbx + rcx + 0x1235]
${mnemonic} edx, dword [rcx + rsi + 0x1236]
${mnemonic} rsi, qword [rdx + rdi + 0x1237]

${mnemonic} bl,  byte  [rax + rbx + 0x12345678]
${mnemonic} cx,  word  [rbx + rcx + 0x12345679]
${mnemonic} edx, dword [rcx + rsi + 0x1234567a]
${mnemonic} rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
${mnemonic} bl,  byte  [rax + 2 * rbx + 0x12]
${mnemonic} cx,  word  [rbx + 4 * rcx + 0x13]
${mnemonic} edx, dword [rcx + 8 * rsi + 0x14]
${mnemonic} rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
${mnemonic} bl,  byte  [rax + 2 * rbx + 0x1234]
${mnemonic} cx,  word  [rbx + 4 * rcx + 0x1235]
${mnemonic} edx, dword [rcx + 8 * rsi + 0x1236]
${mnemonic} rsi, qword [rdx + 8 * rdi + 0x1237]

${mnemonic} bl,  byte  [rax + 2 * rbx + 0x12345678]
${mnemonic} cx,  word  [rbx + 4 * rcx + 0x12345679]
${mnemonic} edx, dword [rcx + 8 * rsi + 0x1234567a]
${mnemonic} rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
${mnemonic} bl,  byte  [2 * rbx]
${mnemonic} cx,  word  [4 * rcx]
${mnemonic} edx, dword [8 * rsi]
${mnemonic} rsi, qword [8 * rdi]

; [scale * index + disp8]
${mnemonic} bl,  byte  [2 * rbx + 0x12]
${mnemonic} cx,  word  [4 * rcx + 0x13]
${mnemonic} edx, dword [8 * rsi + 0x14]
${mnemonic} rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
${mnemonic} bl,  byte  [2 * rbx + 0x1234]
${mnemonic} cx,  word  [4 * rcx + 0x1235]
${mnemonic} edx, dword [8 * rsi + 0x1236]
${mnemonic} rsi, qword [8 * rdi + 0x1237]

${mnemonic} bl,  byte  [2 * rbx + 0x12345678]
${mnemonic} cx,  word  [4 * rcx + 0x12345679]
${mnemonic} edx, dword [8 * rsi + 0x1234567a]
${mnemonic} rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
${mnemonic} al, byte [rbp]
${mnemonic} al, byte [rbp + 0x12]
${mnemonic} al, byte [rbp + 0x1234]
${mnemonic} al, byte [rbp + 0x12345678]

${mnemonic} al, byte [4 * rbp]
${mnemonic} al, byte [4 * rbp + 0x12]
${mnemonic} al, byte [4 * rbp + 0x1234]
${mnemonic} al, byte [4 * rbp + 0x12345678]

${mnemonic} al, byte [rbx + 4 * rbp]
${mnemonic} al, byte [rbx + 4 * rbp + 0x12]
${mnemonic} al, byte [rbx + 4 * rbp + 0x1234]
${mnemonic} al, byte [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
${mnemonic} al, byte [rsp]
${mnemonic} al, byte [rsp + 0x12]
${mnemonic} al, byte [rsp + 0x1234]
${mnemonic} al, byte [rsp + 0x12345678]

${mnemonic} al, byte [rsp + rax]
${mnemonic} al, byte [rsp + rbp]
${mnemonic} al, byte [rsp + 2*rbp]
${mnemonic} al, byte [rsp + 4*rbp]
${mnemonic} al, byte [rsp + 8*rbp]

; use each register as indirect.
${mnemonic} al, byte [rax]
${mnemonic} al, byte [rcx]
${mnemonic} al, byte [rdx]
${mnemonic} al, byte [rbx]
${mnemonic} al, byte [rsp]
${mnemonic} al, byte [rbp]
${mnemonic} al, byte [rsi]
${mnemonic} al, byte [rdi]

; use each register as indirect.
; rsp is forbidden as index
${mnemonic} al, byte [rax + 2*rax]
${mnemonic} al, byte [rcx + 2*rcx]
${mnemonic} al, byte [rdx + 2*rdx]
${mnemonic} al, byte [rbx + 2*rbx]
${mnemonic} al, byte [rbp + 2*rbp]
${mnemonic} al, byte [rsi + 2*rsi]
${mnemonic} al, byte [rdi + 2*rdi]