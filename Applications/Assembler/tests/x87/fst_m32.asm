use64

; [rip + disp32]
fst dword [rip + 0x13]
fst dword [rip + 0x1235]
fst dword [rip + 0x12345679]

; [rip + base]
fst dword  [rbx]

; [rip + base + disp8]
fst dword [rcx + 0x14]
fst dword [rdx + 0x15]

; [rip + base + disp32]
fst dword [rbx + 0x1235]
fst dword [rbx + 0x12345679]

; [rip + base + index]
fst dword [rbx + rcx]

; [rip + base + scale * index]
fst dword [rbx + 4 * rcx]

; [rip + base + index + disp8]
fst dword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fst dword [rbx + rcx + 0x1235]
fst dword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fst dword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fst dword [rbx + 4 * rcx + 0x1235]
fst dword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fst dword [4 * rcx]

; [scale * index + disp8]
fst dword [4 * rcx + 0x13]

; [scale * index + disp32]
fst dword [4 * rcx + 0x1235]
fst dword [4 * rcx + 0x12345679]

; Use rbp as base or index.
fst dword [rbp]
fst dword [rbp + 0x12]
fst dword [rbp + 0x1234]
fst dword [rbp + 0x12345678]

fst dword [4 * rbp]
fst dword [4 * rbp + 0x12]
fst dword [4 * rbp + 0x1234]
fst dword [4 * rbp + 0x12345678]

fst dword [rbx + 4 * rbp]
fst dword [rbx + 4 * rbp + 0x12]
fst dword [rbx + 4 * rbp + 0x1234]
fst dword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fst dword [rsp]
fst dword [rsp + 0x12]
fst dword [rsp + 0x1234]
fst dword [rsp + 0x12345678]

fst dword [rsp + rax]
fst dword [rsp + rbp]
fst dword [rsp + 2*rbp]
fst dword [rsp + 4*rbp]
fst dword [rsp + 8*rbp]

; use each register as indirect.
fst dword [rax]
fst dword [rcx]
fst dword [rdx]
fst dword [rbx]
fst dword [rsp]
fst dword [rbp]
fst dword [rsi]
fst dword [rdi]

; use each register as indirect.
; rsp is forbidden as index
fst dword [rax + 2*rax]
fst dword [rcx + 2*rcx]
fst dword [rdx + 2*rdx]
fst dword [rbx + 2*rbx]
fst dword [rbp + 2*rbp]
fst dword [rsi + 2*rsi]
fst dword [rdi + 2*rdi]
