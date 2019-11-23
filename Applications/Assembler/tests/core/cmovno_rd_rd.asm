use64
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovno ax, ax
cmovno ax, cx
cmovno ax, dx
cmovno ax, bx
cmovno ax, sp
cmovno ax, bp
cmovno ax, si
cmovno ax, di

cmovno ax, ax
cmovno cx, ax
cmovno dx, ax
cmovno bx, ax
cmovno sp, ax
cmovno bp, ax
cmovno si, ax
cmovno di, ax

cmovno ax, di
cmovno cx, si
cmovno dx, bp
cmovno bx, sp
cmovno sp, bx
cmovno bp, dx
cmovno si, cx
cmovno di, ax

; 32-bit registers
cmovno eax, eax
cmovno eax, ecx
cmovno eax, edx
cmovno eax, ebx
cmovno eax, esp
cmovno eax, ebp
cmovno eax, esi
cmovno eax, edi

cmovno eax, eax
cmovno ecx, eax
cmovno edx, eax
cmovno ebx, eax
cmovno esp, eax
cmovno ebp, eax
cmovno esi, eax
cmovno edi, eax

cmovno eax, edi
cmovno ecx, esi
cmovno edx, ebp
cmovno ebx, esp
cmovno esp, ebx
cmovno ebp, edx
cmovno esi, ecx
cmovno edi, eax

; 64-bit registers
cmovno rax, rax
cmovno rax, rcx
cmovno rax, rdx
cmovno rax, rbx
cmovno rax, rsp
cmovno rax, rbp
cmovno rax, rsi
cmovno rax, rdi

cmovno rax, rax
cmovno rcx, rax
cmovno rdx, rax
cmovno rbx, rax
cmovno rsp, rax
cmovno rbp, rax
cmovno rsi, rax
cmovno rdi, rax

cmovno rax, rdi
cmovno rcx, rsi
cmovno rdx, rbp
cmovno rbx, rsp
cmovno rsp, rbx
cmovno rbp, rdx
cmovno rsi, rcx
cmovno rdi, rax
