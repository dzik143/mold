use64

; [rip + disp32]
fmul qword [rip + 0x13]
fmul qword [rip + 0x1235]
fmul qword [rip + 0x12345679]

; [rip + base]
fmul qword  [rbx]

; [rip + base + disp8]
fmul qword [rcx + 0x14]
fmul qword [rdx + 0x15]

; [rip + base + disp32]
fmul qword [rbx + 0x1235]
fmul qword [rbx + 0x12345679]

; [rip + base + index]
fmul qword [rbx + rcx]

; [rip + base + scale * index]
fmul qword [rbx + 4 * rcx]

; [rip + base + index + disp8]
fmul qword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fmul qword [rbx + rcx + 0x1235]
fmul qword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fmul qword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fmul qword [rbx + 4 * rcx + 0x1235]
fmul qword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fmul qword [4 * rcx]

; [scale * index + disp8]
fmul qword [4 * rcx + 0x13]

; [scale * index + disp32]
fmul qword [4 * rcx + 0x1235]
fmul qword [4 * rcx + 0x12345679]

; Use rbp as base or index.
fmul qword [rbp]
fmul qword [rbp + 0x12]
fmul qword [rbp + 0x1234]
fmul qword [rbp + 0x12345678]

fmul qword [4 * rbp]
fmul qword [4 * rbp + 0x12]
fmul qword [4 * rbp + 0x1234]
fmul qword [4 * rbp + 0x12345678]

fmul qword [rbx + 4 * rbp]
fmul qword [rbx + 4 * rbp + 0x12]
fmul qword [rbx + 4 * rbp + 0x1234]
fmul qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fmul qword [rsp]
fmul qword [rsp + 0x12]
fmul qword [rsp + 0x1234]
fmul qword [rsp + 0x12345678]

fmul qword [rsp + rax]
fmul qword [rsp + rbp]
fmul qword [rsp + 2*rbp]
fmul qword [rsp + 4*rbp]
fmul qword [rsp + 8*rbp]

; use each register as indirect.
fmul qword [rax]
fmul qword [rcx]
fmul qword [rdx]
fmul qword [rbx]
fmul qword [rsp]
fmul qword [rbp]
fmul qword [rsi]
fmul qword [rdi]

; use each register as indirect.
; rsp is forbidden as index
fmul qword [rax + 2*rax]
fmul qword [rcx + 2*rcx]
fmul qword [rdx + 2*rdx]
fmul qword [rbx + 2*rbx]
fmul qword [rbp + 2*rbp]
fmul qword [rsi + 2*rsi]
fmul qword [rdi + 2*rdi]
