use64

; immediate to each register: 8-bit
rol al, -127
rol cl, -100
rol dl, -23
rol bl, -1
rol ah, 0
rol ch, 1
rol dh, 0x12
rol bh, 0xff

; immediate to each register: 16-bit
rol ax, 0x50
rol cx, 0x51
rol dx, 0x52
rol bx, 0x53
rol sp, 0x54
rol bp, 0x55
rol si, 0x56
rol di, 0x57

; immediate to each register: 32-bit
rol eax, 0xa0
rol ecx, 0xa1
rol edx, 0xa2
rol ebx, 0xa3
rol esp, 0xa4
rol ebp, 0xa5
rol esi, 0xa6
rol edi, 0xa7

; immediate to each register: 64-bit
rol rax, 0x88
rol rcx, 0x99
rol rdx, 0xaa
rol rbx, 0xbb
rol rsp, 0xcc
rol rbp, 0xdd
rol rsi, 0xee
rol rdi, 0xff
