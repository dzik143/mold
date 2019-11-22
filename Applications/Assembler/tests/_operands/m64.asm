; [rip + disp32]
qword [rip + 0x13]
qword [rip + 0x1235]
qword [rip + 0x12345679]

; [rip + base]
qword  [rbx]

; [rip + base + disp8]
qword [rcx + 0x14]
qword [rdx + 0x15]

; [rip + base + disp32]
qword [rbx + 0x1235]
qword [rbx + 0x12345679]

; [rip + base + index]
qword [rbx + rcx]

; [rip + base + scale * index]
qword [rbx + 4 * rcx]

; [rip + base + index + disp8]
qword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
qword [rbx + rcx + 0x1235]
qword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
qword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
qword [rbx + 4 * rcx + 0x1235]
qword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
qword [4 * rcx]

; [scale * index + disp8]
qword [4 * rcx + 0x13]

; [scale * index + disp32]
qword [4 * rcx + 0x1235]
qword [4 * rcx + 0x12345679]

; Use rbp as base or index.
qword [rbp]
qword [rbp + 0x12]
qword [rbp + 0x1234]
qword [rbp + 0x12345678]

qword [4 * rbp]
qword [4 * rbp + 0x12]
qword [4 * rbp + 0x1234]
qword [4 * rbp + 0x12345678]

qword [rbx + 4 * rbp]
qword [rbx + 4 * rbp + 0x12]
qword [rbx + 4 * rbp + 0x1234]
qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
qword [rsp]
qword [rsp + 0x12]
qword [rsp + 0x1234]
qword [rsp + 0x12345678]

qword [rsp + rax]
qword [rsp + rbp]
qword [rsp + 2*rbp]
qword [rsp + 4*rbp]
qword [rsp + 8*rbp]

; use each register as indirect.
qword [rax]
qword [rcx]
qword [rdx]
qword [rbx]
qword [rsp]
qword [rbp]
qword [rsi]
qword [rdi]

; use each register as indirect.
; rsp is forbidden as index
qword [rax + 2*rax]
qword [rcx + 2*rcx]
qword [rdx + 2*rdx]
qword [rbx + 2*rbx]
qword [rbp + 2*rbp]
qword [rsi + 2*rsi]
qword [rdi + 2*rdi]
