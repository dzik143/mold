; [rip + disp32]
byte  [rip + 0x12]
word  [rip + 0x13]
dword [rip + 0x14]
qword [rip + 0x15]

byte  [rip + 0x1234]
word  [rip + 0x1235]
dword [rip + 0x1236]
qword [rip + 0x1237]

byte  [rip + 0x12345678]
word  [rip + 0x12345679]
dword [rip + 0x1234567a]
qword [rip + 0x1234567b]

; [rip + base]
byte  [rax]
word  [rbx]
dword [rcx]
qword [rdx]

; [rip + base + disp8]
byte  [rax + 0x12]
word  [rbx + 0x13]
dword [rcx + 0x14]
qword [rdx + 0x15]

; [rip + base + disp32]
byte  [rax + 0x1234]
word  [rbx + 0x1235]
dword [rcx + 0x1236]
qword [rdx + 0x1237]

byte  [rax + 0x12345678]
word  [rbx + 0x12345679]
dword [rcx + 0x1234567a]
qword [rdx + 0x1234567b]

; [rip + base + index]
byte  [rax + rbx]
word  [rbx + rcx]
dword [rcx + rsi]
qword [rdx + rdi]

; [rip + base + scale * index]
byte  [rax + 2 * rbx]
word  [rbx + 4 * rcx]
dword [rcx + 8 * rsi]
qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
byte  [rax + rbx + 0x12]
word  [rbx + rcx + 0x13]
dword [rcx + rsi + 0x14]
qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
byte  [rax + rbx + 0x1234]
word  [rbx + rcx + 0x1235]
dword [rcx + rsi + 0x1236]
qword [rdx + rdi + 0x1237]

byte  [rax + rbx + 0x12345678]
word  [rbx + rcx + 0x12345679]
dword [rcx + rsi + 0x1234567a]
qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
byte  [rax + 2 * rbx + 0x12]
word  [rbx + 4 * rcx + 0x13]
dword [rcx + 8 * rsi + 0x14]
qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
byte  [rax + 2 * rbx + 0x1234]
word  [rbx + 4 * rcx + 0x1235]
dword [rcx + 8 * rsi + 0x1236]
qword [rdx + 8 * rdi + 0x1237]

byte  [rax + 2 * rbx + 0x12345678]
word  [rbx + 4 * rcx + 0x12345679]
dword [rcx + 8 * rsi + 0x1234567a]
qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
byte  [2 * rbx]
word  [4 * rcx]
dword [8 * rsi]
qword [8 * rdi]

; [scale * index + disp8]
byte  [2 * rbx + 0x12]
word  [4 * rcx + 0x13]
dword [8 * rsi + 0x14]
qword [8 * rdi + 0x15]

; [scale * index + disp32]
byte  [2 * rbx + 0x1234]
word  [4 * rcx + 0x1235]
dword [8 * rsi + 0x1236]
qword [8 * rdi + 0x1237]

byte  [2 * rbx + 0x12345678]
word  [4 * rcx + 0x12345679]
dword [8 * rsi + 0x1234567a]
qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
byte [rbp]
byte [rbp + 0x12]
byte [rbp + 0x1234]
byte [rbp + 0x12345678]

byte [4 * rbp]
byte [4 * rbp + 0x12]
byte [4 * rbp + 0x1234]
byte [4 * rbp + 0x12345678]

byte [rbx + 4 * rbp]
byte [rbx + 4 * rbp + 0x12]
byte [rbx + 4 * rbp + 0x1234]
byte [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
byte [rsp]
byte [rsp + 0x12]
byte [rsp + 0x1234]
byte [rsp + 0x12345678]

byte [rsp + rax]
byte [rsp + rbp]
byte [rsp + 2*rbp]
byte [rsp + 4*rbp]
byte [rsp + 8*rbp]

; use each register as indirect.
byte [rax]
byte [rcx]
byte [rdx]
byte [rbx]
byte [rsp]
byte [rbp]
byte [rsi]
byte [rdi]

; use each register as indirect.
; rsp is forbidden as index
byte [rax + 2*rax]
byte [rcx + 2*rcx]
byte [rdx + 2*rdx]
byte [rbx + 2*rbx]
byte [rbp + 2*rbp]
byte [rsi + 2*rsi]
byte [rdi + 2*rdi]
