use64
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
imul ax, ax
imul ax, cx
imul ax, dx
imul ax, bx
imul ax, sp
imul ax, bp
imul ax, si
imul ax, di

imul ax, ax
imul cx, ax
imul dx, ax
imul bx, ax
imul sp, ax
imul bp, ax
imul si, ax
imul di, ax

imul ax, di
imul cx, si
imul dx, bp
imul bx, sp
imul sp, bx
imul bp, dx
imul si, cx
imul di, ax

; 32-bit registers
imul eax, eax
imul eax, ecx
imul eax, edx
imul eax, ebx
imul eax, esp
imul eax, ebp
imul eax, esi
imul eax, edi

imul eax, eax
imul ecx, eax
imul edx, eax
imul ebx, eax
imul esp, eax
imul ebp, eax
imul esi, eax
imul edi, eax

imul eax, edi
imul ecx, esi
imul edx, ebp
imul ebx, esp
imul esp, ebx
imul ebp, edx
imul esi, ecx
imul edi, eax

; 64-bit registers
imul rax, rax
imul rax, rcx
imul rax, rdx
imul rax, rbx
imul rax, rsp
imul rax, rbp
imul rax, rsi
imul rax, rdi

imul rax, rax
imul rcx, rax
imul rdx, rax
imul rbx, rax
imul rsp, rax
imul rbp, rax
imul rsi, rax
imul rdi, rax

imul rax, rdi
imul rcx, rsi
imul rdx, rbp
imul rbx, rsp
imul rsp, rbx
imul rbp, rdx
imul rsi, rcx
imul rdi, rax
