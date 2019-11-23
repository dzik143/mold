use64
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovnbe ax, ax
cmovnbe ax, cx
cmovnbe ax, dx
cmovnbe ax, bx
cmovnbe ax, sp
cmovnbe ax, bp
cmovnbe ax, si
cmovnbe ax, di

cmovnbe ax, ax
cmovnbe cx, ax
cmovnbe dx, ax
cmovnbe bx, ax
cmovnbe sp, ax
cmovnbe bp, ax
cmovnbe si, ax
cmovnbe di, ax

cmovnbe ax, di
cmovnbe cx, si
cmovnbe dx, bp
cmovnbe bx, sp
cmovnbe sp, bx
cmovnbe bp, dx
cmovnbe si, cx
cmovnbe di, ax

; 32-bit registers
cmovnbe eax, eax
cmovnbe eax, ecx
cmovnbe eax, edx
cmovnbe eax, ebx
cmovnbe eax, esp
cmovnbe eax, ebp
cmovnbe eax, esi
cmovnbe eax, edi

cmovnbe eax, eax
cmovnbe ecx, eax
cmovnbe edx, eax
cmovnbe ebx, eax
cmovnbe esp, eax
cmovnbe ebp, eax
cmovnbe esi, eax
cmovnbe edi, eax

cmovnbe eax, edi
cmovnbe ecx, esi
cmovnbe edx, ebp
cmovnbe ebx, esp
cmovnbe esp, ebx
cmovnbe ebp, edx
cmovnbe esi, ecx
cmovnbe edi, eax

; 64-bit registers
cmovnbe rax, rax
cmovnbe rax, rcx
cmovnbe rax, rdx
cmovnbe rax, rbx
cmovnbe rax, rsp
cmovnbe rax, rbp
cmovnbe rax, rsi
cmovnbe rax, rdi

cmovnbe rax, rax
cmovnbe rcx, rax
cmovnbe rdx, rax
cmovnbe rbx, rax
cmovnbe rsp, rax
cmovnbe rbp, rax
cmovnbe rsi, rax
cmovnbe rdi, rax

cmovnbe rax, rdi
cmovnbe rcx, rsi
cmovnbe rdx, rbp
cmovnbe rbx, rsp
cmovnbe rsp, rbx
cmovnbe rbp, rdx
cmovnbe rsi, rcx
cmovnbe rdi, rax
