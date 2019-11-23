use64
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovs ax, ax
cmovs ax, cx
cmovs ax, dx
cmovs ax, bx
cmovs ax, sp
cmovs ax, bp
cmovs ax, si
cmovs ax, di

cmovs ax, ax
cmovs cx, ax
cmovs dx, ax
cmovs bx, ax
cmovs sp, ax
cmovs bp, ax
cmovs si, ax
cmovs di, ax

cmovs ax, di
cmovs cx, si
cmovs dx, bp
cmovs bx, sp
cmovs sp, bx
cmovs bp, dx
cmovs si, cx
cmovs di, ax

; 32-bit registers
cmovs eax, eax
cmovs eax, ecx
cmovs eax, edx
cmovs eax, ebx
cmovs eax, esp
cmovs eax, ebp
cmovs eax, esi
cmovs eax, edi

cmovs eax, eax
cmovs ecx, eax
cmovs edx, eax
cmovs ebx, eax
cmovs esp, eax
cmovs ebp, eax
cmovs esi, eax
cmovs edi, eax

cmovs eax, edi
cmovs ecx, esi
cmovs edx, ebp
cmovs ebx, esp
cmovs esp, ebx
cmovs ebp, edx
cmovs esi, ecx
cmovs edi, eax

; 64-bit registers
cmovs rax, rax
cmovs rax, rcx
cmovs rax, rdx
cmovs rax, rbx
cmovs rax, rsp
cmovs rax, rbp
cmovs rax, rsi
cmovs rax, rdi

cmovs rax, rax
cmovs rcx, rax
cmovs rdx, rax
cmovs rbx, rax
cmovs rsp, rax
cmovs rbp, rax
cmovs rsi, rax
cmovs rdi, rax

cmovs rax, rdi
cmovs rcx, rsi
cmovs rdx, rbp
cmovs rbx, rsp
cmovs rsp, rbx
cmovs rbp, rdx
cmovs rsi, rcx
cmovs rdi, rax
