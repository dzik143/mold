use64

; [rip + disp32]
fisubr dword [rip + 0x13]
fisubr dword [rip + 0x1235]
fisubr dword [rip + 0x12345679]

; [rip + base]
fisubr dword  [rbx]

; [rip + base + disp8]
fisubr dword [rcx + 0x14]
fisubr dword [rdx + 0x15]

; [rip + base + disp32]
fisubr dword [rbx + 0x1235]
fisubr dword [rbx + 0x12345679]

; [rip + base + index]
fisubr dword [rbx + rcx]

; [rip + base + scale * index]
fisubr dword [rbx + 4 * rcx]

; [rip + base + index + disp8]
fisubr dword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fisubr dword [rbx + rcx + 0x1235]
fisubr dword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fisubr dword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fisubr dword [rbx + 4 * rcx + 0x1235]
fisubr dword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fisubr dword [4 * rcx]

; [scale * index + disp8]
fisubr dword [4 * rcx + 0x13]

; [scale * index + disp32]
fisubr dword [4 * rcx + 0x1235]
fisubr dword [4 * rcx + 0x12345679]

; Use rbp as base or index.
fisubr dword [rbp]
fisubr dword [rbp + 0x12]
fisubr dword [rbp + 0x1234]
fisubr dword [rbp + 0x12345678]

fisubr dword [4 * rbp]
fisubr dword [4 * rbp + 0x12]
fisubr dword [4 * rbp + 0x1234]
fisubr dword [4 * rbp + 0x12345678]

fisubr dword [rbx + 4 * rbp]
fisubr dword [rbx + 4 * rbp + 0x12]
fisubr dword [rbx + 4 * rbp + 0x1234]
fisubr dword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fisubr dword [rsp]
fisubr dword [rsp + 0x12]
fisubr dword [rsp + 0x1234]
fisubr dword [rsp + 0x12345678]

fisubr dword [rsp + rax]
fisubr dword [rsp + rbp]
fisubr dword [rsp + 2*rbp]
fisubr dword [rsp + 4*rbp]
fisubr dword [rsp + 8*rbp]

; use each register as indirect.
fisubr dword [rax]
fisubr dword [rcx]
fisubr dword [rdx]
fisubr dword [rbx]
fisubr dword [rsp]
fisubr dword [rbp]
fisubr dword [rsi]
fisubr dword [rdi]

; use each register as indirect.
; rsp is forbidden as index
fisubr dword [rax + 2*rax]
fisubr dword [rcx + 2*rcx]
fisubr dword [rdx + 2*rdx]
fisubr dword [rbx + 2*rbx]
fisubr dword [rbp + 2*rbp]
fisubr dword [rsi + 2*rsi]
fisubr dword [rdi + 2*rdi]
