use64
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovnl ax, ax
cmovnl ax, cx
cmovnl ax, dx
cmovnl ax, bx
cmovnl ax, sp
cmovnl ax, bp
cmovnl ax, si
cmovnl ax, di

cmovnl ax, ax
cmovnl cx, ax
cmovnl dx, ax
cmovnl bx, ax
cmovnl sp, ax
cmovnl bp, ax
cmovnl si, ax
cmovnl di, ax

cmovnl ax, di
cmovnl cx, si
cmovnl dx, bp
cmovnl bx, sp
cmovnl sp, bx
cmovnl bp, dx
cmovnl si, cx
cmovnl di, ax

; 32-bit registers
cmovnl eax, eax
cmovnl eax, ecx
cmovnl eax, edx
cmovnl eax, ebx
cmovnl eax, esp
cmovnl eax, ebp
cmovnl eax, esi
cmovnl eax, edi

cmovnl eax, eax
cmovnl ecx, eax
cmovnl edx, eax
cmovnl ebx, eax
cmovnl esp, eax
cmovnl ebp, eax
cmovnl esi, eax
cmovnl edi, eax

cmovnl eax, edi
cmovnl ecx, esi
cmovnl edx, ebp
cmovnl ebx, esp
cmovnl esp, ebx
cmovnl ebp, edx
cmovnl esi, ecx
cmovnl edi, eax

; 64-bit registers
cmovnl rax, rax
cmovnl rax, rcx
cmovnl rax, rdx
cmovnl rax, rbx
cmovnl rax, rsp
cmovnl rax, rbp
cmovnl rax, rsi
cmovnl rax, rdi

cmovnl rax, rax
cmovnl rcx, rax
cmovnl rdx, rax
cmovnl rbx, rax
cmovnl rsp, rax
cmovnl rbp, rax
cmovnl rsi, rax
cmovnl rdi, rax

cmovnl rax, rdi
cmovnl rcx, rsi
cmovnl rdx, rbp
cmovnl rbx, rsp
cmovnl rsp, rbx
cmovnl rbp, rdx
cmovnl rsi, rcx
cmovnl rdi, rax
