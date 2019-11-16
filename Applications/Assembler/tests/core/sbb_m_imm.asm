use64

; [rip + disp32]
sbb byte  [rip + 0x12], 0x13
sbb word  [rip + 0x13], 0x1234
sbb dword [rip + 0x14], 0x12345678
sbb qword [rip + 0x15], 0x12345679

sbb byte  [rip + 0x1234], 0x13
sbb word  [rip + 0x1235], 0x1234
sbb dword [rip + 0x1236], 0x12345678
sbb qword [rip + 0x1237], 0x12345679

sbb byte  [rip + 0x12345678], 0x13
sbb word  [rip + 0x12345679], 0x1234
sbb dword [rip + 0x1234567a], 0x12345678
sbb qword [rip + 0x1234567b], 0x12345679

; [rip + base]
sbb byte  [rax], 0x13
sbb word  [rbx], 0x1234
sbb dword [rcx], 0x12345678
sbb qword [rdx], 0x12345679

; [rip + base + disp8]
sbb byte  [rax + 0x12], 0x13
sbb word  [rbx + 0x13], 0x1234
sbb dword [rcx + 0x14], 0x12345678
sbb qword [rdx + 0x15], 0x12345679

; [rip + base + disp32]
sbb byte  [rax + 0x1234], 0x13
sbb word  [rbx + 0x1235], 0x1234
sbb dword [rcx + 0x1236], 0x12345678
sbb qword [rdx + 0x1237], 0x12345679

sbb byte  [rax + 0x12345678], 0x13
sbb word  [rbx + 0x12345679], 0x1234
sbb dword [rcx + 0x1234567a], 0x12345678
sbb qword [rdx + 0x1234567b], 0x12345679

; [rip + base + index]
sbb byte  [rax + rbx], 0x13
sbb word  [rbx + rcx], 0x1234
sbb dword [rcx + rsi], 0x12345678
sbb qword [rdx + rdi], 0x12345679

; [rip + base + scale * index]
sbb byte  [rax + 2 * rbx], 0x13
sbb word  [rbx + 4 * rcx], 0x1234
sbb dword [rcx + 8 * rsi], 0x12345678
sbb qword [rdx + 8 * rdi], 0x12345679

; [rip + base + index + disp8]
sbb byte  [rax + rbx + 0x12], 0x13
sbb word  [rbx + rcx + 0x13], 0x1234
sbb dword [rcx + rsi + 0x14], 0x12345678
sbb qword [rdx + rdi + 0x15], 0x12345679

; [rip + base + index + disp32]
sbb byte  [rax + rbx + 0x1234], 0x13
sbb word  [rbx + rcx + 0x1235], 0x1234
sbb dword [rcx + rsi + 0x1236], 0x12345678
sbb qword [rdx + rdi + 0x1237], 0x12345679

sbb byte  [rax + rbx + 0x12345678], 0x13
sbb word  [rbx + rcx + 0x12345679], 0x1234
sbb dword [rcx + rsi + 0x1234567a], 0x12345678
sbb qword [rdx + rdi + 0x1234567b], 0x12345679

; [rip + base + scale * index + disp8]
sbb byte  [rax + 2 * rbx + 0x12], 0x13
sbb word  [rbx + 4 * rcx + 0x13], 0x1234
sbb dword [rcx + 8 * rsi + 0x14], 0x12345678
sbb qword [rdx + 8 * rdi + 0x15], 0x12345679

; [rip + base + scale * index + disp32]
sbb byte  [rax + 2 * rbx + 0x1234], 0x13
sbb word  [rbx + 4 * rcx + 0x1235], 0x1234
sbb dword [rcx + 8 * rsi + 0x1236], 0x12345678
sbb qword [rdx + 8 * rdi + 0x1237], 0x12345679

sbb byte  [rax + 2 * rbx + 0x12345678], 0x13
sbb word  [rbx + 4 * rcx + 0x12345679], 0x1234
sbb dword [rcx + 8 * rsi + 0x1234567a], 0x12345678
sbb qword [rdx + 8 * rdi + 0x1234567b], 0x12345679

; [scale * index]
sbb byte  [2 * rbx], 0x13
sbb word  [4 * rcx], 0x1234
sbb dword [8 * rsi], 0x12345678
sbb qword [8 * rdi], 0x12345679

; [scale * index + disp8]
sbb byte  [2 * rbx + 0x12], 0x13
sbb word  [4 * rcx + 0x13], 0x1234
sbb dword [8 * rsi + 0x14], 0x12345678
sbb qword [8 * rdi + 0x15], 0x12345679

; [scale * index + disp32]
sbb byte  [2 * rbx + 0x1234], 0x13
sbb word  [4 * rcx + 0x1235], 0x1234
sbb dword [8 * rsi + 0x1236], 0x12345678
sbb qword [8 * rdi + 0x1237], 0x12345679

sbb byte  [2 * rbx + 0x12345678], 0x13
sbb word  [4 * rcx + 0x12345679], 0x1234
sbb dword [8 * rsi + 0x1234567a], 0x12345678
sbb qword [8 * rdi + 0x1234567b], 0x12345679

; Use rbp as base or index.
sbb byte [rbp], 0x12
sbb byte [rbp + 0x12], 0x13
sbb byte [rbp + 0x1234], 0x14
sbb byte [rbp + 0x12345678], 0x15

sbb byte [4 * rbp], 0x12
sbb byte [4 * rbp + 0x12], 0x13
sbb byte [4 * rbp + 0x1234], 0x14
sbb byte [4 * rbp + 0x12345678], 0x15

sbb byte [rbx + 4 * rbp], 0x12
sbb byte [rbx + 4 * rbp + 0x12], 0x13
sbb byte [rbx + 4 * rbp + 0x1234], 0x14
sbb byte [rbx + 4 * rbp + 0x12345678], 0x15

; Use rsp as base.
sbb byte [rsp], 0x12
sbb byte [rsp + 0x12], 0x13
sbb byte [rsp + 0x1234], 0x14
sbb byte [rsp + 0x12345678], 0x15

sbb byte [rsp + rax], 0x12
sbb byte [rsp + rbp], 0x13
sbb byte [rsp + 2*rbp], 0x14
sbb byte [rsp + 4*rbp], 0x15
sbb byte [rsp + 8*rbp], 0x16

; use each register as indirect.
sbb byte [rax], 0x12
sbb byte [rcx], 0x13
sbb byte [rdx], 0x14
sbb byte [rbx], 0x15
sbb byte [rsp], 0x16
sbb byte [rbp], 0x17
sbb byte [rsi], 0x18
sbb byte [rdi], 0x19

; use each register as indirect.
; rsp is forbidden as index
sbb byte [rax + 2*rax], 0x12
sbb byte [rcx + 2*rcx], 0x13
sbb byte [rdx + 2*rdx], 0x14
sbb byte [rbx + 2*rbx], 0x15
sbb byte [rbp + 2*rbp], 0x16
sbb byte [rsi + 2*rsi], 0x17
sbb byte [rdi + 2*rdi], 0x18

