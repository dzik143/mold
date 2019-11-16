use64

; 8-bit registers
adc al, al
adc al, cl
adc al, dl
adc al, bl
adc al, ah
adc al, ch
adc al, dh
adc al, bh

adc al, al
adc cl, al
adc dl, al
adc bl, al
adc ah, al
adc ch, al
adc dh, al
adc bh, al

adc al, bh
adc cl, dh
adc dl, ch
adc bl, ah
adc ah, bl
adc ch, dl
adc dh, cl
adc bh, al

; 16-bit registers
adc ax, ax
adc ax, cx
adc ax, dx
adc ax, bx
adc ax, sp
adc ax, bp
adc ax, si
adc ax, di

adc ax, ax
adc cx, ax
adc dx, ax
adc bx, ax
adc sp, ax
adc bp, ax
adc si, ax
adc di, ax

adc ax, di
adc cx, si
adc dx, bp
adc bx, sp
adc sp, bx
adc bp, dx
adc si, cx
adc di, ax

; 32-bit registers
adc eax, eax
adc eax, ecx
adc eax, edx
adc eax, ebx
adc eax, esp
adc eax, ebp
adc eax, esi
adc eax, edi

adc eax, eax
adc ecx, eax
adc edx, eax
adc ebx, eax
adc esp, eax
adc ebp, eax
adc esi, eax
adc edi, eax

adc eax, edi
adc ecx, esi
adc edx, ebp
adc ebx, esp
adc esp, ebx
adc ebp, edx
adc esi, ecx
adc edi, eax

; 64-bit registers
adc rax, rax
adc rax, rcx
adc rax, rdx
adc rax, rbx
adc rax, rsp
adc rax, rbp
adc rax, rsi
adc rax, rdi

adc rax, rax
adc rcx, rax
adc rdx, rax
adc rbx, rax
adc rsp, rax
adc rbp, rax
adc rsi, rax
adc rdi, rax

adc rax, rdi
adc rcx, rsi
adc rdx, rbp
adc rbx, rsp
adc rsp, rbx
adc rbp, rdx
adc rsi, rcx
adc rdi, rax
