use64

; [rip + disp32]
sbb bl,  byte  [rip + 0x12]
sbb cx,  word  [rip + 0x13]
sbb edx, dword [rip + 0x14]
sbb rsi, qword [rip + 0x15]

sbb bl,  byte  [rip + 0x1234]
sbb cx,  word  [rip + 0x1235]
sbb edx, dword [rip + 0x1236]
sbb rsi, qword [rip + 0x1237]

sbb bl,  byte  [rip + 0x12345678]
sbb cx,  word  [rip + 0x12345679]
sbb edx, dword [rip + 0x1234567a]
sbb rsi, qword [rip + 0x1234567b]

; [rip + base]
sbb bl,  byte  [rax]
sbb cx,  word  [rbx]
sbb edx, dword [rcx]
sbb rsi, qword [rdx]

; [rip + base + disp8]
sbb bl,  byte  [rax + 0x12]
sbb cx,  word  [rbx + 0x13]
sbb edx, dword [rcx + 0x14]
sbb rsi, qword [rdx + 0x15]

; [rip + base + disp32]
sbb bl,  byte  [rax + 0x1234]
sbb cx,  word  [rbx + 0x1235]
sbb edx, dword [rcx + 0x1236]
sbb rsi, qword [rdx + 0x1237]

sbb bl,  byte  [rax + 0x12345678]
sbb cx,  word  [rbx + 0x12345679]
sbb edx, dword [rcx + 0x1234567a]
sbb rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
sbb bl,  byte  [rax + rbx]
sbb cx,  word  [rbx + rcx]
sbb edx, dword [rcx + rsi]
sbb rsi, qword [rdx + rdi]

; [rip + base + scale * index]
sbb bl,  byte  [rax + 2 * rbx]
sbb cx,  word  [rbx + 4 * rcx]
sbb edx, dword [rcx + 8 * rsi]
sbb rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
sbb bl,  byte  [rax + rbx + 0x12]
sbb cx,  word  [rbx + rcx + 0x13]
sbb edx, dword [rcx + rsi + 0x14]
sbb rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
sbb bl,  byte  [rax + rbx + 0x1234]
sbb cx,  word  [rbx + rcx + 0x1235]
sbb edx, dword [rcx + rsi + 0x1236]
sbb rsi, qword [rdx + rdi + 0x1237]

sbb bl,  byte  [rax + rbx + 0x12345678]
sbb cx,  word  [rbx + rcx + 0x12345679]
sbb edx, dword [rcx + rsi + 0x1234567a]
sbb rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
sbb bl,  byte  [rax + 2 * rbx + 0x12]
sbb cx,  word  [rbx + 4 * rcx + 0x13]
sbb edx, dword [rcx + 8 * rsi + 0x14]
sbb rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
sbb bl,  byte  [rax + 2 * rbx + 0x1234]
sbb cx,  word  [rbx + 4 * rcx + 0x1235]
sbb edx, dword [rcx + 8 * rsi + 0x1236]
sbb rsi, qword [rdx + 8 * rdi + 0x1237]

sbb bl,  byte  [rax + 2 * rbx + 0x12345678]
sbb cx,  word  [rbx + 4 * rcx + 0x12345679]
sbb edx, dword [rcx + 8 * rsi + 0x1234567a]
sbb rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
sbb bl,  byte  [2 * rbx]
sbb cx,  word  [4 * rcx]
sbb edx, dword [8 * rsi]
sbb rsi, qword [8 * rdi]

; [scale * index + disp8]
sbb bl,  byte  [2 * rbx + 0x12]
sbb cx,  word  [4 * rcx + 0x13]
sbb edx, dword [8 * rsi + 0x14]
sbb rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
sbb bl,  byte  [2 * rbx + 0x1234]
sbb cx,  word  [4 * rcx + 0x1235]
sbb edx, dword [8 * rsi + 0x1236]
sbb rsi, qword [8 * rdi + 0x1237]

sbb bl,  byte  [2 * rbx + 0x12345678]
sbb cx,  word  [4 * rcx + 0x12345679]
sbb edx, dword [8 * rsi + 0x1234567a]
sbb rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
sbb al, byte [rbp]
sbb al, byte [rbp + 0x12]
sbb al, byte [rbp + 0x1234]
sbb al, byte [rbp + 0x12345678]

sbb al, byte [4 * rbp]
sbb al, byte [4 * rbp + 0x12]
sbb al, byte [4 * rbp + 0x1234]
sbb al, byte [4 * rbp + 0x12345678]

sbb al, byte [rbx + 4 * rbp]
sbb al, byte [rbx + 4 * rbp + 0x12]
sbb al, byte [rbx + 4 * rbp + 0x1234]
sbb al, byte [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
sbb al, byte [rsp]
sbb al, byte [rsp + 0x12]
sbb al, byte [rsp + 0x1234]
sbb al, byte [rsp + 0x12345678]

sbb al, byte [rsp + rax]
sbb al, byte [rsp + rbp]
sbb al, byte [rsp + 2*rbp]
sbb al, byte [rsp + 4*rbp]
sbb al, byte [rsp + 8*rbp]

; use each register as indirect.
sbb al, byte [rax]
sbb al, byte [rcx]
sbb al, byte [rdx]
sbb al, byte [rbx]
sbb al, byte [rsp]
sbb al, byte [rbp]
sbb al, byte [rsi]
sbb al, byte [rdi]

; use each register as indirect.
; rsp is forbidden as index
sbb al, byte [rax + 2*rax]
sbb al, byte [rcx + 2*rcx]
sbb al, byte [rdx + 2*rdx]
sbb al, byte [rbx + 2*rbx]
sbb al, byte [rbp + 2*rbp]
sbb al, byte [rsi + 2*rsi]
sbb al, byte [rdi + 2*rdi]
