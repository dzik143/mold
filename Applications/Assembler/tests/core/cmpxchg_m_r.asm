use64

; [rip + disp32]
cmpxchg byte  [rip + 0x12], bl
cmpxchg word  [rip + 0x13], cx
cmpxchg dword [rip + 0x14], edx
cmpxchg qword [rip + 0x15], rsi

cmpxchg byte  [rip + 0x1234], bl
cmpxchg word  [rip + 0x1235], cx
cmpxchg dword [rip + 0x1236], edx
cmpxchg qword [rip + 0x1237], rsi

cmpxchg byte  [rip + 0x12345678], bl
cmpxchg word  [rip + 0x12345679], cx
cmpxchg dword [rip + 0x1234567a], edx
cmpxchg qword [rip + 0x1234567b], rsi

; [rip + base]
cmpxchg byte  [rax], bl
cmpxchg word  [rbx], cx
cmpxchg dword [rcx], edx
cmpxchg qword [rdx], rsi

; [rip + base + disp8]
cmpxchg byte  [rax + 0x12], bl
cmpxchg word  [rbx + 0x13], cx
cmpxchg dword [rcx + 0x14], edx
cmpxchg qword [rdx + 0x15], rsi

; [rip + base + disp32]
cmpxchg byte  [rax + 0x1234], bl
cmpxchg word  [rbx + 0x1235], cx
cmpxchg dword [rcx + 0x1236], edx
cmpxchg qword [rdx + 0x1237], rsi

cmpxchg byte  [rax + 0x12345678], bl
cmpxchg word  [rbx + 0x12345679], cx
cmpxchg dword [rcx + 0x1234567a], edx
cmpxchg qword [rdx + 0x1234567b], rsi

; [rip + base + index]
cmpxchg byte  [rax + rbx], bl
cmpxchg word  [rbx + rcx], cx
cmpxchg dword [rcx + rsi], edx
cmpxchg qword [rdx + rdi], rsi

; [rip + base + scale * index]
cmpxchg byte  [rax + 2 * rbx], bl
cmpxchg word  [rbx + 4 * rcx], cx
cmpxchg dword [rcx + 8 * rsi], edx
cmpxchg qword [rdx + 8 * rdi], rsi

; [rip + base + index + disp8]
cmpxchg byte  [rax + rbx + 0x12], bl
cmpxchg word  [rbx + rcx + 0x13], cx
cmpxchg dword [rcx + rsi + 0x14], edx
cmpxchg qword [rdx + rdi + 0x15], rsi

; [rip + base + index + disp32]
cmpxchg byte  [rax + rbx + 0x1234], bl
cmpxchg word  [rbx + rcx + 0x1235], cx
cmpxchg dword [rcx + rsi + 0x1236], edx
cmpxchg qword [rdx + rdi + 0x1237], rsi

cmpxchg byte  [rax + rbx + 0x12345678], bl
cmpxchg word  [rbx + rcx + 0x12345679], cx
cmpxchg dword [rcx + rsi + 0x1234567a], edx
cmpxchg qword [rdx + rdi + 0x1234567b], rsi

; [rip + base + scale * index + disp8]
cmpxchg byte  [rax + 2 * rbx + 0x12], bl
cmpxchg word  [rbx + 4 * rcx + 0x13], cx
cmpxchg dword [rcx + 8 * rsi + 0x14], edx
cmpxchg qword [rdx + 8 * rdi + 0x15], rsi

; [rip + base + scale * index + disp32]
cmpxchg byte  [rax + 2 * rbx + 0x1234], bl
cmpxchg word  [rbx + 4 * rcx + 0x1235], cx
cmpxchg dword [rcx + 8 * rsi + 0x1236], edx
cmpxchg qword [rdx + 8 * rdi + 0x1237], rsi

cmpxchg byte  [rax + 2 * rbx + 0x12345678], bl
cmpxchg word  [rbx + 4 * rcx + 0x12345679], cx
cmpxchg dword [rcx + 8 * rsi + 0x1234567a], edx
cmpxchg qword [rdx + 8 * rdi + 0x1234567b], rsi

; [scale * index]
cmpxchg byte  [2 * rbx], bl
cmpxchg word  [4 * rcx], cx
cmpxchg dword [8 * rsi], edx
cmpxchg qword [8 * rdi], rsi

; [scale * index + disp8]
cmpxchg byte  [2 * rbx + 0x12], bl
cmpxchg word  [4 * rcx + 0x13], cx
cmpxchg dword [8 * rsi + 0x14], edx
cmpxchg qword [8 * rdi + 0x15], rsi

; [scale * index + disp32]
cmpxchg byte  [2 * rbx + 0x1234], bl
cmpxchg word  [4 * rcx + 0x1235], cx
cmpxchg dword [8 * rsi + 0x1236], edx
cmpxchg qword [8 * rdi + 0x1237], rsi

cmpxchg byte  [2 * rbx + 0x12345678], bl
cmpxchg word  [4 * rcx + 0x12345679], cx
cmpxchg dword [8 * rsi + 0x1234567a], edx
cmpxchg qword [8 * rdi + 0x1234567b], rsi

; Use rbp as base or index.
cmpxchg byte [rbp], al
cmpxchg byte [rbp + 0x12], al
cmpxchg byte [rbp + 0x1234], al
cmpxchg byte [rbp + 0x12345678], al

cmpxchg byte [4 * rbp], al
cmpxchg byte [4 * rbp + 0x12], al
cmpxchg byte [4 * rbp + 0x1234], al
cmpxchg byte [4 * rbp + 0x12345678], al

cmpxchg byte [rbx + 4 * rbp], al
cmpxchg byte [rbx + 4 * rbp + 0x12], al
cmpxchg byte [rbx + 4 * rbp + 0x1234], al
cmpxchg byte [rbx + 4 * rbp + 0x12345678], al

; Use rsp as base.
cmpxchg byte [rsp], al
cmpxchg byte [rsp + 0x12], al
cmpxchg byte [rsp + 0x1234], al
cmpxchg byte [rsp + 0x12345678], al

cmpxchg byte [rsp + rax], al
cmpxchg byte [rsp + rbp], al
cmpxchg byte [rsp + 2*rbp], al
cmpxchg byte [rsp + 4*rbp], al
cmpxchg byte [rsp + 8*rbp], al

; use each register as indirect.
cmpxchg byte [rax], al
cmpxchg byte [rcx], al
cmpxchg byte [rdx], al
cmpxchg byte [rbx], al
cmpxchg byte [rsp], al
cmpxchg byte [rbp], al
cmpxchg byte [rsi], al
cmpxchg byte [rdi], al

; use each register as indirect.
; rsp is forbidden as index
cmpxchg byte [rax + 2*rax], al
cmpxchg byte [rcx + 2*rcx], al
cmpxchg byte [rdx + 2*rdx], al
cmpxchg byte [rbx + 2*rbx], al
cmpxchg byte [rbp + 2*rbp], al
cmpxchg byte [rsi + 2*rsi], al
cmpxchg byte [rdi + 2*rdi], al
