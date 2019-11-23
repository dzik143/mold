use64
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovb ax, ax
cmovb ax, cx
cmovb ax, dx
cmovb ax, bx
cmovb ax, sp
cmovb ax, bp
cmovb ax, si
cmovb ax, di

cmovb ax, ax
cmovb cx, ax
cmovb dx, ax
cmovb bx, ax
cmovb sp, ax
cmovb bp, ax
cmovb si, ax
cmovb di, ax

cmovb ax, di
cmovb cx, si
cmovb dx, bp
cmovb bx, sp
cmovb sp, bx
cmovb bp, dx
cmovb si, cx
cmovb di, ax

; 32-bit registers
cmovb eax, eax
cmovb eax, ecx
cmovb eax, edx
cmovb eax, ebx
cmovb eax, esp
cmovb eax, ebp
cmovb eax, esi
cmovb eax, edi

cmovb eax, eax
cmovb ecx, eax
cmovb edx, eax
cmovb ebx, eax
cmovb esp, eax
cmovb ebp, eax
cmovb esi, eax
cmovb edi, eax

cmovb eax, edi
cmovb ecx, esi
cmovb edx, ebp
cmovb ebx, esp
cmovb esp, ebx
cmovb ebp, edx
cmovb esi, ecx
cmovb edi, eax

; 64-bit registers
cmovb rax, rax
cmovb rax, rcx
cmovb rax, rdx
cmovb rax, rbx
cmovb rax, rsp
cmovb rax, rbp
cmovb rax, rsi
cmovb rax, rdi

cmovb rax, rax
cmovb rcx, rax
cmovb rdx, rax
cmovb rbx, rax
cmovb rsp, rax
cmovb rbp, rax
cmovb rsi, rax
cmovb rdi, rax

cmovb rax, rdi
cmovb rcx, rsi
cmovb rdx, rbp
cmovb rbx, rsp
cmovb rsp, rbx
cmovb rbp, rdx
cmovb rsi, rcx
cmovb rdi, rax
