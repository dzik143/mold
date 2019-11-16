use64

; [rip + disp32]
mov byte  [rip + 0x12], bl
mov word  [rip + 0x13], cx
mov dword [rip + 0x14], edx
mov qword [rip + 0x15], rsi

mov byte  [rip + 0x1234], bl
mov word  [rip + 0x1235], cx
mov dword [rip + 0x1236], edx
mov qword [rip + 0x1237], rsi

mov byte  [rip + 0x12345678], bl
mov word  [rip + 0x12345679], cx
mov dword [rip + 0x1234567a], edx
mov qword [rip + 0x1234567b], rsi

; [rip + base]
mov byte  [rax], bl
mov word  [rbx], cx
mov dword [rcx], edx
mov qword [rdx], rsi

; [rip + base + disp8]
mov byte  [rax + 0x12], bl
mov word  [rbx + 0x13], cx
mov dword [rcx + 0x14], edx
mov qword [rdx + 0x15], rsi

; [rip + base + disp32]
mov byte  [rax + 0x1234], bl
mov word  [rbx + 0x1235], cx
mov dword [rcx + 0x1236], edx
mov qword [rdx + 0x1237], rsi

mov byte  [rax + 0x12345678], bl
mov word  [rbx + 0x12345679], cx
mov dword [rcx + 0x1234567a], edx
mov qword [rdx + 0x1234567b], rsi

; [rip + base + index]
mov byte  [rax + rbx], bl
mov word  [rbx + rcx], cx
mov dword [rcx + rsi], edx
mov qword [rdx + rdi], rsi

; [rip + base + scale * index]
mov byte  [rax + 2 * rbx], bl
mov word  [rbx + 4 * rcx], cx
mov dword [rcx + 8 * rsi], edx
mov qword [rdx + 8 * rdi], rsi

; [rip + base + index + disp8]
mov byte  [rax + rbx + 0x12], bl
mov word  [rbx + rcx + 0x13], cx
mov dword [rcx + rsi + 0x14], edx
mov qword [rdx + rdi + 0x15], rsi

; [rip + base + index + disp32]
mov byte  [rax + rbx + 0x1234], bl
mov word  [rbx + rcx + 0x1235], cx
mov dword [rcx + rsi + 0x1236], edx
mov qword [rdx + rdi + 0x1237], rsi

mov byte  [rax + rbx + 0x12345678], bl
mov word  [rbx + rcx + 0x12345679], cx
mov dword [rcx + rsi + 0x1234567a], edx
mov qword [rdx + rdi + 0x1234567b], rsi

; [rip + base + scale * index + disp8]
mov byte  [rax + 2 * rbx + 0x12], bl
mov word  [rbx + 4 * rcx + 0x13], cx
mov dword [rcx + 8 * rsi + 0x14], edx
mov qword [rdx + 8 * rdi + 0x15], rsi

; [rip + base + scale * index + disp32]
mov byte  [rax + 2 * rbx + 0x1234], bl
mov word  [rbx + 4 * rcx + 0x1235], cx
mov dword [rcx + 8 * rsi + 0x1236], edx
mov qword [rdx + 8 * rdi + 0x1237], rsi

mov byte  [rax + 2 * rbx + 0x12345678], bl
mov word  [rbx + 4 * rcx + 0x12345679], cx
mov dword [rcx + 8 * rsi + 0x1234567a], edx
mov qword [rdx + 8 * rdi + 0x1234567b], rsi

; [scale * index]
mov byte  [2 * rbx], bl
mov word  [4 * rcx], cx
mov dword [8 * rsi], edx
mov qword [8 * rdi], rsi

; [scale * index + disp8]
mov byte  [2 * rbx + 0x12], bl
mov word  [4 * rcx + 0x13], cx
mov dword [8 * rsi + 0x14], edx
mov qword [8 * rdi + 0x15], rsi

; [scale * index + disp32]
mov byte  [2 * rbx + 0x1234], bl
mov word  [4 * rcx + 0x1235], cx
mov dword [8 * rsi + 0x1236], edx
mov qword [8 * rdi + 0x1237], rsi

mov byte  [2 * rbx + 0x12345678], bl
mov word  [4 * rcx + 0x12345679], cx
mov dword [8 * rsi + 0x1234567a], edx
mov qword [8 * rdi + 0x1234567b], rsi

; Use rbp as base or index.
mov byte [rbp], al
mov byte [rbp + 0x12], al
mov byte [rbp + 0x1234], al
mov byte [rbp + 0x12345678], al

mov byte [4 * rbp], al
mov byte [4 * rbp + 0x12], al
mov byte [4 * rbp + 0x1234], al
mov byte [4 * rbp + 0x12345678], al

mov byte [rbx + 4 * rbp], al
mov byte [rbx + 4 * rbp + 0x12], al
mov byte [rbx + 4 * rbp + 0x1234], al
mov byte [rbx + 4 * rbp + 0x12345678], al

; Use rsp as base.
mov byte [rsp], al
mov byte [rsp + 0x12], al
mov byte [rsp + 0x1234], al
mov byte [rsp + 0x12345678], al

mov byte [rsp + rax], al
mov byte [rsp + rbp], al
mov byte [rsp + 2*rbp], al
mov byte [rsp + 4*rbp], al
mov byte [rsp + 8*rbp], al

; use each register as indirect.
mov byte [rax], al
mov byte [rcx], al
mov byte [rdx], al
mov byte [rbx], al
mov byte [rsp], al
mov byte [rbp], al
mov byte [rsi], al
mov byte [rdi], al

; use each register as indirect.
; rsp is forbidden as index
mov byte [rax + 2*rax], al
mov byte [rcx + 2*rcx], al
mov byte [rdx + 2*rdx], al
mov byte [rbx + 2*rbx], al
mov byte [rbp + 2*rbp], al
mov byte [rsi + 2*rsi], al
mov byte [rdi + 2*rdi], al
