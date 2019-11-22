use64

; [rip + disp32]
${mnemonic} byte  [rip + 0x12]
${mnemonic} word  [rip + 0x13]
${mnemonic} dword [rip + 0x14]
${mnemonic} qword [rip + 0x15]

${mnemonic} byte  [rip + 0x1234]
${mnemonic} word  [rip + 0x1235]
${mnemonic} dword [rip + 0x1236]
${mnemonic} qword [rip + 0x1237]

${mnemonic} byte  [rip + 0x12345678]
${mnemonic} word  [rip + 0x12345679]
${mnemonic} dword [rip + 0x1234567a]
${mnemonic} qword [rip + 0x1234567b]

; [rip + base]
${mnemonic} byte  [rax]
${mnemonic} word  [rbx]
${mnemonic} dword [rcx]
${mnemonic} qword [rdx]

; [rip + base + disp8]
${mnemonic} byte  [rax + 0x12]
${mnemonic} word  [rbx + 0x13]
${mnemonic} dword [rcx + 0x14]
${mnemonic} qword [rdx + 0x15]

; [rip + base + disp32]
${mnemonic} byte  [rax + 0x1234]
${mnemonic} word  [rbx + 0x1235]
${mnemonic} dword [rcx + 0x1236]
${mnemonic} qword [rdx + 0x1237]

${mnemonic} byte  [rax + 0x12345678]
${mnemonic} word  [rbx + 0x12345679]
${mnemonic} dword [rcx + 0x1234567a]
${mnemonic} qword [rdx + 0x1234567b]

; [rip + base + index]
${mnemonic} byte  [rax + rbx]
${mnemonic} word  [rbx + rcx]
${mnemonic} dword [rcx + rsi]
${mnemonic} qword [rdx + rdi]

; [rip + base + scale * index]
${mnemonic} byte  [rax + 2 * rbx]
${mnemonic} word  [rbx + 4 * rcx]
${mnemonic} dword [rcx + 8 * rsi]
${mnemonic} qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
${mnemonic} byte  [rax + rbx + 0x12]
${mnemonic} word  [rbx + rcx + 0x13]
${mnemonic} dword [rcx + rsi + 0x14]
${mnemonic} qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
${mnemonic} byte  [rax + rbx + 0x1234]
${mnemonic} word  [rbx + rcx + 0x1235]
${mnemonic} dword [rcx + rsi + 0x1236]
${mnemonic} qword [rdx + rdi + 0x1237]

${mnemonic} byte  [rax + rbx + 0x12345678]
${mnemonic} word  [rbx + rcx + 0x12345679]
${mnemonic} dword [rcx + rsi + 0x1234567a]
${mnemonic} qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
${mnemonic} byte  [rax + 2 * rbx + 0x12]
${mnemonic} word  [rbx + 4 * rcx + 0x13]
${mnemonic} dword [rcx + 8 * rsi + 0x14]
${mnemonic} qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
${mnemonic} byte  [rax + 2 * rbx + 0x1234]
${mnemonic} word  [rbx + 4 * rcx + 0x1235]
${mnemonic} dword [rcx + 8 * rsi + 0x1236]
${mnemonic} qword [rdx + 8 * rdi + 0x1237]

${mnemonic} byte  [rax + 2 * rbx + 0x12345678]
${mnemonic} word  [rbx + 4 * rcx + 0x12345679]
${mnemonic} dword [rcx + 8 * rsi + 0x1234567a]
${mnemonic} qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
${mnemonic} byte  [2 * rbx]
${mnemonic} word  [4 * rcx]
${mnemonic} dword [8 * rsi]
${mnemonic} qword [8 * rdi]

; [scale * index + disp8]
${mnemonic} byte  [2 * rbx + 0x12]
${mnemonic} word  [4 * rcx + 0x13]
${mnemonic} dword [8 * rsi + 0x14]
${mnemonic} qword [8 * rdi + 0x15]

; [scale * index + disp32]
${mnemonic} byte  [2 * rbx + 0x1234]
${mnemonic} word  [4 * rcx + 0x1235]
${mnemonic} dword [8 * rsi + 0x1236]
${mnemonic} qword [8 * rdi + 0x1237]

${mnemonic} byte  [2 * rbx + 0x12345678]
${mnemonic} word  [4 * rcx + 0x12345679]
${mnemonic} dword [8 * rsi + 0x1234567a]
${mnemonic} qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
${mnemonic} byte [rbp]
${mnemonic} byte [rbp + 0x12]
${mnemonic} byte [rbp + 0x1234]
${mnemonic} byte [rbp + 0x12345678]

${mnemonic} byte [4 * rbp]
${mnemonic} byte [4 * rbp + 0x12]
${mnemonic} byte [4 * rbp + 0x1234]
${mnemonic} byte [4 * rbp + 0x12345678]

${mnemonic} byte [rbx + 4 * rbp]
${mnemonic} byte [rbx + 4 * rbp + 0x12]
${mnemonic} byte [rbx + 4 * rbp + 0x1234]
${mnemonic} byte [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
${mnemonic} byte [rsp]
${mnemonic} byte [rsp + 0x12]
${mnemonic} byte [rsp + 0x1234]
${mnemonic} byte [rsp + 0x12345678]

${mnemonic} byte [rsp + rax]
${mnemonic} byte [rsp + rbp]
${mnemonic} byte [rsp + 2*rbp]
${mnemonic} byte [rsp + 4*rbp]
${mnemonic} byte [rsp + 8*rbp]

; use each register as indirect.
${mnemonic} byte [rax]
${mnemonic} byte [rcx]
${mnemonic} byte [rdx]
${mnemonic} byte [rbx]
${mnemonic} byte [rsp]
${mnemonic} byte [rbp]
${mnemonic} byte [rsi]
${mnemonic} byte [rdi]

; use each register as indirect.
; rsp is forbidden as index
${mnemonic} byte [rax + 2*rax]
${mnemonic} byte [rcx + 2*rcx]
${mnemonic} byte [rdx + 2*rdx]
${mnemonic} byte [rbx + 2*rbx]
${mnemonic} byte [rbp + 2*rbp]
${mnemonic} byte [rsi + 2*rsi]
${mnemonic} byte [rdi + 2*rdi]
