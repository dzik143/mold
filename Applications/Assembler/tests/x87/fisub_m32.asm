use64

; [rip + disp32]
fisub dword [rip + 0x13]
fisub dword [rip + 0x1235]
fisub dword [rip + 0x12345679]

; [rip + base]
fisub dword  [rbx]

; [rip + base + disp8]
fisub dword [rcx + 0x14]
fisub dword [rdx + 0x15]

; [rip + base + disp32]
fisub dword [rbx + 0x1235]
fisub dword [rbx + 0x12345679]

; [rip + base + index]
fisub dword [rbx + rcx]

; [rip + base + scale * index]
fisub dword [rbx + 4 * rcx]

; [rip + base + index + disp8]
fisub dword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fisub dword [rbx + rcx + 0x1235]
fisub dword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fisub dword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fisub dword [rbx + 4 * rcx + 0x1235]
fisub dword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fisub dword [4 * rcx]

; [scale * index + disp8]
fisub dword [4 * rcx + 0x13]

; [scale * index + disp32]
fisub dword [4 * rcx + 0x1235]
fisub dword [4 * rcx + 0x12345679]

; Use rbp as base or index.
fisub dword [rbp]
fisub dword [rbp + 0x12]
fisub dword [rbp + 0x1234]
fisub dword [rbp + 0x12345678]

fisub dword [4 * rbp]
fisub dword [4 * rbp + 0x12]
fisub dword [4 * rbp + 0x1234]
fisub dword [4 * rbp + 0x12345678]

fisub dword [rbx + 4 * rbp]
fisub dword [rbx + 4 * rbp + 0x12]
fisub dword [rbx + 4 * rbp + 0x1234]
fisub dword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fisub dword [rsp]
fisub dword [rsp + 0x12]
fisub dword [rsp + 0x1234]
fisub dword [rsp + 0x12345678]

fisub dword [rsp + rax]
fisub dword [rsp + rbp]
fisub dword [rsp + 2*rbp]
fisub dword [rsp + 4*rbp]
fisub dword [rsp + 8*rbp]

; use each register as indirect.
fisub dword [rax]
fisub dword [rcx]
fisub dword [rdx]
fisub dword [rbx]
fisub dword [rsp]
fisub dword [rbp]
fisub dword [rsi]
fisub dword [rdi]

; use each register as indirect.
; rsp is forbidden as index
fisub dword [rax + 2*rax]
fisub dword [rcx + 2*rcx]
fisub dword [rdx + 2*rdx]
fisub dword [rbx + 2*rbx]
fisub dword [rbp + 2*rbp]
fisub dword [rsi + 2*rsi]
fisub dword [rdi + 2*rdi]
