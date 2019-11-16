use64

; 8-bit registers
cmp al, al
cmp al, cl
cmp al, dl
cmp al, bl
cmp al, ah
cmp al, ch
cmp al, dh
cmp al, bh

cmp al, al
cmp cl, al
cmp dl, al
cmp bl, al
cmp ah, al
cmp ch, al
cmp dh, al
cmp bh, al

cmp al, bh
cmp cl, dh
cmp dl, ch
cmp bl, ah
cmp ah, bl
cmp ch, dl
cmp dh, cl
cmp bh, al

; 16-bit registers
cmp ax, ax
cmp ax, cx
cmp ax, dx
cmp ax, bx
cmp ax, sp
cmp ax, bp
cmp ax, si
cmp ax, di

cmp ax, ax
cmp cx, ax
cmp dx, ax
cmp bx, ax
cmp sp, ax
cmp bp, ax
cmp si, ax
cmp di, ax

cmp ax, di
cmp cx, si
cmp dx, bp
cmp bx, sp
cmp sp, bx
cmp bp, dx
cmp si, cx
cmp di, ax

; 32-bit registers
cmp eax, eax
cmp eax, ecx
cmp eax, edx
cmp eax, ebx
cmp eax, esp
cmp eax, ebp
cmp eax, esi
cmp eax, edi

cmp eax, eax
cmp ecx, eax
cmp edx, eax
cmp ebx, eax
cmp esp, eax
cmp ebp, eax
cmp esi, eax
cmp edi, eax

cmp eax, edi
cmp ecx, esi
cmp edx, ebp
cmp ebx, esp
cmp esp, ebx
cmp ebp, edx
cmp esi, ecx
cmp edi, eax

; 64-bit registers
cmp rax, rax
cmp rax, rcx
cmp rax, rdx
cmp rax, rbx
cmp rax, rsp
cmp rax, rbp
cmp rax, rsi
cmp rax, rdi

cmp rax, rax
cmp rcx, rax
cmp rdx, rax
cmp rbx, rax
cmp rsp, rax
cmp rbp, rax
cmp rsi, rax
cmp rdi, rax

cmp rax, rdi
cmp rcx, rsi
cmp rdx, rbp
cmp rbx, rsp
cmp rsp, rbx
cmp rbp, rdx
cmp rsi, rcx
cmp rdi, rax
