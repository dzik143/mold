use64

; 8-bit registers
cmpxchg al, al
cmpxchg al, cl
cmpxchg al, dl
cmpxchg al, bl
cmpxchg al, ah
cmpxchg al, ch
cmpxchg al, dh
cmpxchg al, bh

cmpxchg al, al
cmpxchg cl, al
cmpxchg dl, al
cmpxchg bl, al
cmpxchg ah, al
cmpxchg ch, al
cmpxchg dh, al
cmpxchg bh, al

cmpxchg al, bh
cmpxchg cl, dh
cmpxchg dl, ch
cmpxchg bl, ah
cmpxchg ah, bl
cmpxchg ch, dl
cmpxchg dh, cl
cmpxchg bh, al

; 16-bit registers
cmpxchg ax, ax
cmpxchg ax, cx
cmpxchg ax, dx
cmpxchg ax, bx
cmpxchg ax, sp
cmpxchg ax, bp
cmpxchg ax, si
cmpxchg ax, di

cmpxchg ax, ax
cmpxchg cx, ax
cmpxchg dx, ax
cmpxchg bx, ax
cmpxchg sp, ax
cmpxchg bp, ax
cmpxchg si, ax
cmpxchg di, ax

cmpxchg ax, di
cmpxchg cx, si
cmpxchg dx, bp
cmpxchg bx, sp
cmpxchg sp, bx
cmpxchg bp, dx
cmpxchg si, cx
cmpxchg di, ax

; 32-bit registers
cmpxchg eax, eax
cmpxchg eax, ecx
cmpxchg eax, edx
cmpxchg eax, ebx
cmpxchg eax, esp
cmpxchg eax, ebp
cmpxchg eax, esi
cmpxchg eax, edi

cmpxchg eax, eax
cmpxchg ecx, eax
cmpxchg edx, eax
cmpxchg ebx, eax
cmpxchg esp, eax
cmpxchg ebp, eax
cmpxchg esi, eax
cmpxchg edi, eax

cmpxchg eax, edi
cmpxchg ecx, esi
cmpxchg edx, ebp
cmpxchg ebx, esp
cmpxchg esp, ebx
cmpxchg ebp, edx
cmpxchg esi, ecx
cmpxchg edi, eax

; 64-bit registers
cmpxchg rax, rax
cmpxchg rax, rcx
cmpxchg rax, rdx
cmpxchg rax, rbx
cmpxchg rax, rsp
cmpxchg rax, rbp
cmpxchg rax, rsi
cmpxchg rax, rdi

cmpxchg rax, rax
cmpxchg rcx, rax
cmpxchg rdx, rax
cmpxchg rbx, rax
cmpxchg rsp, rax
cmpxchg rbp, rax
cmpxchg rsi, rax
cmpxchg rdi, rax

cmpxchg rax, rdi
cmpxchg rcx, rsi
cmpxchg rdx, rbp
cmpxchg rbx, rsp
cmpxchg rsp, rbx
cmpxchg rbp, rdx
cmpxchg rsi, rcx
cmpxchg rdi, rax
