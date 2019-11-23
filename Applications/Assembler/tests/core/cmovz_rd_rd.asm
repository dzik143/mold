use64
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovz ax, ax
cmovz ax, cx
cmovz ax, dx
cmovz ax, bx
cmovz ax, sp
cmovz ax, bp
cmovz ax, si
cmovz ax, di

cmovz ax, ax
cmovz cx, ax
cmovz dx, ax
cmovz bx, ax
cmovz sp, ax
cmovz bp, ax
cmovz si, ax
cmovz di, ax

cmovz ax, di
cmovz cx, si
cmovz dx, bp
cmovz bx, sp
cmovz sp, bx
cmovz bp, dx
cmovz si, cx
cmovz di, ax

; 32-bit registers
cmovz eax, eax
cmovz eax, ecx
cmovz eax, edx
cmovz eax, ebx
cmovz eax, esp
cmovz eax, ebp
cmovz eax, esi
cmovz eax, edi

cmovz eax, eax
cmovz ecx, eax
cmovz edx, eax
cmovz ebx, eax
cmovz esp, eax
cmovz ebp, eax
cmovz esi, eax
cmovz edi, eax

cmovz eax, edi
cmovz ecx, esi
cmovz edx, ebp
cmovz ebx, esp
cmovz esp, ebx
cmovz ebp, edx
cmovz esi, ecx
cmovz edi, eax

; 64-bit registers
cmovz rax, rax
cmovz rax, rcx
cmovz rax, rdx
cmovz rax, rbx
cmovz rax, rsp
cmovz rax, rbp
cmovz rax, rsi
cmovz rax, rdi

cmovz rax, rax
cmovz rcx, rax
cmovz rdx, rax
cmovz rbx, rax
cmovz rsp, rax
cmovz rbp, rax
cmovz rsi, rax
cmovz rdi, rax

cmovz rax, rdi
cmovz rcx, rsi
cmovz rdx, rbp
cmovz rbx, rsp
cmovz rsp, rbx
cmovz rbp, rdx
cmovz rsi, rcx
cmovz rdi, rax
