use64

; [rip + disp32]
fadd dword [rip + 0x13]
fadd dword [rip + 0x1235]
fadd dword [rip + 0x12345679]

; [rip + base]
fadd dword  [rbx]

; [rip + base + disp8]
fadd dword [rcx + 0x14]
fadd dword [rdx + 0x15]

; [rip + base + disp32]
fadd dword [rbx + 0x1235]
fadd dword [rbx + 0x12345679]

; [rip + base + index]
fadd dword [rbx + rcx]

; [rip + base + scale * index]
fadd dword [rbx + 4 * rcx]

; [rip + base + index + disp8]
fadd dword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fadd dword [rbx + rcx + 0x1235]
fadd dword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fadd dword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fadd dword [rbx + 4 * rcx + 0x1235]
fadd dword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fadd dword [4 * rcx]

; [scale * index + disp8]
fadd dword [4 * rcx + 0x13]

; [scale * index + disp32]
fadd dword [4 * rcx + 0x1235]
fadd dword [4 * rcx + 0x12345679]

; Use rbp as base or index.
fadd dword [rbp]
fadd dword [rbp + 0x12]
fadd dword [rbp + 0x1234]
fadd dword [rbp + 0x12345678]

fadd dword [4 * rbp]
fadd dword [4 * rbp + 0x12]
fadd dword [4 * rbp + 0x1234]
fadd dword [4 * rbp + 0x12345678]

fadd dword [rbx + 4 * rbp]
fadd dword [rbx + 4 * rbp + 0x12]
fadd dword [rbx + 4 * rbp + 0x1234]
fadd dword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fadd dword [rsp]
fadd dword [rsp + 0x12]
fadd dword [rsp + 0x1234]
fadd dword [rsp + 0x12345678]

fadd dword [rsp + rax]
fadd dword [rsp + rbp]
fadd dword [rsp + 2*rbp]
fadd dword [rsp + 4*rbp]
fadd dword [rsp + 8*rbp]

; use each register as indirect.
fadd dword [rax]
fadd dword [rcx]
fadd dword [rdx]
fadd dword [rbx]
fadd dword [rsp]
fadd dword [rbp]
fadd dword [rsi]
fadd dword [rdi]

; use each register as indirect.
; rsp is forbidden as index
fadd dword [rax + 2*rax]
fadd dword [rcx + 2*rcx]
fadd dword [rdx + 2*rdx]
fadd dword [rbx + 2*rbx]
fadd dword [rbp + 2*rbp]
fadd dword [rsi + 2*rsi]
fadd dword [rdi + 2*rdi]
