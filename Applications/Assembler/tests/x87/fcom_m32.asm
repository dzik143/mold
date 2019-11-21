use64

; [rip + disp32]
fcom dword [rip + 0x13]
fcom dword [rip + 0x1235]
fcom dword [rip + 0x12345679]

; [rip + base]
fcom dword  [rbx]

; [rip + base + disp8]
fcom dword [rcx + 0x14]
fcom dword [rdx + 0x15]

; [rip + base + disp32]
fcom dword [rbx + 0x1235]
fcom dword [rbx + 0x12345679]

; [rip + base + index]
fcom dword [rbx + rcx]

; [rip + base + scale * index]
fcom dword [rbx + 4 * rcx]

; [rip + base + index + disp8]
fcom dword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fcom dword [rbx + rcx + 0x1235]
fcom dword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fcom dword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fcom dword [rbx + 4 * rcx + 0x1235]
fcom dword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fcom dword [4 * rcx]

; [scale * index + disp8]
fcom dword [4 * rcx + 0x13]

; [scale * index + disp32]
fcom dword [4 * rcx + 0x1235]
fcom dword [4 * rcx + 0x12345679]

; Use rbp as base or index.
fcom dword [rbp]
fcom dword [rbp + 0x12]
fcom dword [rbp + 0x1234]
fcom dword [rbp + 0x12345678]

fcom dword [4 * rbp]
fcom dword [4 * rbp + 0x12]
fcom dword [4 * rbp + 0x1234]
fcom dword [4 * rbp + 0x12345678]

fcom dword [rbx + 4 * rbp]
fcom dword [rbx + 4 * rbp + 0x12]
fcom dword [rbx + 4 * rbp + 0x1234]
fcom dword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fcom dword [rsp]
fcom dword [rsp + 0x12]
fcom dword [rsp + 0x1234]
fcom dword [rsp + 0x12345678]

fcom dword [rsp + rax]
fcom dword [rsp + rbp]
fcom dword [rsp + 2*rbp]
fcom dword [rsp + 4*rbp]
fcom dword [rsp + 8*rbp]

; use each register as indirect.
fcom dword [rax]
fcom dword [rcx]
fcom dword [rdx]
fcom dword [rbx]
fcom dword [rsp]
fcom dword [rbp]
fcom dword [rsi]
fcom dword [rdi]

; use each register as indirect.
; rsp is forbidden as index
fcom dword [rax + 2*rax]
fcom dword [rcx + 2*rcx]
fcom dword [rdx + 2*rdx]
fcom dword [rbx + 2*rbx]
fcom dword [rbp + 2*rbp]
fcom dword [rsi + 2*rsi]
fcom dword [rdi + 2*rdi]
