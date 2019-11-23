use64
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
bts ax, ax
bts ax, cx
bts ax, dx
bts ax, bx
bts ax, sp
bts ax, bp
bts ax, si
bts ax, di

bts ax, ax
bts cx, ax
bts dx, ax
bts bx, ax
bts sp, ax
bts bp, ax
bts si, ax
bts di, ax

bts ax, di
bts cx, si
bts dx, bp
bts bx, sp
bts sp, bx
bts bp, dx
bts si, cx
bts di, ax

; 32-bit registers
bts eax, eax
bts eax, ecx
bts eax, edx
bts eax, ebx
bts eax, esp
bts eax, ebp
bts eax, esi
bts eax, edi

bts eax, eax
bts ecx, eax
bts edx, eax
bts ebx, eax
bts esp, eax
bts ebp, eax
bts esi, eax
bts edi, eax

bts eax, edi
bts ecx, esi
bts edx, ebp
bts ebx, esp
bts esp, ebx
bts ebp, edx
bts esi, ecx
bts edi, eax

; 64-bit registers
bts rax, rax
bts rax, rcx
bts rax, rdx
bts rax, rbx
bts rax, rsp
bts rax, rbp
bts rax, rsi
bts rax, rdi

bts rax, rax
bts rcx, rax
bts rdx, rax
bts rbx, rax
bts rsp, rax
bts rbp, rax
bts rsi, rax
bts rdi, rax

bts rax, rdi
bts rcx, rsi
bts rdx, rbp
bts rbx, rsp
bts rsp, rbx
bts rbp, rdx
bts rsi, rcx
bts rdi, rax
