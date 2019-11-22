use64

; [rip + disp32]
idiv byte  [rip + 0x12]
idiv word  [rip + 0x13]
idiv dword [rip + 0x14]
idiv qword [rip + 0x15]

idiv byte  [rip + 0x1234]
idiv word  [rip + 0x1235]
idiv dword [rip + 0x1236]
idiv qword [rip + 0x1237]

idiv byte  [rip + 0x12345678]
idiv word  [rip + 0x12345679]
idiv dword [rip + 0x1234567a]
idiv qword [rip + 0x1234567b]

; [rip + base]
idiv byte  [rax]
idiv word  [rbx]
idiv dword [rcx]
idiv qword [rdx]

; [rip + base + disp8]
idiv byte  [rax + 0x12]
idiv word  [rbx + 0x13]
idiv dword [rcx + 0x14]
idiv qword [rdx + 0x15]

; [rip + base + disp32]
idiv byte  [rax + 0x1234]
idiv word  [rbx + 0x1235]
idiv dword [rcx + 0x1236]
idiv qword [rdx + 0x1237]

idiv byte  [rax + 0x12345678]
idiv word  [rbx + 0x12345679]
idiv dword [rcx + 0x1234567a]
idiv qword [rdx + 0x1234567b]

; [rip + base + index]
idiv byte  [rax + rbx]
idiv word  [rbx + rcx]
idiv dword [rcx + rsi]
idiv qword [rdx + rdi]

; [rip + base + scale * index]
idiv byte  [rax + 2 * rbx]
idiv word  [rbx + 4 * rcx]
idiv dword [rcx + 8 * rsi]
idiv qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
idiv byte  [rax + rbx + 0x12]
idiv word  [rbx + rcx + 0x13]
idiv dword [rcx + rsi + 0x14]
idiv qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
idiv byte  [rax + rbx + 0x1234]
idiv word  [rbx + rcx + 0x1235]
idiv dword [rcx + rsi + 0x1236]
idiv qword [rdx + rdi + 0x1237]

idiv byte  [rax + rbx + 0x12345678]
idiv word  [rbx + rcx + 0x12345679]
idiv dword [rcx + rsi + 0x1234567a]
idiv qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
idiv byte  [rax + 2 * rbx + 0x12]
idiv word  [rbx + 4 * rcx + 0x13]
idiv dword [rcx + 8 * rsi + 0x14]
idiv qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
idiv byte  [rax + 2 * rbx + 0x1234]
idiv word  [rbx + 4 * rcx + 0x1235]
idiv dword [rcx + 8 * rsi + 0x1236]
idiv qword [rdx + 8 * rdi + 0x1237]

idiv byte  [rax + 2 * rbx + 0x12345678]
idiv word  [rbx + 4 * rcx + 0x12345679]
idiv dword [rcx + 8 * rsi + 0x1234567a]
idiv qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
idiv byte  [2 * rbx]
idiv word  [4 * rcx]
idiv dword [8 * rsi]
idiv qword [8 * rdi]

; [scale * index + disp8]
idiv byte  [2 * rbx + 0x12]
idiv word  [4 * rcx + 0x13]
idiv dword [8 * rsi + 0x14]
idiv qword [8 * rdi + 0x15]

; [scale * index + disp32]
idiv byte  [2 * rbx + 0x1234]
idiv word  [4 * rcx + 0x1235]
idiv dword [8 * rsi + 0x1236]
idiv qword [8 * rdi + 0x1237]

idiv byte  [2 * rbx + 0x12345678]
idiv word  [4 * rcx + 0x12345679]
idiv dword [8 * rsi + 0x1234567a]
idiv qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
idiv byte [rbp]
idiv byte [rbp + 0x12]
idiv byte [rbp + 0x1234]
idiv byte [rbp + 0x12345678]

idiv byte [4 * rbp]
idiv byte [4 * rbp + 0x12]
idiv byte [4 * rbp + 0x1234]
idiv byte [4 * rbp + 0x12345678]

idiv byte [rbx + 4 * rbp]
idiv byte [rbx + 4 * rbp + 0x12]
idiv byte [rbx + 4 * rbp + 0x1234]
idiv byte [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
idiv byte [rsp]
idiv byte [rsp + 0x12]
idiv byte [rsp + 0x1234]
idiv byte [rsp + 0x12345678]

idiv byte [rsp + rax]
idiv byte [rsp + rbp]
idiv byte [rsp + 2*rbp]
idiv byte [rsp + 4*rbp]
idiv byte [rsp + 8*rbp]

; use each register as indirect.
idiv byte [rax]
idiv byte [rcx]
idiv byte [rdx]
idiv byte [rbx]
idiv byte [rsp]
idiv byte [rbp]
idiv byte [rsi]
idiv byte [rdi]

; use each register as indirect.
; rsp is forbidden as index
idiv byte [rax + 2*rax]
idiv byte [rcx + 2*rcx]
idiv byte [rdx + 2*rdx]
idiv byte [rbx + 2*rbx]
idiv byte [rbp + 2*rbp]
idiv byte [rsi + 2*rsi]
idiv byte [rdi + 2*rdi]
