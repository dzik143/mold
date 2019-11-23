use64
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovo ax, ax
cmovo ax, cx
cmovo ax, dx
cmovo ax, bx
cmovo ax, sp
cmovo ax, bp
cmovo ax, si
cmovo ax, di

cmovo ax, ax
cmovo cx, ax
cmovo dx, ax
cmovo bx, ax
cmovo sp, ax
cmovo bp, ax
cmovo si, ax
cmovo di, ax

cmovo ax, di
cmovo cx, si
cmovo dx, bp
cmovo bx, sp
cmovo sp, bx
cmovo bp, dx
cmovo si, cx
cmovo di, ax

; 32-bit registers
cmovo eax, eax
cmovo eax, ecx
cmovo eax, edx
cmovo eax, ebx
cmovo eax, esp
cmovo eax, ebp
cmovo eax, esi
cmovo eax, edi

cmovo eax, eax
cmovo ecx, eax
cmovo edx, eax
cmovo ebx, eax
cmovo esp, eax
cmovo ebp, eax
cmovo esi, eax
cmovo edi, eax

cmovo eax, edi
cmovo ecx, esi
cmovo edx, ebp
cmovo ebx, esp
cmovo esp, ebx
cmovo ebp, edx
cmovo esi, ecx
cmovo edi, eax

; 64-bit registers
cmovo rax, rax
cmovo rax, rcx
cmovo rax, rdx
cmovo rax, rbx
cmovo rax, rsp
cmovo rax, rbp
cmovo rax, rsi
cmovo rax, rdi

cmovo rax, rax
cmovo rcx, rax
cmovo rdx, rax
cmovo rbx, rax
cmovo rsp, rax
cmovo rbp, rax
cmovo rsi, rax
cmovo rdi, rax

cmovo rax, rdi
cmovo rcx, rsi
cmovo rdx, rbp
cmovo rbx, rsp
cmovo rsp, rbx
cmovo rbp, rdx
cmovo rsi, rcx
cmovo rdi, rax
