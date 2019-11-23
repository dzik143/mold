use64
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovne ax, ax
cmovne ax, cx
cmovne ax, dx
cmovne ax, bx
cmovne ax, sp
cmovne ax, bp
cmovne ax, si
cmovne ax, di

cmovne ax, ax
cmovne cx, ax
cmovne dx, ax
cmovne bx, ax
cmovne sp, ax
cmovne bp, ax
cmovne si, ax
cmovne di, ax

cmovne ax, di
cmovne cx, si
cmovne dx, bp
cmovne bx, sp
cmovne sp, bx
cmovne bp, dx
cmovne si, cx
cmovne di, ax

; 32-bit registers
cmovne eax, eax
cmovne eax, ecx
cmovne eax, edx
cmovne eax, ebx
cmovne eax, esp
cmovne eax, ebp
cmovne eax, esi
cmovne eax, edi

cmovne eax, eax
cmovne ecx, eax
cmovne edx, eax
cmovne ebx, eax
cmovne esp, eax
cmovne ebp, eax
cmovne esi, eax
cmovne edi, eax

cmovne eax, edi
cmovne ecx, esi
cmovne edx, ebp
cmovne ebx, esp
cmovne esp, ebx
cmovne ebp, edx
cmovne esi, ecx
cmovne edi, eax

; 64-bit registers
cmovne rax, rax
cmovne rax, rcx
cmovne rax, rdx
cmovne rax, rbx
cmovne rax, rsp
cmovne rax, rbp
cmovne rax, rsi
cmovne rax, rdi

cmovne rax, rax
cmovne rcx, rax
cmovne rdx, rax
cmovne rbx, rax
cmovne rsp, rax
cmovne rbp, rax
cmovne rsi, rax
cmovne rdi, rax

cmovne rax, rdi
cmovne rcx, rsi
cmovne rdx, rbp
cmovne rbx, rsp
cmovne rsp, rbx
cmovne rbp, rdx
cmovne rsi, rcx
cmovne rdi, rax
