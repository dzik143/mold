; r,r without 8-bit combinations:
; r16, r16, cl
; r32, r32, cl
; r64, r64, cl

; 16-bit registers
${mnemonic} ax, ax, cl
${mnemonic} ax, cx, cl
${mnemonic} ax, dx, cl
${mnemonic} ax, bx, cl
${mnemonic} ax, sp, cl
${mnemonic} ax, bp, cl
${mnemonic} ax, si, cl
${mnemonic} ax, di, cl

${mnemonic} ax, ax, cl
${mnemonic} cx, ax, cl
${mnemonic} dx, ax, cl
${mnemonic} bx, ax, cl
${mnemonic} sp, ax, cl
${mnemonic} bp, ax, cl
${mnemonic} si, ax, cl
${mnemonic} di, ax, cl

${mnemonic} ax, di, cl
${mnemonic} cx, si, cl
${mnemonic} dx, bp, cl
${mnemonic} bx, sp, cl
${mnemonic} sp, bx, cl
${mnemonic} bp, dx, cl
${mnemonic} si, cx, cl
${mnemonic} di, ax, cl

; 32-bit registers
${mnemonic} eax, eax, cl
${mnemonic} eax, ecx, cl
${mnemonic} eax, edx, cl
${mnemonic} eax, ebx, cl
${mnemonic} eax, esp, cl
${mnemonic} eax, ebp, cl
${mnemonic} eax, esi, cl
${mnemonic} eax, edi, cl

${mnemonic} eax, eax, cl
${mnemonic} ecx, eax, cl
${mnemonic} edx, eax, cl
${mnemonic} ebx, eax, cl
${mnemonic} esp, eax, cl
${mnemonic} ebp, eax, cl
${mnemonic} esi, eax, cl
${mnemonic} edi, eax, cl

${mnemonic} eax, edi, cl
${mnemonic} ecx, esi, cl
${mnemonic} edx, ebp, cl
${mnemonic} ebx, esp, cl
${mnemonic} esp, ebx, cl
${mnemonic} ebp, edx, cl
${mnemonic} esi, ecx, cl
${mnemonic} edi, eax, cl

; 64-bit registers
${mnemonic} rax, rax, cl
${mnemonic} rax, rcx, cl
${mnemonic} rax, rdx, cl
${mnemonic} rax, rbx, cl
${mnemonic} rax, rsp, cl
${mnemonic} rax, rbp, cl
${mnemonic} rax, rsi, cl
${mnemonic} rax, rdi, cl

${mnemonic} rax, rax, cl
${mnemonic} rcx, rax, cl
${mnemonic} rdx, rax, cl
${mnemonic} rbx, rax, cl
${mnemonic} rsp, rax, cl
${mnemonic} rbp, rax, cl
${mnemonic} rsi, rax, cl
${mnemonic} rdi, rax, cl

${mnemonic} rax, rdi, cl
${mnemonic} rcx, rsi, cl
${mnemonic} rdx, rbp, cl
${mnemonic} rbx, rsp, cl
${mnemonic} rsp, rbx, cl
${mnemonic} rbp, rdx, cl
${mnemonic} rsi, rcx, cl
${mnemonic} rdi, rax, cl
