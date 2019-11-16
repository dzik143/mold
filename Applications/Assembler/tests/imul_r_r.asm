use64

; r16, r16
imul ax, di
imul cx, si
imul dx, bp
imul bx, sp
imul sp, bx
imul bp, dx
imul si, cx
imul di, ax

; r32, r32
imul eax, edi
imul ecx, esi
imul edx, ebp
imul ebx, esp
imul esp, ebx
imul ebp, edx
imul esi, ecx
imul edi, eax

; r64, r64
imul rax, rdi
imul rcx, rsi
imul rdx, rbp
imul rbx, rsp
imul rsp, rbx
imul rbp, rdx
imul rsi, rcx
imul rdi, rax
