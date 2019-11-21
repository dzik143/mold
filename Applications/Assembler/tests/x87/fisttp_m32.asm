use64

; [rip + disp32]
fisttp dword [rip + 0x13]
fisttp dword [rip + 0x1235]
fisttp dword [rip + 0x12345679]

; [rip + base]
fisttp dword  [rbx]

; [rip + base + disp8]
fisttp dword [rcx + 0x14]
fisttp dword [rdx + 0x15]

; [rip + base + disp32]
fisttp dword [rbx + 0x1235]
fisttp dword [rbx + 0x12345679]

; [rip + base + index]
fisttp dword [rbx + rcx]

; [rip + base + scale * index]
fisttp dword [rbx + 4 * rcx]

; [rip + base + index + disp8]
fisttp dword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fisttp dword [rbx + rcx + 0x1235]
fisttp dword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fisttp dword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fisttp dword [rbx + 4 * rcx + 0x1235]
fisttp dword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fisttp dword [4 * rcx]

; [scale * index + disp8]
fisttp dword [4 * rcx + 0x13]

; [scale * index + disp32]
fisttp dword [4 * rcx + 0x1235]
fisttp dword [4 * rcx + 0x12345679]

; Use rbp as base or index.
fisttp dword [rbp]
fisttp dword [rbp + 0x12]
fisttp dword [rbp + 0x1234]
fisttp dword [rbp + 0x12345678]

fisttp dword [4 * rbp]
fisttp dword [4 * rbp + 0x12]
fisttp dword [4 * rbp + 0x1234]
fisttp dword [4 * rbp + 0x12345678]

fisttp dword [rbx + 4 * rbp]
fisttp dword [rbx + 4 * rbp + 0x12]
fisttp dword [rbx + 4 * rbp + 0x1234]
fisttp dword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fisttp dword [rsp]
fisttp dword [rsp + 0x12]
fisttp dword [rsp + 0x1234]
fisttp dword [rsp + 0x12345678]

fisttp dword [rsp + rax]
fisttp dword [rsp + rbp]
fisttp dword [rsp + 2*rbp]
fisttp dword [rsp + 4*rbp]
fisttp dword [rsp + 8*rbp]

; use each register as indirect.
fisttp dword [rax]
fisttp dword [rcx]
fisttp dword [rdx]
fisttp dword [rbx]
fisttp dword [rsp]
fisttp dword [rbp]
fisttp dword [rsi]
fisttp dword [rdi]

; use each register as indirect.
; rsp is forbidden as index
fisttp dword [rax + 2*rax]
fisttp dword [rcx + 2*rcx]
fisttp dword [rdx + 2*rdx]
fisttp dword [rbx + 2*rbx]
fisttp dword [rbp + 2*rbp]
fisttp dword [rsi + 2*rsi]
fisttp dword [rdi + 2*rdi]
