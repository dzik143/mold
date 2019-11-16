use64

; 8-bit registers
test al, al
test al, cl
test al, dl
test al, bl
test al, ah
test al, ch
test al, dh
test al, bh

test al, al
test cl, al
test dl, al
test bl, al
test ah, al
test ch, al
test dh, al
test bh, al

test al, bh
test cl, dh
test dl, ch
test bl, ah
test ah, bl
test ch, dl
test dh, cl
test bh, al

; 16-bit registers
test ax, ax
test ax, cx
test ax, dx
test ax, bx
test ax, sp
test ax, bp
test ax, si
test ax, di

test ax, ax
test cx, ax
test dx, ax
test bx, ax
test sp, ax
test bp, ax
test si, ax
test di, ax

test ax, di
test cx, si
test dx, bp
test bx, sp
test sp, bx
test bp, dx
test si, cx
test di, ax

; 32-bit registers
test eax, eax
test eax, ecx
test eax, edx
test eax, ebx
test eax, esp
test eax, ebp
test eax, esi
test eax, edi

test eax, eax
test ecx, eax
test edx, eax
test ebx, eax
test esp, eax
test ebp, eax
test esi, eax
test edi, eax

test eax, edi
test ecx, esi
test edx, ebp
test ebx, esp
test esp, ebx
test ebp, edx
test esi, ecx
test edi, eax

; 64-bit registers
test rax, rax
test rax, rcx
test rax, rdx
test rax, rbx
test rax, rsp
test rax, rbp
test rax, rsi
test rax, rdi

test rax, rax
test rcx, rax
test rdx, rax
test rbx, rax
test rsp, rax
test rbp, rax
test rsi, rax
test rdi, rax

test rax, rdi
test rcx, rsi
test rdx, rbp
test rbx, rsp
test rsp, rbx
test rbp, rdx
test rsi, rcx
test rdi, rax
