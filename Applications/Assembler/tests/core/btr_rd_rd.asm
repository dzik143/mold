use64
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
btr ax, ax
btr ax, cx
btr ax, dx
btr ax, bx
btr ax, sp
btr ax, bp
btr ax, si
btr ax, di

btr ax, ax
btr cx, ax
btr dx, ax
btr bx, ax
btr sp, ax
btr bp, ax
btr si, ax
btr di, ax

btr ax, di
btr cx, si
btr dx, bp
btr bx, sp
btr sp, bx
btr bp, dx
btr si, cx
btr di, ax

; 32-bit registers
btr eax, eax
btr eax, ecx
btr eax, edx
btr eax, ebx
btr eax, esp
btr eax, ebp
btr eax, esi
btr eax, edi

btr eax, eax
btr ecx, eax
btr edx, eax
btr ebx, eax
btr esp, eax
btr ebp, eax
btr esi, eax
btr edi, eax

btr eax, edi
btr ecx, esi
btr edx, ebp
btr ebx, esp
btr esp, ebx
btr ebp, edx
btr esi, ecx
btr edi, eax

; 64-bit registers
btr rax, rax
btr rax, rcx
btr rax, rdx
btr rax, rbx
btr rax, rsp
btr rax, rbp
btr rax, rsi
btr rax, rdi

btr rax, rax
btr rcx, rax
btr rdx, rax
btr rbx, rax
btr rsp, rax
btr rbp, rax
btr rsi, rax
btr rdi, rax

btr rax, rdi
btr rcx, rsi
btr rdx, rbp
btr rbx, rsp
btr rsp, rbx
btr rbp, rdx
btr rsi, rcx
btr rdi, rax
