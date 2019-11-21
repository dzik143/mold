use64

; [rip + disp32]
fcomp qword [rip + 0x13]
fcomp qword [rip + 0x1235]
fcomp qword [rip + 0x12345679]

; [rip + base]
fcomp qword  [rbx]

; [rip + base + disp8]
fcomp qword [rcx + 0x14]
fcomp qword [rdx + 0x15]

; [rip + base + disp32]
fcomp qword [rbx + 0x1235]
fcomp qword [rbx + 0x12345679]

; [rip + base + index]
fcomp qword [rbx + rcx]

; [rip + base + scale * index]
fcomp qword [rbx + 4 * rcx]

; [rip + base + index + disp8]
fcomp qword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fcomp qword [rbx + rcx + 0x1235]
fcomp qword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fcomp qword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fcomp qword [rbx + 4 * rcx + 0x1235]
fcomp qword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fcomp qword [4 * rcx]

; [scale * index + disp8]
fcomp qword [4 * rcx + 0x13]

; [scale * index + disp32]
fcomp qword [4 * rcx + 0x1235]
fcomp qword [4 * rcx + 0x12345679]

; Use rbp as base or index.
fcomp qword [rbp]
fcomp qword [rbp + 0x12]
fcomp qword [rbp + 0x1234]
fcomp qword [rbp + 0x12345678]

fcomp qword [4 * rbp]
fcomp qword [4 * rbp + 0x12]
fcomp qword [4 * rbp + 0x1234]
fcomp qword [4 * rbp + 0x12345678]

fcomp qword [rbx + 4 * rbp]
fcomp qword [rbx + 4 * rbp + 0x12]
fcomp qword [rbx + 4 * rbp + 0x1234]
fcomp qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fcomp qword [rsp]
fcomp qword [rsp + 0x12]
fcomp qword [rsp + 0x1234]
fcomp qword [rsp + 0x12345678]

fcomp qword [rsp + rax]
fcomp qword [rsp + rbp]
fcomp qword [rsp + 2*rbp]
fcomp qword [rsp + 4*rbp]
fcomp qword [rsp + 8*rbp]

; use each register as indirect.
fcomp qword [rax]
fcomp qword [rcx]
fcomp qword [rdx]
fcomp qword [rbx]
fcomp qword [rsp]
fcomp qword [rbp]
fcomp qword [rsi]
fcomp qword [rdi]

; use each register as indirect.
; rsp is forbidden as index
fcomp qword [rax + 2*rax]
fcomp qword [rcx + 2*rcx]
fcomp qword [rdx + 2*rdx]
fcomp qword [rbx + 2*rbx]
fcomp qword [rbp + 2*rbp]
fcomp qword [rsi + 2*rsi]
fcomp qword [rdi + 2*rdi]
