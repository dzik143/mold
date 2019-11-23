use64
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovpe ax, ax
cmovpe ax, cx
cmovpe ax, dx
cmovpe ax, bx
cmovpe ax, sp
cmovpe ax, bp
cmovpe ax, si
cmovpe ax, di

cmovpe ax, ax
cmovpe cx, ax
cmovpe dx, ax
cmovpe bx, ax
cmovpe sp, ax
cmovpe bp, ax
cmovpe si, ax
cmovpe di, ax

cmovpe ax, di
cmovpe cx, si
cmovpe dx, bp
cmovpe bx, sp
cmovpe sp, bx
cmovpe bp, dx
cmovpe si, cx
cmovpe di, ax

; 32-bit registers
cmovpe eax, eax
cmovpe eax, ecx
cmovpe eax, edx
cmovpe eax, ebx
cmovpe eax, esp
cmovpe eax, ebp
cmovpe eax, esi
cmovpe eax, edi

cmovpe eax, eax
cmovpe ecx, eax
cmovpe edx, eax
cmovpe ebx, eax
cmovpe esp, eax
cmovpe ebp, eax
cmovpe esi, eax
cmovpe edi, eax

cmovpe eax, edi
cmovpe ecx, esi
cmovpe edx, ebp
cmovpe ebx, esp
cmovpe esp, ebx
cmovpe ebp, edx
cmovpe esi, ecx
cmovpe edi, eax

; 64-bit registers
cmovpe rax, rax
cmovpe rax, rcx
cmovpe rax, rdx
cmovpe rax, rbx
cmovpe rax, rsp
cmovpe rax, rbp
cmovpe rax, rsi
cmovpe rax, rdi

cmovpe rax, rax
cmovpe rcx, rax
cmovpe rdx, rax
cmovpe rbx, rax
cmovpe rsp, rax
cmovpe rbp, rax
cmovpe rsi, rax
cmovpe rdi, rax

cmovpe rax, rdi
cmovpe rcx, rsi
cmovpe rdx, rbp
cmovpe rbx, rsp
cmovpe rsp, rbx
cmovpe rbp, rdx
cmovpe rsi, rcx
cmovpe rdi, rax
