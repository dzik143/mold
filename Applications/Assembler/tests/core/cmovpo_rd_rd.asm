use64
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovpo ax, ax
cmovpo ax, cx
cmovpo ax, dx
cmovpo ax, bx
cmovpo ax, sp
cmovpo ax, bp
cmovpo ax, si
cmovpo ax, di

cmovpo ax, ax
cmovpo cx, ax
cmovpo dx, ax
cmovpo bx, ax
cmovpo sp, ax
cmovpo bp, ax
cmovpo si, ax
cmovpo di, ax

cmovpo ax, di
cmovpo cx, si
cmovpo dx, bp
cmovpo bx, sp
cmovpo sp, bx
cmovpo bp, dx
cmovpo si, cx
cmovpo di, ax

; 32-bit registers
cmovpo eax, eax
cmovpo eax, ecx
cmovpo eax, edx
cmovpo eax, ebx
cmovpo eax, esp
cmovpo eax, ebp
cmovpo eax, esi
cmovpo eax, edi

cmovpo eax, eax
cmovpo ecx, eax
cmovpo edx, eax
cmovpo ebx, eax
cmovpo esp, eax
cmovpo ebp, eax
cmovpo esi, eax
cmovpo edi, eax

cmovpo eax, edi
cmovpo ecx, esi
cmovpo edx, ebp
cmovpo ebx, esp
cmovpo esp, ebx
cmovpo ebp, edx
cmovpo esi, ecx
cmovpo edi, eax

; 64-bit registers
cmovpo rax, rax
cmovpo rax, rcx
cmovpo rax, rdx
cmovpo rax, rbx
cmovpo rax, rsp
cmovpo rax, rbp
cmovpo rax, rsi
cmovpo rax, rdi

cmovpo rax, rax
cmovpo rcx, rax
cmovpo rdx, rax
cmovpo rbx, rax
cmovpo rsp, rax
cmovpo rbp, rax
cmovpo rsi, rax
cmovpo rdi, rax

cmovpo rax, rdi
cmovpo rcx, rsi
cmovpo rdx, rbp
cmovpo rbx, rsp
cmovpo rsp, rbx
cmovpo rbp, rdx
cmovpo rsi, rcx
cmovpo rdi, rax
