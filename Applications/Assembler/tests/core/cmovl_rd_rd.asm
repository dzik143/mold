use64
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovl ax, ax
cmovl ax, cx
cmovl ax, dx
cmovl ax, bx
cmovl ax, sp
cmovl ax, bp
cmovl ax, si
cmovl ax, di

cmovl ax, ax
cmovl cx, ax
cmovl dx, ax
cmovl bx, ax
cmovl sp, ax
cmovl bp, ax
cmovl si, ax
cmovl di, ax

cmovl ax, di
cmovl cx, si
cmovl dx, bp
cmovl bx, sp
cmovl sp, bx
cmovl bp, dx
cmovl si, cx
cmovl di, ax

; 32-bit registers
cmovl eax, eax
cmovl eax, ecx
cmovl eax, edx
cmovl eax, ebx
cmovl eax, esp
cmovl eax, ebp
cmovl eax, esi
cmovl eax, edi

cmovl eax, eax
cmovl ecx, eax
cmovl edx, eax
cmovl ebx, eax
cmovl esp, eax
cmovl ebp, eax
cmovl esi, eax
cmovl edi, eax

cmovl eax, edi
cmovl ecx, esi
cmovl edx, ebp
cmovl ebx, esp
cmovl esp, ebx
cmovl ebp, edx
cmovl esi, ecx
cmovl edi, eax

; 64-bit registers
cmovl rax, rax
cmovl rax, rcx
cmovl rax, rdx
cmovl rax, rbx
cmovl rax, rsp
cmovl rax, rbp
cmovl rax, rsi
cmovl rax, rdi

cmovl rax, rax
cmovl rcx, rax
cmovl rdx, rax
cmovl rbx, rax
cmovl rsp, rax
cmovl rbp, rax
cmovl rsi, rax
cmovl rdi, rax

cmovl rax, rdi
cmovl rcx, rsi
cmovl rdx, rbp
cmovl rbx, rsp
cmovl rsp, rbx
cmovl rbp, rdx
cmovl rsi, rcx
cmovl rdi, rax
