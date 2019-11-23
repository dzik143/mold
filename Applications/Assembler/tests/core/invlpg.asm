use64
; ------------------------------------------------------------------------------
; opcode m
; ------------------------------------------------------------------------------
; [rip + disp32]
invlpg byte  [rip + 0x12]
invlpg word  [rip + 0x13]
invlpg dword [rip + 0x14]
invlpg qword [rip + 0x15]

invlpg byte  [rip + 0x1234]
invlpg word  [rip + 0x1235]
invlpg dword [rip + 0x1236]
invlpg qword [rip + 0x1237]

invlpg byte  [rip + 0x12345678]
invlpg word  [rip + 0x12345679]
invlpg dword [rip + 0x1234567a]
invlpg qword [rip + 0x1234567b]

; [rip + base]
invlpg byte  [rax]
invlpg word  [rbx]
invlpg dword [rcx]
invlpg qword [rdx]

; [rip + base + disp8]
invlpg byte  [rax + 0x12]
invlpg word  [rbx + 0x13]
invlpg dword [rcx + 0x14]
invlpg qword [rdx + 0x15]

; [rip + base + disp32]
invlpg byte  [rax + 0x1234]
invlpg word  [rbx + 0x1235]
invlpg dword [rcx + 0x1236]
invlpg qword [rdx + 0x1237]

invlpg byte  [rax + 0x12345678]
invlpg word  [rbx + 0x12345679]
invlpg dword [rcx + 0x1234567a]
invlpg qword [rdx + 0x1234567b]

; [rip + base + index]
invlpg byte  [rax + rbx]
invlpg word  [rbx + rcx]
invlpg dword [rcx + rsi]
invlpg qword [rdx + rdi]

; [rip + base + scale * index]
invlpg byte  [rax + 2 * rbx]
invlpg word  [rbx + 4 * rcx]
invlpg dword [rcx + 8 * rsi]
invlpg qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
invlpg byte  [rax + rbx + 0x12]
invlpg word  [rbx + rcx + 0x13]
invlpg dword [rcx + rsi + 0x14]
invlpg qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
invlpg byte  [rax + rbx + 0x1234]
invlpg word  [rbx + rcx + 0x1235]
invlpg dword [rcx + rsi + 0x1236]
invlpg qword [rdx + rdi + 0x1237]

invlpg byte  [rax + rbx + 0x12345678]
invlpg word  [rbx + rcx + 0x12345679]
invlpg dword [rcx + rsi + 0x1234567a]
invlpg qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
invlpg byte  [rax + 2 * rbx + 0x12]
invlpg word  [rbx + 4 * rcx + 0x13]
invlpg dword [rcx + 8 * rsi + 0x14]
invlpg qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
invlpg byte  [rax + 2 * rbx + 0x1234]
invlpg word  [rbx + 4 * rcx + 0x1235]
invlpg dword [rcx + 8 * rsi + 0x1236]
invlpg qword [rdx + 8 * rdi + 0x1237]

invlpg byte  [rax + 2 * rbx + 0x12345678]
invlpg word  [rbx + 4 * rcx + 0x12345679]
invlpg dword [rcx + 8 * rsi + 0x1234567a]
invlpg qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
invlpg byte  [2 * rbx]
invlpg word  [4 * rcx]
invlpg dword [8 * rsi]
invlpg qword [8 * rdi]

; [scale * index + disp8]
invlpg byte  [2 * rbx + 0x12]
invlpg word  [4 * rcx + 0x13]
invlpg dword [8 * rsi + 0x14]
invlpg qword [8 * rdi + 0x15]

; [scale * index + disp32]
invlpg byte  [2 * rbx + 0x1234]
invlpg word  [4 * rcx + 0x1235]
invlpg dword [8 * rsi + 0x1236]
invlpg qword [8 * rdi + 0x1237]

invlpg byte  [2 * rbx + 0x12345678]
invlpg word  [4 * rcx + 0x12345679]
invlpg dword [8 * rsi + 0x1234567a]
invlpg qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
invlpg byte [rbp]
invlpg byte [rbp + 0x12]
invlpg byte [rbp + 0x1234]
invlpg byte [rbp + 0x12345678]

invlpg byte [4 * rbp]
invlpg byte [4 * rbp + 0x12]
invlpg byte [4 * rbp + 0x1234]
invlpg byte [4 * rbp + 0x12345678]

invlpg byte [rbx + 4 * rbp]
invlpg byte [rbx + 4 * rbp + 0x12]
invlpg byte [rbx + 4 * rbp + 0x1234]
invlpg byte [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
invlpg byte [rsp]
invlpg byte [rsp + 0x12]
invlpg byte [rsp + 0x1234]
invlpg byte [rsp + 0x12345678]

invlpg byte [rsp + rax]
invlpg byte [rsp + rbp]
invlpg byte [rsp + 2*rbp]
invlpg byte [rsp + 4*rbp]
invlpg byte [rsp + 8*rbp]

; use each register as indirect.
invlpg byte [rax]
invlpg byte [rcx]
invlpg byte [rdx]
invlpg byte [rbx]
invlpg byte [rsp]
invlpg byte [rbp]
invlpg byte [rsi]
invlpg byte [rdi]

; use each register as indirect.
; rsp is forbidden as index
invlpg byte [rax + 2*rax]
invlpg byte [rcx + 2*rcx]
invlpg byte [rdx + 2*rdx]
invlpg byte [rbx + 2*rbx]
invlpg byte [rbp + 2*rbp]
invlpg byte [rsi + 2*rsi]
invlpg byte [rdi + 2*rdi]

