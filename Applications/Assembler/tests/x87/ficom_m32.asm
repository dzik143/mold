use64

; [rip + disp32]
ficom dword [rip + 0x13]
ficom dword [rip + 0x1235]
ficom dword [rip + 0x12345679]

; [rip + base]
ficom dword  [rbx]

; [rip + base + disp8]
ficom dword [rcx + 0x14]
ficom dword [rdx + 0x15]

; [rip + base + disp32]
ficom dword [rbx + 0x1235]
ficom dword [rbx + 0x12345679]

; [rip + base + index]
ficom dword [rbx + rcx]

; [rip + base + scale * index]
ficom dword [rbx + 4 * rcx]

; [rip + base + index + disp8]
ficom dword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
ficom dword [rbx + rcx + 0x1235]
ficom dword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
ficom dword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
ficom dword [rbx + 4 * rcx + 0x1235]
ficom dword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
ficom dword [4 * rcx]

; [scale * index + disp8]
ficom dword [4 * rcx + 0x13]

; [scale * index + disp32]
ficom dword [4 * rcx + 0x1235]
ficom dword [4 * rcx + 0x12345679]

; Use rbp as base or index.
ficom dword [rbp]
ficom dword [rbp + 0x12]
ficom dword [rbp + 0x1234]
ficom dword [rbp + 0x12345678]

ficom dword [4 * rbp]
ficom dword [4 * rbp + 0x12]
ficom dword [4 * rbp + 0x1234]
ficom dword [4 * rbp + 0x12345678]

ficom dword [rbx + 4 * rbp]
ficom dword [rbx + 4 * rbp + 0x12]
ficom dword [rbx + 4 * rbp + 0x1234]
ficom dword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
ficom dword [rsp]
ficom dword [rsp + 0x12]
ficom dword [rsp + 0x1234]
ficom dword [rsp + 0x12345678]

ficom dword [rsp + rax]
ficom dword [rsp + rbp]
ficom dword [rsp + 2*rbp]
ficom dword [rsp + 4*rbp]
ficom dword [rsp + 8*rbp]

; use each register as indirect.
ficom dword [rax]
ficom dword [rcx]
ficom dword [rdx]
ficom dword [rbx]
ficom dword [rsp]
ficom dword [rbp]
ficom dword [rsi]
ficom dword [rdi]

; use each register as indirect.
; rsp is forbidden as index
ficom dword [rax + 2*rax]
ficom dword [rcx + 2*rcx]
ficom dword [rdx + 2*rdx]
ficom dword [rbx + 2*rbx]
ficom dword [rbp + 2*rbp]
ficom dword [rsi + 2*rsi]
ficom dword [rdi + 2*rdi]
