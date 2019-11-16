use64

; [rip + disp32]
imul byte  [rip + 0x12]
imul word  [rip + 0x13]
imul dword [rip + 0x14]
imul qword [rip + 0x15]

imul byte  [rip + 0x1234]
imul word  [rip + 0x1235]
imul dword [rip + 0x1236]
imul qword [rip + 0x1237]

imul byte  [rip + 0x12345678]
imul word  [rip + 0x12345679]
imul dword [rip + 0x1234567a]
imul qword [rip + 0x1234567b]

; [rip + base]
imul byte  [rax]
imul word  [rbx]
imul dword [rcx]
imul qword [rdx]

; [rip + base + disp8]
imul byte  [rax + 0x12]
imul word  [rbx + 0x13]
imul dword [rcx + 0x14]
imul qword [rdx + 0x15]

; [rip + base + disp32]
imul byte  [rax + 0x1234]
imul word  [rbx + 0x1235]
imul dword [rcx + 0x1236]
imul qword [rdx + 0x1237]

imul byte  [rax + 0x12345678]
imul word  [rbx + 0x12345679]
imul dword [rcx + 0x1234567a]
imul qword [rdx + 0x1234567b]

; [rip + base + index]
imul byte  [rax + rbx]
imul word  [rbx + rcx]
imul dword [rcx + rsi]
imul qword [rdx + rdi]

; [rip + base + scale * index]
imul byte  [rax + 2 * rbx]
imul word  [rbx + 4 * rcx]
imul dword [rcx + 8 * rsi]
imul qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
imul byte  [rax + rbx + 0x12]
imul word  [rbx + rcx + 0x13]
imul dword [rcx + rsi + 0x14]
imul qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
imul byte  [rax + rbx + 0x1234]
imul word  [rbx + rcx + 0x1235]
imul dword [rcx + rsi + 0x1236]
imul qword [rdx + rdi + 0x1237]

imul byte  [rax + rbx + 0x12345678]
imul word  [rbx + rcx + 0x12345679]
imul dword [rcx + rsi + 0x1234567a]
imul qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
imul byte  [rax + 2 * rbx + 0x12]
imul word  [rbx + 4 * rcx + 0x13]
imul dword [rcx + 8 * rsi + 0x14]
imul qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
imul byte  [rax + 2 * rbx + 0x1234]
imul word  [rbx + 4 * rcx + 0x1235]
imul dword [rcx + 8 * rsi + 0x1236]
imul qword [rdx + 8 * rdi + 0x1237]

imul byte  [rax + 2 * rbx + 0x12345678]
imul word  [rbx + 4 * rcx + 0x12345679]
imul dword [rcx + 8 * rsi + 0x1234567a]
imul qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
imul byte  [2 * rbx]
imul word  [4 * rcx]
imul dword [8 * rsi]
imul qword [8 * rdi]

; [scale * index + disp8]
imul byte  [2 * rbx + 0x12]
imul word  [4 * rcx + 0x13]
imul dword [8 * rsi + 0x14]
imul qword [8 * rdi + 0x15]

; [scale * index + disp32]
imul byte  [2 * rbx + 0x1234]
imul word  [4 * rcx + 0x1235]
imul dword [8 * rsi + 0x1236]
imul qword [8 * rdi + 0x1237]

imul byte  [2 * rbx + 0x12345678]
imul word  [4 * rcx + 0x12345679]
imul dword [8 * rsi + 0x1234567a]
imul qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
imul byte [rbp]
imul byte [rbp + 0x12]
imul byte [rbp + 0x1234]
imul byte [rbp + 0x12345678]

imul byte [4 * rbp]
imul byte [4 * rbp + 0x12]
imul byte [4 * rbp + 0x1234]
imul byte [4 * rbp + 0x12345678]

imul byte [rbx + 4 * rbp]
imul byte [rbx + 4 * rbp + 0x12]
imul byte [rbx + 4 * rbp + 0x1234]
imul byte [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
imul byte [rsp]
imul byte [rsp + 0x12]
imul byte [rsp + 0x1234]
imul byte [rsp + 0x12345678]

imul byte [rsp + rax]
imul byte [rsp + rbp]
imul byte [rsp + 2*rbp]
imul byte [rsp + 4*rbp]
imul byte [rsp + 8*rbp]

; use each register as indirect.
imul byte [rax]
imul byte [rcx]
imul byte [rdx]
imul byte [rbx]
imul byte [rsp]
imul byte [rbp]
imul byte [rsi]
imul byte [rdi]

; use each register as indirect.
; rsp is forbidden as index
imul byte [rax + 2*rax]
imul byte [rcx + 2*rcx]
imul byte [rdx + 2*rdx]
imul byte [rbx + 2*rbx]
imul byte [rbp + 2*rbp]
imul byte [rsi + 2*rsi]
imul byte [rdi + 2*rdi]
