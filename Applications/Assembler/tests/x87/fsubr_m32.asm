use64

; [rip + disp32]
fsubr dword [rip + 0x13]
fsubr dword [rip + 0x1235]
fsubr dword [rip + 0x12345679]

; [rip + base]
fsubr dword  [rbx]

; [rip + base + disp8]
fsubr dword [rcx + 0x14]
fsubr dword [rdx + 0x15]

; [rip + base + disp32]
fsubr dword [rbx + 0x1235]
fsubr dword [rbx + 0x12345679]

; [rip + base + index]
fsubr dword [rbx + rcx]

; [rip + base + scale * index]
fsubr dword [rbx + 4 * rcx]

; [rip + base + index + disp8]
fsubr dword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fsubr dword [rbx + rcx + 0x1235]
fsubr dword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fsubr dword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fsubr dword [rbx + 4 * rcx + 0x1235]
fsubr dword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fsubr dword [4 * rcx]

; [scale * index + disp8]
fsubr dword [4 * rcx + 0x13]

; [scale * index + disp32]
fsubr dword [4 * rcx + 0x1235]
fsubr dword [4 * rcx + 0x12345679]

; Use rbp as base or index.
fsubr dword [rbp]
fsubr dword [rbp + 0x12]
fsubr dword [rbp + 0x1234]
fsubr dword [rbp + 0x12345678]

fsubr dword [4 * rbp]
fsubr dword [4 * rbp + 0x12]
fsubr dword [4 * rbp + 0x1234]
fsubr dword [4 * rbp + 0x12345678]

fsubr dword [rbx + 4 * rbp]
fsubr dword [rbx + 4 * rbp + 0x12]
fsubr dword [rbx + 4 * rbp + 0x1234]
fsubr dword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fsubr dword [rsp]
fsubr dword [rsp + 0x12]
fsubr dword [rsp + 0x1234]
fsubr dword [rsp + 0x12345678]

fsubr dword [rsp + rax]
fsubr dword [rsp + rbp]
fsubr dword [rsp + 2*rbp]
fsubr dword [rsp + 4*rbp]
fsubr dword [rsp + 8*rbp]

; use each register as indirect.
fsubr dword [rax]
fsubr dword [rcx]
fsubr dword [rdx]
fsubr dword [rbx]
fsubr dword [rsp]
fsubr dword [rbp]
fsubr dword [rsi]
fsubr dword [rdi]

; use each register as indirect.
; rsp is forbidden as index
fsubr dword [rax + 2*rax]
fsubr dword [rcx + 2*rcx]
fsubr dword [rdx + 2*rdx]
fsubr dword [rbx + 2*rbx]
fsubr dword [rbp + 2*rbp]
fsubr dword [rsi + 2*rsi]
fsubr dword [rdi + 2*rdi]
