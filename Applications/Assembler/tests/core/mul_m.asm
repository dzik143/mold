use64

; [rip + disp32]
mul byte  [rip + 0x12]
mul word  [rip + 0x13]
mul dword [rip + 0x14]
mul qword [rip + 0x15]

mul byte  [rip + 0x1234]
mul word  [rip + 0x1235]
mul dword [rip + 0x1236]
mul qword [rip + 0x1237]

mul byte  [rip + 0x12345678]
mul word  [rip + 0x12345679]
mul dword [rip + 0x1234567a]
mul qword [rip + 0x1234567b]

; [rip + base]
mul byte  [rax]
mul word  [rbx]
mul dword [rcx]
mul qword [rdx]

; [rip + base + disp8]
mul byte  [rax + 0x12]
mul word  [rbx + 0x13]
mul dword [rcx + 0x14]
mul qword [rdx + 0x15]

; [rip + base + disp32]
mul byte  [rax + 0x1234]
mul word  [rbx + 0x1235]
mul dword [rcx + 0x1236]
mul qword [rdx + 0x1237]

mul byte  [rax + 0x12345678]
mul word  [rbx + 0x12345679]
mul dword [rcx + 0x1234567a]
mul qword [rdx + 0x1234567b]

; [rip + base + index]
mul byte  [rax + rbx]
mul word  [rbx + rcx]
mul dword [rcx + rsi]
mul qword [rdx + rdi]

; [rip + base + scale * index]
mul byte  [rax + 2 * rbx]
mul word  [rbx + 4 * rcx]
mul dword [rcx + 8 * rsi]
mul qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
mul byte  [rax + rbx + 0x12]
mul word  [rbx + rcx + 0x13]
mul dword [rcx + rsi + 0x14]
mul qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
mul byte  [rax + rbx + 0x1234]
mul word  [rbx + rcx + 0x1235]
mul dword [rcx + rsi + 0x1236]
mul qword [rdx + rdi + 0x1237]

mul byte  [rax + rbx + 0x12345678]
mul word  [rbx + rcx + 0x12345679]
mul dword [rcx + rsi + 0x1234567a]
mul qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
mul byte  [rax + 2 * rbx + 0x12]
mul word  [rbx + 4 * rcx + 0x13]
mul dword [rcx + 8 * rsi + 0x14]
mul qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
mul byte  [rax + 2 * rbx + 0x1234]
mul word  [rbx + 4 * rcx + 0x1235]
mul dword [rcx + 8 * rsi + 0x1236]
mul qword [rdx + 8 * rdi + 0x1237]

mul byte  [rax + 2 * rbx + 0x12345678]
mul word  [rbx + 4 * rcx + 0x12345679]
mul dword [rcx + 8 * rsi + 0x1234567a]
mul qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
mul byte  [2 * rbx]
mul word  [4 * rcx]
mul dword [8 * rsi]
mul qword [8 * rdi]

; [scale * index + disp8]
mul byte  [2 * rbx + 0x12]
mul word  [4 * rcx + 0x13]
mul dword [8 * rsi + 0x14]
mul qword [8 * rdi + 0x15]

; [scale * index + disp32]
mul byte  [2 * rbx + 0x1234]
mul word  [4 * rcx + 0x1235]
mul dword [8 * rsi + 0x1236]
mul qword [8 * rdi + 0x1237]

mul byte  [2 * rbx + 0x12345678]
mul word  [4 * rcx + 0x12345679]
mul dword [8 * rsi + 0x1234567a]
mul qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
mul byte [rbp]
mul byte [rbp + 0x12]
mul byte [rbp + 0x1234]
mul byte [rbp + 0x12345678]

mul byte [4 * rbp]
mul byte [4 * rbp + 0x12]
mul byte [4 * rbp + 0x1234]
mul byte [4 * rbp + 0x12345678]

mul byte [rbx + 4 * rbp]
mul byte [rbx + 4 * rbp + 0x12]
mul byte [rbx + 4 * rbp + 0x1234]
mul byte [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
mul byte [rsp]
mul byte [rsp + 0x12]
mul byte [rsp + 0x1234]
mul byte [rsp + 0x12345678]

mul byte [rsp + rax]
mul byte [rsp + rbp]
mul byte [rsp + 2*rbp]
mul byte [rsp + 4*rbp]
mul byte [rsp + 8*rbp]

; use each register as indirect.
mul byte [rax]
mul byte [rcx]
mul byte [rdx]
mul byte [rbx]
mul byte [rsp]
mul byte [rbp]
mul byte [rsi]
mul byte [rdi]

; use each register as indirect.
; rsp is forbidden as index
mul byte [rax + 2*rax]
mul byte [rcx + 2*rcx]
mul byte [rdx + 2*rdx]
mul byte [rbx + 2*rbx]
mul byte [rbp + 2*rbp]
mul byte [rsi + 2*rsi]
mul byte [rdi + 2*rdi]
