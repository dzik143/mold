use64

; [rip + disp32]
fld qword [rip + 0x13]
fld qword [rip + 0x1235]
fld qword [rip + 0x12345679]

; [rip + base]
fld qword  [rbx]

; [rip + base + disp8]
fld qword [rcx + 0x14]
fld qword [rdx + 0x15]

; [rip + base + disp32]
fld qword [rbx + 0x1235]
fld qword [rbx + 0x12345679]

; [rip + base + index]
fld qword [rbx + rcx]

; [rip + base + scale * index]
fld qword [rbx + 4 * rcx]

; [rip + base + index + disp8]
fld qword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fld qword [rbx + rcx + 0x1235]
fld qword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fld qword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fld qword [rbx + 4 * rcx + 0x1235]
fld qword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fld qword [4 * rcx]

; [scale * index + disp8]
fld qword [4 * rcx + 0x13]

; [scale * index + disp32]
fld qword [4 * rcx + 0x1235]
fld qword [4 * rcx + 0x12345679]

; Use rbp as base or index.
fld qword [rbp]
fld qword [rbp + 0x12]
fld qword [rbp + 0x1234]
fld qword [rbp + 0x12345678]

fld qword [4 * rbp]
fld qword [4 * rbp + 0x12]
fld qword [4 * rbp + 0x1234]
fld qword [4 * rbp + 0x12345678]

fld qword [rbx + 4 * rbp]
fld qword [rbx + 4 * rbp + 0x12]
fld qword [rbx + 4 * rbp + 0x1234]
fld qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fld qword [rsp]
fld qword [rsp + 0x12]
fld qword [rsp + 0x1234]
fld qword [rsp + 0x12345678]

fld qword [rsp + rax]
fld qword [rsp + rbp]
fld qword [rsp + 2*rbp]
fld qword [rsp + 4*rbp]
fld qword [rsp + 8*rbp]

; use each register as indirect.
fld qword [rax]
fld qword [rcx]
fld qword [rdx]
fld qword [rbx]
fld qword [rsp]
fld qword [rbp]
fld qword [rsi]
fld qword [rdi]

; use each register as indirect.
; rsp is forbidden as index
fld qword [rax + 2*rax]
fld qword [rcx + 2*rcx]
fld qword [rdx + 2*rdx]
fld qword [rbx + 2*rbx]
fld qword [rbp + 2*rbp]
fld qword [rsi + 2*rsi]
fld qword [rdi + 2*rdi]
