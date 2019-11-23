use64
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
${mnemonic} word  [rip + 0x13]
${mnemonic} dword [rip + 0x14]
${mnemonic} qword [rip + 0x15]

${mnemonic} word  [rip + 0x1235]
${mnemonic} dword [rip + 0x1236]
${mnemonic} qword [rip + 0x1237]

${mnemonic} word  [rip + 0x12345679]
${mnemonic} dword [rip + 0x1234567a]
${mnemonic} qword [rip + 0x1234567b]

; [rip + base]
${mnemonic} word  [rbx]
${mnemonic} dword [rcx]
${mnemonic} qword [rdx]

; [rip + base + disp8]
${mnemonic} word  [rbx + 0x13]
${mnemonic} dword [rcx + 0x14]
${mnemonic} qword [rdx + 0x15]

; [rip + base + disp32]
${mnemonic} word  [rbx + 0x1235]
${mnemonic} dword [rcx + 0x1236]
${mnemonic} qword [rdx + 0x1237]

${mnemonic} word  [rbx + 0x12345679]
${mnemonic} dword [rcx + 0x1234567a]
${mnemonic} qword [rdx + 0x1234567b]

; [rip + base + index]
${mnemonic} word  [rbx + rcx]
${mnemonic} dword [rcx + rsi]
${mnemonic} qword [rdx + rdi]

; [rip + base + scale * index]
${mnemonic} word  [rbx + 4 * rcx]
${mnemonic} dword [rcx + 8 * rsi]
${mnemonic} qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
${mnemonic} word  [rbx + rcx + 0x13]
${mnemonic} dword [rcx + rsi + 0x14]
${mnemonic} qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
${mnemonic} word  [rbx + rcx + 0x1235]
${mnemonic} dword [rcx + rsi + 0x1236]
${mnemonic} qword [rdx + rdi + 0x1237]

${mnemonic} word  [rbx + rcx + 0x12345679]
${mnemonic} dword [rcx + rsi + 0x1234567a]
${mnemonic} qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
${mnemonic} word  [rbx + 4 * rcx + 0x13]
${mnemonic} dword [rcx + 8 * rsi + 0x14]
${mnemonic} qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
${mnemonic} word  [rbx + 4 * rcx + 0x1235]
${mnemonic} dword [rcx + 8 * rsi + 0x1236]
${mnemonic} qword [rdx + 8 * rdi + 0x1237]

${mnemonic} word  [rbx + 4 * rcx + 0x12345679]
${mnemonic} dword [rcx + 8 * rsi + 0x1234567a]
${mnemonic} qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
${mnemonic} word  [4 * rcx]
${mnemonic} dword [8 * rsi]
${mnemonic} qword [8 * rdi]

; [scale * index + disp8]
${mnemonic} word  [4 * rcx + 0x13]
${mnemonic} dword [8 * rsi + 0x14]
${mnemonic} qword [8 * rdi + 0x15]

; [scale * index + disp32]
${mnemonic} word  [4 * rcx + 0x1235]
${mnemonic} dword [8 * rsi + 0x1236]
${mnemonic} qword [8 * rdi + 0x1237]

${mnemonic} word  [4 * rcx + 0x12345679]
${mnemonic} dword [8 * rsi + 0x1234567a]
${mnemonic} qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
${mnemonic} word [rbp]
${mnemonic} word [rbp + 0x12]
${mnemonic} word [rbp + 0x1234]
${mnemonic} word [rbp + 0x12345678]

${mnemonic} dword [4 * rbp]
${mnemonic} dword [4 * rbp + 0x12]
${mnemonic} dword [4 * rbp + 0x1234]
${mnemonic} dword [4 * rbp + 0x12345678]

${mnemonic} qword [rbx + 4 * rbp]
${mnemonic} qword [rbx + 4 * rbp + 0x12]
${mnemonic} qword [rbx + 4 * rbp + 0x1234]
${mnemonic} qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
${mnemonic} word [rsp]
${mnemonic} word [rsp + 0x12]
${mnemonic} word [rsp + 0x1234]
${mnemonic} word [rsp + 0x12345678]

${mnemonic} dword [rsp + rax]
${mnemonic} dword [rsp + rbp]
${mnemonic} dword [rsp + 2*rbp]
${mnemonic} dword [rsp + 4*rbp]
${mnemonic} dword [rsp + 8*rbp]

; use each register as indirect.
${mnemonic} word [rax]
${mnemonic} word [rcx]
${mnemonic} word [rdx]
${mnemonic} word [rbx]
${mnemonic} word [rsp]
${mnemonic} word [rbp]
${mnemonic} word [rsi]
${mnemonic} word [rdi]

; use each register as indirect.
; rsp is forbidden as index
${mnemonic} dword [rax + 2*rax]
${mnemonic} dword [rcx + 2*rcx]
${mnemonic} dword [rdx + 2*rdx]
${mnemonic} dword [rbx + 2*rbx]
${mnemonic} dword [rbp + 2*rbp]
${mnemonic} dword [rsi + 2*rsi]
${mnemonic} dword [rdi + 2*rdi]
