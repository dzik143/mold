use64

; [rip + disp32]
fidiv dword [rip + 0x13]
fidiv dword [rip + 0x1235]
fidiv dword [rip + 0x12345679]

; [rip + base]
fidiv dword  [rbx]

; [rip + base + disp8]
fidiv dword [rcx + 0x14]
fidiv dword [rdx + 0x15]

; [rip + base + disp32]
fidiv dword [rbx + 0x1235]
fidiv dword [rbx + 0x12345679]

; [rip + base + index]
fidiv dword [rbx + rcx]

; [rip + base + scale * index]
fidiv dword [rbx + 4 * rcx]

; [rip + base + index + disp8]
fidiv dword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fidiv dword [rbx + rcx + 0x1235]
fidiv dword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fidiv dword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fidiv dword [rbx + 4 * rcx + 0x1235]
fidiv dword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fidiv dword [4 * rcx]

; [scale * index + disp8]
fidiv dword [4 * rcx + 0x13]

; [scale * index + disp32]
fidiv dword [4 * rcx + 0x1235]
fidiv dword [4 * rcx + 0x12345679]

; Use rbp as base or index.
fidiv dword [rbp]
fidiv dword [rbp + 0x12]
fidiv dword [rbp + 0x1234]
fidiv dword [rbp + 0x12345678]

fidiv dword [4 * rbp]
fidiv dword [4 * rbp + 0x12]
fidiv dword [4 * rbp + 0x1234]
fidiv dword [4 * rbp + 0x12345678]

fidiv dword [rbx + 4 * rbp]
fidiv dword [rbx + 4 * rbp + 0x12]
fidiv dword [rbx + 4 * rbp + 0x1234]
fidiv dword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fidiv dword [rsp]
fidiv dword [rsp + 0x12]
fidiv dword [rsp + 0x1234]
fidiv dword [rsp + 0x12345678]

fidiv dword [rsp + rax]
fidiv dword [rsp + rbp]
fidiv dword [rsp + 2*rbp]
fidiv dword [rsp + 4*rbp]
fidiv dword [rsp + 8*rbp]

; use each register as indirect.
fidiv dword [rax]
fidiv dword [rcx]
fidiv dword [rdx]
fidiv dword [rbx]
fidiv dword [rsp]
fidiv dword [rbp]
fidiv dword [rsi]
fidiv dword [rdi]

; use each register as indirect.
; rsp is forbidden as index
fidiv dword [rax + 2*rax]
fidiv dword [rcx + 2*rcx]
fidiv dword [rdx + 2*rdx]
fidiv dword [rbx + 2*rbx]
fidiv dword [rbp + 2*rbp]
fidiv dword [rsi + 2*rsi]
fidiv dword [rdi + 2*rdi]
