use64

; [rip + disp32]
fstsw word [rip + 0x13]
fstsw word [rip + 0x1235]
fstsw word [rip + 0x12345679]

; [rip + base]
fstsw word  [rbx]

; [rip + base + disp8]
fstsw word [rcx + 0x14]
fstsw word [rdx + 0x15]

; [rip + base + disp32]
fstsw word [rbx + 0x1235]
fstsw word [rbx + 0x12345679]

; [rip + base + index]
fstsw word [rbx + rcx]

; [rip + base + scale * index]
fstsw word [rbx + 4 * rcx]

; [rip + base + index + disp8]
fstsw word [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fstsw word [rbx + rcx + 0x1235]
fstsw word [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fstsw word [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fstsw word [rbx + 4 * rcx + 0x1235]
fstsw word [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fstsw word [4 * rcx]

; [scale * index + disp8]
fstsw word [4 * rcx + 0x13]

; [scale * index + disp32]
fstsw word [4 * rcx + 0x1235]
fstsw word [4 * rcx + 0x12345679]

; Use rbp as base or index.
fstsw word [rbp]
fstsw word [rbp + 0x12]
fstsw word [rbp + 0x1234]
fstsw word [rbp + 0x12345678]

fstsw word [4 * rbp]
fstsw word [4 * rbp + 0x12]
fstsw word [4 * rbp + 0x1234]
fstsw word [4 * rbp + 0x12345678]

fstsw word [rbx + 4 * rbp]
fstsw word [rbx + 4 * rbp + 0x12]
fstsw word [rbx + 4 * rbp + 0x1234]
fstsw word [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fstsw word [rsp]
fstsw word [rsp + 0x12]
fstsw word [rsp + 0x1234]
fstsw word [rsp + 0x12345678]

fstsw word [rsp + rax]
fstsw word [rsp + rbp]
fstsw word [rsp + 2*rbp]
fstsw word [rsp + 4*rbp]
fstsw word [rsp + 8*rbp]

; use each register as indirect.
fstsw word [rax]
fstsw word [rcx]
fstsw word [rdx]
fstsw word [rbx]
fstsw word [rsp]
fstsw word [rbp]
fstsw word [rsi]
fstsw word [rdi]

; use each register as indirect.
; rsp is forbidden as index
fstsw word [rax + 2*rax]
fstsw word [rcx + 2*rcx]
fstsw word [rdx + 2*rdx]
fstsw word [rbx + 2*rbx]
fstsw word [rbp + 2*rbp]
fstsw word [rsi + 2*rsi]
fstsw word [rdi + 2*rdi]
