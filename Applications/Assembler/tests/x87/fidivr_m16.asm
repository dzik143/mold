use64

; [rip + disp32]
fidivr word [rip + 0x13]
fidivr word [rip + 0x1235]
fidivr word [rip + 0x12345679]

; [rip + base]
fidivr word  [rbx]

; [rip + base + disp8]
fidivr word [rcx + 0x14]
fidivr word [rdx + 0x15]

; [rip + base + disp32]
fidivr word [rbx + 0x1235]
fidivr word [rbx + 0x12345679]

; [rip + base + index]
fidivr word [rbx + rcx]

; [rip + base + scale * index]
fidivr word [rbx + 4 * rcx]

; [rip + base + index + disp8]
fidivr word [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fidivr word [rbx + rcx + 0x1235]
fidivr word [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fidivr word [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fidivr word [rbx + 4 * rcx + 0x1235]
fidivr word [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fidivr word [4 * rcx]

; [scale * index + disp8]
fidivr word [4 * rcx + 0x13]

; [scale * index + disp32]
fidivr word [4 * rcx + 0x1235]
fidivr word [4 * rcx + 0x12345679]

; Use rbp as base or index.
fidivr word [rbp]
fidivr word [rbp + 0x12]
fidivr word [rbp + 0x1234]
fidivr word [rbp + 0x12345678]

fidivr word [4 * rbp]
fidivr word [4 * rbp + 0x12]
fidivr word [4 * rbp + 0x1234]
fidivr word [4 * rbp + 0x12345678]

fidivr word [rbx + 4 * rbp]
fidivr word [rbx + 4 * rbp + 0x12]
fidivr word [rbx + 4 * rbp + 0x1234]
fidivr word [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fidivr word [rsp]
fidivr word [rsp + 0x12]
fidivr word [rsp + 0x1234]
fidivr word [rsp + 0x12345678]

fidivr word [rsp + rax]
fidivr word [rsp + rbp]
fidivr word [rsp + 2*rbp]
fidivr word [rsp + 4*rbp]
fidivr word [rsp + 8*rbp]

; use each register as indirect.
fidivr word [rax]
fidivr word [rcx]
fidivr word [rdx]
fidivr word [rbx]
fidivr word [rsp]
fidivr word [rbp]
fidivr word [rsi]
fidivr word [rdi]

; use each register as indirect.
; rsp is forbidden as index
fidivr word [rax + 2*rax]
fidivr word [rcx + 2*rcx]
fidivr word [rdx + 2*rdx]
fidivr word [rbx + 2*rbx]
fidivr word [rbp + 2*rbp]
fidivr word [rsi + 2*rsi]
fidivr word [rdi + 2*rdi]
