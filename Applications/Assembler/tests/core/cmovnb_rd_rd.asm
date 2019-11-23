use64
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovnb ax, ax
cmovnb ax, cx
cmovnb ax, dx
cmovnb ax, bx
cmovnb ax, sp
cmovnb ax, bp
cmovnb ax, si
cmovnb ax, di

cmovnb ax, ax
cmovnb cx, ax
cmovnb dx, ax
cmovnb bx, ax
cmovnb sp, ax
cmovnb bp, ax
cmovnb si, ax
cmovnb di, ax

cmovnb ax, di
cmovnb cx, si
cmovnb dx, bp
cmovnb bx, sp
cmovnb sp, bx
cmovnb bp, dx
cmovnb si, cx
cmovnb di, ax

; 32-bit registers
cmovnb eax, eax
cmovnb eax, ecx
cmovnb eax, edx
cmovnb eax, ebx
cmovnb eax, esp
cmovnb eax, ebp
cmovnb eax, esi
cmovnb eax, edi

cmovnb eax, eax
cmovnb ecx, eax
cmovnb edx, eax
cmovnb ebx, eax
cmovnb esp, eax
cmovnb ebp, eax
cmovnb esi, eax
cmovnb edi, eax

cmovnb eax, edi
cmovnb ecx, esi
cmovnb edx, ebp
cmovnb ebx, esp
cmovnb esp, ebx
cmovnb ebp, edx
cmovnb esi, ecx
cmovnb edi, eax

; 64-bit registers
cmovnb rax, rax
cmovnb rax, rcx
cmovnb rax, rdx
cmovnb rax, rbx
cmovnb rax, rsp
cmovnb rax, rbp
cmovnb rax, rsi
cmovnb rax, rdi

cmovnb rax, rax
cmovnb rcx, rax
cmovnb rdx, rax
cmovnb rbx, rax
cmovnb rsp, rax
cmovnb rbp, rax
cmovnb rsi, rax
cmovnb rdi, rax

cmovnb rax, rdi
cmovnb rcx, rsi
cmovnb rdx, rbp
cmovnb rbx, rsp
cmovnb rsp, rbx
cmovnb rbp, rdx
cmovnb rsi, rcx
cmovnb rdi, rax
