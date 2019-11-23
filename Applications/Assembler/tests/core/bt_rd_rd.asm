use64
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
bt ax, ax
bt ax, cx
bt ax, dx
bt ax, bx
bt ax, sp
bt ax, bp
bt ax, si
bt ax, di

bt ax, ax
bt cx, ax
bt dx, ax
bt bx, ax
bt sp, ax
bt bp, ax
bt si, ax
bt di, ax

bt ax, di
bt cx, si
bt dx, bp
bt bx, sp
bt sp, bx
bt bp, dx
bt si, cx
bt di, ax

; 32-bit registers
bt eax, eax
bt eax, ecx
bt eax, edx
bt eax, ebx
bt eax, esp
bt eax, ebp
bt eax, esi
bt eax, edi

bt eax, eax
bt ecx, eax
bt edx, eax
bt ebx, eax
bt esp, eax
bt ebp, eax
bt esi, eax
bt edi, eax

bt eax, edi
bt ecx, esi
bt edx, ebp
bt ebx, esp
bt esp, ebx
bt ebp, edx
bt esi, ecx
bt edi, eax

; 64-bit registers
bt rax, rax
bt rax, rcx
bt rax, rdx
bt rax, rbx
bt rax, rsp
bt rax, rbp
bt rax, rsi
bt rax, rdi

bt rax, rax
bt rcx, rax
bt rdx, rax
bt rbx, rax
bt rsp, rax
bt rbp, rax
bt rsi, rax
bt rdi, rax

bt rax, rdi
bt rcx, rsi
bt rdx, rbp
bt rbx, rsp
bt rsp, rbx
bt rbp, rdx
bt rsi, rcx
bt rdi, rax
