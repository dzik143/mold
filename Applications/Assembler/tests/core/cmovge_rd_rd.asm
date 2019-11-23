use64
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovge ax, ax
cmovge ax, cx
cmovge ax, dx
cmovge ax, bx
cmovge ax, sp
cmovge ax, bp
cmovge ax, si
cmovge ax, di

cmovge ax, ax
cmovge cx, ax
cmovge dx, ax
cmovge bx, ax
cmovge sp, ax
cmovge bp, ax
cmovge si, ax
cmovge di, ax

cmovge ax, di
cmovge cx, si
cmovge dx, bp
cmovge bx, sp
cmovge sp, bx
cmovge bp, dx
cmovge si, cx
cmovge di, ax

; 32-bit registers
cmovge eax, eax
cmovge eax, ecx
cmovge eax, edx
cmovge eax, ebx
cmovge eax, esp
cmovge eax, ebp
cmovge eax, esi
cmovge eax, edi

cmovge eax, eax
cmovge ecx, eax
cmovge edx, eax
cmovge ebx, eax
cmovge esp, eax
cmovge ebp, eax
cmovge esi, eax
cmovge edi, eax

cmovge eax, edi
cmovge ecx, esi
cmovge edx, ebp
cmovge ebx, esp
cmovge esp, ebx
cmovge ebp, edx
cmovge esi, ecx
cmovge edi, eax

; 64-bit registers
cmovge rax, rax
cmovge rax, rcx
cmovge rax, rdx
cmovge rax, rbx
cmovge rax, rsp
cmovge rax, rbp
cmovge rax, rsi
cmovge rax, rdi

cmovge rax, rax
cmovge rcx, rax
cmovge rdx, rax
cmovge rbx, rax
cmovge rsp, rax
cmovge rbp, rax
cmovge rsi, rax
cmovge rdi, rax

cmovge rax, rdi
cmovge rcx, rsi
cmovge rdx, rbp
cmovge rbx, rsp
cmovge rsp, rbx
cmovge rbp, rdx
cmovge rsi, rcx
cmovge rdi, rax
