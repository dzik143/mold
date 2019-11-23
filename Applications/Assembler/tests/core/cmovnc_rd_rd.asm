use64
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovnc ax, ax
cmovnc ax, cx
cmovnc ax, dx
cmovnc ax, bx
cmovnc ax, sp
cmovnc ax, bp
cmovnc ax, si
cmovnc ax, di

cmovnc ax, ax
cmovnc cx, ax
cmovnc dx, ax
cmovnc bx, ax
cmovnc sp, ax
cmovnc bp, ax
cmovnc si, ax
cmovnc di, ax

cmovnc ax, di
cmovnc cx, si
cmovnc dx, bp
cmovnc bx, sp
cmovnc sp, bx
cmovnc bp, dx
cmovnc si, cx
cmovnc di, ax

; 32-bit registers
cmovnc eax, eax
cmovnc eax, ecx
cmovnc eax, edx
cmovnc eax, ebx
cmovnc eax, esp
cmovnc eax, ebp
cmovnc eax, esi
cmovnc eax, edi

cmovnc eax, eax
cmovnc ecx, eax
cmovnc edx, eax
cmovnc ebx, eax
cmovnc esp, eax
cmovnc ebp, eax
cmovnc esi, eax
cmovnc edi, eax

cmovnc eax, edi
cmovnc ecx, esi
cmovnc edx, ebp
cmovnc ebx, esp
cmovnc esp, ebx
cmovnc ebp, edx
cmovnc esi, ecx
cmovnc edi, eax

; 64-bit registers
cmovnc rax, rax
cmovnc rax, rcx
cmovnc rax, rdx
cmovnc rax, rbx
cmovnc rax, rsp
cmovnc rax, rbp
cmovnc rax, rsi
cmovnc rax, rdi

cmovnc rax, rax
cmovnc rcx, rax
cmovnc rdx, rax
cmovnc rbx, rax
cmovnc rsp, rax
cmovnc rbp, rax
cmovnc rsi, rax
cmovnc rdi, rax

cmovnc rax, rdi
cmovnc rcx, rsi
cmovnc rdx, rbp
cmovnc rbx, rsp
cmovnc rsp, rbx
cmovnc rbp, rdx
cmovnc rsi, rcx
cmovnc rdi, rax
