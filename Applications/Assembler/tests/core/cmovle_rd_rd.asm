use64
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovle ax, ax
cmovle ax, cx
cmovle ax, dx
cmovle ax, bx
cmovle ax, sp
cmovle ax, bp
cmovle ax, si
cmovle ax, di

cmovle ax, ax
cmovle cx, ax
cmovle dx, ax
cmovle bx, ax
cmovle sp, ax
cmovle bp, ax
cmovle si, ax
cmovle di, ax

cmovle ax, di
cmovle cx, si
cmovle dx, bp
cmovle bx, sp
cmovle sp, bx
cmovle bp, dx
cmovle si, cx
cmovle di, ax

; 32-bit registers
cmovle eax, eax
cmovle eax, ecx
cmovle eax, edx
cmovle eax, ebx
cmovle eax, esp
cmovle eax, ebp
cmovle eax, esi
cmovle eax, edi

cmovle eax, eax
cmovle ecx, eax
cmovle edx, eax
cmovle ebx, eax
cmovle esp, eax
cmovle ebp, eax
cmovle esi, eax
cmovle edi, eax

cmovle eax, edi
cmovle ecx, esi
cmovle edx, ebp
cmovle ebx, esp
cmovle esp, ebx
cmovle ebp, edx
cmovle esi, ecx
cmovle edi, eax

; 64-bit registers
cmovle rax, rax
cmovle rax, rcx
cmovle rax, rdx
cmovle rax, rbx
cmovle rax, rsp
cmovle rax, rbp
cmovle rax, rsi
cmovle rax, rdi

cmovle rax, rax
cmovle rcx, rax
cmovle rdx, rax
cmovle rbx, rax
cmovle rsp, rax
cmovle rbp, rax
cmovle rsi, rax
cmovle rdi, rax

cmovle rax, rdi
cmovle rcx, rsi
cmovle rdx, rbp
cmovle rbx, rsp
cmovle rsp, rbx
cmovle rbp, rdx
cmovle rsi, rcx
cmovle rdi, rax
