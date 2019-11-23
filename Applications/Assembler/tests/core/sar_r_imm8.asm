use64

; immediate to each register: 8-bit
sar al, -127
sar cl, -100
sar dl, -23
sar bl, -1
sar ah, 0
sar ch, 1
sar dh, 0x12
sar bh, 0xff

; immediate to each register: 16-bit
sar ax, 0x50
sar cx, 0x51
sar dx, 0x52
sar bx, 0x53
sar sp, 0x54
sar bp, 0x55
sar si, 0x56
sar di, 0x57

; immediate to each register: 32-bit
sar eax, 0xa0
sar ecx, 0xa1
sar edx, 0xa2
sar ebx, 0xa3
sar esp, 0xa4
sar ebp, 0xa5
sar esi, 0xa6
sar edi, 0xa7

; immediate to each register: 64-bit
sar rax, 0x88
sar rcx, 0x99
sar rdx, 0xaa
sar rbx, 0xbb
sar rsp, 0xcc
sar rbp, 0xdd
sar rsi, 0xee
sar rdi, 0xff
