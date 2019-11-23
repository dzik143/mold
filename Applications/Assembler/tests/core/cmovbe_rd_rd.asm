use64
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovbe ax, ax
cmovbe ax, cx
cmovbe ax, dx
cmovbe ax, bx
cmovbe ax, sp
cmovbe ax, bp
cmovbe ax, si
cmovbe ax, di

cmovbe ax, ax
cmovbe cx, ax
cmovbe dx, ax
cmovbe bx, ax
cmovbe sp, ax
cmovbe bp, ax
cmovbe si, ax
cmovbe di, ax

cmovbe ax, di
cmovbe cx, si
cmovbe dx, bp
cmovbe bx, sp
cmovbe sp, bx
cmovbe bp, dx
cmovbe si, cx
cmovbe di, ax

; 32-bit registers
cmovbe eax, eax
cmovbe eax, ecx
cmovbe eax, edx
cmovbe eax, ebx
cmovbe eax, esp
cmovbe eax, ebp
cmovbe eax, esi
cmovbe eax, edi

cmovbe eax, eax
cmovbe ecx, eax
cmovbe edx, eax
cmovbe ebx, eax
cmovbe esp, eax
cmovbe ebp, eax
cmovbe esi, eax
cmovbe edi, eax

cmovbe eax, edi
cmovbe ecx, esi
cmovbe edx, ebp
cmovbe ebx, esp
cmovbe esp, ebx
cmovbe ebp, edx
cmovbe esi, ecx
cmovbe edi, eax

; 64-bit registers
cmovbe rax, rax
cmovbe rax, rcx
cmovbe rax, rdx
cmovbe rax, rbx
cmovbe rax, rsp
cmovbe rax, rbp
cmovbe rax, rsi
cmovbe rax, rdi

cmovbe rax, rax
cmovbe rcx, rax
cmovbe rdx, rax
cmovbe rbx, rax
cmovbe rsp, rax
cmovbe rbp, rax
cmovbe rsi, rax
cmovbe rdi, rax

cmovbe rax, rdi
cmovbe rcx, rsi
cmovbe rdx, rbp
cmovbe rbx, rsp
cmovbe rsp, rbx
cmovbe rbp, rdx
cmovbe rsi, rcx
cmovbe rdi, rax
