use64

; r16, r16, imm8
imul ax, di, 0x12
imul cx, si, 0x13
imul dx, bp, 0x14
imul bx, sp, 0x15
imul sp, bx, 0x16
imul bp, dx, 0x17
imul si, cx, 0x18
imul di, ax, 0x19

; r32, r32, imm8
imul eax, edi, 0x22
imul ecx, esi, 0x23
imul edx, ebp, 0x24
imul ebx, esp, 0x25
imul esp, ebx, 0x26
imul ebp, edx, 0x27
imul esi, ecx, 0x28
imul edi, eax, 0x29

; r64, r64, imm8
imul rax, rdi, 0x32
imul rcx, rsi, 0x33
imul rdx, rbp, 0x34
imul rbx, rsp, 0x35
imul rsp, rbx, 0x36
imul rbp, rdx, 0x37
imul rsi, rcx, 0x38
imul rdi, rax, 0x39

; r16, r16, imm16
imul ax, di, 0x1234
imul cx, si, 0x1235
imul dx, bp, 0x1236
imul bx, sp, 0x1237
imul sp, bx, 0x1238
imul bp, dx, 0x1239
imul si, cx, 0x123a
imul di, ax, 0x123b

; r32, r32, imm32
imul eax, edi, 0x1234
imul ecx, esi, 0x1235
imul edx, ebp, 0x1236
imul ebx, esp, 0x1237
imul esp, ebx, 0x1238
imul ebp, edx, 0x1239
imul esi, ecx, 0x123a 
imul edi, eax, 0x123b

imul eax, edi, 0x12345678
imul ecx, esi, 0x12345679
imul edx, ebp, 0x1234567a
imul ebx, esp, 0x1234567b
imul esp, ebx, 0x1234567c
imul ebp, edx, 0x1234567d
imul esi, ecx, 0x1234567e
imul edi, eax, 0x1234567f

; r64, r64, imm32
imul rax, rdi, 0x1234
imul rcx, rsi, 0x1235
imul rdx, rbp, 0x1236
imul rbx, rsp, 0x1237
imul rsp, rbx, 0x1238
imul rbp, rdx, 0x1239
imul rsi, rcx, 0x123a 
imul rdi, rax, 0x123b

imul rax, rdi, 0x12345678
imul rcx, rsi, 0x12345679
imul rdx, rbp, 0x1234567a
imul rbx, rsp, 0x1234567b
imul rsp, rbx, 0x1234567c
imul rbp, rdx, 0x1234567d
imul rsi, rcx, 0x1234567e
imul rdi, rax, 0x1234567f
