; [rip + disp32]
dword [rip + 0x13]
dword [rip + 0x1235]
dword [rip + 0x12345679]

; [rip + base]
dword [rbx]

; [rip + base + disp8]
dword [rcx + 0x14]
dword [rdx + 0x15]

; [rip + base + disp32]
dword [rbx + 0x1235]
dword [rbx + 0x12345679]

; [rip + base + index]
dword [rbx + rcx]

; [rip + base + scale * index]
dword [rbx + 4 * rcx]

; [rip + base + index + disp8]
dword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
dword [rbx + rcx + 0x1235]
dword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
dword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
dword [rbx + 4 * rcx + 0x1235]
dword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
dword [4 * rcx]

; [scale * index + disp8]
dword [4 * rcx + 0x13]

; [scale * index + disp32]
dword [4 * rcx + 0x1235]
dword [4 * rcx + 0x12345679]

; Use rbp as base or index.
dword [rbp]
dword [rbp + 0x12]
dword [rbp + 0x1234]
dword [rbp + 0x12345678]

dword [4 * rbp]
dword [4 * rbp + 0x12]
dword [4 * rbp + 0x1234]
dword [4 * rbp + 0x12345678]

dword [rbx + 4 * rbp]
dword [rbx + 4 * rbp + 0x12]
dword [rbx + 4 * rbp + 0x1234]
dword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
dword [rsp]
dword [rsp + 0x12]
dword [rsp + 0x1234]
dword [rsp + 0x12345678]

dword [rsp + rax]
dword [rsp + rbp]
dword [rsp + 2*rbp]
dword [rsp + 4*rbp]
dword [rsp + 8*rbp]

; use each register as indirect.
dword [rax]
dword [rcx]
dword [rdx]
dword [rbx]
dword [rsp]
dword [rbp]
dword [rsi]
dword [rdi]

; use each register as indirect.
; rsp is forbidden as index
dword [rax + 2*rax]
dword [rcx + 2*rcx]
dword [rdx + 2*rdx]
dword [rbx + 2*rbx]
dword [rbp + 2*rbp]
dword [rsi + 2*rsi]
dword [rdi + 2*rdi]
