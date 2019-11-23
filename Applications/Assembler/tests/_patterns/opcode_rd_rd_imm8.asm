; r,r without 8-bit combinations:
; r16, r16, imm8
; r32, r32, imm8
; r64, r64, imm8

; 16-bit registers
${mnemonic} ax, ax, 0
${mnemonic} ax, cx, 1
${mnemonic} ax, dx, 2
${mnemonic} ax, bx, 3
${mnemonic} ax, sp, 4
${mnemonic} ax, bp, 5
${mnemonic} ax, si, 6
${mnemonic} ax, di, 7

${mnemonic} ax, ax, 0x12
${mnemonic} cx, ax, 0x13
${mnemonic} dx, ax, 0x14
${mnemonic} bx, ax, 0x15
${mnemonic} sp, ax, 0x16
${mnemonic} bp, ax, 0x17
${mnemonic} si, ax, 0x18
${mnemonic} di, ax, 0x19

${mnemonic} ax, di, 100
${mnemonic} cx, si, 101
${mnemonic} dx, bp, 102
${mnemonic} bx, sp, 103
${mnemonic} sp, bx, 104
${mnemonic} bp, dx, 105
${mnemonic} si, cx, 106
${mnemonic} di, ax, 107

; 32-bit registers
${mnemonic} eax, eax, 0x88
${mnemonic} eax, ecx, 0x99
${mnemonic} eax, edx, 0xaa
${mnemonic} eax, ebx, 0xbb
${mnemonic} eax, esp, 0xcc
${mnemonic} eax, ebp, 0xdd
${mnemonic} eax, esi, 0xee
${mnemonic} eax, edi, 0xff

${mnemonic} eax, eax, 0xf0
${mnemonic} ecx, eax, 0xe0
${mnemonic} edx, eax, 0xd0
${mnemonic} ebx, eax, 0xc0
${mnemonic} esp, eax, 0xb0 
${mnemonic} ebp, eax, 0xa0
${mnemonic} esi, eax, 0x90
${mnemonic} edi, eax, 0x80

${mnemonic} eax, edi, 10
${mnemonic} ecx, esi, 20
${mnemonic} edx, ebp, 30
${mnemonic} ebx, esp, 40
${mnemonic} esp, ebx, 50
${mnemonic} ebp, edx, 60
${mnemonic} esi, ecx, 70
${mnemonic} edi, eax, 80

; 64-bit registers
${mnemonic} rax, rax, 0
${mnemonic} rax, rcx, 1
${mnemonic} rax, rdx, 2
${mnemonic} rax, rbx, 3
${mnemonic} rax, rsp, 4
${mnemonic} rax, rbp, 5
${mnemonic} rax, rsi, 6
${mnemonic} rax, rdi, 7

${mnemonic} rax, rax, 0x12
${mnemonic} rcx, rax, 0x13
${mnemonic} rdx, rax, 0x14
${mnemonic} rbx, rax, 0x15
${mnemonic} rsp, rax, 0x16
${mnemonic} rbp, rax, 0x17
${mnemonic} rsi, rax, 0x18
${mnemonic} rdi, rax, 0x19

${mnemonic} rax, rdi, 100
${mnemonic} rcx, rsi, 101
${mnemonic} rdx, rbp, 102
${mnemonic} rbx, rsp, 103
${mnemonic} rsp, rbx, 104
${mnemonic} rbp, rdx, 105
${mnemonic} rsi, rcx, 106
${mnemonic} rdi, rax, 107
