use64

; immediate to each register: 8-bit
rcr al, -127
rcr cl, -100
rcr dl, -23
rcr bl, -1
rcr ah, 0
rcr ch, 1
rcr dh, 0x12
rcr bh, 0xff

; immediate to each register: 16-bit
rcr ax, 0x50
rcr cx, 0x51
rcr dx, 0x52
rcr bx, 0x53
rcr sp, 0x54
rcr bp, 0x55
rcr si, 0x56
rcr di, 0x57

; immediate to each register: 32-bit
rcr eax, 0xa0
rcr ecx, 0xa1
rcr edx, 0xa2
rcr ebx, 0xa3
rcr esp, 0xa4
rcr ebp, 0xa5
rcr esi, 0xa6
rcr edi, 0xa7

; immediate to each register: 64-bit
rcr rax, 0x88
rcr rcx, 0x99
rcr rdx, 0xaa
rcr rbx, 0xbb
rcr rsp, 0xcc
rcr rbp, 0xdd
rcr rsi, 0xee
rcr rdi, 0xff
