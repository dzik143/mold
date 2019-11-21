use64

; [rip + disp32]
fistp qword [rip + 0x13]
fistp qword [rip + 0x1235]
fistp qword [rip + 0x12345679]

; [rip + base]
fistp qword  [rbx]

; [rip + base + disp8]
fistp qword [rcx + 0x14]
fistp qword [rdx + 0x15]

; [rip + base + disp32]
fistp qword [rbx + 0x1235]
fistp qword [rbx + 0x12345679]

; [rip + base + index]
fistp qword [rbx + rcx]

; [rip + base + scale * index]
fistp qword [rbx + 4 * rcx]

; [rip + base + index + disp8]
fistp qword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fistp qword [rbx + rcx + 0x1235]
fistp qword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fistp qword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fistp qword [rbx + 4 * rcx + 0x1235]
fistp qword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fistp qword [4 * rcx]

; [scale * index + disp8]
fistp qword [4 * rcx + 0x13]

; [scale * index + disp32]
fistp qword [4 * rcx + 0x1235]
fistp qword [4 * rcx + 0x12345679]

; Use rbp as base or index.
fistp qword [rbp]
fistp qword [rbp + 0x12]
fistp qword [rbp + 0x1234]
fistp qword [rbp + 0x12345678]

fistp qword [4 * rbp]
fistp qword [4 * rbp + 0x12]
fistp qword [4 * rbp + 0x1234]
fistp qword [4 * rbp + 0x12345678]

fistp qword [rbx + 4 * rbp]
fistp qword [rbx + 4 * rbp + 0x12]
fistp qword [rbx + 4 * rbp + 0x1234]
fistp qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fistp qword [rsp]
fistp qword [rsp + 0x12]
fistp qword [rsp + 0x1234]
fistp qword [rsp + 0x12345678]

fistp qword [rsp + rax]
fistp qword [rsp + rbp]
fistp qword [rsp + 2*rbp]
fistp qword [rsp + 4*rbp]
fistp qword [rsp + 8*rbp]

; use each register as indirect.
fistp qword [rax]
fistp qword [rcx]
fistp qword [rdx]
fistp qword [rbx]
fistp qword [rsp]
fistp qword [rbp]
fistp qword [rsi]
fistp qword [rdi]

; use each register as indirect.
; rsp is forbidden as index
fistp qword [rax + 2*rax]
fistp qword [rcx + 2*rcx]
fistp qword [rdx + 2*rdx]
fistp qword [rbx + 2*rbx]
fistp qword [rbp + 2*rbp]
fistp qword [rsi + 2*rsi]
fistp qword [rdi + 2*rdi]
