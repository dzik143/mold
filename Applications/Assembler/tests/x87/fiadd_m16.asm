use64

; [rip + disp32]
fiadd word [rip + 0x13]
fiadd word [rip + 0x1235]
fiadd word [rip + 0x12345679]

; [rip + base]
fiadd word  [rbx]

; [rip + base + disp8]
fiadd word [rcx + 0x14]
fiadd word [rdx + 0x15]

; [rip + base + disp32]
fiadd word [rbx + 0x1235]
fiadd word [rbx + 0x12345679]

; [rip + base + index]
fiadd word [rbx + rcx]

; [rip + base + scale * index]
fiadd word [rbx + 4 * rcx]

; [rip + base + index + disp8]
fiadd word [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fiadd word [rbx + rcx + 0x1235]
fiadd word [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fiadd word [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fiadd word [rbx + 4 * rcx + 0x1235]
fiadd word [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fiadd word [4 * rcx]

; [scale * index + disp8]
fiadd word [4 * rcx + 0x13]

; [scale * index + disp32]
fiadd word [4 * rcx + 0x1235]
fiadd word [4 * rcx + 0x12345679]

; Use rbp as base or index.
fiadd word [rbp]
fiadd word [rbp + 0x12]
fiadd word [rbp + 0x1234]
fiadd word [rbp + 0x12345678]

fiadd word [4 * rbp]
fiadd word [4 * rbp + 0x12]
fiadd word [4 * rbp + 0x1234]
fiadd word [4 * rbp + 0x12345678]

fiadd word [rbx + 4 * rbp]
fiadd word [rbx + 4 * rbp + 0x12]
fiadd word [rbx + 4 * rbp + 0x1234]
fiadd word [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fiadd word [rsp]
fiadd word [rsp + 0x12]
fiadd word [rsp + 0x1234]
fiadd word [rsp + 0x12345678]

fiadd word [rsp + rax]
fiadd word [rsp + rbp]
fiadd word [rsp + 2*rbp]
fiadd word [rsp + 4*rbp]
fiadd word [rsp + 8*rbp]

; use each register as indirect.
fiadd word [rax]
fiadd word [rcx]
fiadd word [rdx]
fiadd word [rbx]
fiadd word [rsp]
fiadd word [rbp]
fiadd word [rsi]
fiadd word [rdi]

; use each register as indirect.
; rsp is forbidden as index
fiadd word [rax + 2*rax]
fiadd word [rcx + 2*rcx]
fiadd word [rdx + 2*rdx]
fiadd word [rbx + 2*rbx]
fiadd word [rbp + 2*rbp]
fiadd word [rsi + 2*rsi]
fiadd word [rdi + 2*rdi]
