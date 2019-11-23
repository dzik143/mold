use64
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovg ax, ax
cmovg ax, cx
cmovg ax, dx
cmovg ax, bx
cmovg ax, sp
cmovg ax, bp
cmovg ax, si
cmovg ax, di

cmovg ax, ax
cmovg cx, ax
cmovg dx, ax
cmovg bx, ax
cmovg sp, ax
cmovg bp, ax
cmovg si, ax
cmovg di, ax

cmovg ax, di
cmovg cx, si
cmovg dx, bp
cmovg bx, sp
cmovg sp, bx
cmovg bp, dx
cmovg si, cx
cmovg di, ax

; 32-bit registers
cmovg eax, eax
cmovg eax, ecx
cmovg eax, edx
cmovg eax, ebx
cmovg eax, esp
cmovg eax, ebp
cmovg eax, esi
cmovg eax, edi

cmovg eax, eax
cmovg ecx, eax
cmovg edx, eax
cmovg ebx, eax
cmovg esp, eax
cmovg ebp, eax
cmovg esi, eax
cmovg edi, eax

cmovg eax, edi
cmovg ecx, esi
cmovg edx, ebp
cmovg ebx, esp
cmovg esp, ebx
cmovg ebp, edx
cmovg esi, ecx
cmovg edi, eax

; 64-bit registers
cmovg rax, rax
cmovg rax, rcx
cmovg rax, rdx
cmovg rax, rbx
cmovg rax, rsp
cmovg rax, rbp
cmovg rax, rsi
cmovg rax, rdi

cmovg rax, rax
cmovg rcx, rax
cmovg rdx, rax
cmovg rbx, rax
cmovg rsp, rax
cmovg rbp, rax
cmovg rsi, rax
cmovg rdi, rax

cmovg rax, rdi
cmovg rcx, rsi
cmovg rdx, rbp
cmovg rbx, rsp
cmovg rsp, rbx
cmovg rbp, rdx
cmovg rsi, rcx
cmovg rdi, rax
