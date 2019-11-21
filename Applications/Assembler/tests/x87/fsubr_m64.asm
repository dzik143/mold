use64

; [rip + disp32]
fsubr qword [rip + 0x13]
fsubr qword [rip + 0x1235]
fsubr qword [rip + 0x12345679]

; [rip + base]
fsubr qword  [rbx]

; [rip + base + disp8]
fsubr qword [rcx + 0x14]
fsubr qword [rdx + 0x15]

; [rip + base + disp32]
fsubr qword [rbx + 0x1235]
fsubr qword [rbx + 0x12345679]

; [rip + base + index]
fsubr qword [rbx + rcx]

; [rip + base + scale * index]
fsubr qword [rbx + 4 * rcx]

; [rip + base + index + disp8]
fsubr qword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fsubr qword [rbx + rcx + 0x1235]
fsubr qword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fsubr qword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fsubr qword [rbx + 4 * rcx + 0x1235]
fsubr qword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fsubr qword [4 * rcx]

; [scale * index + disp8]
fsubr qword [4 * rcx + 0x13]

; [scale * index + disp32]
fsubr qword [4 * rcx + 0x1235]
fsubr qword [4 * rcx + 0x12345679]

; Use rbp as base or index.
fsubr qword [rbp]
fsubr qword [rbp + 0x12]
fsubr qword [rbp + 0x1234]
fsubr qword [rbp + 0x12345678]

fsubr qword [4 * rbp]
fsubr qword [4 * rbp + 0x12]
fsubr qword [4 * rbp + 0x1234]
fsubr qword [4 * rbp + 0x12345678]

fsubr qword [rbx + 4 * rbp]
fsubr qword [rbx + 4 * rbp + 0x12]
fsubr qword [rbx + 4 * rbp + 0x1234]
fsubr qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fsubr qword [rsp]
fsubr qword [rsp + 0x12]
fsubr qword [rsp + 0x1234]
fsubr qword [rsp + 0x12345678]

fsubr qword [rsp + rax]
fsubr qword [rsp + rbp]
fsubr qword [rsp + 2*rbp]
fsubr qword [rsp + 4*rbp]
fsubr qword [rsp + 8*rbp]

; use each register as indirect.
fsubr qword [rax]
fsubr qword [rcx]
fsubr qword [rdx]
fsubr qword [rbx]
fsubr qword [rsp]
fsubr qword [rbp]
fsubr qword [rsi]
fsubr qword [rdi]

; use each register as indirect.
; rsp is forbidden as index
fsubr qword [rax + 2*rax]
fsubr qword [rcx + 2*rcx]
fsubr qword [rdx + 2*rdx]
fsubr qword [rbx + 2*rbx]
fsubr qword [rbp + 2*rbp]
fsubr qword [rsi + 2*rsi]
fsubr qword [rdi + 2*rdi]
