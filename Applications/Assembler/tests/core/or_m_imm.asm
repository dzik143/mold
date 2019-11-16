use64

; [rip + disp32]
or byte  [rip + 0x12], 0x13
or word  [rip + 0x13], 0x1234
or dword [rip + 0x14], 0x12345678
or qword [rip + 0x15], 0x12345679

or byte  [rip + 0x1234], 0x13
or word  [rip + 0x1235], 0x1234
or dword [rip + 0x1236], 0x12345678
or qword [rip + 0x1237], 0x12345679

or byte  [rip + 0x12345678], 0x13
or word  [rip + 0x12345679], 0x1234
or dword [rip + 0x1234567a], 0x12345678
or qword [rip + 0x1234567b], 0x12345679

; [rip + base]
or byte  [rax], 0x13
or word  [rbx], 0x1234
or dword [rcx], 0x12345678
or qword [rdx], 0x12345679

; [rip + base + disp8]
or byte  [rax + 0x12], 0x13
or word  [rbx + 0x13], 0x1234
or dword [rcx + 0x14], 0x12345678
or qword [rdx + 0x15], 0x12345679

; [rip + base + disp32]
or byte  [rax + 0x1234], 0x13
or word  [rbx + 0x1235], 0x1234
or dword [rcx + 0x1236], 0x12345678
or qword [rdx + 0x1237], 0x12345679

or byte  [rax + 0x12345678], 0x13
or word  [rbx + 0x12345679], 0x1234
or dword [rcx + 0x1234567a], 0x12345678
or qword [rdx + 0x1234567b], 0x12345679

; [rip + base + index]
or byte  [rax + rbx], 0x13
or word  [rbx + rcx], 0x1234
or dword [rcx + rsi], 0x12345678
or qword [rdx + rdi], 0x12345679

; [rip + base + scale * index]
or byte  [rax + 2 * rbx], 0x13
or word  [rbx + 4 * rcx], 0x1234
or dword [rcx + 8 * rsi], 0x12345678
or qword [rdx + 8 * rdi], 0x12345679

; [rip + base + index + disp8]
or byte  [rax + rbx + 0x12], 0x13
or word  [rbx + rcx + 0x13], 0x1234
or dword [rcx + rsi + 0x14], 0x12345678
or qword [rdx + rdi + 0x15], 0x12345679

; [rip + base + index + disp32]
or byte  [rax + rbx + 0x1234], 0x13
or word  [rbx + rcx + 0x1235], 0x1234
or dword [rcx + rsi + 0x1236], 0x12345678
or qword [rdx + rdi + 0x1237], 0x12345679

or byte  [rax + rbx + 0x12345678], 0x13
or word  [rbx + rcx + 0x12345679], 0x1234
or dword [rcx + rsi + 0x1234567a], 0x12345678
or qword [rdx + rdi + 0x1234567b], 0x12345679

; [rip + base + scale * index + disp8]
or byte  [rax + 2 * rbx + 0x12], 0x13
or word  [rbx + 4 * rcx + 0x13], 0x1234
or dword [rcx + 8 * rsi + 0x14], 0x12345678
or qword [rdx + 8 * rdi + 0x15], 0x12345679

; [rip + base + scale * index + disp32]
or byte  [rax + 2 * rbx + 0x1234], 0x13
or word  [rbx + 4 * rcx + 0x1235], 0x1234
or dword [rcx + 8 * rsi + 0x1236], 0x12345678
or qword [rdx + 8 * rdi + 0x1237], 0x12345679

or byte  [rax + 2 * rbx + 0x12345678], 0x13
or word  [rbx + 4 * rcx + 0x12345679], 0x1234
or dword [rcx + 8 * rsi + 0x1234567a], 0x12345678
or qword [rdx + 8 * rdi + 0x1234567b], 0x12345679

; [scale * index]
or byte  [2 * rbx], 0x13
or word  [4 * rcx], 0x1234
or dword [8 * rsi], 0x12345678
or qword [8 * rdi], 0x12345679

; [scale * index + disp8]
or byte  [2 * rbx + 0x12], 0x13
or word  [4 * rcx + 0x13], 0x1234
or dword [8 * rsi + 0x14], 0x12345678
or qword [8 * rdi + 0x15], 0x12345679

; [scale * index + disp32]
or byte  [2 * rbx + 0x1234], 0x13
or word  [4 * rcx + 0x1235], 0x1234
or dword [8 * rsi + 0x1236], 0x12345678
or qword [8 * rdi + 0x1237], 0x12345679

or byte  [2 * rbx + 0x12345678], 0x13
or word  [4 * rcx + 0x12345679], 0x1234
or dword [8 * rsi + 0x1234567a], 0x12345678
or qword [8 * rdi + 0x1234567b], 0x12345679

; Use rbp as base or index.
or byte [rbp], 0x12
or byte [rbp + 0x12], 0x13
or byte [rbp + 0x1234], 0x14
or byte [rbp + 0x12345678], 0x15

or byte [4 * rbp], 0x12
or byte [4 * rbp + 0x12], 0x13
or byte [4 * rbp + 0x1234], 0x14
or byte [4 * rbp + 0x12345678], 0x15

or byte [rbx + 4 * rbp], 0x12
or byte [rbx + 4 * rbp + 0x12], 0x13
or byte [rbx + 4 * rbp + 0x1234], 0x14
or byte [rbx + 4 * rbp + 0x12345678], 0x15

; Use rsp as base.
or byte [rsp], 0x12
or byte [rsp + 0x12], 0x13
or byte [rsp + 0x1234], 0x14
or byte [rsp + 0x12345678], 0x15

or byte [rsp + rax], 0x12
or byte [rsp + rbp], 0x13
or byte [rsp + 2*rbp], 0x14
or byte [rsp + 4*rbp], 0x15
or byte [rsp + 8*rbp], 0x16

; use each register as indirect.
or byte [rax], 0x12
or byte [rcx], 0x13
or byte [rdx], 0x14
or byte [rbx], 0x15
or byte [rsp], 0x16
or byte [rbp], 0x17
or byte [rsi], 0x18
or byte [rdi], 0x19

; use each register as indirect.
; rsp is forbidden as index
or byte [rax + 2*rax], 0x12
or byte [rcx + 2*rcx], 0x13
or byte [rdx + 2*rdx], 0x14
or byte [rbx + 2*rbx], 0x15
or byte [rbp + 2*rbp], 0x16
or byte [rsi + 2*rsi], 0x17
or byte [rdi + 2*rdi], 0x18

