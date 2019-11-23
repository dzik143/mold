use64
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovnp ax, ax
cmovnp ax, cx
cmovnp ax, dx
cmovnp ax, bx
cmovnp ax, sp
cmovnp ax, bp
cmovnp ax, si
cmovnp ax, di

cmovnp ax, ax
cmovnp cx, ax
cmovnp dx, ax
cmovnp bx, ax
cmovnp sp, ax
cmovnp bp, ax
cmovnp si, ax
cmovnp di, ax

cmovnp ax, di
cmovnp cx, si
cmovnp dx, bp
cmovnp bx, sp
cmovnp sp, bx
cmovnp bp, dx
cmovnp si, cx
cmovnp di, ax

; 32-bit registers
cmovnp eax, eax
cmovnp eax, ecx
cmovnp eax, edx
cmovnp eax, ebx
cmovnp eax, esp
cmovnp eax, ebp
cmovnp eax, esi
cmovnp eax, edi

cmovnp eax, eax
cmovnp ecx, eax
cmovnp edx, eax
cmovnp ebx, eax
cmovnp esp, eax
cmovnp ebp, eax
cmovnp esi, eax
cmovnp edi, eax

cmovnp eax, edi
cmovnp ecx, esi
cmovnp edx, ebp
cmovnp ebx, esp
cmovnp esp, ebx
cmovnp ebp, edx
cmovnp esi, ecx
cmovnp edi, eax

; 64-bit registers
cmovnp rax, rax
cmovnp rax, rcx
cmovnp rax, rdx
cmovnp rax, rbx
cmovnp rax, rsp
cmovnp rax, rbp
cmovnp rax, rsi
cmovnp rax, rdi

cmovnp rax, rax
cmovnp rcx, rax
cmovnp rdx, rax
cmovnp rbx, rax
cmovnp rsp, rax
cmovnp rbp, rax
cmovnp rsi, rax
cmovnp rdi, rax

cmovnp rax, rdi
cmovnp rcx, rsi
cmovnp rdx, rbp
cmovnp rbx, rsp
cmovnp rsp, rbx
cmovnp rbp, rdx
cmovnp rsi, rcx
cmovnp rdi, rax
