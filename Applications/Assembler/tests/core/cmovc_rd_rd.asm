use64
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovc ax, ax
cmovc ax, cx
cmovc ax, dx
cmovc ax, bx
cmovc ax, sp
cmovc ax, bp
cmovc ax, si
cmovc ax, di

cmovc ax, ax
cmovc cx, ax
cmovc dx, ax
cmovc bx, ax
cmovc sp, ax
cmovc bp, ax
cmovc si, ax
cmovc di, ax

cmovc ax, di
cmovc cx, si
cmovc dx, bp
cmovc bx, sp
cmovc sp, bx
cmovc bp, dx
cmovc si, cx
cmovc di, ax

; 32-bit registers
cmovc eax, eax
cmovc eax, ecx
cmovc eax, edx
cmovc eax, ebx
cmovc eax, esp
cmovc eax, ebp
cmovc eax, esi
cmovc eax, edi

cmovc eax, eax
cmovc ecx, eax
cmovc edx, eax
cmovc ebx, eax
cmovc esp, eax
cmovc ebp, eax
cmovc esi, eax
cmovc edi, eax

cmovc eax, edi
cmovc ecx, esi
cmovc edx, ebp
cmovc ebx, esp
cmovc esp, ebx
cmovc ebp, edx
cmovc esi, ecx
cmovc edi, eax

; 64-bit registers
cmovc rax, rax
cmovc rax, rcx
cmovc rax, rdx
cmovc rax, rbx
cmovc rax, rsp
cmovc rax, rbp
cmovc rax, rsi
cmovc rax, rdi

cmovc rax, rax
cmovc rcx, rax
cmovc rdx, rax
cmovc rbx, rax
cmovc rsp, rax
cmovc rbp, rax
cmovc rsi, rax
cmovc rdi, rax

cmovc rax, rdi
cmovc rcx, rsi
cmovc rdx, rbp
cmovc rbx, rsp
cmovc rsp, rbx
cmovc rbp, rdx
cmovc rsi, rcx
cmovc rdi, rax
