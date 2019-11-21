use64

; [rip + disp32]
fsub dword [rip + 0x13]
fsub dword [rip + 0x1235]
fsub dword [rip + 0x12345679]

; [rip + base]
fsub dword  [rbx]

; [rip + base + disp8]
fsub dword [rcx + 0x14]
fsub dword [rdx + 0x15]

; [rip + base + disp32]
fsub dword [rbx + 0x1235]
fsub dword [rbx + 0x12345679]

; [rip + base + index]
fsub dword [rbx + rcx]

; [rip + base + scale * index]
fsub dword [rbx + 4 * rcx]

; [rip + base + index + disp8]
fsub dword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fsub dword [rbx + rcx + 0x1235]
fsub dword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fsub dword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fsub dword [rbx + 4 * rcx + 0x1235]
fsub dword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fsub dword [4 * rcx]

; [scale * index + disp8]
fsub dword [4 * rcx + 0x13]

; [scale * index + disp32]
fsub dword [4 * rcx + 0x1235]
fsub dword [4 * rcx + 0x12345679]

; Use rbp as base or index.
fsub dword [rbp]
fsub dword [rbp + 0x12]
fsub dword [rbp + 0x1234]
fsub dword [rbp + 0x12345678]

fsub dword [4 * rbp]
fsub dword [4 * rbp + 0x12]
fsub dword [4 * rbp + 0x1234]
fsub dword [4 * rbp + 0x12345678]

fsub dword [rbx + 4 * rbp]
fsub dword [rbx + 4 * rbp + 0x12]
fsub dword [rbx + 4 * rbp + 0x1234]
fsub dword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fsub dword [rsp]
fsub dword [rsp + 0x12]
fsub dword [rsp + 0x1234]
fsub dword [rsp + 0x12345678]

fsub dword [rsp + rax]
fsub dword [rsp + rbp]
fsub dword [rsp + 2*rbp]
fsub dword [rsp + 4*rbp]
fsub dword [rsp + 8*rbp]

; use each register as indirect.
fsub dword [rax]
fsub dword [rcx]
fsub dword [rdx]
fsub dword [rbx]
fsub dword [rsp]
fsub dword [rbp]
fsub dword [rsi]
fsub dword [rdi]

; use each register as indirect.
; rsp is forbidden as index
fsub dword [rax + 2*rax]
fsub dword [rcx + 2*rcx]
fsub dword [rdx + 2*rdx]
fsub dword [rbx + 2*rbx]
fsub dword [rbp + 2*rbp]
fsub dword [rsi + 2*rsi]
fsub dword [rdi + 2*rdi]
