use64
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovnle ax, ax
cmovnle ax, cx
cmovnle ax, dx
cmovnle ax, bx
cmovnle ax, sp
cmovnle ax, bp
cmovnle ax, si
cmovnle ax, di

cmovnle ax, ax
cmovnle cx, ax
cmovnle dx, ax
cmovnle bx, ax
cmovnle sp, ax
cmovnle bp, ax
cmovnle si, ax
cmovnle di, ax

cmovnle ax, di
cmovnle cx, si
cmovnle dx, bp
cmovnle bx, sp
cmovnle sp, bx
cmovnle bp, dx
cmovnle si, cx
cmovnle di, ax

; 32-bit registers
cmovnle eax, eax
cmovnle eax, ecx
cmovnle eax, edx
cmovnle eax, ebx
cmovnle eax, esp
cmovnle eax, ebp
cmovnle eax, esi
cmovnle eax, edi

cmovnle eax, eax
cmovnle ecx, eax
cmovnle edx, eax
cmovnle ebx, eax
cmovnle esp, eax
cmovnle ebp, eax
cmovnle esi, eax
cmovnle edi, eax

cmovnle eax, edi
cmovnle ecx, esi
cmovnle edx, ebp
cmovnle ebx, esp
cmovnle esp, ebx
cmovnle ebp, edx
cmovnle esi, ecx
cmovnle edi, eax

; 64-bit registers
cmovnle rax, rax
cmovnle rax, rcx
cmovnle rax, rdx
cmovnle rax, rbx
cmovnle rax, rsp
cmovnle rax, rbp
cmovnle rax, rsi
cmovnle rax, rdi

cmovnle rax, rax
cmovnle rcx, rax
cmovnle rdx, rax
cmovnle rbx, rax
cmovnle rsp, rax
cmovnle rbp, rax
cmovnle rsi, rax
cmovnle rdi, rax

cmovnle rax, rdi
cmovnle rcx, rsi
cmovnle rdx, rbp
cmovnle rbx, rsp
cmovnle rsp, rbx
cmovnle rbp, rdx
cmovnle rsi, rcx
cmovnle rdi, rax
