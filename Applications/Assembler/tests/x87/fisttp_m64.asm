use64

; [rip + disp32]
fisttp qword [rip + 0x13]
fisttp qword [rip + 0x1235]
fisttp qword [rip + 0x12345679]

; [rip + base]
fisttp qword  [rbx]

; [rip + base + disp8]
fisttp qword [rcx + 0x14]
fisttp qword [rdx + 0x15]

; [rip + base + disp32]
fisttp qword [rbx + 0x1235]
fisttp qword [rbx + 0x12345679]

; [rip + base + index]
fisttp qword [rbx + rcx]

; [rip + base + scale * index]
fisttp qword [rbx + 4 * rcx]

; [rip + base + index + disp8]
fisttp qword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fisttp qword [rbx + rcx + 0x1235]
fisttp qword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fisttp qword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fisttp qword [rbx + 4 * rcx + 0x1235]
fisttp qword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fisttp qword [4 * rcx]

; [scale * index + disp8]
fisttp qword [4 * rcx + 0x13]

; [scale * index + disp32]
fisttp qword [4 * rcx + 0x1235]
fisttp qword [4 * rcx + 0x12345679]

; Use rbp as base or index.
fisttp qword [rbp]
fisttp qword [rbp + 0x12]
fisttp qword [rbp + 0x1234]
fisttp qword [rbp + 0x12345678]

fisttp qword [4 * rbp]
fisttp qword [4 * rbp + 0x12]
fisttp qword [4 * rbp + 0x1234]
fisttp qword [4 * rbp + 0x12345678]

fisttp qword [rbx + 4 * rbp]
fisttp qword [rbx + 4 * rbp + 0x12]
fisttp qword [rbx + 4 * rbp + 0x1234]
fisttp qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fisttp qword [rsp]
fisttp qword [rsp + 0x12]
fisttp qword [rsp + 0x1234]
fisttp qword [rsp + 0x12345678]

fisttp qword [rsp + rax]
fisttp qword [rsp + rbp]
fisttp qword [rsp + 2*rbp]
fisttp qword [rsp + 4*rbp]
fisttp qword [rsp + 8*rbp]

; use each register as indirect.
fisttp qword [rax]
fisttp qword [rcx]
fisttp qword [rdx]
fisttp qword [rbx]
fisttp qword [rsp]
fisttp qword [rbp]
fisttp qword [rsi]
fisttp qword [rdi]

; use each register as indirect.
; rsp is forbidden as index
fisttp qword [rax + 2*rax]
fisttp qword [rcx + 2*rcx]
fisttp qword [rdx + 2*rdx]
fisttp qword [rbx + 2*rbx]
fisttp qword [rbp + 2*rbp]
fisttp qword [rsi + 2*rsi]
fisttp qword [rdi + 2*rdi]
