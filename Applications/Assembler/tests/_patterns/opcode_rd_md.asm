; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
${mnemonic} cx,  word  [rip + 0x13]
${mnemonic} edx, dword [rip + 0x14]
${mnemonic} rsi, qword [rip + 0x15]

${mnemonic} cx,  word  [rip + 0x1235]
${mnemonic} edx, dword [rip + 0x1236]
${mnemonic} rsi, qword [rip + 0x1237]

${mnemonic} cx,  word  [rip + 0x12345679]
${mnemonic} edx, dword [rip + 0x1234567a]
${mnemonic} rsi, qword [rip + 0x1234567b]

; [rip + base]
${mnemonic} cx,  word  [rbx]
${mnemonic} edx, dword [rcx]
${mnemonic} rsi, qword [rdx]

; [rip + base + disp8]
${mnemonic} cx,  word  [rbx + 0x13]
${mnemonic} edx, dword [rcx + 0x14]
${mnemonic} rsi, qword [rdx + 0x15]

; [rip + base + disp32]
${mnemonic} cx,  word  [rbx + 0x1235]
${mnemonic} edx, dword [rcx + 0x1236]
${mnemonic} rsi, qword [rdx + 0x1237]

${mnemonic} cx,  word  [rbx + 0x12345679]
${mnemonic} edx, dword [rcx + 0x1234567a]
${mnemonic} rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
${mnemonic} cx,  word  [rbx + rcx]
${mnemonic} edx, dword [rcx + rsi]
${mnemonic} rsi, qword [rdx + rdi]

; [rip + base + scale * index]
${mnemonic} cx,  word  [rbx + 4 * rcx]
${mnemonic} edx, dword [rcx + 8 * rsi]
${mnemonic} rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
${mnemonic} cx,  word  [rbx + rcx + 0x13]
${mnemonic} edx, dword [rcx + rsi + 0x14]
${mnemonic} rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
${mnemonic} cx,  word  [rbx + rcx + 0x1235]
${mnemonic} edx, dword [rcx + rsi + 0x1236]
${mnemonic} rsi, qword [rdx + rdi + 0x1237]

${mnemonic} cx,  word  [rbx + rcx + 0x12345679]
${mnemonic} edx, dword [rcx + rsi + 0x1234567a]
${mnemonic} rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
${mnemonic} cx,  word  [rbx + 4 * rcx + 0x13]
${mnemonic} edx, dword [rcx + 8 * rsi + 0x14]
${mnemonic} rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
${mnemonic} cx,  word  [rbx + 4 * rcx + 0x1235]
${mnemonic} edx, dword [rcx + 8 * rsi + 0x1236]
${mnemonic} rsi, qword [rdx + 8 * rdi + 0x1237]

${mnemonic} cx,  word  [rbx + 4 * rcx + 0x12345679]
${mnemonic} edx, dword [rcx + 8 * rsi + 0x1234567a]
${mnemonic} rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
${mnemonic} cx,  word  [4 * rcx]
${mnemonic} edx, dword [8 * rsi]
${mnemonic} rsi, qword [8 * rdi]

; [scale * index + disp8]
${mnemonic} cx,  word  [4 * rcx + 0x13]
${mnemonic} edx, dword [8 * rsi + 0x14]
${mnemonic} rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
${mnemonic} cx,  word  [4 * rcx + 0x1235]
${mnemonic} edx, dword [8 * rsi + 0x1236]
${mnemonic} rsi, qword [8 * rdi + 0x1237]

${mnemonic} cx,  word  [4 * rcx + 0x12345679]
${mnemonic} edx, dword [8 * rsi + 0x1234567a]
${mnemonic} rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
${mnemonic} ax, word [rbp]
${mnemonic} ax, word [rbp + 0x12]
${mnemonic} ax, word [rbp + 0x1234]
${mnemonic} ax, word [rbp + 0x12345678]

${mnemonic} eax, dword [4 * rbp]
${mnemonic} eax, dword [4 * rbp + 0x12]
${mnemonic} eax, dword [4 * rbp + 0x1234]
${mnemonic} eax, dword [4 * rbp + 0x12345678]

${mnemonic} rax, qword [rbx + 4 * rbp]
${mnemonic} rax, qword [rbx + 4 * rbp + 0x12]
${mnemonic} rax, qword [rbx + 4 * rbp + 0x1234]
${mnemonic} rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
${mnemonic} ax, word [rsp]
${mnemonic} ax, word [rsp + 0x12]
${mnemonic} ax, word [rsp + 0x1234]
${mnemonic} ax, word [rsp + 0x12345678]

${mnemonic} eax, dword [rsp + rax]
${mnemonic} eax, dword [rsp + rbp]
${mnemonic} eax, dword [rsp + 2*rbp]
${mnemonic} eax, dword [rsp + 4*rbp]
${mnemonic} eax, dword [rsp + 8*rbp]

; use each register as indirect.
${mnemonic} ax, word [rax]
${mnemonic} ax, word [rcx]
${mnemonic} ax, word [rdx]
${mnemonic} ax, word [rbx]
${mnemonic} ax, word [rsp]
${mnemonic} ax, word [rbp]
${mnemonic} ax, word [rsi]
${mnemonic} ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
${mnemonic} eax, dword [rax + 2*rax]
${mnemonic} eax, dword [rcx + 2*rcx]
${mnemonic} eax, dword [rdx + 2*rdx]
${mnemonic} eax, dword [rbx + 2*rbx]
${mnemonic} eax, dword [rbp + 2*rbp]
${mnemonic} eax, dword [rsi + 2*rsi]
${mnemonic} eax, dword [rdi + 2*rdi]
