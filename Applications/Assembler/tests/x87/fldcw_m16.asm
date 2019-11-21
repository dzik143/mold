use64

; [rip + disp32]
fldcw word [rip + 0x13]
fldcw word [rip + 0x1235]
fldcw word [rip + 0x12345679]

; [rip + base]
fldcw word  [rbx]

; [rip + base + disp8]
fldcw word [rcx + 0x14]
fldcw word [rdx + 0x15]

; [rip + base + disp32]
fldcw word [rbx + 0x1235]
fldcw word [rbx + 0x12345679]

; [rip + base + index]
fldcw word [rbx + rcx]

; [rip + base + scale * index]
fldcw word [rbx + 4 * rcx]

; [rip + base + index + disp8]
fldcw word [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fldcw word [rbx + rcx + 0x1235]
fldcw word [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fldcw word [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fldcw word [rbx + 4 * rcx + 0x1235]
fldcw word [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fldcw word [4 * rcx]

; [scale * index + disp8]
fldcw word [4 * rcx + 0x13]

; [scale * index + disp32]
fldcw word [4 * rcx + 0x1235]
fldcw word [4 * rcx + 0x12345679]

; Use rbp as base or index.
fldcw word [rbp]
fldcw word [rbp + 0x12]
fldcw word [rbp + 0x1234]
fldcw word [rbp + 0x12345678]

fldcw word [4 * rbp]
fldcw word [4 * rbp + 0x12]
fldcw word [4 * rbp + 0x1234]
fldcw word [4 * rbp + 0x12345678]

fldcw word [rbx + 4 * rbp]
fldcw word [rbx + 4 * rbp + 0x12]
fldcw word [rbx + 4 * rbp + 0x1234]
fldcw word [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fldcw word [rsp]
fldcw word [rsp + 0x12]
fldcw word [rsp + 0x1234]
fldcw word [rsp + 0x12345678]

fldcw word [rsp + rax]
fldcw word [rsp + rbp]
fldcw word [rsp + 2*rbp]
fldcw word [rsp + 4*rbp]
fldcw word [rsp + 8*rbp]

; use each register as indirect.
fldcw word [rax]
fldcw word [rcx]
fldcw word [rdx]
fldcw word [rbx]
fldcw word [rsp]
fldcw word [rbp]
fldcw word [rsi]
fldcw word [rdi]

; use each register as indirect.
; rsp is forbidden as index
fldcw word [rax + 2*rax]
fldcw word [rcx + 2*rcx]
fldcw word [rdx + 2*rdx]
fldcw word [rbx + 2*rbx]
fldcw word [rbp + 2*rbp]
fldcw word [rsi + 2*rsi]
fldcw word [rdi + 2*rdi]
