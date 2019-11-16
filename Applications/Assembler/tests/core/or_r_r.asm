use64

; 8-bit registers
or al, al
or al, cl
or al, dl
or al, bl
or al, ah
or al, ch
or al, dh
or al, bh

or al, al
or cl, al
or dl, al
or bl, al
or ah, al
or ch, al
or dh, al
or bh, al

or al, bh
or cl, dh
or dl, ch
or bl, ah
or ah, bl
or ch, dl
or dh, cl
or bh, al

; 16-bit registers
or ax, ax
or ax, cx
or ax, dx
or ax, bx
or ax, sp
or ax, bp
or ax, si
or ax, di

or ax, ax
or cx, ax
or dx, ax
or bx, ax
or sp, ax
or bp, ax
or si, ax
or di, ax

or ax, di
or cx, si
or dx, bp
or bx, sp
or sp, bx
or bp, dx
or si, cx
or di, ax

; 32-bit registers
or eax, eax
or eax, ecx
or eax, edx
or eax, ebx
or eax, esp
or eax, ebp
or eax, esi
or eax, edi

or eax, eax
or ecx, eax
or edx, eax
or ebx, eax
or esp, eax
or ebp, eax
or esi, eax
or edi, eax

or eax, edi
or ecx, esi
or edx, ebp
or ebx, esp
or esp, ebx
or ebp, edx
or esi, ecx
or edi, eax

; 64-bit registers
or rax, rax
or rax, rcx
or rax, rdx
or rax, rbx
or rax, rsp
or rax, rbp
or rax, rsi
or rax, rdi

or rax, rax
or rcx, rax
or rdx, rax
or rbx, rax
or rsp, rax
or rbp, rax
or rsi, rax
or rdi, rax

or rax, rdi
or rcx, rsi
or rdx, rbp
or rbx, rsp
or rsp, rbx
or rbp, rdx
or rsi, rcx
or rdi, rax
