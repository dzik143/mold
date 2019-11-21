use64

; [rip + disp32]
ficomp dword [rip + 0x13]
ficomp dword [rip + 0x1235]
ficomp dword [rip + 0x12345679]

; [rip + base]
ficomp dword  [rbx]

; [rip + base + disp8]
ficomp dword [rcx + 0x14]
ficomp dword [rdx + 0x15]

; [rip + base + disp32]
ficomp dword [rbx + 0x1235]
ficomp dword [rbx + 0x12345679]

; [rip + base + index]
ficomp dword [rbx + rcx]

; [rip + base + scale * index]
ficomp dword [rbx + 4 * rcx]

; [rip + base + index + disp8]
ficomp dword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
ficomp dword [rbx + rcx + 0x1235]
ficomp dword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
ficomp dword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
ficomp dword [rbx + 4 * rcx + 0x1235]
ficomp dword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
ficomp dword [4 * rcx]

; [scale * index + disp8]
ficomp dword [4 * rcx + 0x13]

; [scale * index + disp32]
ficomp dword [4 * rcx + 0x1235]
ficomp dword [4 * rcx + 0x12345679]

; Use rbp as base or index.
ficomp dword [rbp]
ficomp dword [rbp + 0x12]
ficomp dword [rbp + 0x1234]
ficomp dword [rbp + 0x12345678]

ficomp dword [4 * rbp]
ficomp dword [4 * rbp + 0x12]
ficomp dword [4 * rbp + 0x1234]
ficomp dword [4 * rbp + 0x12345678]

ficomp dword [rbx + 4 * rbp]
ficomp dword [rbx + 4 * rbp + 0x12]
ficomp dword [rbx + 4 * rbp + 0x1234]
ficomp dword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
ficomp dword [rsp]
ficomp dword [rsp + 0x12]
ficomp dword [rsp + 0x1234]
ficomp dword [rsp + 0x12345678]

ficomp dword [rsp + rax]
ficomp dword [rsp + rbp]
ficomp dword [rsp + 2*rbp]
ficomp dword [rsp + 4*rbp]
ficomp dword [rsp + 8*rbp]

; use each register as indirect.
ficomp dword [rax]
ficomp dword [rcx]
ficomp dword [rdx]
ficomp dword [rbx]
ficomp dword [rsp]
ficomp dword [rbp]
ficomp dword [rsi]
ficomp dword [rdi]

; use each register as indirect.
; rsp is forbidden as index
ficomp dword [rax + 2*rax]
ficomp dword [rcx + 2*rcx]
ficomp dword [rdx + 2*rdx]
ficomp dword [rbx + 2*rbx]
ficomp dword [rbp + 2*rbp]
ficomp dword [rsi + 2*rsi]
ficomp dword [rdi + 2*rdi]
