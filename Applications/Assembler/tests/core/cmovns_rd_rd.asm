use64
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovns ax, ax
cmovns ax, cx
cmovns ax, dx
cmovns ax, bx
cmovns ax, sp
cmovns ax, bp
cmovns ax, si
cmovns ax, di

cmovns ax, ax
cmovns cx, ax
cmovns dx, ax
cmovns bx, ax
cmovns sp, ax
cmovns bp, ax
cmovns si, ax
cmovns di, ax

cmovns ax, di
cmovns cx, si
cmovns dx, bp
cmovns bx, sp
cmovns sp, bx
cmovns bp, dx
cmovns si, cx
cmovns di, ax

; 32-bit registers
cmovns eax, eax
cmovns eax, ecx
cmovns eax, edx
cmovns eax, ebx
cmovns eax, esp
cmovns eax, ebp
cmovns eax, esi
cmovns eax, edi

cmovns eax, eax
cmovns ecx, eax
cmovns edx, eax
cmovns ebx, eax
cmovns esp, eax
cmovns ebp, eax
cmovns esi, eax
cmovns edi, eax

cmovns eax, edi
cmovns ecx, esi
cmovns edx, ebp
cmovns ebx, esp
cmovns esp, ebx
cmovns ebp, edx
cmovns esi, ecx
cmovns edi, eax

; 64-bit registers
cmovns rax, rax
cmovns rax, rcx
cmovns rax, rdx
cmovns rax, rbx
cmovns rax, rsp
cmovns rax, rbp
cmovns rax, rsi
cmovns rax, rdi

cmovns rax, rax
cmovns rcx, rax
cmovns rdx, rax
cmovns rbx, rax
cmovns rsp, rax
cmovns rbp, rax
cmovns rsi, rax
cmovns rdi, rax

cmovns rax, rdi
cmovns rcx, rsi
cmovns rdx, rbp
cmovns rbx, rsp
cmovns rsp, rbx
cmovns rbp, rdx
cmovns rsi, rcx
cmovns rdi, rax
