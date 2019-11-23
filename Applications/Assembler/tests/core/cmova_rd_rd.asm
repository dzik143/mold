use64
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmova ax, ax
cmova ax, cx
cmova ax, dx
cmova ax, bx
cmova ax, sp
cmova ax, bp
cmova ax, si
cmova ax, di

cmova ax, ax
cmova cx, ax
cmova dx, ax
cmova bx, ax
cmova sp, ax
cmova bp, ax
cmova si, ax
cmova di, ax

cmova ax, di
cmova cx, si
cmova dx, bp
cmova bx, sp
cmova sp, bx
cmova bp, dx
cmova si, cx
cmova di, ax

; 32-bit registers
cmova eax, eax
cmova eax, ecx
cmova eax, edx
cmova eax, ebx
cmova eax, esp
cmova eax, ebp
cmova eax, esi
cmova eax, edi

cmova eax, eax
cmova ecx, eax
cmova edx, eax
cmova ebx, eax
cmova esp, eax
cmova ebp, eax
cmova esi, eax
cmova edi, eax

cmova eax, edi
cmova ecx, esi
cmova edx, ebp
cmova ebx, esp
cmova esp, ebx
cmova ebp, edx
cmova esi, ecx
cmova edi, eax

; 64-bit registers
cmova rax, rax
cmova rax, rcx
cmova rax, rdx
cmova rax, rbx
cmova rax, rsp
cmova rax, rbp
cmova rax, rsi
cmova rax, rdi

cmova rax, rax
cmova rcx, rax
cmova rdx, rax
cmova rbx, rax
cmova rsp, rax
cmova rbp, rax
cmova rsi, rax
cmova rdi, rax

cmova rax, rdi
cmova rcx, rsi
cmova rdx, rbp
cmova rbx, rsp
cmova rsp, rbx
cmova rbp, rdx
cmova rsi, rcx
cmova rdi, rax
