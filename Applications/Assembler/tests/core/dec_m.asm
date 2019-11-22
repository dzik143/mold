use64

; [rip + disp32]
dec byte  [rip + 0x12]
dec word  [rip + 0x13]
dec dword [rip + 0x14]
dec qword [rip + 0x15]

dec byte  [rip + 0x1234]
dec word  [rip + 0x1235]
dec dword [rip + 0x1236]
dec qword [rip + 0x1237]

dec byte  [rip + 0x12345678]
dec word  [rip + 0x12345679]
dec dword [rip + 0x1234567a]
dec qword [rip + 0x1234567b]

; [rip + base]
dec byte  [rax]
dec word  [rbx]
dec dword [rcx]
dec qword [rdx]

; [rip + base + disp8]
dec byte  [rax + 0x12]
dec word  [rbx + 0x13]
dec dword [rcx + 0x14]
dec qword [rdx + 0x15]

; [rip + base + disp32]
dec byte  [rax + 0x1234]
dec word  [rbx + 0x1235]
dec dword [rcx + 0x1236]
dec qword [rdx + 0x1237]

dec byte  [rax + 0x12345678]
dec word  [rbx + 0x12345679]
dec dword [rcx + 0x1234567a]
dec qword [rdx + 0x1234567b]

; [rip + base + index]
dec byte  [rax + rbx]
dec word  [rbx + rcx]
dec dword [rcx + rsi]
dec qword [rdx + rdi]

; [rip + base + scale * index]
dec byte  [rax + 2 * rbx]
dec word  [rbx + 4 * rcx]
dec dword [rcx + 8 * rsi]
dec qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
dec byte  [rax + rbx + 0x12]
dec word  [rbx + rcx + 0x13]
dec dword [rcx + rsi + 0x14]
dec qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
dec byte  [rax + rbx + 0x1234]
dec word  [rbx + rcx + 0x1235]
dec dword [rcx + rsi + 0x1236]
dec qword [rdx + rdi + 0x1237]

dec byte  [rax + rbx + 0x12345678]
dec word  [rbx + rcx + 0x12345679]
dec dword [rcx + rsi + 0x1234567a]
dec qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
dec byte  [rax + 2 * rbx + 0x12]
dec word  [rbx + 4 * rcx + 0x13]
dec dword [rcx + 8 * rsi + 0x14]
dec qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
dec byte  [rax + 2 * rbx + 0x1234]
dec word  [rbx + 4 * rcx + 0x1235]
dec dword [rcx + 8 * rsi + 0x1236]
dec qword [rdx + 8 * rdi + 0x1237]

dec byte  [rax + 2 * rbx + 0x12345678]
dec word  [rbx + 4 * rcx + 0x12345679]
dec dword [rcx + 8 * rsi + 0x1234567a]
dec qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
dec byte  [2 * rbx]
dec word  [4 * rcx]
dec dword [8 * rsi]
dec qword [8 * rdi]

; [scale * index + disp8]
dec byte  [2 * rbx + 0x12]
dec word  [4 * rcx + 0x13]
dec dword [8 * rsi + 0x14]
dec qword [8 * rdi + 0x15]

; [scale * index + disp32]
dec byte  [2 * rbx + 0x1234]
dec word  [4 * rcx + 0x1235]
dec dword [8 * rsi + 0x1236]
dec qword [8 * rdi + 0x1237]

dec byte  [2 * rbx + 0x12345678]
dec word  [4 * rcx + 0x12345679]
dec dword [8 * rsi + 0x1234567a]
dec qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
dec byte [rbp]
dec byte [rbp + 0x12]
dec byte [rbp + 0x1234]
dec byte [rbp + 0x12345678]

dec byte [4 * rbp]
dec byte [4 * rbp + 0x12]
dec byte [4 * rbp + 0x1234]
dec byte [4 * rbp + 0x12345678]

dec byte [rbx + 4 * rbp]
dec byte [rbx + 4 * rbp + 0x12]
dec byte [rbx + 4 * rbp + 0x1234]
dec byte [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
dec byte [rsp]
dec byte [rsp + 0x12]
dec byte [rsp + 0x1234]
dec byte [rsp + 0x12345678]

dec byte [rsp + rax]
dec byte [rsp + rbp]
dec byte [rsp + 2*rbp]
dec byte [rsp + 4*rbp]
dec byte [rsp + 8*rbp]

; use each register as indirect.
dec byte [rax]
dec byte [rcx]
dec byte [rdx]
dec byte [rbx]
dec byte [rsp]
dec byte [rbp]
dec byte [rsi]
dec byte [rdi]

; use each register as indirect.
; rsp is forbidden as index
dec byte [rax + 2*rax]
dec byte [rcx + 2*rcx]
dec byte [rdx + 2*rdx]
dec byte [rbx + 2*rbx]
dec byte [rbp + 2*rbp]
dec byte [rsi + 2*rsi]
dec byte [rdi + 2*rdi]
