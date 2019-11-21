use64

; [rip + disp32]
fld tword [rip + 0x13]
fld tword [rip + 0x1235]
fld tword [rip + 0x12345679]

; [rip + base]
fld tword  [rbx]

; [rip + base + disp8]
fld tword [rcx + 0x14]
fld tword [rdx + 0x15]

; [rip + base + disp32]
fld tword [rbx + 0x1235]
fld tword [rbx + 0x12345679]

; [rip + base + index]
fld tword [rbx + rcx]

; [rip + base + scale * index]
fld tword [rbx + 4 * rcx]

; [rip + base + index + disp8]
fld tword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fld tword [rbx + rcx + 0x1235]
fld tword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fld tword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fld tword [rbx + 4 * rcx + 0x1235]
fld tword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fld tword [4 * rcx]

; [scale * index + disp8]
fld tword [4 * rcx + 0x13]

; [scale * index + disp32]
fld tword [4 * rcx + 0x1235]
fld tword [4 * rcx + 0x12345679]

; Use rbp as base or index.
fld tword [rbp]
fld tword [rbp + 0x12]
fld tword [rbp + 0x1234]
fld tword [rbp + 0x12345678]

fld tword [4 * rbp]
fld tword [4 * rbp + 0x12]
fld tword [4 * rbp + 0x1234]
fld tword [4 * rbp + 0x12345678]

fld tword [rbx + 4 * rbp]
fld tword [rbx + 4 * rbp + 0x12]
fld tword [rbx + 4 * rbp + 0x1234]
fld tword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fld tword [rsp]
fld tword [rsp + 0x12]
fld tword [rsp + 0x1234]
fld tword [rsp + 0x12345678]

fld tword [rsp + rax]
fld tword [rsp + rbp]
fld tword [rsp + 2*rbp]
fld tword [rsp + 4*rbp]
fld tword [rsp + 8*rbp]

; use each register as indirect.
fld tword [rax]
fld tword [rcx]
fld tword [rdx]
fld tword [rbx]
fld tword [rsp]
fld tword [rbp]
fld tword [rsi]
fld tword [rdi]

; use each register as indirect.
; rsp is forbidden as index
fld tword [rax + 2*rax]
fld tword [rcx + 2*rcx]
fld tword [rdx + 2*rdx]
fld tword [rbx + 2*rbx]
fld tword [rbp + 2*rbp]
fld tword [rsi + 2*rsi]
fld tword [rdi + 2*rdi]
