use64
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovnae ax, ax
cmovnae ax, cx
cmovnae ax, dx
cmovnae ax, bx
cmovnae ax, sp
cmovnae ax, bp
cmovnae ax, si
cmovnae ax, di

cmovnae ax, ax
cmovnae cx, ax
cmovnae dx, ax
cmovnae bx, ax
cmovnae sp, ax
cmovnae bp, ax
cmovnae si, ax
cmovnae di, ax

cmovnae ax, di
cmovnae cx, si
cmovnae dx, bp
cmovnae bx, sp
cmovnae sp, bx
cmovnae bp, dx
cmovnae si, cx
cmovnae di, ax

; 32-bit registers
cmovnae eax, eax
cmovnae eax, ecx
cmovnae eax, edx
cmovnae eax, ebx
cmovnae eax, esp
cmovnae eax, ebp
cmovnae eax, esi
cmovnae eax, edi

cmovnae eax, eax
cmovnae ecx, eax
cmovnae edx, eax
cmovnae ebx, eax
cmovnae esp, eax
cmovnae ebp, eax
cmovnae esi, eax
cmovnae edi, eax

cmovnae eax, edi
cmovnae ecx, esi
cmovnae edx, ebp
cmovnae ebx, esp
cmovnae esp, ebx
cmovnae ebp, edx
cmovnae esi, ecx
cmovnae edi, eax

; 64-bit registers
cmovnae rax, rax
cmovnae rax, rcx
cmovnae rax, rdx
cmovnae rax, rbx
cmovnae rax, rsp
cmovnae rax, rbp
cmovnae rax, rsi
cmovnae rax, rdi

cmovnae rax, rax
cmovnae rcx, rax
cmovnae rdx, rax
cmovnae rbx, rax
cmovnae rsp, rax
cmovnae rbp, rax
cmovnae rsi, rax
cmovnae rdi, rax

cmovnae rax, rdi
cmovnae rcx, rsi
cmovnae rdx, rbp
cmovnae rbx, rsp
cmovnae rsp, rbx
cmovnae rbp, rdx
cmovnae rsi, rcx
cmovnae rdi, rax
