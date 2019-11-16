use64

; 8-bit registers
add al, al
add al, cl
add al, dl
add al, bl
add al, ah
add al, ch
add al, dh
add al, bh

add al, al
add cl, al
add dl, al
add bl, al
add ah, al
add ch, al
add dh, al
add bh, al

add al, bh
add cl, dh
add dl, ch
add bl, ah
add ah, bl
add ch, dl
add dh, cl
add bh, al

; 16-bit registers
add ax, ax
add ax, cx
add ax, dx
add ax, bx
add ax, sp
add ax, bp
add ax, si
add ax, di

add ax, ax
add cx, ax
add dx, ax
add bx, ax
add sp, ax
add bp, ax
add si, ax
add di, ax

add ax, di
add cx, si
add dx, bp
add bx, sp
add sp, bx
add bp, dx
add si, cx
add di, ax

; 32-bit registers
add eax, eax
add eax, ecx
add eax, edx
add eax, ebx
add eax, esp
add eax, ebp
add eax, esi
add eax, edi

add eax, eax
add ecx, eax
add edx, eax
add ebx, eax
add esp, eax
add ebp, eax
add esi, eax
add edi, eax

add eax, edi
add ecx, esi
add edx, ebp
add ebx, esp
add esp, ebx
add ebp, edx
add esi, ecx
add edi, eax

; 64-bit registers
add rax, rax
add rax, rcx
add rax, rdx
add rax, rbx
add rax, rsp
add rax, rbp
add rax, rsi
add rax, rdi

add rax, rax
add rcx, rax
add rdx, rax
add rbx, rax
add rsp, rax
add rbp, rax
add rsi, rax
add rdi, rax

add rax, rdi
add rcx, rsi
add rdx, rbp
add rbx, rsp
add rsp, rbx
add rbp, rdx
add rsi, rcx
add rdi, rax
