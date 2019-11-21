use64

; [rip + disp32]
fimul word [rip + 0x13]
fimul word [rip + 0x1235]
fimul word [rip + 0x12345679]

; [rip + base]
fimul word  [rbx]

; [rip + base + disp8]
fimul word [rcx + 0x14]
fimul word [rdx + 0x15]

; [rip + base + disp32]
fimul word [rbx + 0x1235]
fimul word [rbx + 0x12345679]

; [rip + base + index]
fimul word [rbx + rcx]

; [rip + base + scale * index]
fimul word [rbx + 4 * rcx]

; [rip + base + index + disp8]
fimul word [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fimul word [rbx + rcx + 0x1235]
fimul word [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fimul word [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fimul word [rbx + 4 * rcx + 0x1235]
fimul word [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fimul word [4 * rcx]

; [scale * index + disp8]
fimul word [4 * rcx + 0x13]

; [scale * index + disp32]
fimul word [4 * rcx + 0x1235]
fimul word [4 * rcx + 0x12345679]

; Use rbp as base or index.
fimul word [rbp]
fimul word [rbp + 0x12]
fimul word [rbp + 0x1234]
fimul word [rbp + 0x12345678]

fimul word [4 * rbp]
fimul word [4 * rbp + 0x12]
fimul word [4 * rbp + 0x1234]
fimul word [4 * rbp + 0x12345678]

fimul word [rbx + 4 * rbp]
fimul word [rbx + 4 * rbp + 0x12]
fimul word [rbx + 4 * rbp + 0x1234]
fimul word [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fimul word [rsp]
fimul word [rsp + 0x12]
fimul word [rsp + 0x1234]
fimul word [rsp + 0x12345678]

fimul word [rsp + rax]
fimul word [rsp + rbp]
fimul word [rsp + 2*rbp]
fimul word [rsp + 4*rbp]
fimul word [rsp + 8*rbp]

; use each register as indirect.
fimul word [rax]
fimul word [rcx]
fimul word [rdx]
fimul word [rbx]
fimul word [rsp]
fimul word [rbp]
fimul word [rsi]
fimul word [rdi]

; use each register as indirect.
; rsp is forbidden as index
fimul word [rax + 2*rax]
fimul word [rcx + 2*rcx]
fimul word [rdx + 2*rdx]
fimul word [rbx + 2*rbx]
fimul word [rbp + 2*rbp]
fimul word [rsi + 2*rsi]
fimul word [rdi + 2*rdi]
