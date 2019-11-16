use64

; [rip + disp32]
xor byte  [rip + 0x12], bl
xor word  [rip + 0x13], cx
xor dword [rip + 0x14], edx
xor qword [rip + 0x15], rsi

xor byte  [rip + 0x1234], bl
xor word  [rip + 0x1235], cx
xor dword [rip + 0x1236], edx
xor qword [rip + 0x1237], rsi

xor byte  [rip + 0x12345678], bl
xor word  [rip + 0x12345679], cx
xor dword [rip + 0x1234567a], edx
xor qword [rip + 0x1234567b], rsi

; [rip + base]
xor byte  [rax], bl
xor word  [rbx], cx
xor dword [rcx], edx
xor qword [rdx], rsi

; [rip + base + disp8]
xor byte  [rax + 0x12], bl
xor word  [rbx + 0x13], cx
xor dword [rcx + 0x14], edx
xor qword [rdx + 0x15], rsi

; [rip + base + disp32]
xor byte  [rax + 0x1234], bl
xor word  [rbx + 0x1235], cx
xor dword [rcx + 0x1236], edx
xor qword [rdx + 0x1237], rsi

xor byte  [rax + 0x12345678], bl
xor word  [rbx + 0x12345679], cx
xor dword [rcx + 0x1234567a], edx
xor qword [rdx + 0x1234567b], rsi

; [rip + base + index]
xor byte  [rax + rbx], bl
xor word  [rbx + rcx], cx
xor dword [rcx + rsi], edx
xor qword [rdx + rdi], rsi

; [rip + base + scale * index]
xor byte  [rax + 2 * rbx], bl
xor word  [rbx + 4 * rcx], cx
xor dword [rcx + 8 * rsi], edx
xor qword [rdx + 8 * rdi], rsi

; [rip + base + index + disp8]
xor byte  [rax + rbx + 0x12], bl
xor word  [rbx + rcx + 0x13], cx
xor dword [rcx + rsi + 0x14], edx
xor qword [rdx + rdi + 0x15], rsi

; [rip + base + index + disp32]
xor byte  [rax + rbx + 0x1234], bl
xor word  [rbx + rcx + 0x1235], cx
xor dword [rcx + rsi + 0x1236], edx
xor qword [rdx + rdi + 0x1237], rsi

xor byte  [rax + rbx + 0x12345678], bl
xor word  [rbx + rcx + 0x12345679], cx
xor dword [rcx + rsi + 0x1234567a], edx
xor qword [rdx + rdi + 0x1234567b], rsi

; [rip + base + scale * index + disp8]
xor byte  [rax + 2 * rbx + 0x12], bl
xor word  [rbx + 4 * rcx + 0x13], cx
xor dword [rcx + 8 * rsi + 0x14], edx
xor qword [rdx + 8 * rdi + 0x15], rsi

; [rip + base + scale * index + disp32]
xor byte  [rax + 2 * rbx + 0x1234], bl
xor word  [rbx + 4 * rcx + 0x1235], cx
xor dword [rcx + 8 * rsi + 0x1236], edx
xor qword [rdx + 8 * rdi + 0x1237], rsi

xor byte  [rax + 2 * rbx + 0x12345678], bl
xor word  [rbx + 4 * rcx + 0x12345679], cx
xor dword [rcx + 8 * rsi + 0x1234567a], edx
xor qword [rdx + 8 * rdi + 0x1234567b], rsi

; [scale * index]
xor byte  [2 * rbx], bl
xor word  [4 * rcx], cx
xor dword [8 * rsi], edx
xor qword [8 * rdi], rsi

; [scale * index + disp8]
xor byte  [2 * rbx + 0x12], bl
xor word  [4 * rcx + 0x13], cx
xor dword [8 * rsi + 0x14], edx
xor qword [8 * rdi + 0x15], rsi

; [scale * index + disp32]
xor byte  [2 * rbx + 0x1234], bl
xor word  [4 * rcx + 0x1235], cx
xor dword [8 * rsi + 0x1236], edx
xor qword [8 * rdi + 0x1237], rsi

xor byte  [2 * rbx + 0x12345678], bl
xor word  [4 * rcx + 0x12345679], cx
xor dword [8 * rsi + 0x1234567a], edx
xor qword [8 * rdi + 0x1234567b], rsi

; Use rbp as base or index.
xor byte [rbp], al
xor byte [rbp + 0x12], al
xor byte [rbp + 0x1234], al
xor byte [rbp + 0x12345678], al

xor byte [4 * rbp], al
xor byte [4 * rbp + 0x12], al
xor byte [4 * rbp + 0x1234], al
xor byte [4 * rbp + 0x12345678], al

xor byte [rbx + 4 * rbp], al
xor byte [rbx + 4 * rbp + 0x12], al
xor byte [rbx + 4 * rbp + 0x1234], al
xor byte [rbx + 4 * rbp + 0x12345678], al

; Use rsp as base.
xor byte [rsp], al
xor byte [rsp + 0x12], al
xor byte [rsp + 0x1234], al
xor byte [rsp + 0x12345678], al

xor byte [rsp + rax], al
xor byte [rsp + rbp], al
xor byte [rsp + 2*rbp], al
xor byte [rsp + 4*rbp], al
xor byte [rsp + 8*rbp], al

; use each register as indirect.
xor byte [rax], al
xor byte [rcx], al
xor byte [rdx], al
xor byte [rbx], al
xor byte [rsp], al
xor byte [rbp], al
xor byte [rsi], al
xor byte [rdi], al

; use each register as indirect.
; rsp is forbidden as index
xor byte [rax + 2*rax], al
xor byte [rcx + 2*rcx], al
xor byte [rdx + 2*rdx], al
xor byte [rbx + 2*rbx], al
xor byte [rbp + 2*rbp], al
xor byte [rsi + 2*rsi], al
xor byte [rdi + 2*rdi], al
