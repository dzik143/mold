use64

; [rip + disp32]
fimul dword [rip + 0x13]
fimul dword [rip + 0x1235]
fimul dword [rip + 0x12345679]

; [rip + base]
fimul dword  [rbx]

; [rip + base + disp8]
fimul dword [rcx + 0x14]
fimul dword [rdx + 0x15]

; [rip + base + disp32]
fimul dword [rbx + 0x1235]
fimul dword [rbx + 0x12345679]

; [rip + base + index]
fimul dword [rbx + rcx]

; [rip + base + scale * index]
fimul dword [rbx + 4 * rcx]

; [rip + base + index + disp8]
fimul dword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fimul dword [rbx + rcx + 0x1235]
fimul dword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fimul dword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fimul dword [rbx + 4 * rcx + 0x1235]
fimul dword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fimul dword [4 * rcx]

; [scale * index + disp8]
fimul dword [4 * rcx + 0x13]

; [scale * index + disp32]
fimul dword [4 * rcx + 0x1235]
fimul dword [4 * rcx + 0x12345679]

; Use rbp as base or index.
fimul dword [rbp]
fimul dword [rbp + 0x12]
fimul dword [rbp + 0x1234]
fimul dword [rbp + 0x12345678]

fimul dword [4 * rbp]
fimul dword [4 * rbp + 0x12]
fimul dword [4 * rbp + 0x1234]
fimul dword [4 * rbp + 0x12345678]

fimul dword [rbx + 4 * rbp]
fimul dword [rbx + 4 * rbp + 0x12]
fimul dword [rbx + 4 * rbp + 0x1234]
fimul dword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fimul dword [rsp]
fimul dword [rsp + 0x12]
fimul dword [rsp + 0x1234]
fimul dword [rsp + 0x12345678]

fimul dword [rsp + rax]
fimul dword [rsp + rbp]
fimul dword [rsp + 2*rbp]
fimul dword [rsp + 4*rbp]
fimul dword [rsp + 8*rbp]

; use each register as indirect.
fimul dword [rax]
fimul dword [rcx]
fimul dword [rdx]
fimul dword [rbx]
fimul dword [rsp]
fimul dword [rbp]
fimul dword [rsi]
fimul dword [rdi]

; use each register as indirect.
; rsp is forbidden as index
fimul dword [rax + 2*rax]
fimul dword [rcx + 2*rcx]
fimul dword [rdx + 2*rdx]
fimul dword [rbx + 2*rbx]
fimul dword [rbp + 2*rbp]
fimul dword [rsi + 2*rsi]
fimul dword [rdi + 2*rdi]
