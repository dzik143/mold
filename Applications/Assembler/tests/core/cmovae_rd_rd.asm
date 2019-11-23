use64
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovae ax, ax
cmovae ax, cx
cmovae ax, dx
cmovae ax, bx
cmovae ax, sp
cmovae ax, bp
cmovae ax, si
cmovae ax, di

cmovae ax, ax
cmovae cx, ax
cmovae dx, ax
cmovae bx, ax
cmovae sp, ax
cmovae bp, ax
cmovae si, ax
cmovae di, ax

cmovae ax, di
cmovae cx, si
cmovae dx, bp
cmovae bx, sp
cmovae sp, bx
cmovae bp, dx
cmovae si, cx
cmovae di, ax

; 32-bit registers
cmovae eax, eax
cmovae eax, ecx
cmovae eax, edx
cmovae eax, ebx
cmovae eax, esp
cmovae eax, ebp
cmovae eax, esi
cmovae eax, edi

cmovae eax, eax
cmovae ecx, eax
cmovae edx, eax
cmovae ebx, eax
cmovae esp, eax
cmovae ebp, eax
cmovae esi, eax
cmovae edi, eax

cmovae eax, edi
cmovae ecx, esi
cmovae edx, ebp
cmovae ebx, esp
cmovae esp, ebx
cmovae ebp, edx
cmovae esi, ecx
cmovae edi, eax

; 64-bit registers
cmovae rax, rax
cmovae rax, rcx
cmovae rax, rdx
cmovae rax, rbx
cmovae rax, rsp
cmovae rax, rbp
cmovae rax, rsi
cmovae rax, rdi

cmovae rax, rax
cmovae rcx, rax
cmovae rdx, rax
cmovae rbx, rax
cmovae rsp, rax
cmovae rbp, rax
cmovae rsi, rax
cmovae rdi, rax

cmovae rax, rdi
cmovae rcx, rsi
cmovae rdx, rbp
cmovae rbx, rsp
cmovae rsp, rbx
cmovae rbp, rdx
cmovae rsi, rcx
cmovae rdi, rax
