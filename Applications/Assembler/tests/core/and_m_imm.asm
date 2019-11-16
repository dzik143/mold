use64

; [rip + disp32]
and byte  [rip + 0x12], 0x13
and word  [rip + 0x13], 0x1234
and dword [rip + 0x14], 0x12345678
and qword [rip + 0x15], 0x12345679

and byte  [rip + 0x1234], 0x13
and word  [rip + 0x1235], 0x1234
and dword [rip + 0x1236], 0x12345678
and qword [rip + 0x1237], 0x12345679

and byte  [rip + 0x12345678], 0x13
and word  [rip + 0x12345679], 0x1234
and dword [rip + 0x1234567a], 0x12345678
and qword [rip + 0x1234567b], 0x12345679

; [rip + base]
and byte  [rax], 0x13
and word  [rbx], 0x1234
and dword [rcx], 0x12345678
and qword [rdx], 0x12345679

; [rip + base + disp8]
and byte  [rax + 0x12], 0x13
and word  [rbx + 0x13], 0x1234
and dword [rcx + 0x14], 0x12345678
and qword [rdx + 0x15], 0x12345679

; [rip + base + disp32]
and byte  [rax + 0x1234], 0x13
and word  [rbx + 0x1235], 0x1234
and dword [rcx + 0x1236], 0x12345678
and qword [rdx + 0x1237], 0x12345679

and byte  [rax + 0x12345678], 0x13
and word  [rbx + 0x12345679], 0x1234
and dword [rcx + 0x1234567a], 0x12345678
and qword [rdx + 0x1234567b], 0x12345679

; [rip + base + index]
and byte  [rax + rbx], 0x13
and word  [rbx + rcx], 0x1234
and dword [rcx + rsi], 0x12345678
and qword [rdx + rdi], 0x12345679

; [rip + base + scale * index]
and byte  [rax + 2 * rbx], 0x13
and word  [rbx + 4 * rcx], 0x1234
and dword [rcx + 8 * rsi], 0x12345678
and qword [rdx + 8 * rdi], 0x12345679

; [rip + base + index + disp8]
and byte  [rax + rbx + 0x12], 0x13
and word  [rbx + rcx + 0x13], 0x1234
and dword [rcx + rsi + 0x14], 0x12345678
and qword [rdx + rdi + 0x15], 0x12345679

; [rip + base + index + disp32]
and byte  [rax + rbx + 0x1234], 0x13
and word  [rbx + rcx + 0x1235], 0x1234
and dword [rcx + rsi + 0x1236], 0x12345678
and qword [rdx + rdi + 0x1237], 0x12345679

and byte  [rax + rbx + 0x12345678], 0x13
and word  [rbx + rcx + 0x12345679], 0x1234
and dword [rcx + rsi + 0x1234567a], 0x12345678
and qword [rdx + rdi + 0x1234567b], 0x12345679

; [rip + base + scale * index + disp8]
and byte  [rax + 2 * rbx + 0x12], 0x13
and word  [rbx + 4 * rcx + 0x13], 0x1234
and dword [rcx + 8 * rsi + 0x14], 0x12345678
and qword [rdx + 8 * rdi + 0x15], 0x12345679

; [rip + base + scale * index + disp32]
and byte  [rax + 2 * rbx + 0x1234], 0x13
and word  [rbx + 4 * rcx + 0x1235], 0x1234
and dword [rcx + 8 * rsi + 0x1236], 0x12345678
and qword [rdx + 8 * rdi + 0x1237], 0x12345679

and byte  [rax + 2 * rbx + 0x12345678], 0x13
and word  [rbx + 4 * rcx + 0x12345679], 0x1234
and dword [rcx + 8 * rsi + 0x1234567a], 0x12345678
and qword [rdx + 8 * rdi + 0x1234567b], 0x12345679

; [scale * index]
and byte  [2 * rbx], 0x13
and word  [4 * rcx], 0x1234
and dword [8 * rsi], 0x12345678
and qword [8 * rdi], 0x12345679

; [scale * index + disp8]
and byte  [2 * rbx + 0x12], 0x13
and word  [4 * rcx + 0x13], 0x1234
and dword [8 * rsi + 0x14], 0x12345678
and qword [8 * rdi + 0x15], 0x12345679

; [scale * index + disp32]
and byte  [2 * rbx + 0x1234], 0x13
and word  [4 * rcx + 0x1235], 0x1234
and dword [8 * rsi + 0x1236], 0x12345678
and qword [8 * rdi + 0x1237], 0x12345679

and byte  [2 * rbx + 0x12345678], 0x13
and word  [4 * rcx + 0x12345679], 0x1234
and dword [8 * rsi + 0x1234567a], 0x12345678
and qword [8 * rdi + 0x1234567b], 0x12345679

; Use rbp as base or index.
and byte [rbp], 0x12
and byte [rbp + 0x12], 0x13
and byte [rbp + 0x1234], 0x14
and byte [rbp + 0x12345678], 0x15

and byte [4 * rbp], 0x12
and byte [4 * rbp + 0x12], 0x13
and byte [4 * rbp + 0x1234], 0x14
and byte [4 * rbp + 0x12345678], 0x15

and byte [rbx + 4 * rbp], 0x12
and byte [rbx + 4 * rbp + 0x12], 0x13
and byte [rbx + 4 * rbp + 0x1234], 0x14
and byte [rbx + 4 * rbp + 0x12345678], 0x15

; Use rsp as base.
and byte [rsp], 0x12
and byte [rsp + 0x12], 0x13
and byte [rsp + 0x1234], 0x14
and byte [rsp + 0x12345678], 0x15

and byte [rsp + rax], 0x12
and byte [rsp + rbp], 0x13
and byte [rsp + 2*rbp], 0x14
and byte [rsp + 4*rbp], 0x15
and byte [rsp + 8*rbp], 0x16

; use each register as indirect.
and byte [rax], 0x12
and byte [rcx], 0x13
and byte [rdx], 0x14
and byte [rbx], 0x15
and byte [rsp], 0x16
and byte [rbp], 0x17
and byte [rsi], 0x18
and byte [rdi], 0x19

; use each register as indirect.
; rsp is forbidden as index
and byte [rax + 2*rax], 0x12
and byte [rcx + 2*rcx], 0x13
and byte [rdx + 2*rdx], 0x14
and byte [rbx + 2*rbx], 0x15
and byte [rbp + 2*rbp], 0x16
and byte [rsi + 2*rsi], 0x17
and byte [rdi + 2*rdi], 0x18

