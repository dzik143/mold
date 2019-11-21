use64

; [rip + disp32]
${mnemonic} dword [rip + 0x13]
${mnemonic} dword [rip + 0x1235]
${mnemonic} dword [rip + 0x12345679]

; [rip + base]
${mnemonic} dword  [rbx]

; [rip + base + disp8]
${mnemonic} dword [rcx + 0x14]
${mnemonic} dword [rdx + 0x15]

; [rip + base + disp32]
${mnemonic} dword [rbx + 0x1235]
${mnemonic} dword [rbx + 0x12345679]

; [rip + base + index]
${mnemonic} dword [rbx + rcx]

; [rip + base + scale * index]
${mnemonic} dword [rbx + 4 * rcx]

; [rip + base + index + disp8]
${mnemonic} dword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
${mnemonic} dword [rbx + rcx + 0x1235]
${mnemonic} dword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
${mnemonic} dword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
${mnemonic} dword [rbx + 4 * rcx + 0x1235]
${mnemonic} dword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
${mnemonic} dword [4 * rcx]

; [scale * index + disp8]
${mnemonic} dword [4 * rcx + 0x13]

; [scale * index + disp32]
${mnemonic} dword [4 * rcx + 0x1235]
${mnemonic} dword [4 * rcx + 0x12345679]

; Use rbp as base or index.
${mnemonic} dword [rbp]
${mnemonic} dword [rbp + 0x12]
${mnemonic} dword [rbp + 0x1234]
${mnemonic} dword [rbp + 0x12345678]

${mnemonic} dword [4 * rbp]
${mnemonic} dword [4 * rbp + 0x12]
${mnemonic} dword [4 * rbp + 0x1234]
${mnemonic} dword [4 * rbp + 0x12345678]

${mnemonic} dword [rbx + 4 * rbp]
${mnemonic} dword [rbx + 4 * rbp + 0x12]
${mnemonic} dword [rbx + 4 * rbp + 0x1234]
${mnemonic} dword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
${mnemonic} dword [rsp]
${mnemonic} dword [rsp + 0x12]
${mnemonic} dword [rsp + 0x1234]
${mnemonic} dword [rsp + 0x12345678]

${mnemonic} dword [rsp + rax]
${mnemonic} dword [rsp + rbp]
${mnemonic} dword [rsp + 2*rbp]
${mnemonic} dword [rsp + 4*rbp]
${mnemonic} dword [rsp + 8*rbp]

; use each register as indirect.
${mnemonic} dword [rax]
${mnemonic} dword [rcx]
${mnemonic} dword [rdx]
${mnemonic} dword [rbx]
${mnemonic} dword [rsp]
${mnemonic} dword [rbp]
${mnemonic} dword [rsi]
${mnemonic} dword [rdi]

; use each register as indirect.
; rsp is forbidden as index
${mnemonic} dword [rax + 2*rax]
${mnemonic} dword [rcx + 2*rcx]
${mnemonic} dword [rdx + 2*rdx]
${mnemonic} dword [rbx + 2*rbx]
${mnemonic} dword [rbp + 2*rbp]
${mnemonic} dword [rsi + 2*rsi]
${mnemonic} dword [rdi + 2*rdi]
