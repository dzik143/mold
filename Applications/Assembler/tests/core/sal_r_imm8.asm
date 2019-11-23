use64

; immediate to each register: 8-bit
sal al, -127
sal cl, -100
sal dl, -23
sal bl, -1
sal ah, 0
sal ch, 1
sal dh, 0x12
sal bh, 0xff

; immediate to each register: 16-bit
sal ax, 0x50
sal cx, 0x51
sal dx, 0x52
sal bx, 0x53
sal sp, 0x54
sal bp, 0x55
sal si, 0x56
sal di, 0x57

; immediate to each register: 32-bit
sal eax, 0xa0
sal ecx, 0xa1
sal edx, 0xa2
sal ebx, 0xa3
sal esp, 0xa4
sal ebp, 0xa5
sal esi, 0xa6
sal edi, 0xa7

; immediate to each register: 64-bit
sal rax, 0x88
sal rcx, 0x99
sal rdx, 0xaa
sal rbx, 0xbb
sal rsp, 0xcc
sal rbp, 0xdd
sal rsi, 0xee
sal rdi, 0xff
