use64
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
btc ax, ax
btc ax, cx
btc ax, dx
btc ax, bx
btc ax, sp
btc ax, bp
btc ax, si
btc ax, di

btc ax, ax
btc cx, ax
btc dx, ax
btc bx, ax
btc sp, ax
btc bp, ax
btc si, ax
btc di, ax

btc ax, di
btc cx, si
btc dx, bp
btc bx, sp
btc sp, bx
btc bp, dx
btc si, cx
btc di, ax

; 32-bit registers
btc eax, eax
btc eax, ecx
btc eax, edx
btc eax, ebx
btc eax, esp
btc eax, ebp
btc eax, esi
btc eax, edi

btc eax, eax
btc ecx, eax
btc edx, eax
btc ebx, eax
btc esp, eax
btc ebp, eax
btc esi, eax
btc edi, eax

btc eax, edi
btc ecx, esi
btc edx, ebp
btc ebx, esp
btc esp, ebx
btc ebp, edx
btc esi, ecx
btc edi, eax

; 64-bit registers
btc rax, rax
btc rax, rcx
btc rax, rdx
btc rax, rbx
btc rax, rsp
btc rax, rbp
btc rax, rsi
btc rax, rdi

btc rax, rax
btc rcx, rax
btc rdx, rax
btc rbx, rax
btc rsp, rax
btc rbp, rax
btc rsi, rax
btc rdi, rax

btc rax, rdi
btc rcx, rsi
btc rdx, rbp
btc rbx, rsp
btc rsp, rbx
btc rbp, rdx
btc rsi, rcx
btc rdi, rax
