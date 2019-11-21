use64

; [rip + disp32]
fiadd dword [rip + 0x13]
fiadd dword [rip + 0x1235]
fiadd dword [rip + 0x12345679]

; [rip + base]
fiadd dword  [rbx]

; [rip + base + disp8]
fiadd dword [rcx + 0x14]
fiadd dword [rdx + 0x15]

; [rip + base + disp32]
fiadd dword [rbx + 0x1235]
fiadd dword [rbx + 0x12345679]

; [rip + base + index]
fiadd dword [rbx + rcx]

; [rip + base + scale * index]
fiadd dword [rbx + 4 * rcx]

; [rip + base + index + disp8]
fiadd dword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fiadd dword [rbx + rcx + 0x1235]
fiadd dword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fiadd dword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fiadd dword [rbx + 4 * rcx + 0x1235]
fiadd dword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fiadd dword [4 * rcx]

; [scale * index + disp8]
fiadd dword [4 * rcx + 0x13]

; [scale * index + disp32]
fiadd dword [4 * rcx + 0x1235]
fiadd dword [4 * rcx + 0x12345679]

; Use rbp as base or index.
fiadd dword [rbp]
fiadd dword [rbp + 0x12]
fiadd dword [rbp + 0x1234]
fiadd dword [rbp + 0x12345678]

fiadd dword [4 * rbp]
fiadd dword [4 * rbp + 0x12]
fiadd dword [4 * rbp + 0x1234]
fiadd dword [4 * rbp + 0x12345678]

fiadd dword [rbx + 4 * rbp]
fiadd dword [rbx + 4 * rbp + 0x12]
fiadd dword [rbx + 4 * rbp + 0x1234]
fiadd dword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fiadd dword [rsp]
fiadd dword [rsp + 0x12]
fiadd dword [rsp + 0x1234]
fiadd dword [rsp + 0x12345678]

fiadd dword [rsp + rax]
fiadd dword [rsp + rbp]
fiadd dword [rsp + 2*rbp]
fiadd dword [rsp + 4*rbp]
fiadd dword [rsp + 8*rbp]

; use each register as indirect.
fiadd dword [rax]
fiadd dword [rcx]
fiadd dword [rdx]
fiadd dword [rbx]
fiadd dword [rsp]
fiadd dword [rbp]
fiadd dword [rsi]
fiadd dword [rdi]

; use each register as indirect.
; rsp is forbidden as index
fiadd dword [rax + 2*rax]
fiadd dword [rcx + 2*rcx]
fiadd dword [rdx + 2*rdx]
fiadd dword [rbx + 2*rbx]
fiadd dword [rbp + 2*rbp]
fiadd dword [rsi + 2*rsi]
fiadd dword [rdi + 2*rdi]
