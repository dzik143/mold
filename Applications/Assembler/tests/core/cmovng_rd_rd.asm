use64
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovng ax, ax
cmovng ax, cx
cmovng ax, dx
cmovng ax, bx
cmovng ax, sp
cmovng ax, bp
cmovng ax, si
cmovng ax, di

cmovng ax, ax
cmovng cx, ax
cmovng dx, ax
cmovng bx, ax
cmovng sp, ax
cmovng bp, ax
cmovng si, ax
cmovng di, ax

cmovng ax, di
cmovng cx, si
cmovng dx, bp
cmovng bx, sp
cmovng sp, bx
cmovng bp, dx
cmovng si, cx
cmovng di, ax

; 32-bit registers
cmovng eax, eax
cmovng eax, ecx
cmovng eax, edx
cmovng eax, ebx
cmovng eax, esp
cmovng eax, ebp
cmovng eax, esi
cmovng eax, edi

cmovng eax, eax
cmovng ecx, eax
cmovng edx, eax
cmovng ebx, eax
cmovng esp, eax
cmovng ebp, eax
cmovng esi, eax
cmovng edi, eax

cmovng eax, edi
cmovng ecx, esi
cmovng edx, ebp
cmovng ebx, esp
cmovng esp, ebx
cmovng ebp, edx
cmovng esi, ecx
cmovng edi, eax

; 64-bit registers
cmovng rax, rax
cmovng rax, rcx
cmovng rax, rdx
cmovng rax, rbx
cmovng rax, rsp
cmovng rax, rbp
cmovng rax, rsi
cmovng rax, rdi

cmovng rax, rax
cmovng rcx, rax
cmovng rdx, rax
cmovng rbx, rax
cmovng rsp, rax
cmovng rbp, rax
cmovng rsi, rax
cmovng rdi, rax

cmovng rax, rdi
cmovng rcx, rsi
cmovng rdx, rbp
cmovng rbx, rsp
cmovng rsp, rbx
cmovng rbp, rdx
cmovng rsi, rcx
cmovng rdi, rax
