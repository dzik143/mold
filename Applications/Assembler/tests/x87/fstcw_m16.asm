use64

; [rip + disp32]
fstcw word [rip + 0x13]
fstcw word [rip + 0x1235]
fstcw word [rip + 0x12345679]

; [rip + base]
fstcw word  [rbx]

; [rip + base + disp8]
fstcw word [rcx + 0x14]
fstcw word [rdx + 0x15]

; [rip + base + disp32]
fstcw word [rbx + 0x1235]
fstcw word [rbx + 0x12345679]

; [rip + base + index]
fstcw word [rbx + rcx]

; [rip + base + scale * index]
fstcw word [rbx + 4 * rcx]

; [rip + base + index + disp8]
fstcw word [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fstcw word [rbx + rcx + 0x1235]
fstcw word [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fstcw word [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fstcw word [rbx + 4 * rcx + 0x1235]
fstcw word [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fstcw word [4 * rcx]

; [scale * index + disp8]
fstcw word [4 * rcx + 0x13]

; [scale * index + disp32]
fstcw word [4 * rcx + 0x1235]
fstcw word [4 * rcx + 0x12345679]

; Use rbp as base or index.
fstcw word [rbp]
fstcw word [rbp + 0x12]
fstcw word [rbp + 0x1234]
fstcw word [rbp + 0x12345678]

fstcw word [4 * rbp]
fstcw word [4 * rbp + 0x12]
fstcw word [4 * rbp + 0x1234]
fstcw word [4 * rbp + 0x12345678]

fstcw word [rbx + 4 * rbp]
fstcw word [rbx + 4 * rbp + 0x12]
fstcw word [rbx + 4 * rbp + 0x1234]
fstcw word [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fstcw word [rsp]
fstcw word [rsp + 0x12]
fstcw word [rsp + 0x1234]
fstcw word [rsp + 0x12345678]

fstcw word [rsp + rax]
fstcw word [rsp + rbp]
fstcw word [rsp + 2*rbp]
fstcw word [rsp + 4*rbp]
fstcw word [rsp + 8*rbp]

; use each register as indirect.
fstcw word [rax]
fstcw word [rcx]
fstcw word [rdx]
fstcw word [rbx]
fstcw word [rsp]
fstcw word [rbp]
fstcw word [rsi]
fstcw word [rdi]

; use each register as indirect.
; rsp is forbidden as index
fstcw word [rax + 2*rax]
fstcw word [rcx + 2*rcx]
fstcw word [rdx + 2*rdx]
fstcw word [rbx + 2*rbx]
fstcw word [rbp + 2*rbp]
fstcw word [rsi + 2*rsi]
fstcw word [rdi + 2*rdi]
