use64

; [rip + disp32]
fisub word [rip + 0x13]
fisub word [rip + 0x1235]
fisub word [rip + 0x12345679]

; [rip + base]
fisub word  [rbx]

; [rip + base + disp8]
fisub word [rcx + 0x14]
fisub word [rdx + 0x15]

; [rip + base + disp32]
fisub word [rbx + 0x1235]
fisub word [rbx + 0x12345679]

; [rip + base + index]
fisub word [rbx + rcx]

; [rip + base + scale * index]
fisub word [rbx + 4 * rcx]

; [rip + base + index + disp8]
fisub word [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fisub word [rbx + rcx + 0x1235]
fisub word [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fisub word [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fisub word [rbx + 4 * rcx + 0x1235]
fisub word [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fisub word [4 * rcx]

; [scale * index + disp8]
fisub word [4 * rcx + 0x13]

; [scale * index + disp32]
fisub word [4 * rcx + 0x1235]
fisub word [4 * rcx + 0x12345679]

; Use rbp as base or index.
fisub word [rbp]
fisub word [rbp + 0x12]
fisub word [rbp + 0x1234]
fisub word [rbp + 0x12345678]

fisub word [4 * rbp]
fisub word [4 * rbp + 0x12]
fisub word [4 * rbp + 0x1234]
fisub word [4 * rbp + 0x12345678]

fisub word [rbx + 4 * rbp]
fisub word [rbx + 4 * rbp + 0x12]
fisub word [rbx + 4 * rbp + 0x1234]
fisub word [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fisub word [rsp]
fisub word [rsp + 0x12]
fisub word [rsp + 0x1234]
fisub word [rsp + 0x12345678]

fisub word [rsp + rax]
fisub word [rsp + rbp]
fisub word [rsp + 2*rbp]
fisub word [rsp + 4*rbp]
fisub word [rsp + 8*rbp]

; use each register as indirect.
fisub word [rax]
fisub word [rcx]
fisub word [rdx]
fisub word [rbx]
fisub word [rsp]
fisub word [rbp]
fisub word [rsi]
fisub word [rdi]

; use each register as indirect.
; rsp is forbidden as index
fisub word [rax + 2*rax]
fisub word [rcx + 2*rcx]
fisub word [rdx + 2*rdx]
fisub word [rbx + 2*rbx]
fisub word [rbp + 2*rbp]
fisub word [rsi + 2*rsi]
fisub word [rdi + 2*rdi]
