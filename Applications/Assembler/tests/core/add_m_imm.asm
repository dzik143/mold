use64

; [rip + disp32]
add byte  [rip + 0x12], 0x13
add word  [rip + 0x13], 0x1234
add dword [rip + 0x14], 0x12345678
add qword [rip + 0x15], 0x12345679

add byte  [rip + 0x1234], 0x13
add word  [rip + 0x1235], 0x1234
add dword [rip + 0x1236], 0x12345678
add qword [rip + 0x1237], 0x12345679

add byte  [rip + 0x12345678], 0x13
add word  [rip + 0x12345679], 0x1234
add dword [rip + 0x1234567a], 0x12345678
add qword [rip + 0x1234567b], 0x12345679

; [rip + base]
add byte  [rax], 0x13
add word  [rbx], 0x1234
add dword [rcx], 0x12345678
add qword [rdx], 0x12345679

; [rip + base + disp8]
add byte  [rax + 0x12], 0x13
add word  [rbx + 0x13], 0x1234
add dword [rcx + 0x14], 0x12345678
add qword [rdx + 0x15], 0x12345679

; [rip + base + disp32]
add byte  [rax + 0x1234], 0x13
add word  [rbx + 0x1235], 0x1234
add dword [rcx + 0x1236], 0x12345678
add qword [rdx + 0x1237], 0x12345679

add byte  [rax + 0x12345678], 0x13
add word  [rbx + 0x12345679], 0x1234
add dword [rcx + 0x1234567a], 0x12345678
add qword [rdx + 0x1234567b], 0x12345679

; [rip + base + index]
add byte  [rax + rbx], 0x13
add word  [rbx + rcx], 0x1234
add dword [rcx + rsi], 0x12345678
add qword [rdx + rdi], 0x12345679

; [rip + base + scale * index]
add byte  [rax + 2 * rbx], 0x13
add word  [rbx + 4 * rcx], 0x1234
add dword [rcx + 8 * rsi], 0x12345678
add qword [rdx + 8 * rdi], 0x12345679

; [rip + base + index + disp8]
add byte  [rax + rbx + 0x12], 0x13
add word  [rbx + rcx + 0x13], 0x1234
add dword [rcx + rsi + 0x14], 0x12345678
add qword [rdx + rdi + 0x15], 0x12345679

; [rip + base + index + disp32]
add byte  [rax + rbx + 0x1234], 0x13
add word  [rbx + rcx + 0x1235], 0x1234
add dword [rcx + rsi + 0x1236], 0x12345678
add qword [rdx + rdi + 0x1237], 0x12345679

add byte  [rax + rbx + 0x12345678], 0x13
add word  [rbx + rcx + 0x12345679], 0x1234
add dword [rcx + rsi + 0x1234567a], 0x12345678
add qword [rdx + rdi + 0x1234567b], 0x12345679

; [rip + base + scale * index + disp8]
add byte  [rax + 2 * rbx + 0x12], 0x13
add word  [rbx + 4 * rcx + 0x13], 0x1234
add dword [rcx + 8 * rsi + 0x14], 0x12345678
add qword [rdx + 8 * rdi + 0x15], 0x12345679

; [rip + base + scale * index + disp32]
add byte  [rax + 2 * rbx + 0x1234], 0x13
add word  [rbx + 4 * rcx + 0x1235], 0x1234
add dword [rcx + 8 * rsi + 0x1236], 0x12345678
add qword [rdx + 8 * rdi + 0x1237], 0x12345679

add byte  [rax + 2 * rbx + 0x12345678], 0x13
add word  [rbx + 4 * rcx + 0x12345679], 0x1234
add dword [rcx + 8 * rsi + 0x1234567a], 0x12345678
add qword [rdx + 8 * rdi + 0x1234567b], 0x12345679

; [scale * index]
add byte  [2 * rbx], 0x13
add word  [4 * rcx], 0x1234
add dword [8 * rsi], 0x12345678
add qword [8 * rdi], 0x12345679

; [scale * index + disp8]
add byte  [2 * rbx + 0x12], 0x13
add word  [4 * rcx + 0x13], 0x1234
add dword [8 * rsi + 0x14], 0x12345678
add qword [8 * rdi + 0x15], 0x12345679

; [scale * index + disp32]
add byte  [2 * rbx + 0x1234], 0x13
add word  [4 * rcx + 0x1235], 0x1234
add dword [8 * rsi + 0x1236], 0x12345678
add qword [8 * rdi + 0x1237], 0x12345679

add byte  [2 * rbx + 0x12345678], 0x13
add word  [4 * rcx + 0x12345679], 0x1234
add dword [8 * rsi + 0x1234567a], 0x12345678
add qword [8 * rdi + 0x1234567b], 0x12345679

; Use rbp as base or index.
add byte [rbp], 0x12
add byte [rbp + 0x12], 0x13
add byte [rbp + 0x1234], 0x14
add byte [rbp + 0x12345678], 0x15

add byte [4 * rbp], 0x12
add byte [4 * rbp + 0x12], 0x13
add byte [4 * rbp + 0x1234], 0x14
add byte [4 * rbp + 0x12345678], 0x15

add byte [rbx + 4 * rbp], 0x12
add byte [rbx + 4 * rbp + 0x12], 0x13
add byte [rbx + 4 * rbp + 0x1234], 0x14
add byte [rbx + 4 * rbp + 0x12345678], 0x15

; Use rsp as base.
add byte [rsp], 0x12
add byte [rsp + 0x12], 0x13
add byte [rsp + 0x1234], 0x14
add byte [rsp + 0x12345678], 0x15

add byte [rsp + rax], 0x12
add byte [rsp + rbp], 0x13
add byte [rsp + 2*rbp], 0x14
add byte [rsp + 4*rbp], 0x15
add byte [rsp + 8*rbp], 0x16

; use each register as indirect.
add byte [rax], 0x12
add byte [rcx], 0x13
add byte [rdx], 0x14
add byte [rbx], 0x15
add byte [rsp], 0x16
add byte [rbp], 0x17
add byte [rsi], 0x18
add byte [rdi], 0x19

; use each register as indirect.
; rsp is forbidden as index
add byte [rax + 2*rax], 0x12
add byte [rcx + 2*rcx], 0x13
add byte [rdx + 2*rdx], 0x14
add byte [rbx + 2*rbx], 0x15
add byte [rbp + 2*rbp], 0x16
add byte [rsi + 2*rsi], 0x17
add byte [rdi + 2*rdi], 0x18

