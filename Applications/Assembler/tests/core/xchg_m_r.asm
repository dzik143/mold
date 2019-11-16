use64

; [rip + disp32]
xchg byte  [rip + 0x12], bl
xchg word  [rip + 0x13], cx
xchg dword [rip + 0x14], edx
xchg qword [rip + 0x15], rsi

xchg byte  [rip + 0x1234], bl
xchg word  [rip + 0x1235], cx
xchg dword [rip + 0x1236], edx
xchg qword [rip + 0x1237], rsi

xchg byte  [rip + 0x12345678], bl
xchg word  [rip + 0x12345679], cx
xchg dword [rip + 0x1234567a], edx
xchg qword [rip + 0x1234567b], rsi

; [rip + base]
xchg byte  [rax], bl
xchg word  [rbx], cx
xchg dword [rcx], edx
xchg qword [rdx], rsi

; [rip + base + disp8]
xchg byte  [rax + 0x12], bl
xchg word  [rbx + 0x13], cx
xchg dword [rcx + 0x14], edx
xchg qword [rdx + 0x15], rsi

; [rip + base + disp32]
xchg byte  [rax + 0x1234], bl
xchg word  [rbx + 0x1235], cx
xchg dword [rcx + 0x1236], edx
xchg qword [rdx + 0x1237], rsi

xchg byte  [rax + 0x12345678], bl
xchg word  [rbx + 0x12345679], cx
xchg dword [rcx + 0x1234567a], edx
xchg qword [rdx + 0x1234567b], rsi

; [rip + base + index]
xchg byte  [rax + rbx], bl
xchg word  [rbx + rcx], cx
xchg dword [rcx + rsi], edx
xchg qword [rdx + rdi], rsi

; [rip + base + scale * index]
xchg byte  [rax + 2 * rbx], bl
xchg word  [rbx + 4 * rcx], cx
xchg dword [rcx + 8 * rsi], edx
xchg qword [rdx + 8 * rdi], rsi

; [rip + base + index + disp8]
xchg byte  [rax + rbx + 0x12], bl
xchg word  [rbx + rcx + 0x13], cx
xchg dword [rcx + rsi + 0x14], edx
xchg qword [rdx + rdi + 0x15], rsi

; [rip + base + index + disp32]
xchg byte  [rax + rbx + 0x1234], bl
xchg word  [rbx + rcx + 0x1235], cx
xchg dword [rcx + rsi + 0x1236], edx
xchg qword [rdx + rdi + 0x1237], rsi

xchg byte  [rax + rbx + 0x12345678], bl
xchg word  [rbx + rcx + 0x12345679], cx
xchg dword [rcx + rsi + 0x1234567a], edx
xchg qword [rdx + rdi + 0x1234567b], rsi

; [rip + base + scale * index + disp8]
xchg byte  [rax + 2 * rbx + 0x12], bl
xchg word  [rbx + 4 * rcx + 0x13], cx
xchg dword [rcx + 8 * rsi + 0x14], edx
xchg qword [rdx + 8 * rdi + 0x15], rsi

; [rip + base + scale * index + disp32]
xchg byte  [rax + 2 * rbx + 0x1234], bl
xchg word  [rbx + 4 * rcx + 0x1235], cx
xchg dword [rcx + 8 * rsi + 0x1236], edx
xchg qword [rdx + 8 * rdi + 0x1237], rsi

xchg byte  [rax + 2 * rbx + 0x12345678], bl
xchg word  [rbx + 4 * rcx + 0x12345679], cx
xchg dword [rcx + 8 * rsi + 0x1234567a], edx
xchg qword [rdx + 8 * rdi + 0x1234567b], rsi

; [scale * index]
xchg byte  [2 * rbx], bl
xchg word  [4 * rcx], cx
xchg dword [8 * rsi], edx
xchg qword [8 * rdi], rsi

; [scale * index + disp8]
xchg byte  [2 * rbx + 0x12], bl
xchg word  [4 * rcx + 0x13], cx
xchg dword [8 * rsi + 0x14], edx
xchg qword [8 * rdi + 0x15], rsi

; [scale * index + disp32]
xchg byte  [2 * rbx + 0x1234], bl
xchg word  [4 * rcx + 0x1235], cx
xchg dword [8 * rsi + 0x1236], edx
xchg qword [8 * rdi + 0x1237], rsi

xchg byte  [2 * rbx + 0x12345678], bl
xchg word  [4 * rcx + 0x12345679], cx
xchg dword [8 * rsi + 0x1234567a], edx
xchg qword [8 * rdi + 0x1234567b], rsi

; Use rbp as base or index.
xchg byte [rbp], al
xchg byte [rbp + 0x12], al
xchg byte [rbp + 0x1234], al
xchg byte [rbp + 0x12345678], al

xchg byte [4 * rbp], al
xchg byte [4 * rbp + 0x12], al
xchg byte [4 * rbp + 0x1234], al
xchg byte [4 * rbp + 0x12345678], al

xchg byte [rbx + 4 * rbp], al
xchg byte [rbx + 4 * rbp + 0x12], al
xchg byte [rbx + 4 * rbp + 0x1234], al
xchg byte [rbx + 4 * rbp + 0x12345678], al

; Use rsp as base.
xchg byte [rsp], al
xchg byte [rsp + 0x12], al
xchg byte [rsp + 0x1234], al
xchg byte [rsp + 0x12345678], al

xchg byte [rsp + rax], al
xchg byte [rsp + rbp], al
xchg byte [rsp + 2*rbp], al
xchg byte [rsp + 4*rbp], al
xchg byte [rsp + 8*rbp], al

; use each register as indirect.
xchg byte [rax], al
xchg byte [rcx], al
xchg byte [rdx], al
xchg byte [rbx], al
xchg byte [rsp], al
xchg byte [rbp], al
xchg byte [rsi], al
xchg byte [rdi], al

; use each register as indirect.
; rsp is forbidden as index
xchg byte [rax + 2*rax], al
xchg byte [rcx + 2*rcx], al
xchg byte [rdx + 2*rdx], al
xchg byte [rbx + 2*rbx], al
xchg byte [rbp + 2*rbp], al
xchg byte [rsi + 2*rsi], al
xchg byte [rdi + 2*rdi], al
