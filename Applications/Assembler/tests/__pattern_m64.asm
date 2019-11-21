use64

; [rip + disp32]
${mnemonic} qword [rip + 0x13]
${mnemonic} qword [rip + 0x1235]
${mnemonic} qword [rip + 0x12345679]

; [rip + base]
${mnemonic} qword  [rbx]

; [rip + base + disp8]
${mnemonic} qword [rcx + 0x14]
${mnemonic} qword [rdx + 0x15]

; [rip + base + disp32]
${mnemonic} qword [rbx + 0x1235]
${mnemonic} qword [rbx + 0x12345679]

; [rip + base + index]
${mnemonic} qword [rbx + rcx]

; [rip + base + scale * index]
${mnemonic} qword [rbx + 4 * rcx]

; [rip + base + index + disp8]
${mnemonic} qword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
${mnemonic} qword [rbx + rcx + 0x1235]
${mnemonic} qword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
${mnemonic} qword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
${mnemonic} qword [rbx + 4 * rcx + 0x1235]
${mnemonic} qword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
${mnemonic} qword [4 * rcx]

; [scale * index + disp8]
${mnemonic} qword [4 * rcx + 0x13]

; [scale * index + disp32]
${mnemonic} qword [4 * rcx + 0x1235]
${mnemonic} qword [4 * rcx + 0x12345679]

; Use rbp as base or index.
${mnemonic} qword [rbp]
${mnemonic} qword [rbp + 0x12]
${mnemonic} qword [rbp + 0x1234]
${mnemonic} qword [rbp + 0x12345678]

${mnemonic} qword [4 * rbp]
${mnemonic} qword [4 * rbp + 0x12]
${mnemonic} qword [4 * rbp + 0x1234]
${mnemonic} qword [4 * rbp + 0x12345678]

${mnemonic} qword [rbx + 4 * rbp]
${mnemonic} qword [rbx + 4 * rbp + 0x12]
${mnemonic} qword [rbx + 4 * rbp + 0x1234]
${mnemonic} qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
${mnemonic} qword [rsp]
${mnemonic} qword [rsp + 0x12]
${mnemonic} qword [rsp + 0x1234]
${mnemonic} qword [rsp + 0x12345678]

${mnemonic} qword [rsp + rax]
${mnemonic} qword [rsp + rbp]
${mnemonic} qword [rsp + 2*rbp]
${mnemonic} qword [rsp + 4*rbp]
${mnemonic} qword [rsp + 8*rbp]

; use each register as indirect.
${mnemonic} qword [rax]
${mnemonic} qword [rcx]
${mnemonic} qword [rdx]
${mnemonic} qword [rbx]
${mnemonic} qword [rsp]
${mnemonic} qword [rbp]
${mnemonic} qword [rsi]
${mnemonic} qword [rdi]

; use each register as indirect.
; rsp is forbidden as index
${mnemonic} qword [rax + 2*rax]
${mnemonic} qword [rcx + 2*rcx]
${mnemonic} qword [rdx + 2*rdx]
${mnemonic} qword [rbx + 2*rbx]
${mnemonic} qword [rbp + 2*rbp]
${mnemonic} qword [rsi + 2*rsi]
${mnemonic} qword [rdi + 2*rdi]
