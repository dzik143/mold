use64

; 8-bit registers
xor al, al
xor al, cl
xor al, dl
xor al, bl
xor al, ah
xor al, ch
xor al, dh
xor al, bh

xor al, al
xor cl, al
xor dl, al
xor bl, al
xor ah, al
xor ch, al
xor dh, al
xor bh, al

xor al, bh
xor cl, dh
xor dl, ch
xor bl, ah
xor ah, bl
xor ch, dl
xor dh, cl
xor bh, al

; 16-bit registers
xor ax, ax
xor ax, cx
xor ax, dx
xor ax, bx
xor ax, sp
xor ax, bp
xor ax, si
xor ax, di

xor ax, ax
xor cx, ax
xor dx, ax
xor bx, ax
xor sp, ax
xor bp, ax
xor si, ax
xor di, ax

xor ax, di
xor cx, si
xor dx, bp
xor bx, sp
xor sp, bx
xor bp, dx
xor si, cx
xor di, ax

; 32-bit registers
xor eax, eax
xor eax, ecx
xor eax, edx
xor eax, ebx
xor eax, esp
xor eax, ebp
xor eax, esi
xor eax, edi

xor eax, eax
xor ecx, eax
xor edx, eax
xor ebx, eax
xor esp, eax
xor ebp, eax
xor esi, eax
xor edi, eax

xor eax, edi
xor ecx, esi
xor edx, ebp
xor ebx, esp
xor esp, ebx
xor ebp, edx
xor esi, ecx
xor edi, eax

; 64-bit registers
xor rax, rax
xor rax, rcx
xor rax, rdx
xor rax, rbx
xor rax, rsp
xor rax, rbp
xor rax, rsi
xor rax, rdi

xor rax, rax
xor rcx, rax
xor rdx, rax
xor rbx, rax
xor rsp, rax
xor rbp, rax
xor rsi, rax
xor rdi, rax

xor rax, rdi
xor rcx, rsi
xor rdx, rbp
xor rbx, rsp
xor rsp, rbx
xor rbp, rdx
xor rsi, rcx
xor rdi, rax
