use64

; [rip + disp32]
${mnemonic} tword [rip + 0x13]
${mnemonic} tword [rip + 0x1235]
${mnemonic} tword [rip + 0x12345679]

; [rip + base]
${mnemonic} tword  [rbx]

; [rip + base + disp8]
${mnemonic} tword [rcx + 0x14]
${mnemonic} tword [rdx + 0x15]

; [rip + base + disp32]
${mnemonic} tword [rbx + 0x1235]
${mnemonic} tword [rbx + 0x12345679]

; [rip + base + index]
${mnemonic} tword [rbx + rcx]

; [rip + base + scale * index]
${mnemonic} tword [rbx + 4 * rcx]

; [rip + base + index + disp8]
${mnemonic} tword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
${mnemonic} tword [rbx + rcx + 0x1235]
${mnemonic} tword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
${mnemonic} tword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
${mnemonic} tword [rbx + 4 * rcx + 0x1235]
${mnemonic} tword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
${mnemonic} tword [4 * rcx]

; [scale * index + disp8]
${mnemonic} tword [4 * rcx + 0x13]

; [scale * index + disp32]
${mnemonic} tword [4 * rcx + 0x1235]
${mnemonic} tword [4 * rcx + 0x12345679]

; Use rbp as base or index.
${mnemonic} tword [rbp]
${mnemonic} tword [rbp + 0x12]
${mnemonic} tword [rbp + 0x1234]
${mnemonic} tword [rbp + 0x12345678]

${mnemonic} tword [4 * rbp]
${mnemonic} tword [4 * rbp + 0x12]
${mnemonic} tword [4 * rbp + 0x1234]
${mnemonic} tword [4 * rbp + 0x12345678]

${mnemonic} tword [rbx + 4 * rbp]
${mnemonic} tword [rbx + 4 * rbp + 0x12]
${mnemonic} tword [rbx + 4 * rbp + 0x1234]
${mnemonic} tword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
${mnemonic} tword [rsp]
${mnemonic} tword [rsp + 0x12]
${mnemonic} tword [rsp + 0x1234]
${mnemonic} tword [rsp + 0x12345678]

${mnemonic} tword [rsp + rax]
${mnemonic} tword [rsp + rbp]
${mnemonic} tword [rsp + 2*rbp]
${mnemonic} tword [rsp + 4*rbp]
${mnemonic} tword [rsp + 8*rbp]

; use each register as indirect.
${mnemonic} tword [rax]
${mnemonic} tword [rcx]
${mnemonic} tword [rdx]
${mnemonic} tword [rbx]
${mnemonic} tword [rsp]
${mnemonic} tword [rbp]
${mnemonic} tword [rsi]
${mnemonic} tword [rdi]

; use each register as indirect.
; rsp is forbidden as index
${mnemonic} tword [rax + 2*rax]
${mnemonic} tword [rcx + 2*rcx]
${mnemonic} tword [rdx + 2*rdx]
${mnemonic} tword [rbx + 2*rbx]
${mnemonic} tword [rbp + 2*rbp]
${mnemonic} tword [rsi + 2*rsi]
${mnemonic} tword [rdi + 2*rdi]
