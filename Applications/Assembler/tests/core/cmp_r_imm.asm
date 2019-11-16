use64

; immediate to each register: 8-bit
cmp al, 0x12
cmp cl, 0x13
cmp dl, 0x14
cmp bl, 0x15
cmp ah, 0x16
cmp ch, 0x17
cmp dh, 0x18
cmp bh, 0x19

; immediate to each register: 16-bit
cmp ax, 0x12
cmp cx, 0x13
cmp dx, 0x14
cmp bx, 0x15
cmp sp, 0x16
cmp bp, 0x17
cmp si, 0x18
cmp di, 0x19

cmp ax, 0x1234
cmp cx, 0x1235
cmp dx, 0x1236
cmp bx, 0x1237
cmp sp, 0x1238
cmp bp, 0x1239
cmp si, 0x123a
cmp di, 0x123b

; immediate to each register: 32-bit
cmp eax, 0x12
cmp ecx, 0x13
cmp edx, 0x14
cmp ebx, 0x15
cmp esp, 0x16
cmp ebp, 0x17
cmp esi, 0x18
cmp edi, 0x19

cmp eax, 0x1234
cmp ecx, 0x1235
cmp edx, 0x1236
cmp ebx, 0x1237
cmp esp, 0x1238
cmp ebp, 0x1239
cmp esi, 0x123a
cmp edi, 0x123b

cmp eax, 0x12345678
cmp ecx, 0x12345679
cmp edx, 0x1234567a
cmp ebx, 0x1234567b
cmp esp, 0x1234567c
cmp ebp, 0x1234567d
cmp esi, 0x1234567e
cmp edi, 0x1234567f

; immediate to each register: 64-bit
cmp rax, 0x12
cmp rcx, 0x13
cmp rdx, 0x14
cmp rbx, 0x15
cmp rsp, 0x16
cmp rbp, 0x17
cmp rsi, 0x18
cmp rdi, 0x19

cmp rax, 0x1234
cmp rcx, 0x1235
cmp rdx, 0x1236
cmp rbx, 0x1237
cmp rsp, 0x1238
cmp rbp, 0x1239
cmp rsi, 0x123a
cmp rdi, 0x123b

cmp rax, 0x12345678
cmp rcx, 0x12345679
cmp rdx, 0x1234567a
cmp rbx, 0x1234567b
cmp rsp, 0x1234567c
cmp rbp, 0x1234567d
cmp rsi, 0x1234567e
cmp rdi, 0x1234567f
