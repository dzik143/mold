use64

; [rip + disp32]
fadd qword [rip + 0x13]
fadd qword [rip + 0x1235]
fadd qword [rip + 0x12345679]

; [rip + base]
fadd qword  [rbx]

; [rip + base + disp8]
fadd qword [rcx + 0x14]
fadd qword [rdx + 0x15]

; [rip + base + disp32]
fadd qword [rbx + 0x1235]
fadd qword [rbx + 0x12345679]

; [rip + base + index]
fadd qword [rbx + rcx]

; [rip + base + scale * index]
fadd qword [rbx + 4 * rcx]

; [rip + base + index + disp8]
fadd qword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fadd qword [rbx + rcx + 0x1235]
fadd qword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fadd qword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fadd qword [rbx + 4 * rcx + 0x1235]
fadd qword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fadd qword [4 * rcx]

; [scale * index + disp8]
fadd qword [4 * rcx + 0x13]

; [scale * index + disp32]
fadd qword [4 * rcx + 0x1235]
fadd qword [4 * rcx + 0x12345679]

; Use rbp as base or index.
fadd qword [rbp]
fadd qword [rbp + 0x12]
fadd qword [rbp + 0x1234]
fadd qword [rbp + 0x12345678]

fadd qword [4 * rbp]
fadd qword [4 * rbp + 0x12]
fadd qword [4 * rbp + 0x1234]
fadd qword [4 * rbp + 0x12345678]

fadd qword [rbx + 4 * rbp]
fadd qword [rbx + 4 * rbp + 0x12]
fadd qword [rbx + 4 * rbp + 0x1234]
fadd qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fadd qword [rsp]
fadd qword [rsp + 0x12]
fadd qword [rsp + 0x1234]
fadd qword [rsp + 0x12345678]

fadd qword [rsp + rax]
fadd qword [rsp + rbp]
fadd qword [rsp + 2*rbp]
fadd qword [rsp + 4*rbp]
fadd qword [rsp + 8*rbp]

; use each register as indirect.
fadd qword [rax]
fadd qword [rcx]
fadd qword [rdx]
fadd qword [rbx]
fadd qword [rsp]
fadd qword [rbp]
fadd qword [rsi]
fadd qword [rdi]

; use each register as indirect.
; rsp is forbidden as index
fadd qword [rax + 2*rax]
fadd qword [rcx + 2*rcx]
fadd qword [rdx + 2*rdx]
fadd qword [rbx + 2*rbx]
fadd qword [rbp + 2*rbp]
fadd qword [rsi + 2*rsi]
fadd qword [rdi + 2*rdi]
