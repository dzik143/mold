use64

; [rip + disp32]
fnstcw word [rip + 0x13]
fnstcw word [rip + 0x1235]
fnstcw word [rip + 0x12345679]

; [rip + base]
fnstcw word  [rbx]

; [rip + base + disp8]
fnstcw word [rcx + 0x14]
fnstcw word [rdx + 0x15]

; [rip + base + disp32]
fnstcw word [rbx + 0x1235]
fnstcw word [rbx + 0x12345679]

; [rip + base + index]
fnstcw word [rbx + rcx]

; [rip + base + scale * index]
fnstcw word [rbx + 4 * rcx]

; [rip + base + index + disp8]
fnstcw word [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fnstcw word [rbx + rcx + 0x1235]
fnstcw word [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fnstcw word [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fnstcw word [rbx + 4 * rcx + 0x1235]
fnstcw word [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fnstcw word [4 * rcx]

; [scale * index + disp8]
fnstcw word [4 * rcx + 0x13]

; [scale * index + disp32]
fnstcw word [4 * rcx + 0x1235]
fnstcw word [4 * rcx + 0x12345679]

; Use rbp as base or index.
fnstcw word [rbp]
fnstcw word [rbp + 0x12]
fnstcw word [rbp + 0x1234]
fnstcw word [rbp + 0x12345678]

fnstcw word [4 * rbp]
fnstcw word [4 * rbp + 0x12]
fnstcw word [4 * rbp + 0x1234]
fnstcw word [4 * rbp + 0x12345678]

fnstcw word [rbx + 4 * rbp]
fnstcw word [rbx + 4 * rbp + 0x12]
fnstcw word [rbx + 4 * rbp + 0x1234]
fnstcw word [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fnstcw word [rsp]
fnstcw word [rsp + 0x12]
fnstcw word [rsp + 0x1234]
fnstcw word [rsp + 0x12345678]

fnstcw word [rsp + rax]
fnstcw word [rsp + rbp]
fnstcw word [rsp + 2*rbp]
fnstcw word [rsp + 4*rbp]
fnstcw word [rsp + 8*rbp]

; use each register as indirect.
fnstcw word [rax]
fnstcw word [rcx]
fnstcw word [rdx]
fnstcw word [rbx]
fnstcw word [rsp]
fnstcw word [rbp]
fnstcw word [rsi]
fnstcw word [rdi]

; use each register as indirect.
; rsp is forbidden as index
fnstcw word [rax + 2*rax]
fnstcw word [rcx + 2*rcx]
fnstcw word [rdx + 2*rdx]
fnstcw word [rbx + 2*rbx]
fnstcw word [rbp + 2*rbp]
fnstcw word [rsi + 2*rsi]
fnstcw word [rdi + 2*rdi]
