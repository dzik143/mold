use64

; [rip + disp32]
fidivr dword [rip + 0x13]
fidivr dword [rip + 0x1235]
fidivr dword [rip + 0x12345679]

; [rip + base]
fidivr dword  [rbx]

; [rip + base + disp8]
fidivr dword [rcx + 0x14]
fidivr dword [rdx + 0x15]

; [rip + base + disp32]
fidivr dword [rbx + 0x1235]
fidivr dword [rbx + 0x12345679]

; [rip + base + index]
fidivr dword [rbx + rcx]

; [rip + base + scale * index]
fidivr dword [rbx + 4 * rcx]

; [rip + base + index + disp8]
fidivr dword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fidivr dword [rbx + rcx + 0x1235]
fidivr dword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fidivr dword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fidivr dword [rbx + 4 * rcx + 0x1235]
fidivr dword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fidivr dword [4 * rcx]

; [scale * index + disp8]
fidivr dword [4 * rcx + 0x13]

; [scale * index + disp32]
fidivr dword [4 * rcx + 0x1235]
fidivr dword [4 * rcx + 0x12345679]

; Use rbp as base or index.
fidivr dword [rbp]
fidivr dword [rbp + 0x12]
fidivr dword [rbp + 0x1234]
fidivr dword [rbp + 0x12345678]

fidivr dword [4 * rbp]
fidivr dword [4 * rbp + 0x12]
fidivr dword [4 * rbp + 0x1234]
fidivr dword [4 * rbp + 0x12345678]

fidivr dword [rbx + 4 * rbp]
fidivr dword [rbx + 4 * rbp + 0x12]
fidivr dword [rbx + 4 * rbp + 0x1234]
fidivr dword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fidivr dword [rsp]
fidivr dword [rsp + 0x12]
fidivr dword [rsp + 0x1234]
fidivr dword [rsp + 0x12345678]

fidivr dword [rsp + rax]
fidivr dword [rsp + rbp]
fidivr dword [rsp + 2*rbp]
fidivr dword [rsp + 4*rbp]
fidivr dword [rsp + 8*rbp]

; use each register as indirect.
fidivr dword [rax]
fidivr dword [rcx]
fidivr dword [rdx]
fidivr dword [rbx]
fidivr dword [rsp]
fidivr dword [rbp]
fidivr dword [rsi]
fidivr dword [rdi]

; use each register as indirect.
; rsp is forbidden as index
fidivr dword [rax + 2*rax]
fidivr dword [rcx + 2*rcx]
fidivr dword [rdx + 2*rdx]
fidivr dword [rbx + 2*rbx]
fidivr dword [rbp + 2*rbp]
fidivr dword [rsi + 2*rsi]
fidivr dword [rdi + 2*rdi]
