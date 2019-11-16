use64

; [rip + disp32]
mov byte  [rip + 0x12], 0x13
mov word  [rip + 0x13], 0x1234
mov dword [rip + 0x14], 0x12345678
mov qword [rip + 0x15], 0x12345679

mov byte  [rip + 0x1234], 0x13
mov word  [rip + 0x1235], 0x1234
mov dword [rip + 0x1236], 0x12345678
mov qword [rip + 0x1237], 0x12345679

mov byte  [rip + 0x12345678], 0x13
mov word  [rip + 0x12345679], 0x1234
mov dword [rip + 0x1234567a], 0x12345678
mov qword [rip + 0x1234567b], 0x12345679

; [rip + base]
mov byte  [rax], 0x13
mov word  [rbx], 0x1234
mov dword [rcx], 0x12345678
mov qword [rdx], 0x12345679

; [rip + base + disp8]
mov byte  [rax + 0x12], 0x13
mov word  [rbx + 0x13], 0x1234
mov dword [rcx + 0x14], 0x12345678
mov qword [rdx + 0x15], 0x12345679

; [rip + base + disp32]
mov byte  [rax + 0x1234], 0x13
mov word  [rbx + 0x1235], 0x1234
mov dword [rcx + 0x1236], 0x12345678
mov qword [rdx + 0x1237], 0x12345679

mov byte  [rax + 0x12345678], 0x13
mov word  [rbx + 0x12345679], 0x1234
mov dword [rcx + 0x1234567a], 0x12345678
mov qword [rdx + 0x1234567b], 0x12345679

; [rip + base + index]
mov byte  [rax + rbx], 0x13
mov word  [rbx + rcx], 0x1234
mov dword [rcx + rsi], 0x12345678
mov qword [rdx + rdi], 0x12345679

; [rip + base + scale * index]
mov byte  [rax + 2 * rbx], 0x13
mov word  [rbx + 4 * rcx], 0x1234
mov dword [rcx + 8 * rsi], 0x12345678
mov qword [rdx + 8 * rdi], 0x12345679

; [rip + base + index + disp8]
mov byte  [rax + rbx + 0x12], 0x13
mov word  [rbx + rcx + 0x13], 0x1234
mov dword [rcx + rsi + 0x14], 0x12345678
mov qword [rdx + rdi + 0x15], 0x12345679

; [rip + base + index + disp32]
mov byte  [rax + rbx + 0x1234], 0x13
mov word  [rbx + rcx + 0x1235], 0x1234
mov dword [rcx + rsi + 0x1236], 0x12345678
mov qword [rdx + rdi + 0x1237], 0x12345679

mov byte  [rax + rbx + 0x12345678], 0x13
mov word  [rbx + rcx + 0x12345679], 0x1234
mov dword [rcx + rsi + 0x1234567a], 0x12345678
mov qword [rdx + rdi + 0x1234567b], 0x12345679

; [rip + base + scale * index + disp8]
mov byte  [rax + 2 * rbx + 0x12], 0x13
mov word  [rbx + 4 * rcx + 0x13], 0x1234
mov dword [rcx + 8 * rsi + 0x14], 0x12345678
mov qword [rdx + 8 * rdi + 0x15], 0x12345679

; [rip + base + scale * index + disp32]
mov byte  [rax + 2 * rbx + 0x1234], 0x13
mov word  [rbx + 4 * rcx + 0x1235], 0x1234
mov dword [rcx + 8 * rsi + 0x1236], 0x12345678
mov qword [rdx + 8 * rdi + 0x1237], 0x12345679

mov byte  [rax + 2 * rbx + 0x12345678], 0x13
mov word  [rbx + 4 * rcx + 0x12345679], 0x1234
mov dword [rcx + 8 * rsi + 0x1234567a], 0x12345678
mov qword [rdx + 8 * rdi + 0x1234567b], 0x12345679

; [scale * index]
mov byte  [2 * rbx], 0x13
mov word  [4 * rcx], 0x1234
mov dword [8 * rsi], 0x12345678
mov qword [8 * rdi], 0x12345679

; [scale * index + disp8]
mov byte  [2 * rbx + 0x12], 0x13
mov word  [4 * rcx + 0x13], 0x1234
mov dword [8 * rsi + 0x14], 0x12345678
mov qword [8 * rdi + 0x15], 0x12345679

; [scale * index + disp32]
mov byte  [2 * rbx + 0x1234], 0x13
mov word  [4 * rcx + 0x1235], 0x1234
mov dword [8 * rsi + 0x1236], 0x12345678
mov qword [8 * rdi + 0x1237], 0x12345679

mov byte  [2 * rbx + 0x12345678], 0x13
mov word  [4 * rcx + 0x12345679], 0x1234
mov dword [8 * rsi + 0x1234567a], 0x12345678
mov qword [8 * rdi + 0x1234567b], 0x12345679

; Use rbp as base or index.
mov byte [rbp], 0x12
mov byte [rbp + 0x12], 0x13
mov byte [rbp + 0x1234], 0x14
mov byte [rbp + 0x12345678], 0x15

mov byte [4 * rbp], 0x12
mov byte [4 * rbp + 0x12], 0x13
mov byte [4 * rbp + 0x1234], 0x14
mov byte [4 * rbp + 0x12345678], 0x15

mov byte [rbx + 4 * rbp], 0x12
mov byte [rbx + 4 * rbp + 0x12], 0x13
mov byte [rbx + 4 * rbp + 0x1234], 0x14
mov byte [rbx + 4 * rbp + 0x12345678], 0x15

; Use rsp as base.
mov byte [rsp], 0x12
mov byte [rsp + 0x12], 0x13
mov byte [rsp + 0x1234], 0x14
mov byte [rsp + 0x12345678], 0x15

mov byte [rsp + rax], 0x12
mov byte [rsp + rbp], 0x13
mov byte [rsp + 2*rbp], 0x14
mov byte [rsp + 4*rbp], 0x15
mov byte [rsp + 8*rbp], 0x16

; use each register as indirect.
mov byte [rax], 0x12
mov byte [rcx], 0x13
mov byte [rdx], 0x14
mov byte [rbx], 0x15
mov byte [rsp], 0x16
mov byte [rbp], 0x17
mov byte [rsi], 0x18
mov byte [rdi], 0x19

; use each register as indirect.
; rsp is forbidden as index
mov byte [rax + 2*rax], 0x12
mov byte [rcx + 2*rcx], 0x13
mov byte [rdx + 2*rdx], 0x14
mov byte [rbx + 2*rbx], 0x15
mov byte [rbp + 2*rbp], 0x16
mov byte [rsi + 2*rsi], 0x17
mov byte [rdi + 2*rdi], 0x18

