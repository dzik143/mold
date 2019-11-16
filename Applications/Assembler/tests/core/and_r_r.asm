use64

; 8-bit registers
and al, al
and al, cl
and al, dl
and al, bl
and al, ah
and al, ch
and al, dh
and al, bh

and al, al
and cl, al
and dl, al
and bl, al
and ah, al
and ch, al
and dh, al
and bh, al

and al, bh
and cl, dh
and dl, ch
and bl, ah
and ah, bl
and ch, dl
and dh, cl
and bh, al

; 16-bit registers
and ax, ax
and ax, cx
and ax, dx
and ax, bx
and ax, sp
and ax, bp
and ax, si
and ax, di

and ax, ax
and cx, ax
and dx, ax
and bx, ax
and sp, ax
and bp, ax
and si, ax
and di, ax

and ax, di
and cx, si
and dx, bp
and bx, sp
and sp, bx
and bp, dx
and si, cx
and di, ax

; 32-bit registers
and eax, eax
and eax, ecx
and eax, edx
and eax, ebx
and eax, esp
and eax, ebp
and eax, esi
and eax, edi

and eax, eax
and ecx, eax
and edx, eax
and ebx, eax
and esp, eax
and ebp, eax
and esi, eax
and edi, eax

and eax, edi
and ecx, esi
and edx, ebp
and ebx, esp
and esp, ebx
and ebp, edx
and esi, ecx
and edi, eax

; 64-bit registers
and rax, rax
and rax, rcx
and rax, rdx
and rax, rbx
and rax, rsp
and rax, rbp
and rax, rsi
and rax, rdi

and rax, rax
and rcx, rax
and rdx, rax
and rbx, rax
and rsp, rax
and rbp, rax
and rsi, rax
and rdi, rax

and rax, rdi
and rcx, rsi
and rdx, rbp
and rbx, rsp
and rsp, rbx
and rbp, rdx
and rsi, rcx
and rdi, rax
