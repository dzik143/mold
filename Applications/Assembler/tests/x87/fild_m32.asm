use64

; [rip + disp32]
fild dword [rip + 0x13]
fild dword [rip + 0x1235]
fild dword [rip + 0x12345679]

; [rip + base]
fild dword  [rbx]

; [rip + base + disp8]
fild dword [rcx + 0x14]
fild dword [rdx + 0x15]

; [rip + base + disp32]
fild dword [rbx + 0x1235]
fild dword [rbx + 0x12345679]

; [rip + base + index]
fild dword [rbx + rcx]

; [rip + base + scale * index]
fild dword [rbx + 4 * rcx]

; [rip + base + index + disp8]
fild dword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fild dword [rbx + rcx + 0x1235]
fild dword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fild dword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fild dword [rbx + 4 * rcx + 0x1235]
fild dword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fild dword [4 * rcx]

; [scale * index + disp8]
fild dword [4 * rcx + 0x13]

; [scale * index + disp32]
fild dword [4 * rcx + 0x1235]
fild dword [4 * rcx + 0x12345679]

; Use rbp as base or index.
fild dword [rbp]
fild dword [rbp + 0x12]
fild dword [rbp + 0x1234]
fild dword [rbp + 0x12345678]

fild dword [4 * rbp]
fild dword [4 * rbp + 0x12]
fild dword [4 * rbp + 0x1234]
fild dword [4 * rbp + 0x12345678]

fild dword [rbx + 4 * rbp]
fild dword [rbx + 4 * rbp + 0x12]
fild dword [rbx + 4 * rbp + 0x1234]
fild dword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fild dword [rsp]
fild dword [rsp + 0x12]
fild dword [rsp + 0x1234]
fild dword [rsp + 0x12345678]

fild dword [rsp + rax]
fild dword [rsp + rbp]
fild dword [rsp + 2*rbp]
fild dword [rsp + 4*rbp]
fild dword [rsp + 8*rbp]

; use each register as indirect.
fild dword [rax]
fild dword [rcx]
fild dword [rdx]
fild dword [rbx]
fild dword [rsp]
fild dword [rbp]
fild dword [rsi]
fild dword [rdi]

; use each register as indirect.
; rsp is forbidden as index
fild dword [rax + 2*rax]
fild dword [rcx + 2*rcx]
fild dword [rdx + 2*rdx]
fild dword [rbx + 2*rbx]
fild dword [rbp + 2*rbp]
fild dword [rsi + 2*rsi]
fild dword [rdi + 2*rdi]
