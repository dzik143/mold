use64
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmove ax, ax
cmove ax, cx
cmove ax, dx
cmove ax, bx
cmove ax, sp
cmove ax, bp
cmove ax, si
cmove ax, di

cmove ax, ax
cmove cx, ax
cmove dx, ax
cmove bx, ax
cmove sp, ax
cmove bp, ax
cmove si, ax
cmove di, ax

cmove ax, di
cmove cx, si
cmove dx, bp
cmove bx, sp
cmove sp, bx
cmove bp, dx
cmove si, cx
cmove di, ax

; 32-bit registers
cmove eax, eax
cmove eax, ecx
cmove eax, edx
cmove eax, ebx
cmove eax, esp
cmove eax, ebp
cmove eax, esi
cmove eax, edi

cmove eax, eax
cmove ecx, eax
cmove edx, eax
cmove ebx, eax
cmove esp, eax
cmove ebp, eax
cmove esi, eax
cmove edi, eax

cmove eax, edi
cmove ecx, esi
cmove edx, ebp
cmove ebx, esp
cmove esp, ebx
cmove ebp, edx
cmove esi, ecx
cmove edi, eax

; 64-bit registers
cmove rax, rax
cmove rax, rcx
cmove rax, rdx
cmove rax, rbx
cmove rax, rsp
cmove rax, rbp
cmove rax, rsi
cmove rax, rdi

cmove rax, rax
cmove rcx, rax
cmove rdx, rax
cmove rbx, rax
cmove rsp, rax
cmove rbp, rax
cmove rsi, rax
cmove rdi, rax

cmove rax, rdi
cmove rcx, rsi
cmove rdx, rbp
cmove rbx, rsp
cmove rsp, rbx
cmove rbp, rdx
cmove rsi, rcx
cmove rdi, rax
