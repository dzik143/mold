use64

; [rip + disp32]
fstp dword [rip + 0x13]
fstp dword [rip + 0x1235]
fstp dword [rip + 0x12345679]

; [rip + base]
fstp dword  [rbx]

; [rip + base + disp8]
fstp dword [rcx + 0x14]
fstp dword [rdx + 0x15]

; [rip + base + disp32]
fstp dword [rbx + 0x1235]
fstp dword [rbx + 0x12345679]

; [rip + base + index]
fstp dword [rbx + rcx]

; [rip + base + scale * index]
fstp dword [rbx + 4 * rcx]

; [rip + base + index + disp8]
fstp dword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fstp dword [rbx + rcx + 0x1235]
fstp dword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fstp dword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fstp dword [rbx + 4 * rcx + 0x1235]
fstp dword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fstp dword [4 * rcx]

; [scale * index + disp8]
fstp dword [4 * rcx + 0x13]

; [scale * index + disp32]
fstp dword [4 * rcx + 0x1235]
fstp dword [4 * rcx + 0x12345679]

; Use rbp as base or index.
fstp dword [rbp]
fstp dword [rbp + 0x12]
fstp dword [rbp + 0x1234]
fstp dword [rbp + 0x12345678]

fstp dword [4 * rbp]
fstp dword [4 * rbp + 0x12]
fstp dword [4 * rbp + 0x1234]
fstp dword [4 * rbp + 0x12345678]

fstp dword [rbx + 4 * rbp]
fstp dword [rbx + 4 * rbp + 0x12]
fstp dword [rbx + 4 * rbp + 0x1234]
fstp dword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fstp dword [rsp]
fstp dword [rsp + 0x12]
fstp dword [rsp + 0x1234]
fstp dword [rsp + 0x12345678]

fstp dword [rsp + rax]
fstp dword [rsp + rbp]
fstp dword [rsp + 2*rbp]
fstp dword [rsp + 4*rbp]
fstp dword [rsp + 8*rbp]

; use each register as indirect.
fstp dword [rax]
fstp dword [rcx]
fstp dword [rdx]
fstp dword [rbx]
fstp dword [rsp]
fstp dword [rbp]
fstp dword [rsi]
fstp dword [rdi]

; use each register as indirect.
; rsp is forbidden as index
fstp dword [rax + 2*rax]
fstp dword [rcx + 2*rcx]
fstp dword [rdx + 2*rdx]
fstp dword [rbx + 2*rbx]
fstp dword [rbp + 2*rbp]
fstp dword [rsi + 2*rsi]
fstp dword [rdi + 2*rdi]
