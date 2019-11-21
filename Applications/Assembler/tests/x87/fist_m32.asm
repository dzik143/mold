use64

; [rip + disp32]
fist dword [rip + 0x13]
fist dword [rip + 0x1235]
fist dword [rip + 0x12345679]

; [rip + base]
fist dword  [rbx]

; [rip + base + disp8]
fist dword [rcx + 0x14]
fist dword [rdx + 0x15]

; [rip + base + disp32]
fist dword [rbx + 0x1235]
fist dword [rbx + 0x12345679]

; [rip + base + index]
fist dword [rbx + rcx]

; [rip + base + scale * index]
fist dword [rbx + 4 * rcx]

; [rip + base + index + disp8]
fist dword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fist dword [rbx + rcx + 0x1235]
fist dword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fist dword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fist dword [rbx + 4 * rcx + 0x1235]
fist dword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fist dword [4 * rcx]

; [scale * index + disp8]
fist dword [4 * rcx + 0x13]

; [scale * index + disp32]
fist dword [4 * rcx + 0x1235]
fist dword [4 * rcx + 0x12345679]

; Use rbp as base or index.
fist dword [rbp]
fist dword [rbp + 0x12]
fist dword [rbp + 0x1234]
fist dword [rbp + 0x12345678]

fist dword [4 * rbp]
fist dword [4 * rbp + 0x12]
fist dword [4 * rbp + 0x1234]
fist dword [4 * rbp + 0x12345678]

fist dword [rbx + 4 * rbp]
fist dword [rbx + 4 * rbp + 0x12]
fist dword [rbx + 4 * rbp + 0x1234]
fist dword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fist dword [rsp]
fist dword [rsp + 0x12]
fist dword [rsp + 0x1234]
fist dword [rsp + 0x12345678]

fist dword [rsp + rax]
fist dword [rsp + rbp]
fist dword [rsp + 2*rbp]
fist dword [rsp + 4*rbp]
fist dword [rsp + 8*rbp]

; use each register as indirect.
fist dword [rax]
fist dword [rcx]
fist dword [rdx]
fist dword [rbx]
fist dword [rsp]
fist dword [rbp]
fist dword [rsi]
fist dword [rdi]

; use each register as indirect.
; rsp is forbidden as index
fist dword [rax + 2*rax]
fist dword [rcx + 2*rcx]
fist dword [rdx + 2*rdx]
fist dword [rbx + 2*rbx]
fist dword [rbp + 2*rbp]
fist dword [rsi + 2*rsi]
fist dword [rdi + 2*rdi]
