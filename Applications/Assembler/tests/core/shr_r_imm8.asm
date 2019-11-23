use64

; immediate to each register: 8-bit
shr al, -127
shr cl, -100
shr dl, -23
shr bl, -1
shr ah, 0
shr ch, 1
shr dh, 0x12
shr bh, 0xff

; immediate to each register: 16-bit
shr ax, 0x50
shr cx, 0x51
shr dx, 0x52
shr bx, 0x53
shr sp, 0x54
shr bp, 0x55
shr si, 0x56
shr di, 0x57

; immediate to each register: 32-bit
shr eax, 0xa0
shr ecx, 0xa1
shr edx, 0xa2
shr ebx, 0xa3
shr esp, 0xa4
shr ebp, 0xa5
shr esi, 0xa6
shr edi, 0xa7

; immediate to each register: 64-bit
shr rax, 0x88
shr rcx, 0x99
shr rdx, 0xaa
shr rbx, 0xbb
shr rsp, 0xcc
shr rbp, 0xdd
shr rsi, 0xee
shr rdi, 0xff
