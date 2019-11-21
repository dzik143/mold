use64

; [rip + disp32]
fistp word [rip + 0x13]
fistp word [rip + 0x1235]
fistp word [rip + 0x12345679]

; [rip + base]
fistp word  [rbx]

; [rip + base + disp8]
fistp word [rcx + 0x14]
fistp word [rdx + 0x15]

; [rip + base + disp32]
fistp word [rbx + 0x1235]
fistp word [rbx + 0x12345679]

; [rip + base + index]
fistp word [rbx + rcx]

; [rip + base + scale * index]
fistp word [rbx + 4 * rcx]

; [rip + base + index + disp8]
fistp word [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fistp word [rbx + rcx + 0x1235]
fistp word [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fistp word [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fistp word [rbx + 4 * rcx + 0x1235]
fistp word [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fistp word [4 * rcx]

; [scale * index + disp8]
fistp word [4 * rcx + 0x13]

; [scale * index + disp32]
fistp word [4 * rcx + 0x1235]
fistp word [4 * rcx + 0x12345679]

; Use rbp as base or index.
fistp word [rbp]
fistp word [rbp + 0x12]
fistp word [rbp + 0x1234]
fistp word [rbp + 0x12345678]

fistp word [4 * rbp]
fistp word [4 * rbp + 0x12]
fistp word [4 * rbp + 0x1234]
fistp word [4 * rbp + 0x12345678]

fistp word [rbx + 4 * rbp]
fistp word [rbx + 4 * rbp + 0x12]
fistp word [rbx + 4 * rbp + 0x1234]
fistp word [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fistp word [rsp]
fistp word [rsp + 0x12]
fistp word [rsp + 0x1234]
fistp word [rsp + 0x12345678]

fistp word [rsp + rax]
fistp word [rsp + rbp]
fistp word [rsp + 2*rbp]
fistp word [rsp + 4*rbp]
fistp word [rsp + 8*rbp]

; use each register as indirect.
fistp word [rax]
fistp word [rcx]
fistp word [rdx]
fistp word [rbx]
fistp word [rsp]
fistp word [rbp]
fistp word [rsi]
fistp word [rdi]

; use each register as indirect.
; rsp is forbidden as index
fistp word [rax + 2*rax]
fistp word [rcx + 2*rcx]
fistp word [rdx + 2*rdx]
fistp word [rbx + 2*rbx]
fistp word [rbp + 2*rbp]
fistp word [rsi + 2*rsi]
fistp word [rdi + 2*rdi]
