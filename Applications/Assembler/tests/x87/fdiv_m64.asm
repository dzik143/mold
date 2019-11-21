use64

; [rip + disp32]
fdiv qword [rip + 0x13]
fdiv qword [rip + 0x1235]
fdiv qword [rip + 0x12345679]

; [rip + base]
fdiv qword  [rbx]

; [rip + base + disp8]
fdiv qword [rcx + 0x14]
fdiv qword [rdx + 0x15]

; [rip + base + disp32]
fdiv qword [rbx + 0x1235]
fdiv qword [rbx + 0x12345679]

; [rip + base + index]
fdiv qword [rbx + rcx]

; [rip + base + scale * index]
fdiv qword [rbx + 4 * rcx]

; [rip + base + index + disp8]
fdiv qword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fdiv qword [rbx + rcx + 0x1235]
fdiv qword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fdiv qword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fdiv qword [rbx + 4 * rcx + 0x1235]
fdiv qword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fdiv qword [4 * rcx]

; [scale * index + disp8]
fdiv qword [4 * rcx + 0x13]

; [scale * index + disp32]
fdiv qword [4 * rcx + 0x1235]
fdiv qword [4 * rcx + 0x12345679]

; Use rbp as base or index.
fdiv qword [rbp]
fdiv qword [rbp + 0x12]
fdiv qword [rbp + 0x1234]
fdiv qword [rbp + 0x12345678]

fdiv qword [4 * rbp]
fdiv qword [4 * rbp + 0x12]
fdiv qword [4 * rbp + 0x1234]
fdiv qword [4 * rbp + 0x12345678]

fdiv qword [rbx + 4 * rbp]
fdiv qword [rbx + 4 * rbp + 0x12]
fdiv qword [rbx + 4 * rbp + 0x1234]
fdiv qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fdiv qword [rsp]
fdiv qword [rsp + 0x12]
fdiv qword [rsp + 0x1234]
fdiv qword [rsp + 0x12345678]

fdiv qword [rsp + rax]
fdiv qword [rsp + rbp]
fdiv qword [rsp + 2*rbp]
fdiv qword [rsp + 4*rbp]
fdiv qword [rsp + 8*rbp]

; use each register as indirect.
fdiv qword [rax]
fdiv qword [rcx]
fdiv qword [rdx]
fdiv qword [rbx]
fdiv qword [rsp]
fdiv qword [rbp]
fdiv qword [rsi]
fdiv qword [rdi]

; use each register as indirect.
; rsp is forbidden as index
fdiv qword [rax + 2*rax]
fdiv qword [rcx + 2*rcx]
fdiv qword [rdx + 2*rdx]
fdiv qword [rbx + 2*rbx]
fdiv qword [rbp + 2*rbp]
fdiv qword [rsi + 2*rsi]
fdiv qword [rdi + 2*rdi]
