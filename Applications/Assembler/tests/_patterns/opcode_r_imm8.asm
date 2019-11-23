; immediate to each register: 8-bit
${mnemonic} al, -127
${mnemonic} cl, -100
${mnemonic} dl, -23
${mnemonic} bl, -1
${mnemonic} ah, 0
${mnemonic} ch, 1
${mnemonic} dh, 0x12
${mnemonic} bh, 0xff

; immediate to each register: 16-bit
${mnemonic} ax, 0x50
${mnemonic} cx, 0x51
${mnemonic} dx, 0x52
${mnemonic} bx, 0x53
${mnemonic} sp, 0x54
${mnemonic} bp, 0x55
${mnemonic} si, 0x56
${mnemonic} di, 0x57

; immediate to each register: 32-bit
${mnemonic} eax, 0xa0
${mnemonic} ecx, 0xa1
${mnemonic} edx, 0xa2
${mnemonic} ebx, 0xa3
${mnemonic} esp, 0xa4
${mnemonic} ebp, 0xa5
${mnemonic} esi, 0xa6
${mnemonic} edi, 0xa7

; immediate to each register: 64-bit
${mnemonic} rax, 0x88
${mnemonic} rcx, 0x99
${mnemonic} rdx, 0xaa
${mnemonic} rbx, 0xbb
${mnemonic} rsp, 0xcc
${mnemonic} rbp, 0xdd
${mnemonic} rsi, 0xee
${mnemonic} rdi, 0xff
