use64

; [rip + disp32]
div byte  [rip + 0x12]
div word  [rip + 0x13]
div dword [rip + 0x14]
div qword [rip + 0x15]

div byte  [rip + 0x1234]
div word  [rip + 0x1235]
div dword [rip + 0x1236]
div qword [rip + 0x1237]

div byte  [rip + 0x12345678]
div word  [rip + 0x12345679]
div dword [rip + 0x1234567a]
div qword [rip + 0x1234567b]

; [rip + base]
div byte  [rax]
div word  [rbx]
div dword [rcx]
div qword [rdx]

; [rip + base + disp8]
div byte  [rax + 0x12]
div word  [rbx + 0x13]
div dword [rcx + 0x14]
div qword [rdx + 0x15]

; [rip + base + disp32]
div byte  [rax + 0x1234]
div word  [rbx + 0x1235]
div dword [rcx + 0x1236]
div qword [rdx + 0x1237]

div byte  [rax + 0x12345678]
div word  [rbx + 0x12345679]
div dword [rcx + 0x1234567a]
div qword [rdx + 0x1234567b]

; [rip + base + index]
div byte  [rax + rbx]
div word  [rbx + rcx]
div dword [rcx + rsi]
div qword [rdx + rdi]

; [rip + base + scale * index]
div byte  [rax + 2 * rbx]
div word  [rbx + 4 * rcx]
div dword [rcx + 8 * rsi]
div qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
div byte  [rax + rbx + 0x12]
div word  [rbx + rcx + 0x13]
div dword [rcx + rsi + 0x14]
div qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
div byte  [rax + rbx + 0x1234]
div word  [rbx + rcx + 0x1235]
div dword [rcx + rsi + 0x1236]
div qword [rdx + rdi + 0x1237]

div byte  [rax + rbx + 0x12345678]
div word  [rbx + rcx + 0x12345679]
div dword [rcx + rsi + 0x1234567a]
div qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
div byte  [rax + 2 * rbx + 0x12]
div word  [rbx + 4 * rcx + 0x13]
div dword [rcx + 8 * rsi + 0x14]
div qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
div byte  [rax + 2 * rbx + 0x1234]
div word  [rbx + 4 * rcx + 0x1235]
div dword [rcx + 8 * rsi + 0x1236]
div qword [rdx + 8 * rdi + 0x1237]

div byte  [rax + 2 * rbx + 0x12345678]
div word  [rbx + 4 * rcx + 0x12345679]
div dword [rcx + 8 * rsi + 0x1234567a]
div qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
div byte  [2 * rbx]
div word  [4 * rcx]
div dword [8 * rsi]
div qword [8 * rdi]

; [scale * index + disp8]
div byte  [2 * rbx + 0x12]
div word  [4 * rcx + 0x13]
div dword [8 * rsi + 0x14]
div qword [8 * rdi + 0x15]

; [scale * index + disp32]
div byte  [2 * rbx + 0x1234]
div word  [4 * rcx + 0x1235]
div dword [8 * rsi + 0x1236]
div qword [8 * rdi + 0x1237]

div byte  [2 * rbx + 0x12345678]
div word  [4 * rcx + 0x12345679]
div dword [8 * rsi + 0x1234567a]
div qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
div byte [rbp]
div byte [rbp + 0x12]
div byte [rbp + 0x1234]
div byte [rbp + 0x12345678]

div byte [4 * rbp]
div byte [4 * rbp + 0x12]
div byte [4 * rbp + 0x1234]
div byte [4 * rbp + 0x12345678]

div byte [rbx + 4 * rbp]
div byte [rbx + 4 * rbp + 0x12]
div byte [rbx + 4 * rbp + 0x1234]
div byte [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
div byte [rsp]
div byte [rsp + 0x12]
div byte [rsp + 0x1234]
div byte [rsp + 0x12345678]

div byte [rsp + rax]
div byte [rsp + rbp]
div byte [rsp + 2*rbp]
div byte [rsp + 4*rbp]
div byte [rsp + 8*rbp]

; use each register as indirect.
div byte [rax]
div byte [rcx]
div byte [rdx]
div byte [rbx]
div byte [rsp]
div byte [rbp]
div byte [rsi]
div byte [rdi]

; use each register as indirect.
; rsp is forbidden as index
div byte [rax + 2*rax]
div byte [rcx + 2*rcx]
div byte [rdx + 2*rdx]
div byte [rbx + 2*rbx]
div byte [rbp + 2*rbp]
div byte [rsi + 2*rsi]
div byte [rdi + 2*rdi]
