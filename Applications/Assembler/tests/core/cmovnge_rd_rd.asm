use64
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovnge ax, ax
cmovnge ax, cx
cmovnge ax, dx
cmovnge ax, bx
cmovnge ax, sp
cmovnge ax, bp
cmovnge ax, si
cmovnge ax, di

cmovnge ax, ax
cmovnge cx, ax
cmovnge dx, ax
cmovnge bx, ax
cmovnge sp, ax
cmovnge bp, ax
cmovnge si, ax
cmovnge di, ax

cmovnge ax, di
cmovnge cx, si
cmovnge dx, bp
cmovnge bx, sp
cmovnge sp, bx
cmovnge bp, dx
cmovnge si, cx
cmovnge di, ax

; 32-bit registers
cmovnge eax, eax
cmovnge eax, ecx
cmovnge eax, edx
cmovnge eax, ebx
cmovnge eax, esp
cmovnge eax, ebp
cmovnge eax, esi
cmovnge eax, edi

cmovnge eax, eax
cmovnge ecx, eax
cmovnge edx, eax
cmovnge ebx, eax
cmovnge esp, eax
cmovnge ebp, eax
cmovnge esi, eax
cmovnge edi, eax

cmovnge eax, edi
cmovnge ecx, esi
cmovnge edx, ebp
cmovnge ebx, esp
cmovnge esp, ebx
cmovnge ebp, edx
cmovnge esi, ecx
cmovnge edi, eax

; 64-bit registers
cmovnge rax, rax
cmovnge rax, rcx
cmovnge rax, rdx
cmovnge rax, rbx
cmovnge rax, rsp
cmovnge rax, rbp
cmovnge rax, rsi
cmovnge rax, rdi

cmovnge rax, rax
cmovnge rcx, rax
cmovnge rdx, rax
cmovnge rbx, rax
cmovnge rsp, rax
cmovnge rbp, rax
cmovnge rsi, rax
cmovnge rdi, rax

cmovnge rax, rdi
cmovnge rcx, rsi
cmovnge rdx, rbp
cmovnge rbx, rsp
cmovnge rsp, rbx
cmovnge rbp, rdx
cmovnge rsi, rcx
cmovnge rdi, rax
