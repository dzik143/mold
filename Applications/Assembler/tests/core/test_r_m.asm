use64

; [rip + disp32]
test bl,  byte  [rip + 0x12]
test cx,  word  [rip + 0x13]
test edx, dword [rip + 0x14]
test rsi, qword [rip + 0x15]

test bl,  byte  [rip + 0x1234]
test cx,  word  [rip + 0x1235]
test edx, dword [rip + 0x1236]
test rsi, qword [rip + 0x1237]

test bl,  byte  [rip + 0x12345678]
test cx,  word  [rip + 0x12345679]
test edx, dword [rip + 0x1234567a]
test rsi, qword [rip + 0x1234567b]

; [rip + base]
test bl,  byte  [rax]
test cx,  word  [rbx]
test edx, dword [rcx]
test rsi, qword [rdx]

; [rip + base + disp8]
test bl,  byte  [rax + 0x12]
test cx,  word  [rbx + 0x13]
test edx, dword [rcx + 0x14]
test rsi, qword [rdx + 0x15]

; [rip + base + disp32]
test bl,  byte  [rax + 0x1234]
test cx,  word  [rbx + 0x1235]
test edx, dword [rcx + 0x1236]
test rsi, qword [rdx + 0x1237]

test bl,  byte  [rax + 0x12345678]
test cx,  word  [rbx + 0x12345679]
test edx, dword [rcx + 0x1234567a]
test rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
test bl,  byte  [rax + rbx]
test cx,  word  [rbx + rcx]
test edx, dword [rcx + rsi]
test rsi, qword [rdx + rdi]

; [rip + base + scale * index]
test bl,  byte  [rax + 2 * rbx]
test cx,  word  [rbx + 4 * rcx]
test edx, dword [rcx + 8 * rsi]
test rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
test bl,  byte  [rax + rbx + 0x12]
test cx,  word  [rbx + rcx + 0x13]
test edx, dword [rcx + rsi + 0x14]
test rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
test bl,  byte  [rax + rbx + 0x1234]
test cx,  word  [rbx + rcx + 0x1235]
test edx, dword [rcx + rsi + 0x1236]
test rsi, qword [rdx + rdi + 0x1237]

test bl,  byte  [rax + rbx + 0x12345678]
test cx,  word  [rbx + rcx + 0x12345679]
test edx, dword [rcx + rsi + 0x1234567a]
test rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
test bl,  byte  [rax + 2 * rbx + 0x12]
test cx,  word  [rbx + 4 * rcx + 0x13]
test edx, dword [rcx + 8 * rsi + 0x14]
test rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
test bl,  byte  [rax + 2 * rbx + 0x1234]
test cx,  word  [rbx + 4 * rcx + 0x1235]
test edx, dword [rcx + 8 * rsi + 0x1236]
test rsi, qword [rdx + 8 * rdi + 0x1237]

test bl,  byte  [rax + 2 * rbx + 0x12345678]
test cx,  word  [rbx + 4 * rcx + 0x12345679]
test edx, dword [rcx + 8 * rsi + 0x1234567a]
test rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
test bl,  byte  [2 * rbx]
test cx,  word  [4 * rcx]
test edx, dword [8 * rsi]
test rsi, qword [8 * rdi]

; [scale * index + disp8]
test bl,  byte  [2 * rbx + 0x12]
test cx,  word  [4 * rcx + 0x13]
test edx, dword [8 * rsi + 0x14]
test rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
test bl,  byte  [2 * rbx + 0x1234]
test cx,  word  [4 * rcx + 0x1235]
test edx, dword [8 * rsi + 0x1236]
test rsi, qword [8 * rdi + 0x1237]

test bl,  byte  [2 * rbx + 0x12345678]
test cx,  word  [4 * rcx + 0x12345679]
test edx, dword [8 * rsi + 0x1234567a]
test rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
test al, byte [rbp]
test al, byte [rbp + 0x12]
test al, byte [rbp + 0x1234]
test al, byte [rbp + 0x12345678]

test al, byte [4 * rbp]
test al, byte [4 * rbp + 0x12]
test al, byte [4 * rbp + 0x1234]
test al, byte [4 * rbp + 0x12345678]

test al, byte [rbx + 4 * rbp]
test al, byte [rbx + 4 * rbp + 0x12]
test al, byte [rbx + 4 * rbp + 0x1234]
test al, byte [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
test al, byte [rsp]
test al, byte [rsp + 0x12]
test al, byte [rsp + 0x1234]
test al, byte [rsp + 0x12345678]

test al, byte [rsp + rax]
test al, byte [rsp + rbp]
test al, byte [rsp + 2*rbp]
test al, byte [rsp + 4*rbp]
test al, byte [rsp + 8*rbp]

; use each register as indirect.
test al, byte [rax]
test al, byte [rcx]
test al, byte [rdx]
test al, byte [rbx]
test al, byte [rsp]
test al, byte [rbp]
test al, byte [rsi]
test al, byte [rdi]

; use each register as indirect.
; rsp is forbidden as index
test al, byte [rax + 2*rax]
test al, byte [rcx + 2*rcx]
test al, byte [rdx + 2*rdx]
test al, byte [rbx + 2*rbx]
test al, byte [rbp + 2*rbp]
test al, byte [rsi + 2*rsi]
test al, byte [rdi + 2*rdi]
