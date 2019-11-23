; [rip + disp32]
word  [rip + 0x13]
dword [rip + 0x14]
qword [rip + 0x15]

word  [rip + 0x1235]
dword [rip + 0x1236]
qword [rip + 0x1237]

word  [rip + 0x12345679]
dword [rip + 0x1234567a]
qword [rip + 0x1234567b]

; [rip + base]
word  [rbx]
dword [rcx]
qword [rdx]

; [rip + base + disp8]
word  [rbx + 0x13]
dword [rcx + 0x14]
qword [rdx + 0x15]

; [rip + base + disp32]
word  [rbx + 0x1235]
dword [rcx + 0x1236]
qword [rdx + 0x1237]

word  [rbx + 0x12345679]
dword [rcx + 0x1234567a]
qword [rdx + 0x1234567b]

; [rip + base + index]
word  [rbx + rcx]
dword [rcx + rsi]
qword [rdx + rdi]

; [rip + base + scale * index]
word  [rbx + 4 * rcx]
dword [rcx + 8 * rsi]
qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
word  [rbx + rcx + 0x13]
dword [rcx + rsi + 0x14]
qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
word  [rbx + rcx + 0x1235]
dword [rcx + rsi + 0x1236]
qword [rdx + rdi + 0x1237]

word  [rbx + rcx + 0x12345679]
dword [rcx + rsi + 0x1234567a]
qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
word  [rbx + 4 * rcx + 0x13]
dword [rcx + 8 * rsi + 0x14]
qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
word  [rbx + 4 * rcx + 0x1235]
dword [rcx + 8 * rsi + 0x1236]
qword [rdx + 8 * rdi + 0x1237]

word  [rbx + 4 * rcx + 0x12345679]
dword [rcx + 8 * rsi + 0x1234567a]
qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
word  [4 * rcx]
dword [8 * rsi]
qword [8 * rdi]

; [scale * index + disp8]
word  [4 * rcx + 0x13]
dword [8 * rsi + 0x14]
qword [8 * rdi + 0x15]

; [scale * index + disp32]
word  [4 * rcx + 0x1235]
dword [8 * rsi + 0x1236]
qword [8 * rdi + 0x1237]

word  [4 * rcx + 0x12345679]
dword [8 * rsi + 0x1234567a]
qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
word [rbp]
word [rbp + 0x12]
word [rbp + 0x1234]
word [rbp + 0x12345678]

dword [4 * rbp]
dword [4 * rbp + 0x12]
dword [4 * rbp + 0x1234]
dword [4 * rbp + 0x12345678]
dword
qword [rbx + 4 * rbp]
qword [rbx + 4 * rbp + 0x12]
qword [rbx + 4 * rbp + 0x1234]
qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
word [rsp]
word [rsp + 0x12]
word [rsp + 0x1234]
word [rsp + 0x12345678]

dword [rsp + rax]
dword [rsp + rbp]
dword [rsp + 2*rbp]
dword [rsp + 4*rbp]
dword [rsp + 8*rbp]

; use each register as indirect.
qword [rax]
qword [rcx]
qword [rdx]
qword [rbx]
qword [rsp]
qword [rbp]
qword [rsi]
qword [rdi]

; use each register as indirect.
; rsp is forbidden as index
qword [rax + 2*rax]
qword [rcx + 2*rcx]
qword [rdx + 2*rdx]
qword [rbx + 2*rbx]
qword [rbp + 2*rbp]
qword [rsi + 2*rsi]
qword [rdi + 2*rdi]
