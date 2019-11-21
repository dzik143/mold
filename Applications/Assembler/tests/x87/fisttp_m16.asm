use64

; [rip + disp32]
fisttp word [rip + 0x13]
fisttp word [rip + 0x1235]
fisttp word [rip + 0x12345679]

; [rip + base]
fisttp word  [rbx]

; [rip + base + disp8]
fisttp word [rcx + 0x14]
fisttp word [rdx + 0x15]

; [rip + base + disp32]
fisttp word [rbx + 0x1235]
fisttp word [rbx + 0x12345679]

; [rip + base + index]
fisttp word [rbx + rcx]

; [rip + base + scale * index]
fisttp word [rbx + 4 * rcx]

; [rip + base + index + disp8]
fisttp word [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fisttp word [rbx + rcx + 0x1235]
fisttp word [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fisttp word [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fisttp word [rbx + 4 * rcx + 0x1235]
fisttp word [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fisttp word [4 * rcx]

; [scale * index + disp8]
fisttp word [4 * rcx + 0x13]

; [scale * index + disp32]
fisttp word [4 * rcx + 0x1235]
fisttp word [4 * rcx + 0x12345679]

; Use rbp as base or index.
fisttp word [rbp]
fisttp word [rbp + 0x12]
fisttp word [rbp + 0x1234]
fisttp word [rbp + 0x12345678]

fisttp word [4 * rbp]
fisttp word [4 * rbp + 0x12]
fisttp word [4 * rbp + 0x1234]
fisttp word [4 * rbp + 0x12345678]

fisttp word [rbx + 4 * rbp]
fisttp word [rbx + 4 * rbp + 0x12]
fisttp word [rbx + 4 * rbp + 0x1234]
fisttp word [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fisttp word [rsp]
fisttp word [rsp + 0x12]
fisttp word [rsp + 0x1234]
fisttp word [rsp + 0x12345678]

fisttp word [rsp + rax]
fisttp word [rsp + rbp]
fisttp word [rsp + 2*rbp]
fisttp word [rsp + 4*rbp]
fisttp word [rsp + 8*rbp]

; use each register as indirect.
fisttp word [rax]
fisttp word [rcx]
fisttp word [rdx]
fisttp word [rbx]
fisttp word [rsp]
fisttp word [rbp]
fisttp word [rsi]
fisttp word [rdi]

; use each register as indirect.
; rsp is forbidden as index
fisttp word [rax + 2*rax]
fisttp word [rcx + 2*rcx]
fisttp word [rdx + 2*rdx]
fisttp word [rbx + 2*rbx]
fisttp word [rbp + 2*rbp]
fisttp word [rsi + 2*rsi]
fisttp word [rdi + 2*rdi]
