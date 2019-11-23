use64
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
bsr ax, ax
bsr ax, cx
bsr ax, dx
bsr ax, bx
bsr ax, sp
bsr ax, bp
bsr ax, si
bsr ax, di

bsr ax, ax
bsr cx, ax
bsr dx, ax
bsr bx, ax
bsr sp, ax
bsr bp, ax
bsr si, ax
bsr di, ax

bsr ax, di
bsr cx, si
bsr dx, bp
bsr bx, sp
bsr sp, bx
bsr bp, dx
bsr si, cx
bsr di, ax

; 32-bit registers
bsr eax, eax
bsr eax, ecx
bsr eax, edx
bsr eax, ebx
bsr eax, esp
bsr eax, ebp
bsr eax, esi
bsr eax, edi

bsr eax, eax
bsr ecx, eax
bsr edx, eax
bsr ebx, eax
bsr esp, eax
bsr ebp, eax
bsr esi, eax
bsr edi, eax

bsr eax, edi
bsr ecx, esi
bsr edx, ebp
bsr ebx, esp
bsr esp, ebx
bsr ebp, edx
bsr esi, ecx
bsr edi, eax

; 64-bit registers
bsr rax, rax
bsr rax, rcx
bsr rax, rdx
bsr rax, rbx
bsr rax, rsp
bsr rax, rbp
bsr rax, rsi
bsr rax, rdi

bsr rax, rax
bsr rcx, rax
bsr rdx, rax
bsr rbx, rax
bsr rsp, rax
bsr rbp, rax
bsr rsi, rax
bsr rdi, rax

bsr rax, rdi
bsr rcx, rsi
bsr rdx, rbp
bsr rbx, rsp
bsr rsp, rbx
bsr rbp, rdx
bsr rsi, rcx
bsr rdi, rax
