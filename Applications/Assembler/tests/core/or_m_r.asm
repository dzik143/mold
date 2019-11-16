use64

; [rip + disp32]
or byte  [rip + 0x12], bl
or word  [rip + 0x13], cx
or dword [rip + 0x14], edx
or qword [rip + 0x15], rsi

or byte  [rip + 0x1234], bl
or word  [rip + 0x1235], cx
or dword [rip + 0x1236], edx
or qword [rip + 0x1237], rsi

or byte  [rip + 0x12345678], bl
or word  [rip + 0x12345679], cx
or dword [rip + 0x1234567a], edx
or qword [rip + 0x1234567b], rsi

; [rip + base]
or byte  [rax], bl
or word  [rbx], cx
or dword [rcx], edx
or qword [rdx], rsi

; [rip + base + disp8]
or byte  [rax + 0x12], bl
or word  [rbx + 0x13], cx
or dword [rcx + 0x14], edx
or qword [rdx + 0x15], rsi

; [rip + base + disp32]
or byte  [rax + 0x1234], bl
or word  [rbx + 0x1235], cx
or dword [rcx + 0x1236], edx
or qword [rdx + 0x1237], rsi

or byte  [rax + 0x12345678], bl
or word  [rbx + 0x12345679], cx
or dword [rcx + 0x1234567a], edx
or qword [rdx + 0x1234567b], rsi

; [rip + base + index]
or byte  [rax + rbx], bl
or word  [rbx + rcx], cx
or dword [rcx + rsi], edx
or qword [rdx + rdi], rsi

; [rip + base + scale * index]
or byte  [rax + 2 * rbx], bl
or word  [rbx + 4 * rcx], cx
or dword [rcx + 8 * rsi], edx
or qword [rdx + 8 * rdi], rsi

; [rip + base + index + disp8]
or byte  [rax + rbx + 0x12], bl
or word  [rbx + rcx + 0x13], cx
or dword [rcx + rsi + 0x14], edx
or qword [rdx + rdi + 0x15], rsi

; [rip + base + index + disp32]
or byte  [rax + rbx + 0x1234], bl
or word  [rbx + rcx + 0x1235], cx
or dword [rcx + rsi + 0x1236], edx
or qword [rdx + rdi + 0x1237], rsi

or byte  [rax + rbx + 0x12345678], bl
or word  [rbx + rcx + 0x12345679], cx
or dword [rcx + rsi + 0x1234567a], edx
or qword [rdx + rdi + 0x1234567b], rsi

; [rip + base + scale * index + disp8]
or byte  [rax + 2 * rbx + 0x12], bl
or word  [rbx + 4 * rcx + 0x13], cx
or dword [rcx + 8 * rsi + 0x14], edx
or qword [rdx + 8 * rdi + 0x15], rsi

; [rip + base + scale * index + disp32]
or byte  [rax + 2 * rbx + 0x1234], bl
or word  [rbx + 4 * rcx + 0x1235], cx
or dword [rcx + 8 * rsi + 0x1236], edx
or qword [rdx + 8 * rdi + 0x1237], rsi

or byte  [rax + 2 * rbx + 0x12345678], bl
or word  [rbx + 4 * rcx + 0x12345679], cx
or dword [rcx + 8 * rsi + 0x1234567a], edx
or qword [rdx + 8 * rdi + 0x1234567b], rsi

; [scale * index]
or byte  [2 * rbx], bl
or word  [4 * rcx], cx
or dword [8 * rsi], edx
or qword [8 * rdi], rsi

; [scale * index + disp8]
or byte  [2 * rbx + 0x12], bl
or word  [4 * rcx + 0x13], cx
or dword [8 * rsi + 0x14], edx
or qword [8 * rdi + 0x15], rsi

; [scale * index + disp32]
or byte  [2 * rbx + 0x1234], bl
or word  [4 * rcx + 0x1235], cx
or dword [8 * rsi + 0x1236], edx
or qword [8 * rdi + 0x1237], rsi

or byte  [2 * rbx + 0x12345678], bl
or word  [4 * rcx + 0x12345679], cx
or dword [8 * rsi + 0x1234567a], edx
or qword [8 * rdi + 0x1234567b], rsi

; Use rbp as base or index.
or byte [rbp], al
or byte [rbp + 0x12], al
or byte [rbp + 0x1234], al
or byte [rbp + 0x12345678], al

or byte [4 * rbp], al
or byte [4 * rbp + 0x12], al
or byte [4 * rbp + 0x1234], al
or byte [4 * rbp + 0x12345678], al

or byte [rbx + 4 * rbp], al
or byte [rbx + 4 * rbp + 0x12], al
or byte [rbx + 4 * rbp + 0x1234], al
or byte [rbx + 4 * rbp + 0x12345678], al

; Use rsp as base.
or byte [rsp], al
or byte [rsp + 0x12], al
or byte [rsp + 0x1234], al
or byte [rsp + 0x12345678], al

or byte [rsp + rax], al
or byte [rsp + rbp], al
or byte [rsp + 2*rbp], al
or byte [rsp + 4*rbp], al
or byte [rsp + 8*rbp], al

; use each register as indirect.
or byte [rax], al
or byte [rcx], al
or byte [rdx], al
or byte [rbx], al
or byte [rsp], al
or byte [rbp], al
or byte [rsi], al
or byte [rdi], al

; use each register as indirect.
; rsp is forbidden as index
or byte [rax + 2*rax], al
or byte [rcx + 2*rcx], al
or byte [rdx + 2*rdx], al
or byte [rbx + 2*rbx], al
or byte [rbp + 2*rbp], al
or byte [rsi + 2*rsi], al
or byte [rdi + 2*rdi], al
