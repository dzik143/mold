use64

; [rip + disp32]
xadd byte  [rip + 0x12], bl
xadd word  [rip + 0x13], cx
xadd dword [rip + 0x14], edx
xadd qword [rip + 0x15], rsi

xadd byte  [rip + 0x1234], bl
xadd word  [rip + 0x1235], cx
xadd dword [rip + 0x1236], edx
xadd qword [rip + 0x1237], rsi

xadd byte  [rip + 0x12345678], bl
xadd word  [rip + 0x12345679], cx
xadd dword [rip + 0x1234567a], edx
xadd qword [rip + 0x1234567b], rsi

; [rip + base]
xadd byte  [rax], bl
xadd word  [rbx], cx
xadd dword [rcx], edx
xadd qword [rdx], rsi

; [rip + base + disp8]
xadd byte  [rax + 0x12], bl
xadd word  [rbx + 0x13], cx
xadd dword [rcx + 0x14], edx
xadd qword [rdx + 0x15], rsi

; [rip + base + disp32]
xadd byte  [rax + 0x1234], bl
xadd word  [rbx + 0x1235], cx
xadd dword [rcx + 0x1236], edx
xadd qword [rdx + 0x1237], rsi

xadd byte  [rax + 0x12345678], bl
xadd word  [rbx + 0x12345679], cx
xadd dword [rcx + 0x1234567a], edx
xadd qword [rdx + 0x1234567b], rsi

; [rip + base + index]
xadd byte  [rax + rbx], bl
xadd word  [rbx + rcx], cx
xadd dword [rcx + rsi], edx
xadd qword [rdx + rdi], rsi

; [rip + base + scale * index]
xadd byte  [rax + 2 * rbx], bl
xadd word  [rbx + 4 * rcx], cx
xadd dword [rcx + 8 * rsi], edx
xadd qword [rdx + 8 * rdi], rsi

; [rip + base + index + disp8]
xadd byte  [rax + rbx + 0x12], bl
xadd word  [rbx + rcx + 0x13], cx
xadd dword [rcx + rsi + 0x14], edx
xadd qword [rdx + rdi + 0x15], rsi

; [rip + base + index + disp32]
xadd byte  [rax + rbx + 0x1234], bl
xadd word  [rbx + rcx + 0x1235], cx
xadd dword [rcx + rsi + 0x1236], edx
xadd qword [rdx + rdi + 0x1237], rsi

xadd byte  [rax + rbx + 0x12345678], bl
xadd word  [rbx + rcx + 0x12345679], cx
xadd dword [rcx + rsi + 0x1234567a], edx
xadd qword [rdx + rdi + 0x1234567b], rsi

; [rip + base + scale * index + disp8]
xadd byte  [rax + 2 * rbx + 0x12], bl
xadd word  [rbx + 4 * rcx + 0x13], cx
xadd dword [rcx + 8 * rsi + 0x14], edx
xadd qword [rdx + 8 * rdi + 0x15], rsi

; [rip + base + scale * index + disp32]
xadd byte  [rax + 2 * rbx + 0x1234], bl
xadd word  [rbx + 4 * rcx + 0x1235], cx
xadd dword [rcx + 8 * rsi + 0x1236], edx
xadd qword [rdx + 8 * rdi + 0x1237], rsi

xadd byte  [rax + 2 * rbx + 0x12345678], bl
xadd word  [rbx + 4 * rcx + 0x12345679], cx
xadd dword [rcx + 8 * rsi + 0x1234567a], edx
xadd qword [rdx + 8 * rdi + 0x1234567b], rsi

; [scale * index]
xadd byte  [2 * rbx], bl
xadd word  [4 * rcx], cx
xadd dword [8 * rsi], edx
xadd qword [8 * rdi], rsi

; [scale * index + disp8]
xadd byte  [2 * rbx + 0x12], bl
xadd word  [4 * rcx + 0x13], cx
xadd dword [8 * rsi + 0x14], edx
xadd qword [8 * rdi + 0x15], rsi

; [scale * index + disp32]
xadd byte  [2 * rbx + 0x1234], bl
xadd word  [4 * rcx + 0x1235], cx
xadd dword [8 * rsi + 0x1236], edx
xadd qword [8 * rdi + 0x1237], rsi

xadd byte  [2 * rbx + 0x12345678], bl
xadd word  [4 * rcx + 0x12345679], cx
xadd dword [8 * rsi + 0x1234567a], edx
xadd qword [8 * rdi + 0x1234567b], rsi

; Use rbp as base or index.
xadd byte [rbp], al
xadd byte [rbp + 0x12], al
xadd byte [rbp + 0x1234], al
xadd byte [rbp + 0x12345678], al

xadd byte [4 * rbp], al
xadd byte [4 * rbp + 0x12], al
xadd byte [4 * rbp + 0x1234], al
xadd byte [4 * rbp + 0x12345678], al

xadd byte [rbx + 4 * rbp], al
xadd byte [rbx + 4 * rbp + 0x12], al
xadd byte [rbx + 4 * rbp + 0x1234], al
xadd byte [rbx + 4 * rbp + 0x12345678], al

; Use rsp as base.
xadd byte [rsp], al
xadd byte [rsp + 0x12], al
xadd byte [rsp + 0x1234], al
xadd byte [rsp + 0x12345678], al

xadd byte [rsp + rax], al
xadd byte [rsp + rbp], al
xadd byte [rsp + 2*rbp], al
xadd byte [rsp + 4*rbp], al
xadd byte [rsp + 8*rbp], al

; use each register as indirect.
xadd byte [rax], al
xadd byte [rcx], al
xadd byte [rdx], al
xadd byte [rbx], al
xadd byte [rsp], al
xadd byte [rbp], al
xadd byte [rsi], al
xadd byte [rdi], al

; use each register as indirect.
; rsp is forbidden as index
xadd byte [rax + 2*rax], al
xadd byte [rcx + 2*rcx], al
xadd byte [rdx + 2*rdx], al
xadd byte [rbx + 2*rbx], al
xadd byte [rbp + 2*rbp], al
xadd byte [rsi + 2*rsi], al
xadd byte [rdi + 2*rdi], al
