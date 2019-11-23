use64
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovnz ax, ax
cmovnz ax, cx
cmovnz ax, dx
cmovnz ax, bx
cmovnz ax, sp
cmovnz ax, bp
cmovnz ax, si
cmovnz ax, di

cmovnz ax, ax
cmovnz cx, ax
cmovnz dx, ax
cmovnz bx, ax
cmovnz sp, ax
cmovnz bp, ax
cmovnz si, ax
cmovnz di, ax

cmovnz ax, di
cmovnz cx, si
cmovnz dx, bp
cmovnz bx, sp
cmovnz sp, bx
cmovnz bp, dx
cmovnz si, cx
cmovnz di, ax

; 32-bit registers
cmovnz eax, eax
cmovnz eax, ecx
cmovnz eax, edx
cmovnz eax, ebx
cmovnz eax, esp
cmovnz eax, ebp
cmovnz eax, esi
cmovnz eax, edi

cmovnz eax, eax
cmovnz ecx, eax
cmovnz edx, eax
cmovnz ebx, eax
cmovnz esp, eax
cmovnz ebp, eax
cmovnz esi, eax
cmovnz edi, eax

cmovnz eax, edi
cmovnz ecx, esi
cmovnz edx, ebp
cmovnz ebx, esp
cmovnz esp, ebx
cmovnz ebp, edx
cmovnz esi, ecx
cmovnz edi, eax

; 64-bit registers
cmovnz rax, rax
cmovnz rax, rcx
cmovnz rax, rdx
cmovnz rax, rbx
cmovnz rax, rsp
cmovnz rax, rbp
cmovnz rax, rsi
cmovnz rax, rdi

cmovnz rax, rax
cmovnz rcx, rax
cmovnz rdx, rax
cmovnz rbx, rax
cmovnz rsp, rax
cmovnz rbp, rax
cmovnz rsi, rax
cmovnz rdi, rax

cmovnz rax, rdi
cmovnz rcx, rsi
cmovnz rdx, rbp
cmovnz rbx, rsp
cmovnz rsp, rbx
cmovnz rbp, rdx
cmovnz rsi, rcx
cmovnz rdi, rax
