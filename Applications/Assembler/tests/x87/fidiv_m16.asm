use64

; [rip + disp32]
fidiv word [rip + 0x13]
fidiv word [rip + 0x1235]
fidiv word [rip + 0x12345679]

; [rip + base]
fidiv word  [rbx]

; [rip + base + disp8]
fidiv word [rcx + 0x14]
fidiv word [rdx + 0x15]

; [rip + base + disp32]
fidiv word [rbx + 0x1235]
fidiv word [rbx + 0x12345679]

; [rip + base + index]
fidiv word [rbx + rcx]

; [rip + base + scale * index]
fidiv word [rbx + 4 * rcx]

; [rip + base + index + disp8]
fidiv word [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fidiv word [rbx + rcx + 0x1235]
fidiv word [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fidiv word [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fidiv word [rbx + 4 * rcx + 0x1235]
fidiv word [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fidiv word [4 * rcx]

; [scale * index + disp8]
fidiv word [4 * rcx + 0x13]

; [scale * index + disp32]
fidiv word [4 * rcx + 0x1235]
fidiv word [4 * rcx + 0x12345679]

; Use rbp as base or index.
fidiv word [rbp]
fidiv word [rbp + 0x12]
fidiv word [rbp + 0x1234]
fidiv word [rbp + 0x12345678]

fidiv word [4 * rbp]
fidiv word [4 * rbp + 0x12]
fidiv word [4 * rbp + 0x1234]
fidiv word [4 * rbp + 0x12345678]

fidiv word [rbx + 4 * rbp]
fidiv word [rbx + 4 * rbp + 0x12]
fidiv word [rbx + 4 * rbp + 0x1234]
fidiv word [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fidiv word [rsp]
fidiv word [rsp + 0x12]
fidiv word [rsp + 0x1234]
fidiv word [rsp + 0x12345678]

fidiv word [rsp + rax]
fidiv word [rsp + rbp]
fidiv word [rsp + 2*rbp]
fidiv word [rsp + 4*rbp]
fidiv word [rsp + 8*rbp]

; use each register as indirect.
fidiv word [rax]
fidiv word [rcx]
fidiv word [rdx]
fidiv word [rbx]
fidiv word [rsp]
fidiv word [rbp]
fidiv word [rsi]
fidiv word [rdi]

; use each register as indirect.
; rsp is forbidden as index
fidiv word [rax + 2*rax]
fidiv word [rcx + 2*rcx]
fidiv word [rdx + 2*rdx]
fidiv word [rbx + 2*rbx]
fidiv word [rbp + 2*rbp]
fidiv word [rsi + 2*rsi]
fidiv word [rdi + 2*rdi]
