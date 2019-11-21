use64

; [rip + disp32]
fstp qword [rip + 0x13]
fstp qword [rip + 0x1235]
fstp qword [rip + 0x12345679]

; [rip + base]
fstp qword  [rbx]

; [rip + base + disp8]
fstp qword [rcx + 0x14]
fstp qword [rdx + 0x15]

; [rip + base + disp32]
fstp qword [rbx + 0x1235]
fstp qword [rbx + 0x12345679]

; [rip + base + index]
fstp qword [rbx + rcx]

; [rip + base + scale * index]
fstp qword [rbx + 4 * rcx]

; [rip + base + index + disp8]
fstp qword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fstp qword [rbx + rcx + 0x1235]
fstp qword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fstp qword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fstp qword [rbx + 4 * rcx + 0x1235]
fstp qword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fstp qword [4 * rcx]

; [scale * index + disp8]
fstp qword [4 * rcx + 0x13]

; [scale * index + disp32]
fstp qword [4 * rcx + 0x1235]
fstp qword [4 * rcx + 0x12345679]

; Use rbp as base or index.
fstp qword [rbp]
fstp qword [rbp + 0x12]
fstp qword [rbp + 0x1234]
fstp qword [rbp + 0x12345678]

fstp qword [4 * rbp]
fstp qword [4 * rbp + 0x12]
fstp qword [4 * rbp + 0x1234]
fstp qword [4 * rbp + 0x12345678]

fstp qword [rbx + 4 * rbp]
fstp qword [rbx + 4 * rbp + 0x12]
fstp qword [rbx + 4 * rbp + 0x1234]
fstp qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fstp qword [rsp]
fstp qword [rsp + 0x12]
fstp qword [rsp + 0x1234]
fstp qword [rsp + 0x12345678]

fstp qword [rsp + rax]
fstp qword [rsp + rbp]
fstp qword [rsp + 2*rbp]
fstp qword [rsp + 4*rbp]
fstp qword [rsp + 8*rbp]

; use each register as indirect.
fstp qword [rax]
fstp qword [rcx]
fstp qword [rdx]
fstp qword [rbx]
fstp qword [rsp]
fstp qword [rbp]
fstp qword [rsi]
fstp qword [rdi]

; use each register as indirect.
; rsp is forbidden as index
fstp qword [rax + 2*rax]
fstp qword [rcx + 2*rcx]
fstp qword [rdx + 2*rdx]
fstp qword [rbx + 2*rbx]
fstp qword [rbp + 2*rbp]
fstp qword [rsi + 2*rsi]
fstp qword [rdi + 2*rdi]
