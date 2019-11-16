use64

; [rip + disp32]
add byte  [rip + 0x12], bl
add word  [rip + 0x13], cx
add dword [rip + 0x14], edx
add qword [rip + 0x15], rsi

add byte  [rip + 0x1234], bl
add word  [rip + 0x1235], cx
add dword [rip + 0x1236], edx
add qword [rip + 0x1237], rsi

add byte  [rip + 0x12345678], bl
add word  [rip + 0x12345679], cx
add dword [rip + 0x1234567a], edx
add qword [rip + 0x1234567b], rsi

; [rip + base]
add byte  [rax], bl
add word  [rbx], cx
add dword [rcx], edx
add qword [rdx], rsi

; [rip + base + disp8]
add byte  [rax + 0x12], bl
add word  [rbx + 0x13], cx
add dword [rcx + 0x14], edx
add qword [rdx + 0x15], rsi

; [rip + base + disp32]
add byte  [rax + 0x1234], bl
add word  [rbx + 0x1235], cx
add dword [rcx + 0x1236], edx
add qword [rdx + 0x1237], rsi

add byte  [rax + 0x12345678], bl
add word  [rbx + 0x12345679], cx
add dword [rcx + 0x1234567a], edx
add qword [rdx + 0x1234567b], rsi

; [rip + base + index]
add byte  [rax + rbx], bl
add word  [rbx + rcx], cx
add dword [rcx + rsi], edx
add qword [rdx + rdi], rsi

; [rip + base + scale * index]
add byte  [rax + 2 * rbx], bl
add word  [rbx + 4 * rcx], cx
add dword [rcx + 8 * rsi], edx
add qword [rdx + 8 * rdi], rsi

; [rip + base + index + disp8]
add byte  [rax + rbx + 0x12], bl
add word  [rbx + rcx + 0x13], cx
add dword [rcx + rsi + 0x14], edx
add qword [rdx + rdi + 0x15], rsi

; [rip + base + index + disp32]
add byte  [rax + rbx + 0x1234], bl
add word  [rbx + rcx + 0x1235], cx
add dword [rcx + rsi + 0x1236], edx
add qword [rdx + rdi + 0x1237], rsi

add byte  [rax + rbx + 0x12345678], bl
add word  [rbx + rcx + 0x12345679], cx
add dword [rcx + rsi + 0x1234567a], edx
add qword [rdx + rdi + 0x1234567b], rsi

; [rip + base + scale * index + disp8]
add byte  [rax + 2 * rbx + 0x12], bl
add word  [rbx + 4 * rcx + 0x13], cx
add dword [rcx + 8 * rsi + 0x14], edx
add qword [rdx + 8 * rdi + 0x15], rsi

; [rip + base + scale * index + disp32]
add byte  [rax + 2 * rbx + 0x1234], bl
add word  [rbx + 4 * rcx + 0x1235], cx
add dword [rcx + 8 * rsi + 0x1236], edx
add qword [rdx + 8 * rdi + 0x1237], rsi

add byte  [rax + 2 * rbx + 0x12345678], bl
add word  [rbx + 4 * rcx + 0x12345679], cx
add dword [rcx + 8 * rsi + 0x1234567a], edx
add qword [rdx + 8 * rdi + 0x1234567b], rsi

; [scale * index]
add byte  [2 * rbx], bl
add word  [4 * rcx], cx
add dword [8 * rsi], edx
add qword [8 * rdi], rsi

; [scale * index + disp8]
add byte  [2 * rbx + 0x12], bl
add word  [4 * rcx + 0x13], cx
add dword [8 * rsi + 0x14], edx
add qword [8 * rdi + 0x15], rsi

; [scale * index + disp32]
add byte  [2 * rbx + 0x1234], bl
add word  [4 * rcx + 0x1235], cx
add dword [8 * rsi + 0x1236], edx
add qword [8 * rdi + 0x1237], rsi

add byte  [2 * rbx + 0x12345678], bl
add word  [4 * rcx + 0x12345679], cx
add dword [8 * rsi + 0x1234567a], edx
add qword [8 * rdi + 0x1234567b], rsi

; Use rbp as base or index.
add byte [rbp], al
add byte [rbp + 0x12], al
add byte [rbp + 0x1234], al
add byte [rbp + 0x12345678], al

add byte [4 * rbp], al
add byte [4 * rbp + 0x12], al
add byte [4 * rbp + 0x1234], al
add byte [4 * rbp + 0x12345678], al

add byte [rbx + 4 * rbp], al
add byte [rbx + 4 * rbp + 0x12], al
add byte [rbx + 4 * rbp + 0x1234], al
add byte [rbx + 4 * rbp + 0x12345678], al

; Use rsp as base.
add byte [rsp], al
add byte [rsp + 0x12], al
add byte [rsp + 0x1234], al
add byte [rsp + 0x12345678], al

add byte [rsp + rax], al
add byte [rsp + rbp], al
add byte [rsp + 2*rbp], al
add byte [rsp + 4*rbp], al
add byte [rsp + 8*rbp], al

; use each register as indirect.
add byte [rax], al
add byte [rcx], al
add byte [rdx], al
add byte [rbx], al
add byte [rsp], al
add byte [rbp], al
add byte [rsi], al
add byte [rdi], al

; use each register as indirect.
; rsp is forbidden as index
add byte [rax + 2*rax], al
add byte [rcx + 2*rcx], al
add byte [rdx + 2*rdx], al
add byte [rbx + 2*rbx], al
add byte [rbp + 2*rbp], al
add byte [rsi + 2*rsi], al
add byte [rdi + 2*rdi], al
