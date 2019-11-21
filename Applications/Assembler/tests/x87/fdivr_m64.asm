use64

; [rip + disp32]
fdivr qword [rip + 0x13]
fdivr qword [rip + 0x1235]
fdivr qword [rip + 0x12345679]

; [rip + base]
fdivr qword  [rbx]

; [rip + base + disp8]
fdivr qword [rcx + 0x14]
fdivr qword [rdx + 0x15]

; [rip + base + disp32]
fdivr qword [rbx + 0x1235]
fdivr qword [rbx + 0x12345679]

; [rip + base + index]
fdivr qword [rbx + rcx]

; [rip + base + scale * index]
fdivr qword [rbx + 4 * rcx]

; [rip + base + index + disp8]
fdivr qword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fdivr qword [rbx + rcx + 0x1235]
fdivr qword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fdivr qword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fdivr qword [rbx + 4 * rcx + 0x1235]
fdivr qword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fdivr qword [4 * rcx]

; [scale * index + disp8]
fdivr qword [4 * rcx + 0x13]

; [scale * index + disp32]
fdivr qword [4 * rcx + 0x1235]
fdivr qword [4 * rcx + 0x12345679]

; Use rbp as base or index.
fdivr qword [rbp]
fdivr qword [rbp + 0x12]
fdivr qword [rbp + 0x1234]
fdivr qword [rbp + 0x12345678]

fdivr qword [4 * rbp]
fdivr qword [4 * rbp + 0x12]
fdivr qword [4 * rbp + 0x1234]
fdivr qword [4 * rbp + 0x12345678]

fdivr qword [rbx + 4 * rbp]
fdivr qword [rbx + 4 * rbp + 0x12]
fdivr qword [rbx + 4 * rbp + 0x1234]
fdivr qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fdivr qword [rsp]
fdivr qword [rsp + 0x12]
fdivr qword [rsp + 0x1234]
fdivr qword [rsp + 0x12345678]

fdivr qword [rsp + rax]
fdivr qword [rsp + rbp]
fdivr qword [rsp + 2*rbp]
fdivr qword [rsp + 4*rbp]
fdivr qword [rsp + 8*rbp]

; use each register as indirect.
fdivr qword [rax]
fdivr qword [rcx]
fdivr qword [rdx]
fdivr qword [rbx]
fdivr qword [rsp]
fdivr qword [rbp]
fdivr qword [rsi]
fdivr qword [rdi]

; use each register as indirect.
; rsp is forbidden as index
fdivr qword [rax + 2*rax]
fdivr qword [rcx + 2*rcx]
fdivr qword [rdx + 2*rdx]
fdivr qword [rbx + 2*rbx]
fdivr qword [rbp + 2*rbp]
fdivr qword [rsi + 2*rsi]
fdivr qword [rdi + 2*rdi]
