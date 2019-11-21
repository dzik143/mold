use64

; [rip + disp32]
fdivr dword [rip + 0x13]
fdivr dword [rip + 0x1235]
fdivr dword [rip + 0x12345679]

; [rip + base]
fdivr dword  [rbx]

; [rip + base + disp8]
fdivr dword [rcx + 0x14]
fdivr dword [rdx + 0x15]

; [rip + base + disp32]
fdivr dword [rbx + 0x1235]
fdivr dword [rbx + 0x12345679]

; [rip + base + index]
fdivr dword [rbx + rcx]

; [rip + base + scale * index]
fdivr dword [rbx + 4 * rcx]

; [rip + base + index + disp8]
fdivr dword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fdivr dword [rbx + rcx + 0x1235]
fdivr dword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fdivr dword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fdivr dword [rbx + 4 * rcx + 0x1235]
fdivr dword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fdivr dword [4 * rcx]

; [scale * index + disp8]
fdivr dword [4 * rcx + 0x13]

; [scale * index + disp32]
fdivr dword [4 * rcx + 0x1235]
fdivr dword [4 * rcx + 0x12345679]

; Use rbp as base or index.
fdivr dword [rbp]
fdivr dword [rbp + 0x12]
fdivr dword [rbp + 0x1234]
fdivr dword [rbp + 0x12345678]

fdivr dword [4 * rbp]
fdivr dword [4 * rbp + 0x12]
fdivr dword [4 * rbp + 0x1234]
fdivr dword [4 * rbp + 0x12345678]

fdivr dword [rbx + 4 * rbp]
fdivr dword [rbx + 4 * rbp + 0x12]
fdivr dword [rbx + 4 * rbp + 0x1234]
fdivr dword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fdivr dword [rsp]
fdivr dword [rsp + 0x12]
fdivr dword [rsp + 0x1234]
fdivr dword [rsp + 0x12345678]

fdivr dword [rsp + rax]
fdivr dword [rsp + rbp]
fdivr dword [rsp + 2*rbp]
fdivr dword [rsp + 4*rbp]
fdivr dword [rsp + 8*rbp]

; use each register as indirect.
fdivr dword [rax]
fdivr dword [rcx]
fdivr dword [rdx]
fdivr dword [rbx]
fdivr dword [rsp]
fdivr dword [rbp]
fdivr dword [rsi]
fdivr dword [rdi]

; use each register as indirect.
; rsp is forbidden as index
fdivr dword [rax + 2*rax]
fdivr dword [rcx + 2*rcx]
fdivr dword [rdx + 2*rdx]
fdivr dword [rbx + 2*rbx]
fdivr dword [rbp + 2*rbp]
fdivr dword [rsi + 2*rsi]
fdivr dword [rdi + 2*rdi]
