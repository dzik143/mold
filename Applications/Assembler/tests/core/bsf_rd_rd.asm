use64
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
bsf ax, ax
bsf ax, cx
bsf ax, dx
bsf ax, bx
bsf ax, sp
bsf ax, bp
bsf ax, si
bsf ax, di

bsf ax, ax
bsf cx, ax
bsf dx, ax
bsf bx, ax
bsf sp, ax
bsf bp, ax
bsf si, ax
bsf di, ax

bsf ax, di
bsf cx, si
bsf dx, bp
bsf bx, sp
bsf sp, bx
bsf bp, dx
bsf si, cx
bsf di, ax

; 32-bit registers
bsf eax, eax
bsf eax, ecx
bsf eax, edx
bsf eax, ebx
bsf eax, esp
bsf eax, ebp
bsf eax, esi
bsf eax, edi

bsf eax, eax
bsf ecx, eax
bsf edx, eax
bsf ebx, eax
bsf esp, eax
bsf ebp, eax
bsf esi, eax
bsf edi, eax

bsf eax, edi
bsf ecx, esi
bsf edx, ebp
bsf ebx, esp
bsf esp, ebx
bsf ebp, edx
bsf esi, ecx
bsf edi, eax

; 64-bit registers
bsf rax, rax
bsf rax, rcx
bsf rax, rdx
bsf rax, rbx
bsf rax, rsp
bsf rax, rbp
bsf rax, rsi
bsf rax, rdi

bsf rax, rax
bsf rcx, rax
bsf rdx, rax
bsf rbx, rax
bsf rsp, rax
bsf rbp, rax
bsf rsi, rax
bsf rdi, rax

bsf rax, rdi
bsf rcx, rsi
bsf rdx, rbp
bsf rbx, rsp
bsf rsp, rbx
bsf rbp, rdx
bsf rsi, rcx
bsf rdi, rax
