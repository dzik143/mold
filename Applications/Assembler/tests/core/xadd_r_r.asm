use64

; 8-bit registers
xadd al, al
xadd al, cl
xadd al, dl
xadd al, bl
xadd al, ah
xadd al, ch
xadd al, dh
xadd al, bh

xadd al, al
xadd cl, al
xadd dl, al
xadd bl, al
xadd ah, al
xadd ch, al
xadd dh, al
xadd bh, al

xadd al, bh
xadd cl, dh
xadd dl, ch
xadd bl, ah
xadd ah, bl
xadd ch, dl
xadd dh, cl
xadd bh, al

; 16-bit registers
xadd ax, ax
xadd ax, cx
xadd ax, dx
xadd ax, bx
xadd ax, sp
xadd ax, bp
xadd ax, si
xadd ax, di

xadd ax, ax
xadd cx, ax
xadd dx, ax
xadd bx, ax
xadd sp, ax
xadd bp, ax
xadd si, ax
xadd di, ax

xadd ax, di
xadd cx, si
xadd dx, bp
xadd bx, sp
xadd sp, bx
xadd bp, dx
xadd si, cx
xadd di, ax

; 32-bit registers
xadd eax, eax
xadd eax, ecx
xadd eax, edx
xadd eax, ebx
xadd eax, esp
xadd eax, ebp
xadd eax, esi
xadd eax, edi

xadd eax, eax
xadd ecx, eax
xadd edx, eax
xadd ebx, eax
xadd esp, eax
xadd ebp, eax
xadd esi, eax
xadd edi, eax

xadd eax, edi
xadd ecx, esi
xadd edx, ebp
xadd ebx, esp
xadd esp, ebx
xadd ebp, edx
xadd esi, ecx
xadd edi, eax

; 64-bit registers
xadd rax, rax
xadd rax, rcx
xadd rax, rdx
xadd rax, rbx
xadd rax, rsp
xadd rax, rbp
xadd rax, rsi
xadd rax, rdi

xadd rax, rax
xadd rcx, rax
xadd rdx, rax
xadd rbx, rax
xadd rsp, rax
xadd rbp, rax
xadd rsi, rax
xadd rdi, rax

xadd rax, rdi
xadd rcx, rsi
xadd rdx, rbp
xadd rbx, rsp
xadd rsp, rbx
xadd rbp, rdx
xadd rsi, rcx
xadd rdi, rax
