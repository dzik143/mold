use64

; 8-bit registers
xchg al, al
xchg al, cl
xchg al, dl
xchg al, bl
xchg al, ah
xchg al, ch
xchg al, dh
xchg al, bh

xchg al, al
xchg cl, al
xchg dl, al
xchg bl, al
xchg ah, al
xchg ch, al
xchg dh, al
xchg bh, al

xchg al, bh
xchg cl, dh
xchg dl, ch
xchg bl, ah
xchg ah, bl
xchg ch, dl
xchg dh, cl
xchg bh, al

; 16-bit registers
xchg ax, ax
xchg ax, cx
xchg ax, dx
xchg ax, bx
xchg ax, sp
xchg ax, bp
xchg ax, si
xchg ax, di

xchg ax, ax
xchg cx, ax
xchg dx, ax
xchg bx, ax
xchg sp, ax
xchg bp, ax
xchg si, ax
xchg di, ax

xchg ax, di
xchg cx, si
xchg dx, bp
xchg bx, sp
xchg sp, bx
xchg bp, dx
xchg si, cx
xchg di, ax

; 32-bit registers
xchg eax, eax
xchg eax, ecx
xchg eax, edx
xchg eax, ebx
xchg eax, esp
xchg eax, ebp
xchg eax, esi
xchg eax, edi

xchg eax, eax
xchg ecx, eax
xchg edx, eax
xchg ebx, eax
xchg esp, eax
xchg ebp, eax
xchg esi, eax
xchg edi, eax

xchg eax, edi
xchg ecx, esi
xchg edx, ebp
xchg ebx, esp
xchg esp, ebx
xchg ebp, edx
xchg esi, ecx
xchg edi, eax

; 64-bit registers
xchg rax, rax
xchg rax, rcx
xchg rax, rdx
xchg rax, rbx
xchg rax, rsp
xchg rax, rbp
xchg rax, rsi
xchg rax, rdi

xchg rax, rax
xchg rcx, rax
xchg rdx, rax
xchg rbx, rax
xchg rsp, rax
xchg rbp, rax
xchg rsi, rax
xchg rdi, rax

xchg rax, rdi
xchg rcx, rsi
xchg rdx, rbp
xchg rbx, rsp
xchg rsp, rbx
xchg rbp, rdx
xchg rsi, rcx
xchg rdi, rax
