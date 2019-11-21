use64

; [rip + disp32]
fild qword [rip + 0x13]
fild qword [rip + 0x1235]
fild qword [rip + 0x12345679]

; [rip + base]
fild qword  [rbx]

; [rip + base + disp8]
fild qword [rcx + 0x14]
fild qword [rdx + 0x15]

; [rip + base + disp32]
fild qword [rbx + 0x1235]
fild qword [rbx + 0x12345679]

; [rip + base + index]
fild qword [rbx + rcx]

; [rip + base + scale * index]
fild qword [rbx + 4 * rcx]

; [rip + base + index + disp8]
fild qword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fild qword [rbx + rcx + 0x1235]
fild qword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fild qword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fild qword [rbx + 4 * rcx + 0x1235]
fild qword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fild qword [4 * rcx]

; [scale * index + disp8]
fild qword [4 * rcx + 0x13]

; [scale * index + disp32]
fild qword [4 * rcx + 0x1235]
fild qword [4 * rcx + 0x12345679]

; Use rbp as base or index.
fild qword [rbp]
fild qword [rbp + 0x12]
fild qword [rbp + 0x1234]
fild qword [rbp + 0x12345678]

fild qword [4 * rbp]
fild qword [4 * rbp + 0x12]
fild qword [4 * rbp + 0x1234]
fild qword [4 * rbp + 0x12345678]

fild qword [rbx + 4 * rbp]
fild qword [rbx + 4 * rbp + 0x12]
fild qword [rbx + 4 * rbp + 0x1234]
fild qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fild qword [rsp]
fild qword [rsp + 0x12]
fild qword [rsp + 0x1234]
fild qword [rsp + 0x12345678]

fild qword [rsp + rax]
fild qword [rsp + rbp]
fild qword [rsp + 2*rbp]
fild qword [rsp + 4*rbp]
fild qword [rsp + 8*rbp]

; use each register as indirect.
fild qword [rax]
fild qword [rcx]
fild qword [rdx]
fild qword [rbx]
fild qword [rsp]
fild qword [rbp]
fild qword [rsi]
fild qword [rdi]

; use each register as indirect.
; rsp is forbidden as index
fild qword [rax + 2*rax]
fild qword [rcx + 2*rcx]
fild qword [rdx + 2*rdx]
fild qword [rbx + 2*rbx]
fild qword [rbp + 2*rbp]
fild qword [rsi + 2*rsi]
fild qword [rdi + 2*rdi]
