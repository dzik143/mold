use64

; [rip + disp32]
fistp dword [rip + 0x13]
fistp dword [rip + 0x1235]
fistp dword [rip + 0x12345679]

; [rip + base]
fistp dword  [rbx]

; [rip + base + disp8]
fistp dword [rcx + 0x14]
fistp dword [rdx + 0x15]

; [rip + base + disp32]
fistp dword [rbx + 0x1235]
fistp dword [rbx + 0x12345679]

; [rip + base + index]
fistp dword [rbx + rcx]

; [rip + base + scale * index]
fistp dword [rbx + 4 * rcx]

; [rip + base + index + disp8]
fistp dword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fistp dword [rbx + rcx + 0x1235]
fistp dword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fistp dword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fistp dword [rbx + 4 * rcx + 0x1235]
fistp dword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fistp dword [4 * rcx]

; [scale * index + disp8]
fistp dword [4 * rcx + 0x13]

; [scale * index + disp32]
fistp dword [4 * rcx + 0x1235]
fistp dword [4 * rcx + 0x12345679]

; Use rbp as base or index.
fistp dword [rbp]
fistp dword [rbp + 0x12]
fistp dword [rbp + 0x1234]
fistp dword [rbp + 0x12345678]

fistp dword [4 * rbp]
fistp dword [4 * rbp + 0x12]
fistp dword [4 * rbp + 0x1234]
fistp dword [4 * rbp + 0x12345678]

fistp dword [rbx + 4 * rbp]
fistp dword [rbx + 4 * rbp + 0x12]
fistp dword [rbx + 4 * rbp + 0x1234]
fistp dword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fistp dword [rsp]
fistp dword [rsp + 0x12]
fistp dword [rsp + 0x1234]
fistp dword [rsp + 0x12345678]

fistp dword [rsp + rax]
fistp dword [rsp + rbp]
fistp dword [rsp + 2*rbp]
fistp dword [rsp + 4*rbp]
fistp dword [rsp + 8*rbp]

; use each register as indirect.
fistp dword [rax]
fistp dword [rcx]
fistp dword [rdx]
fistp dword [rbx]
fistp dword [rsp]
fistp dword [rbp]
fistp dword [rsi]
fistp dword [rdi]

; use each register as indirect.
; rsp is forbidden as index
fistp dword [rax + 2*rax]
fistp dword [rcx + 2*rcx]
fistp dword [rdx + 2*rdx]
fistp dword [rbx + 2*rbx]
fistp dword [rbp + 2*rbp]
fistp dword [rsi + 2*rsi]
fistp dword [rdi + 2*rdi]
