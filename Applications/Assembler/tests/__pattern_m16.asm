use64

; [rip + disp32]
${mnemonic} word [rip + 0x13]
${mnemonic} word [rip + 0x1235]
${mnemonic} word [rip + 0x12345679]

; [rip + base]
${mnemonic} word  [rbx]

; [rip + base + disp8]
${mnemonic} word [rcx + 0x14]
${mnemonic} word [rdx + 0x15]

; [rip + base + disp32]
${mnemonic} word [rbx + 0x1235]
${mnemonic} word [rbx + 0x12345679]

; [rip + base + index]
${mnemonic} word [rbx + rcx]

; [rip + base + scale * index]
${mnemonic} word [rbx + 4 * rcx]

; [rip + base + index + disp8]
${mnemonic} word [rbx + rcx + 0x13]

; [rip + base + index + disp32]
${mnemonic} word [rbx + rcx + 0x1235]
${mnemonic} word [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
${mnemonic} word [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
${mnemonic} word [rbx + 4 * rcx + 0x1235]
${mnemonic} word [rbx + 8 * rcx + 0x12345679]

; [scale * index]
${mnemonic} word [4 * rcx]

; [scale * index + disp8]
${mnemonic} word [4 * rcx + 0x13]

; [scale * index + disp32]
${mnemonic} word [4 * rcx + 0x1235]
${mnemonic} word [4 * rcx + 0x12345679]

; Use rbp as base or index.
${mnemonic} word [rbp]
${mnemonic} word [rbp + 0x12]
${mnemonic} word [rbp + 0x1234]
${mnemonic} word [rbp + 0x12345678]

${mnemonic} word [4 * rbp]
${mnemonic} word [4 * rbp + 0x12]
${mnemonic} word [4 * rbp + 0x1234]
${mnemonic} word [4 * rbp + 0x12345678]

${mnemonic} word [rbx + 4 * rbp]
${mnemonic} word [rbx + 4 * rbp + 0x12]
${mnemonic} word [rbx + 4 * rbp + 0x1234]
${mnemonic} word [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
${mnemonic} word [rsp]
${mnemonic} word [rsp + 0x12]
${mnemonic} word [rsp + 0x1234]
${mnemonic} word [rsp + 0x12345678]

${mnemonic} word [rsp + rax]
${mnemonic} word [rsp + rbp]
${mnemonic} word [rsp + 2*rbp]
${mnemonic} word [rsp + 4*rbp]
${mnemonic} word [rsp + 8*rbp]

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
${mnemonic} word [rax + 2*rax]
${mnemonic} word [rcx + 2*rcx]
${mnemonic} word [rdx + 2*rdx]
${mnemonic} word [rbx + 2*rbx]
${mnemonic} word [rbp + 2*rbp]
${mnemonic} word [rsi + 2*rsi]
${mnemonic} word [rdi + 2*rdi]
