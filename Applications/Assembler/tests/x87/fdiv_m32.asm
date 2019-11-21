use64

; [rip + disp32]
fdiv dword [rip + 0x13]
fdiv dword [rip + 0x1235]
fdiv dword [rip + 0x12345679]

; [rip + base]
fdiv dword  [rbx]

; [rip + base + disp8]
fdiv dword [rcx + 0x14]
fdiv dword [rdx + 0x15]

; [rip + base + disp32]
fdiv dword [rbx + 0x1235]
fdiv dword [rbx + 0x12345679]

; [rip + base + index]
fdiv dword [rbx + rcx]

; [rip + base + scale * index]
fdiv dword [rbx + 4 * rcx]

; [rip + base + index + disp8]
fdiv dword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fdiv dword [rbx + rcx + 0x1235]
fdiv dword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fdiv dword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fdiv dword [rbx + 4 * rcx + 0x1235]
fdiv dword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fdiv dword [4 * rcx]

; [scale * index + disp8]
fdiv dword [4 * rcx + 0x13]

; [scale * index + disp32]
fdiv dword [4 * rcx + 0x1235]
fdiv dword [4 * rcx + 0x12345679]

; Use rbp as base or index.
fdiv dword [rbp]
fdiv dword [rbp + 0x12]
fdiv dword [rbp + 0x1234]
fdiv dword [rbp + 0x12345678]

fdiv dword [4 * rbp]
fdiv dword [4 * rbp + 0x12]
fdiv dword [4 * rbp + 0x1234]
fdiv dword [4 * rbp + 0x12345678]

fdiv dword [rbx + 4 * rbp]
fdiv dword [rbx + 4 * rbp + 0x12]
fdiv dword [rbx + 4 * rbp + 0x1234]
fdiv dword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fdiv dword [rsp]
fdiv dword [rsp + 0x12]
fdiv dword [rsp + 0x1234]
fdiv dword [rsp + 0x12345678]

fdiv dword [rsp + rax]
fdiv dword [rsp + rbp]
fdiv dword [rsp + 2*rbp]
fdiv dword [rsp + 4*rbp]
fdiv dword [rsp + 8*rbp]

; use each register as indirect.
fdiv dword [rax]
fdiv dword [rcx]
fdiv dword [rdx]
fdiv dword [rbx]
fdiv dword [rsp]
fdiv dword [rbp]
fdiv dword [rsi]
fdiv dword [rdi]

; use each register as indirect.
; rsp is forbidden as index
fdiv dword [rax + 2*rax]
fdiv dword [rcx + 2*rcx]
fdiv dword [rdx + 2*rdx]
fdiv dword [rbx + 2*rbx]
fdiv dword [rbp + 2*rbp]
fdiv dword [rsi + 2*rsi]
fdiv dword [rdi + 2*rdi]
