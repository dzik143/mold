use64

; immediate to each register: 8-bit
shl al, -127
shl cl, -100
shl dl, -23
shl bl, -1
shl ah, 0
shl ch, 1
shl dh, 0x12
shl bh, 0xff

; immediate to each register: 16-bit
shl ax, 0x50
shl cx, 0x51
shl dx, 0x52
shl bx, 0x53
shl sp, 0x54
shl bp, 0x55
shl si, 0x56
shl di, 0x57

; immediate to each register: 32-bit
shl eax, 0xa0
shl ecx, 0xa1
shl edx, 0xa2
shl ebx, 0xa3
shl esp, 0xa4
shl ebp, 0xa5
shl esi, 0xa6
shl edi, 0xa7

; immediate to each register: 64-bit
shl rax, 0x88
shl rcx, 0x99
shl rdx, 0xaa
shl rbx, 0xbb
shl rsp, 0xcc
shl rbp, 0xdd
shl rsi, 0xee
shl rdi, 0xff
