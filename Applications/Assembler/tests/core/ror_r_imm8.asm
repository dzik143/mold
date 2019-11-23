use64

; immediate to each register: 8-bit
ror al, -127
ror cl, -100
ror dl, -23
ror bl, -1
ror ah, 0
ror ch, 1
ror dh, 0x12
ror bh, 0xff

; immediate to each register: 16-bit
ror ax, 0x50
ror cx, 0x51
ror dx, 0x52
ror bx, 0x53
ror sp, 0x54
ror bp, 0x55
ror si, 0x56
ror di, 0x57

; immediate to each register: 32-bit
ror eax, 0xa0
ror ecx, 0xa1
ror edx, 0xa2
ror ebx, 0xa3
ror esp, 0xa4
ror ebp, 0xa5
ror esi, 0xa6
ror edi, 0xa7

; immediate to each register: 64-bit
ror rax, 0x88
ror rcx, 0x99
ror rdx, 0xaa
ror rbx, 0xbb
ror rsp, 0xcc
ror rbp, 0xdd
ror rsi, 0xee
ror rdi, 0xff
