use64

; 8-bit registers
mov al, al
mov al, cl
mov al, dl
mov al, bl
mov al, ah
mov al, ch
mov al, dh
mov al, bh

mov al, al
mov cl, al
mov dl, al
mov bl, al
mov ah, al
mov ch, al
mov dh, al
mov bh, al

mov al, bh
mov cl, dh
mov dl, ch
mov bl, ah
mov ah, bl
mov ch, dl
mov dh, cl
mov bh, al

; 16-bit registers
mov ax, ax
mov ax, cx
mov ax, dx
mov ax, bx
mov ax, sp
mov ax, bp
mov ax, si
mov ax, di

mov ax, ax
mov cx, ax
mov dx, ax
mov bx, ax
mov sp, ax
mov bp, ax
mov si, ax
mov di, ax

mov ax, di
mov cx, si
mov dx, bp
mov bx, sp
mov sp, bx
mov bp, dx
mov si, cx
mov di, ax

; 32-bit registers
mov eax, eax
mov eax, ecx
mov eax, edx
mov eax, ebx
mov eax, esp
mov eax, ebp
mov eax, esi
mov eax, edi

mov eax, eax
mov ecx, eax
mov edx, eax
mov ebx, eax
mov esp, eax
mov ebp, eax
mov esi, eax
mov edi, eax

mov eax, edi
mov ecx, esi
mov edx, ebp
mov ebx, esp
mov esp, ebx
mov ebp, edx
mov esi, ecx
mov edi, eax

; 64-bit registers
mov rax, rax
mov rax, rcx
mov rax, rdx
mov rax, rbx
mov rax, rsp
mov rax, rbp
mov rax, rsi
mov rax, rdi

mov rax, rax
mov rcx, rax
mov rdx, rax
mov rbx, rax
mov rsp, rax
mov rbp, rax
mov rsi, rax
mov rdi, rax

mov rax, rdi
mov rcx, rsi
mov rdx, rbp
mov rbx, rsp
mov rsp, rbx
mov rbp, rdx
mov rsi, rcx
mov rdi, rax
