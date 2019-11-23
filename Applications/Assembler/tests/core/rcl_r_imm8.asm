use64

; immediate to each register: 8-bit
rcl al, -127
rcl cl, -100
rcl dl, -23
rcl bl, -1
rcl ah, 0
rcl ch, 1
rcl dh, 0x12
rcl bh, 0xff

; immediate to each register: 16-bit
rcl ax, 0x50
rcl cx, 0x51
rcl dx, 0x52
rcl bx, 0x53
rcl sp, 0x54
rcl bp, 0x55
rcl si, 0x56
rcl di, 0x57

; immediate to each register: 32-bit
rcl eax, 0xa0
rcl ecx, 0xa1
rcl edx, 0xa2
rcl ebx, 0xa3
rcl esp, 0xa4
rcl ebp, 0xa5
rcl esi, 0xa6
rcl edi, 0xa7

; immediate to each register: 64-bit
rcl rax, 0x88
rcl rcx, 0x99
rcl rdx, 0xaa
rcl rbx, 0xbb
rcl rsp, 0xcc
rcl rbp, 0xdd
rcl rsi, 0xee
rcl rdi, 0xff
