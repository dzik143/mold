use64
; ------------------------------------------------------------------------------
; opcode r
; ------------------------------------------------------------------------------
; inc r8
inc al
inc cl
inc dl
inc bl
inc ah
inc ch
inc dh
inc bh

; inc r16
inc ax
inc cx
inc dx
inc bx
inc sp
inc bp
inc si
inc di

; inc r32
inc eax
inc ecx
inc edx
inc ebx
inc esp
inc ebp
inc esi
inc edi

; inc r64
inc rax
inc rcx
inc rdx
inc rbx
inc rsp
inc rbp
inc rsi
inc rdi

; ------------------------------------------------------------------------------
; opcode m
; ------------------------------------------------------------------------------
; [rip + disp32]
inc byte  [rip + 0x12]
inc word  [rip + 0x13]
inc dword [rip + 0x14]
inc qword [rip + 0x15]

inc byte  [rip + 0x1234]
inc word  [rip + 0x1235]
inc dword [rip + 0x1236]
inc qword [rip + 0x1237]

inc byte  [rip + 0x12345678]
inc word  [rip + 0x12345679]
inc dword [rip + 0x1234567a]
inc qword [rip + 0x1234567b]

; [rip + base]
inc byte  [rax]
inc word  [rbx]
inc dword [rcx]
inc qword [rdx]

; [rip + base + disp8]
inc byte  [rax + 0x12]
inc word  [rbx + 0x13]
inc dword [rcx + 0x14]
inc qword [rdx + 0x15]

; [rip + base + disp32]
inc byte  [rax + 0x1234]
inc word  [rbx + 0x1235]
inc dword [rcx + 0x1236]
inc qword [rdx + 0x1237]

inc byte  [rax + 0x12345678]
inc word  [rbx + 0x12345679]
inc dword [rcx + 0x1234567a]
inc qword [rdx + 0x1234567b]

; [rip + base + index]
inc byte  [rax + rbx]
inc word  [rbx + rcx]
inc dword [rcx + rsi]
inc qword [rdx + rdi]

; [rip + base + scale * index]
inc byte  [rax + 2 * rbx]
inc word  [rbx + 4 * rcx]
inc dword [rcx + 8 * rsi]
inc qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
inc byte  [rax + rbx + 0x12]
inc word  [rbx + rcx + 0x13]
inc dword [rcx + rsi + 0x14]
inc qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
inc byte  [rax + rbx + 0x1234]
inc word  [rbx + rcx + 0x1235]
inc dword [rcx + rsi + 0x1236]
inc qword [rdx + rdi + 0x1237]

inc byte  [rax + rbx + 0x12345678]
inc word  [rbx + rcx + 0x12345679]
inc dword [rcx + rsi + 0x1234567a]
inc qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
inc byte  [rax + 2 * rbx + 0x12]
inc word  [rbx + 4 * rcx + 0x13]
inc dword [rcx + 8 * rsi + 0x14]
inc qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
inc byte  [rax + 2 * rbx + 0x1234]
inc word  [rbx + 4 * rcx + 0x1235]
inc dword [rcx + 8 * rsi + 0x1236]
inc qword [rdx + 8 * rdi + 0x1237]

inc byte  [rax + 2 * rbx + 0x12345678]
inc word  [rbx + 4 * rcx + 0x12345679]
inc dword [rcx + 8 * rsi + 0x1234567a]
inc qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
inc byte  [2 * rbx]
inc word  [4 * rcx]
inc dword [8 * rsi]
inc qword [8 * rdi]

; [scale * index + disp8]
inc byte  [2 * rbx + 0x12]
inc word  [4 * rcx + 0x13]
inc dword [8 * rsi + 0x14]
inc qword [8 * rdi + 0x15]

; [scale * index + disp32]
inc byte  [2 * rbx + 0x1234]
inc word  [4 * rcx + 0x1235]
inc dword [8 * rsi + 0x1236]
inc qword [8 * rdi + 0x1237]

inc byte  [2 * rbx + 0x12345678]
inc word  [4 * rcx + 0x12345679]
inc dword [8 * rsi + 0x1234567a]
inc qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
inc byte [rbp]
inc byte [rbp + 0x12]
inc byte [rbp + 0x1234]
inc byte [rbp + 0x12345678]

inc byte [4 * rbp]
inc byte [4 * rbp + 0x12]
inc byte [4 * rbp + 0x1234]
inc byte [4 * rbp + 0x12345678]

inc byte [rbx + 4 * rbp]
inc byte [rbx + 4 * rbp + 0x12]
inc byte [rbx + 4 * rbp + 0x1234]
inc byte [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
inc byte [rsp]
inc byte [rsp + 0x12]
inc byte [rsp + 0x1234]
inc byte [rsp + 0x12345678]

inc byte [rsp + rax]
inc byte [rsp + rbp]
inc byte [rsp + 2*rbp]
inc byte [rsp + 4*rbp]
inc byte [rsp + 8*rbp]

; use each register as indirect.
inc byte [rax]
inc byte [rcx]
inc byte [rdx]
inc byte [rbx]
inc byte [rsp]
inc byte [rbp]
inc byte [rsi]
inc byte [rdi]

; use each register as indirect.
; rsp is forbidden as index
inc byte [rax + 2*rax]
inc byte [rcx + 2*rcx]
inc byte [rdx + 2*rdx]
inc byte [rbx + 2*rbx]
inc byte [rbp + 2*rbp]
inc byte [rsi + 2*rsi]
inc byte [rdi + 2*rdi]

