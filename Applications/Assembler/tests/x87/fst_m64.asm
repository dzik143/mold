use64

; [rip + disp32]
fst qword [rip + 0x13]
fst qword [rip + 0x1235]
fst qword [rip + 0x12345679]

; [rip + base]
fst qword  [rbx]

; [rip + base + disp8]
fst qword [rcx + 0x14]
fst qword [rdx + 0x15]

; [rip + base + disp32]
fst qword [rbx + 0x1235]
fst qword [rbx + 0x12345679]

; [rip + base + index]
fst qword [rbx + rcx]

; [rip + base + scale * index]
fst qword [rbx + 4 * rcx]

; [rip + base + index + disp8]
fst qword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fst qword [rbx + rcx + 0x1235]
fst qword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fst qword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fst qword [rbx + 4 * rcx + 0x1235]
fst qword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fst qword [4 * rcx]

; [scale * index + disp8]
fst qword [4 * rcx + 0x13]

; [scale * index + disp32]
fst qword [4 * rcx + 0x1235]
fst qword [4 * rcx + 0x12345679]

; Use rbp as base or index.
fst qword [rbp]
fst qword [rbp + 0x12]
fst qword [rbp + 0x1234]
fst qword [rbp + 0x12345678]

fst qword [4 * rbp]
fst qword [4 * rbp + 0x12]
fst qword [4 * rbp + 0x1234]
fst qword [4 * rbp + 0x12345678]

fst qword [rbx + 4 * rbp]
fst qword [rbx + 4 * rbp + 0x12]
fst qword [rbx + 4 * rbp + 0x1234]
fst qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fst qword [rsp]
fst qword [rsp + 0x12]
fst qword [rsp + 0x1234]
fst qword [rsp + 0x12345678]

fst qword [rsp + rax]
fst qword [rsp + rbp]
fst qword [rsp + 2*rbp]
fst qword [rsp + 4*rbp]
fst qword [rsp + 8*rbp]

; use each register as indirect.
fst qword [rax]
fst qword [rcx]
fst qword [rdx]
fst qword [rbx]
fst qword [rsp]
fst qword [rbp]
fst qword [rsi]
fst qword [rdi]

; use each register as indirect.
; rsp is forbidden as index
fst qword [rax + 2*rax]
fst qword [rcx + 2*rcx]
fst qword [rdx + 2*rdx]
fst qword [rbx + 2*rbx]
fst qword [rbp + 2*rbp]
fst qword [rsi + 2*rsi]
fst qword [rdi + 2*rdi]
