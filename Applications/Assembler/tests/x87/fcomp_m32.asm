use64

; [rip + disp32]
fcomp dword [rip + 0x13]
fcomp dword [rip + 0x1235]
fcomp dword [rip + 0x12345679]

; [rip + base]
fcomp dword  [rbx]

; [rip + base + disp8]
fcomp dword [rcx + 0x14]
fcomp dword [rdx + 0x15]

; [rip + base + disp32]
fcomp dword [rbx + 0x1235]
fcomp dword [rbx + 0x12345679]

; [rip + base + index]
fcomp dword [rbx + rcx]

; [rip + base + scale * index]
fcomp dword [rbx + 4 * rcx]

; [rip + base + index + disp8]
fcomp dword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fcomp dword [rbx + rcx + 0x1235]
fcomp dword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fcomp dword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fcomp dword [rbx + 4 * rcx + 0x1235]
fcomp dword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fcomp dword [4 * rcx]

; [scale * index + disp8]
fcomp dword [4 * rcx + 0x13]

; [scale * index + disp32]
fcomp dword [4 * rcx + 0x1235]
fcomp dword [4 * rcx + 0x12345679]

; Use rbp as base or index.
fcomp dword [rbp]
fcomp dword [rbp + 0x12]
fcomp dword [rbp + 0x1234]
fcomp dword [rbp + 0x12345678]

fcomp dword [4 * rbp]
fcomp dword [4 * rbp + 0x12]
fcomp dword [4 * rbp + 0x1234]
fcomp dword [4 * rbp + 0x12345678]

fcomp dword [rbx + 4 * rbp]
fcomp dword [rbx + 4 * rbp + 0x12]
fcomp dword [rbx + 4 * rbp + 0x1234]
fcomp dword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fcomp dword [rsp]
fcomp dword [rsp + 0x12]
fcomp dword [rsp + 0x1234]
fcomp dword [rsp + 0x12345678]

fcomp dword [rsp + rax]
fcomp dword [rsp + rbp]
fcomp dword [rsp + 2*rbp]
fcomp dword [rsp + 4*rbp]
fcomp dword [rsp + 8*rbp]

; use each register as indirect.
fcomp dword [rax]
fcomp dword [rcx]
fcomp dword [rdx]
fcomp dword [rbx]
fcomp dword [rsp]
fcomp dword [rbp]
fcomp dword [rsi]
fcomp dword [rdi]

; use each register as indirect.
; rsp is forbidden as index
fcomp dword [rax + 2*rax]
fcomp dword [rcx + 2*rcx]
fcomp dword [rdx + 2*rdx]
fcomp dword [rbx + 2*rbx]
fcomp dword [rbp + 2*rbp]
fcomp dword [rsi + 2*rsi]
fcomp dword [rdi + 2*rdi]
