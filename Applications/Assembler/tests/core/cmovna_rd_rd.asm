use64
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovna ax, ax
cmovna ax, cx
cmovna ax, dx
cmovna ax, bx
cmovna ax, sp
cmovna ax, bp
cmovna ax, si
cmovna ax, di

cmovna ax, ax
cmovna cx, ax
cmovna dx, ax
cmovna bx, ax
cmovna sp, ax
cmovna bp, ax
cmovna si, ax
cmovna di, ax

cmovna ax, di
cmovna cx, si
cmovna dx, bp
cmovna bx, sp
cmovna sp, bx
cmovna bp, dx
cmovna si, cx
cmovna di, ax

; 32-bit registers
cmovna eax, eax
cmovna eax, ecx
cmovna eax, edx
cmovna eax, ebx
cmovna eax, esp
cmovna eax, ebp
cmovna eax, esi
cmovna eax, edi

cmovna eax, eax
cmovna ecx, eax
cmovna edx, eax
cmovna ebx, eax
cmovna esp, eax
cmovna ebp, eax
cmovna esi, eax
cmovna edi, eax

cmovna eax, edi
cmovna ecx, esi
cmovna edx, ebp
cmovna ebx, esp
cmovna esp, ebx
cmovna ebp, edx
cmovna esi, ecx
cmovna edi, eax

; 64-bit registers
cmovna rax, rax
cmovna rax, rcx
cmovna rax, rdx
cmovna rax, rbx
cmovna rax, rsp
cmovna rax, rbp
cmovna rax, rsi
cmovna rax, rdi

cmovna rax, rax
cmovna rcx, rax
cmovna rdx, rax
cmovna rbx, rax
cmovna rsp, rax
cmovna rbp, rax
cmovna rsi, rax
cmovna rdi, rax

cmovna rax, rdi
cmovna rcx, rsi
cmovna rdx, rbp
cmovna rbx, rsp
cmovna rsp, rbx
cmovna rbp, rdx
cmovna rsi, rcx
cmovna rdi, rax
