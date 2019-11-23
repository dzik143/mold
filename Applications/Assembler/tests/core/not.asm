use64
; ------------------------------------------------------------------------------
; opcode r
; ------------------------------------------------------------------------------
; not r8
not al
not cl
not dl
not bl
not ah
not ch
not dh
not bh

; not r16
not ax
not cx
not dx
not bx
not sp
not bp
not si
not di

; not r32
not eax
not ecx
not edx
not ebx
not esp
not ebp
not esi
not edi

; not r64
not rax
not rcx
not rdx
not rbx
not rsp
not rbp
not rsi
not rdi

; ------------------------------------------------------------------------------
; opcode m
; ------------------------------------------------------------------------------
; [rip + disp32]
not byte  [rip + 0x12]
not word  [rip + 0x13]
not dword [rip + 0x14]
not qword [rip + 0x15]

not byte  [rip + 0x1234]
not word  [rip + 0x1235]
not dword [rip + 0x1236]
not qword [rip + 0x1237]

not byte  [rip + 0x12345678]
not word  [rip + 0x12345679]
not dword [rip + 0x1234567a]
not qword [rip + 0x1234567b]

; [rip + base]
not byte  [rax]
not word  [rbx]
not dword [rcx]
not qword [rdx]

; [rip + base + disp8]
not byte  [rax + 0x12]
not word  [rbx + 0x13]
not dword [rcx + 0x14]
not qword [rdx + 0x15]

; [rip + base + disp32]
not byte  [rax + 0x1234]
not word  [rbx + 0x1235]
not dword [rcx + 0x1236]
not qword [rdx + 0x1237]

not byte  [rax + 0x12345678]
not word  [rbx + 0x12345679]
not dword [rcx + 0x1234567a]
not qword [rdx + 0x1234567b]

; [rip + base + index]
not byte  [rax + rbx]
not word  [rbx + rcx]
not dword [rcx + rsi]
not qword [rdx + rdi]

; [rip + base + scale * index]
not byte  [rax + 2 * rbx]
not word  [rbx + 4 * rcx]
not dword [rcx + 8 * rsi]
not qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
not byte  [rax + rbx + 0x12]
not word  [rbx + rcx + 0x13]
not dword [rcx + rsi + 0x14]
not qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
not byte  [rax + rbx + 0x1234]
not word  [rbx + rcx + 0x1235]
not dword [rcx + rsi + 0x1236]
not qword [rdx + rdi + 0x1237]

not byte  [rax + rbx + 0x12345678]
not word  [rbx + rcx + 0x12345679]
not dword [rcx + rsi + 0x1234567a]
not qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
not byte  [rax + 2 * rbx + 0x12]
not word  [rbx + 4 * rcx + 0x13]
not dword [rcx + 8 * rsi + 0x14]
not qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
not byte  [rax + 2 * rbx + 0x1234]
not word  [rbx + 4 * rcx + 0x1235]
not dword [rcx + 8 * rsi + 0x1236]
not qword [rdx + 8 * rdi + 0x1237]

not byte  [rax + 2 * rbx + 0x12345678]
not word  [rbx + 4 * rcx + 0x12345679]
not dword [rcx + 8 * rsi + 0x1234567a]
not qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
not byte  [2 * rbx]
not word  [4 * rcx]
not dword [8 * rsi]
not qword [8 * rdi]

; [scale * index + disp8]
not byte  [2 * rbx + 0x12]
not word  [4 * rcx + 0x13]
not dword [8 * rsi + 0x14]
not qword [8 * rdi + 0x15]

; [scale * index + disp32]
not byte  [2 * rbx + 0x1234]
not word  [4 * rcx + 0x1235]
not dword [8 * rsi + 0x1236]
not qword [8 * rdi + 0x1237]

not byte  [2 * rbx + 0x12345678]
not word  [4 * rcx + 0x12345679]
not dword [8 * rsi + 0x1234567a]
not qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
not byte [rbp]
not byte [rbp + 0x12]
not byte [rbp + 0x1234]
not byte [rbp + 0x12345678]

not byte [4 * rbp]
not byte [4 * rbp + 0x12]
not byte [4 * rbp + 0x1234]
not byte [4 * rbp + 0x12345678]

not byte [rbx + 4 * rbp]
not byte [rbx + 4 * rbp + 0x12]
not byte [rbx + 4 * rbp + 0x1234]
not byte [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
not byte [rsp]
not byte [rsp + 0x12]
not byte [rsp + 0x1234]
not byte [rsp + 0x12345678]

not byte [rsp + rax]
not byte [rsp + rbp]
not byte [rsp + 2*rbp]
not byte [rsp + 4*rbp]
not byte [rsp + 8*rbp]

; use each register as indirect.
not byte [rax]
not byte [rcx]
not byte [rdx]
not byte [rbx]
not byte [rsp]
not byte [rbp]
not byte [rsi]
not byte [rdi]

; use each register as indirect.
; rsp is forbidden as index
not byte [rax + 2*rax]
not byte [rcx + 2*rcx]
not byte [rdx + 2*rdx]
not byte [rbx + 2*rbx]
not byte [rbp + 2*rbp]
not byte [rsi + 2*rsi]
not byte [rdi + 2*rdi]

