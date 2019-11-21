use64

; [rip + disp32]
fsub qword [rip + 0x13]
fsub qword [rip + 0x1235]
fsub qword [rip + 0x12345679]

; [rip + base]
fsub qword  [rbx]

; [rip + base + disp8]
fsub qword [rcx + 0x14]
fsub qword [rdx + 0x15]

; [rip + base + disp32]
fsub qword [rbx + 0x1235]
fsub qword [rbx + 0x12345679]

; [rip + base + index]
fsub qword [rbx + rcx]

; [rip + base + scale * index]
fsub qword [rbx + 4 * rcx]

; [rip + base + index + disp8]
fsub qword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fsub qword [rbx + rcx + 0x1235]
fsub qword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fsub qword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fsub qword [rbx + 4 * rcx + 0x1235]
fsub qword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fsub qword [4 * rcx]

; [scale * index + disp8]
fsub qword [4 * rcx + 0x13]

; [scale * index + disp32]
fsub qword [4 * rcx + 0x1235]
fsub qword [4 * rcx + 0x12345679]

; Use rbp as base or index.
fsub qword [rbp]
fsub qword [rbp + 0x12]
fsub qword [rbp + 0x1234]
fsub qword [rbp + 0x12345678]

fsub qword [4 * rbp]
fsub qword [4 * rbp + 0x12]
fsub qword [4 * rbp + 0x1234]
fsub qword [4 * rbp + 0x12345678]

fsub qword [rbx + 4 * rbp]
fsub qword [rbx + 4 * rbp + 0x12]
fsub qword [rbx + 4 * rbp + 0x1234]
fsub qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fsub qword [rsp]
fsub qword [rsp + 0x12]
fsub qword [rsp + 0x1234]
fsub qword [rsp + 0x12345678]

fsub qword [rsp + rax]
fsub qword [rsp + rbp]
fsub qword [rsp + 2*rbp]
fsub qword [rsp + 4*rbp]
fsub qword [rsp + 8*rbp]

; use each register as indirect.
fsub qword [rax]
fsub qword [rcx]
fsub qword [rdx]
fsub qword [rbx]
fsub qword [rsp]
fsub qword [rbp]
fsub qword [rsi]
fsub qword [rdi]

; use each register as indirect.
; rsp is forbidden as index
fsub qword [rax + 2*rax]
fsub qword [rcx + 2*rcx]
fsub qword [rdx + 2*rdx]
fsub qword [rbx + 2*rbx]
fsub qword [rbp + 2*rbp]
fsub qword [rsi + 2*rsi]
fsub qword [rdi + 2*rdi]
