use64

; 8-bit registers
sbb al, al
sbb al, cl
sbb al, dl
sbb al, bl
sbb al, ah
sbb al, ch
sbb al, dh
sbb al, bh

sbb al, al
sbb cl, al
sbb dl, al
sbb bl, al
sbb ah, al
sbb ch, al
sbb dh, al
sbb bh, al

sbb al, bh
sbb cl, dh
sbb dl, ch
sbb bl, ah
sbb ah, bl
sbb ch, dl
sbb dh, cl
sbb bh, al

; 16-bit registers
sbb ax, ax
sbb ax, cx
sbb ax, dx
sbb ax, bx
sbb ax, sp
sbb ax, bp
sbb ax, si
sbb ax, di

sbb ax, ax
sbb cx, ax
sbb dx, ax
sbb bx, ax
sbb sp, ax
sbb bp, ax
sbb si, ax
sbb di, ax

sbb ax, di
sbb cx, si
sbb dx, bp
sbb bx, sp
sbb sp, bx
sbb bp, dx
sbb si, cx
sbb di, ax

; 32-bit registers
sbb eax, eax
sbb eax, ecx
sbb eax, edx
sbb eax, ebx
sbb eax, esp
sbb eax, ebp
sbb eax, esi
sbb eax, edi

sbb eax, eax
sbb ecx, eax
sbb edx, eax
sbb ebx, eax
sbb esp, eax
sbb ebp, eax
sbb esi, eax
sbb edi, eax

sbb eax, edi
sbb ecx, esi
sbb edx, ebp
sbb ebx, esp
sbb esp, ebx
sbb ebp, edx
sbb esi, ecx
sbb edi, eax

; 64-bit registers
sbb rax, rax
sbb rax, rcx
sbb rax, rdx
sbb rax, rbx
sbb rax, rsp
sbb rax, rbp
sbb rax, rsi
sbb rax, rdi

sbb rax, rax
sbb rcx, rax
sbb rdx, rax
sbb rbx, rax
sbb rsp, rax
sbb rbp, rax
sbb rsi, rax
sbb rdi, rax

sbb rax, rdi
sbb rcx, rsi
sbb rdx, rbp
sbb rbx, rsp
sbb rsp, rbx
sbb rbp, rdx
sbb rsi, rcx
sbb rdi, rax
