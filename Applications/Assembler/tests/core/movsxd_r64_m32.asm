use64

; [rip + disp32]
movsxd rax, dword [rip + 0x14]
movsxd rbx, dword [rip + 0x1236]
movsxd rcx, dword [rip + 0x1234567a]

; [rip + base]
movsxd rdx, dword [rcx]

; [rip + base + disp8]
movsxd rsi, dword [rcx + 0x14]

; [rip + base + disp32]
movsxd rdi, dword [rcx + 0x1236]
movsxd rbp, dword [rcx + 0x1234567a]

; [rip + base + index]
movsxd rsp, dword [rcx + rsi]

; [rip + base + scale * index]
movsxd rax, dword [rcx + 8 * rsi]

; [rip + base + index + disp8]
movsxd rbx, dword [rcx + rsi + 0x14]

; [rip + base + index + disp32]
movsxd rcx, dword [rcx + rsi + 0x1236]

movsxd rdx, dword [rcx + rsi + 0x1234567a]

; [rip + base + scale * index + disp8]
movsxd rsi, dword [rcx + 8 * rsi + 0x14]

; [rip + base + scale * index + disp32]
movsxd rdi, dword [rcx + 8 * rsi + 0x1236]
movsxd rbp, dword [rcx + 8 * rsi + 0x1234567a]

; [scale * index]
movsxd rsp, dword [8 * rsi]

; [scale * index + disp8]
movsxd rax, dword [8 * rsi + 0x14]

; [scale * index + disp32]
movsxd rbx, dword [8 * rsi + 0x1236]
movsxd rcx, dword [8 * rsi + 0x1234567a]

; Use rbp as base or index.
movsxd rax, dword [rbp]
movsxd rax, dword [rbp + 0x12]
movsxd rax, dword [rbp + 0x1234]
movsxd rax, dword [rbp + 0x12345678]

movsxd rax, dword [4 * rbp]
movsxd rax, dword [4 * rbp + 0x12]
movsxd rax, dword [4 * rbp + 0x1234]
movsxd rax, dword [4 * rbp + 0x12345678]

movsxd rax, dword [rbx + 4 * rbp]
movsxd rax, dword [rbx + 4 * rbp + 0x12]
movsxd rax, dword [rbx + 4 * rbp + 0x1234]
movsxd rax, dword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
movsxd rax, dword [rsp]
movsxd rax, dword [rsp + 0x12]
movsxd rax, dword [rsp + 0x1234]
movsxd rax, dword [rsp + 0x12345678]

movsxd rax, dword [rsp + rax]
movsxd rax, dword [rsp + rbp]
movsxd rax, dword [rsp + 2*rbp]
movsxd rax, dword [rsp + 4*rbp]
movsxd rax, dword [rsp + 8*rbp]

; use each register as indirect.
movsxd rax, dword [rax]
movsxd rax, dword [rcx]
movsxd rax, dword [rdx]
movsxd rax, dword [rbx]
movsxd rax, dword [rsp]
movsxd rax, dword [rbp]
movsxd rax, dword [rsi]
movsxd rax, dword [rdi]

; use each register as indirect.
; rsp is forbidden as index
movsxd rax, dword [rax + 2*rax]
movsxd rax, dword [rcx + 2*rcx]
movsxd rax, dword [rdx + 2*rdx]
movsxd rax, dword [rbx + 2*rbx]
movsxd rax, dword [rbp + 2*rbp]
movsxd rax, dword [rsi + 2*rsi]
movsxd rax, dword [rdi + 2*rdi]
