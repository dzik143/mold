use64
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovp ax, ax
cmovp ax, cx
cmovp ax, dx
cmovp ax, bx
cmovp ax, sp
cmovp ax, bp
cmovp ax, si
cmovp ax, di

cmovp ax, ax
cmovp cx, ax
cmovp dx, ax
cmovp bx, ax
cmovp sp, ax
cmovp bp, ax
cmovp si, ax
cmovp di, ax

cmovp ax, di
cmovp cx, si
cmovp dx, bp
cmovp bx, sp
cmovp sp, bx
cmovp bp, dx
cmovp si, cx
cmovp di, ax

; 32-bit registers
cmovp eax, eax
cmovp eax, ecx
cmovp eax, edx
cmovp eax, ebx
cmovp eax, esp
cmovp eax, ebp
cmovp eax, esi
cmovp eax, edi

cmovp eax, eax
cmovp ecx, eax
cmovp edx, eax
cmovp ebx, eax
cmovp esp, eax
cmovp ebp, eax
cmovp esi, eax
cmovp edi, eax

cmovp eax, edi
cmovp ecx, esi
cmovp edx, ebp
cmovp ebx, esp
cmovp esp, ebx
cmovp ebp, edx
cmovp esi, ecx
cmovp edi, eax

; 64-bit registers
cmovp rax, rax
cmovp rax, rcx
cmovp rax, rdx
cmovp rax, rbx
cmovp rax, rsp
cmovp rax, rbp
cmovp rax, rsi
cmovp rax, rdi

cmovp rax, rax
cmovp rcx, rax
cmovp rdx, rax
cmovp rbx, rax
cmovp rsp, rax
cmovp rbp, rax
cmovp rsi, rax
cmovp rdi, rax

cmovp rax, rdi
cmovp rcx, rsi
cmovp rdx, rbp
cmovp rbx, rsp
cmovp rsp, rbx
cmovp rbp, rdx
cmovp rsi, rcx
cmovp rdi, rax
