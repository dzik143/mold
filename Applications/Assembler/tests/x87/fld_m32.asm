use64

; [rip + disp32]
fld dword [rip + 0x13]
fld dword [rip + 0x1235]
fld dword [rip + 0x12345679]

; [rip + base]
fld dword  [rbx]

; [rip + base + disp8]
fld dword [rcx + 0x14]
fld dword [rdx + 0x15]

; [rip + base + disp32]
fld dword [rbx + 0x1235]
fld dword [rbx + 0x12345679]

; [rip + base + index]
fld dword [rbx + rcx]

; [rip + base + scale * index]
fld dword [rbx + 4 * rcx]

; [rip + base + index + disp8]
fld dword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fld dword [rbx + rcx + 0x1235]
fld dword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fld dword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fld dword [rbx + 4 * rcx + 0x1235]
fld dword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fld dword [4 * rcx]

; [scale * index + disp8]
fld dword [4 * rcx + 0x13]

; [scale * index + disp32]
fld dword [4 * rcx + 0x1235]
fld dword [4 * rcx + 0x12345679]

; Use rbp as base or index.
fld dword [rbp]
fld dword [rbp + 0x12]
fld dword [rbp + 0x1234]
fld dword [rbp + 0x12345678]

fld dword [4 * rbp]
fld dword [4 * rbp + 0x12]
fld dword [4 * rbp + 0x1234]
fld dword [4 * rbp + 0x12345678]

fld dword [rbx + 4 * rbp]
fld dword [rbx + 4 * rbp + 0x12]
fld dword [rbx + 4 * rbp + 0x1234]
fld dword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fld dword [rsp]
fld dword [rsp + 0x12]
fld dword [rsp + 0x1234]
fld dword [rsp + 0x12345678]

fld dword [rsp + rax]
fld dword [rsp + rbp]
fld dword [rsp + 2*rbp]
fld dword [rsp + 4*rbp]
fld dword [rsp + 8*rbp]

; use each register as indirect.
fld dword [rax]
fld dword [rcx]
fld dword [rdx]
fld dword [rbx]
fld dword [rsp]
fld dword [rbp]
fld dword [rsi]
fld dword [rdi]

; use each register as indirect.
; rsp is forbidden as index
fld dword [rax + 2*rax]
fld dword [rcx + 2*rcx]
fld dword [rdx + 2*rdx]
fld dword [rbx + 2*rbx]
fld dword [rbp + 2*rbp]
fld dword [rsi + 2*rsi]
fld dword [rdi + 2*rdi]
