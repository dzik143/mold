use64

; [rip + disp32]
fnstsw word [rip + 0x13]
fnstsw word [rip + 0x1235]
fnstsw word [rip + 0x12345679]

; [rip + base]
fnstsw word  [rbx]

; [rip + base + disp8]
fnstsw word [rcx + 0x14]
fnstsw word [rdx + 0x15]

; [rip + base + disp32]
fnstsw word [rbx + 0x1235]
fnstsw word [rbx + 0x12345679]

; [rip + base + index]
fnstsw word [rbx + rcx]

; [rip + base + scale * index]
fnstsw word [rbx + 4 * rcx]

; [rip + base + index + disp8]
fnstsw word [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fnstsw word [rbx + rcx + 0x1235]
fnstsw word [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fnstsw word [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fnstsw word [rbx + 4 * rcx + 0x1235]
fnstsw word [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fnstsw word [4 * rcx]

; [scale * index + disp8]
fnstsw word [4 * rcx + 0x13]

; [scale * index + disp32]
fnstsw word [4 * rcx + 0x1235]
fnstsw word [4 * rcx + 0x12345679]

; Use rbp as base or index.
fnstsw word [rbp]
fnstsw word [rbp + 0x12]
fnstsw word [rbp + 0x1234]
fnstsw word [rbp + 0x12345678]

fnstsw word [4 * rbp]
fnstsw word [4 * rbp + 0x12]
fnstsw word [4 * rbp + 0x1234]
fnstsw word [4 * rbp + 0x12345678]

fnstsw word [rbx + 4 * rbp]
fnstsw word [rbx + 4 * rbp + 0x12]
fnstsw word [rbx + 4 * rbp + 0x1234]
fnstsw word [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fnstsw word [rsp]
fnstsw word [rsp + 0x12]
fnstsw word [rsp + 0x1234]
fnstsw word [rsp + 0x12345678]

fnstsw word [rsp + rax]
fnstsw word [rsp + rbp]
fnstsw word [rsp + 2*rbp]
fnstsw word [rsp + 4*rbp]
fnstsw word [rsp + 8*rbp]

; use each register as indirect.
fnstsw word [rax]
fnstsw word [rcx]
fnstsw word [rdx]
fnstsw word [rbx]
fnstsw word [rsp]
fnstsw word [rbp]
fnstsw word [rsi]
fnstsw word [rdi]

; use each register as indirect.
; rsp is forbidden as index
fnstsw word [rax + 2*rax]
fnstsw word [rcx + 2*rcx]
fnstsw word [rdx + 2*rdx]
fnstsw word [rbx + 2*rbx]
fnstsw word [rbp + 2*rbp]
fnstsw word [rsi + 2*rsi]
fnstsw word [rdi + 2*rdi]
