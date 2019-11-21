use64

; [rip + disp32]
fmul dword [rip + 0x13]
fmul dword [rip + 0x1235]
fmul dword [rip + 0x12345679]

; [rip + base]
fmul dword  [rbx]

; [rip + base + disp8]
fmul dword [rcx + 0x14]
fmul dword [rdx + 0x15]

; [rip + base + disp32]
fmul dword [rbx + 0x1235]
fmul dword [rbx + 0x12345679]

; [rip + base + index]
fmul dword [rbx + rcx]

; [rip + base + scale * index]
fmul dword [rbx + 4 * rcx]

; [rip + base + index + disp8]
fmul dword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fmul dword [rbx + rcx + 0x1235]
fmul dword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fmul dword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fmul dword [rbx + 4 * rcx + 0x1235]
fmul dword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fmul dword [4 * rcx]

; [scale * index + disp8]
fmul dword [4 * rcx + 0x13]

; [scale * index + disp32]
fmul dword [4 * rcx + 0x1235]
fmul dword [4 * rcx + 0x12345679]

; Use rbp as base or index.
fmul dword [rbp]
fmul dword [rbp + 0x12]
fmul dword [rbp + 0x1234]
fmul dword [rbp + 0x12345678]

fmul dword [4 * rbp]
fmul dword [4 * rbp + 0x12]
fmul dword [4 * rbp + 0x1234]
fmul dword [4 * rbp + 0x12345678]

fmul dword [rbx + 4 * rbp]
fmul dword [rbx + 4 * rbp + 0x12]
fmul dword [rbx + 4 * rbp + 0x1234]
fmul dword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fmul dword [rsp]
fmul dword [rsp + 0x12]
fmul dword [rsp + 0x1234]
fmul dword [rsp + 0x12345678]

fmul dword [rsp + rax]
fmul dword [rsp + rbp]
fmul dword [rsp + 2*rbp]
fmul dword [rsp + 4*rbp]
fmul dword [rsp + 8*rbp]

; use each register as indirect.
fmul dword [rax]
fmul dword [rcx]
fmul dword [rdx]
fmul dword [rbx]
fmul dword [rsp]
fmul dword [rbp]
fmul dword [rsi]
fmul dword [rdi]

; use each register as indirect.
; rsp is forbidden as index
fmul dword [rax + 2*rax]
fmul dword [rcx + 2*rcx]
fmul dword [rdx + 2*rdx]
fmul dword [rbx + 2*rbx]
fmul dword [rbp + 2*rbp]
fmul dword [rsi + 2*rsi]
fmul dword [rdi + 2*rdi]
