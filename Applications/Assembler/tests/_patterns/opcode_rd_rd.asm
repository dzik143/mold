; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
${mnemonic} ax, ax
${mnemonic} ax, cx
${mnemonic} ax, dx
${mnemonic} ax, bx
${mnemonic} ax, sp
${mnemonic} ax, bp
${mnemonic} ax, si
${mnemonic} ax, di

${mnemonic} ax, ax
${mnemonic} cx, ax
${mnemonic} dx, ax
${mnemonic} bx, ax
${mnemonic} sp, ax
${mnemonic} bp, ax
${mnemonic} si, ax
${mnemonic} di, ax

${mnemonic} ax, di
${mnemonic} cx, si
${mnemonic} dx, bp
${mnemonic} bx, sp
${mnemonic} sp, bx
${mnemonic} bp, dx
${mnemonic} si, cx
${mnemonic} di, ax

; 32-bit registers
${mnemonic} eax, eax
${mnemonic} eax, ecx
${mnemonic} eax, edx
${mnemonic} eax, ebx
${mnemonic} eax, esp
${mnemonic} eax, ebp
${mnemonic} eax, esi
${mnemonic} eax, edi

${mnemonic} eax, eax
${mnemonic} ecx, eax
${mnemonic} edx, eax
${mnemonic} ebx, eax
${mnemonic} esp, eax
${mnemonic} ebp, eax
${mnemonic} esi, eax
${mnemonic} edi, eax

${mnemonic} eax, edi
${mnemonic} ecx, esi
${mnemonic} edx, ebp
${mnemonic} ebx, esp
${mnemonic} esp, ebx
${mnemonic} ebp, edx
${mnemonic} esi, ecx
${mnemonic} edi, eax

; 64-bit registers
${mnemonic} rax, rax
${mnemonic} rax, rcx
${mnemonic} rax, rdx
${mnemonic} rax, rbx
${mnemonic} rax, rsp
${mnemonic} rax, rbp
${mnemonic} rax, rsi
${mnemonic} rax, rdi

${mnemonic} rax, rax
${mnemonic} rcx, rax
${mnemonic} rdx, rax
${mnemonic} rbx, rax
${mnemonic} rsp, rax
${mnemonic} rbp, rax
${mnemonic} rsi, rax
${mnemonic} rdi, rax

${mnemonic} rax, rdi
${mnemonic} rcx, rsi
${mnemonic} rdx, rbp
${mnemonic} rbx, rsp
${mnemonic} rsp, rbx
${mnemonic} rbp, rdx
${mnemonic} rsi, rcx
${mnemonic} rdi, rax
