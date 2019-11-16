use64

; [rip + disp32]
and byte  [rip + 0x12], bl
and word  [rip + 0x13], cx
and dword [rip + 0x14], edx
and qword [rip + 0x15], rsi

and byte  [rip + 0x1234], bl
and word  [rip + 0x1235], cx
and dword [rip + 0x1236], edx
and qword [rip + 0x1237], rsi

and byte  [rip + 0x12345678], bl
and word  [rip + 0x12345679], cx
and dword [rip + 0x1234567a], edx
and qword [rip + 0x1234567b], rsi

; [rip + base]
and byte  [rax], bl
and word  [rbx], cx
and dword [rcx], edx
and qword [rdx], rsi

; [rip + base + disp8]
and byte  [rax + 0x12], bl
and word  [rbx + 0x13], cx
and dword [rcx + 0x14], edx
and qword [rdx + 0x15], rsi

; [rip + base + disp32]
and byte  [rax + 0x1234], bl
and word  [rbx + 0x1235], cx
and dword [rcx + 0x1236], edx
and qword [rdx + 0x1237], rsi

and byte  [rax + 0x12345678], bl
and word  [rbx + 0x12345679], cx
and dword [rcx + 0x1234567a], edx
and qword [rdx + 0x1234567b], rsi

; [rip + base + index]
and byte  [rax + rbx], bl
and word  [rbx + rcx], cx
and dword [rcx + rsi], edx
and qword [rdx + rdi], rsi

; [rip + base + scale * index]
and byte  [rax + 2 * rbx], bl
and word  [rbx + 4 * rcx], cx
and dword [rcx + 8 * rsi], edx
and qword [rdx + 8 * rdi], rsi

; [rip + base + index + disp8]
and byte  [rax + rbx + 0x12], bl
and word  [rbx + rcx + 0x13], cx
and dword [rcx + rsi + 0x14], edx
and qword [rdx + rdi + 0x15], rsi

; [rip + base + index + disp32]
and byte  [rax + rbx + 0x1234], bl
and word  [rbx + rcx + 0x1235], cx
and dword [rcx + rsi + 0x1236], edx
and qword [rdx + rdi + 0x1237], rsi

and byte  [rax + rbx + 0x12345678], bl
and word  [rbx + rcx + 0x12345679], cx
and dword [rcx + rsi + 0x1234567a], edx
and qword [rdx + rdi + 0x1234567b], rsi

; [rip + base + scale * index + disp8]
and byte  [rax + 2 * rbx + 0x12], bl
and word  [rbx + 4 * rcx + 0x13], cx
and dword [rcx + 8 * rsi + 0x14], edx
and qword [rdx + 8 * rdi + 0x15], rsi

; [rip + base + scale * index + disp32]
and byte  [rax + 2 * rbx + 0x1234], bl
and word  [rbx + 4 * rcx + 0x1235], cx
and dword [rcx + 8 * rsi + 0x1236], edx
and qword [rdx + 8 * rdi + 0x1237], rsi

and byte  [rax + 2 * rbx + 0x12345678], bl
and word  [rbx + 4 * rcx + 0x12345679], cx
and dword [rcx + 8 * rsi + 0x1234567a], edx
and qword [rdx + 8 * rdi + 0x1234567b], rsi

; [scale * index]
and byte  [2 * rbx], bl
and word  [4 * rcx], cx
and dword [8 * rsi], edx
and qword [8 * rdi], rsi

; [scale * index + disp8]
and byte  [2 * rbx + 0x12], bl
and word  [4 * rcx + 0x13], cx
and dword [8 * rsi + 0x14], edx
and qword [8 * rdi + 0x15], rsi

; [scale * index + disp32]
and byte  [2 * rbx + 0x1234], bl
and word  [4 * rcx + 0x1235], cx
and dword [8 * rsi + 0x1236], edx
and qword [8 * rdi + 0x1237], rsi

and byte  [2 * rbx + 0x12345678], bl
and word  [4 * rcx + 0x12345679], cx
and dword [8 * rsi + 0x1234567a], edx
and qword [8 * rdi + 0x1234567b], rsi

; Use rbp as base or index.
and byte [rbp], al
and byte [rbp + 0x12], al
and byte [rbp + 0x1234], al
and byte [rbp + 0x12345678], al

and byte [4 * rbp], al
and byte [4 * rbp + 0x12], al
and byte [4 * rbp + 0x1234], al
and byte [4 * rbp + 0x12345678], al

and byte [rbx + 4 * rbp], al
and byte [rbx + 4 * rbp + 0x12], al
and byte [rbx + 4 * rbp + 0x1234], al
and byte [rbx + 4 * rbp + 0x12345678], al

; Use rsp as base.
and byte [rsp], al
and byte [rsp + 0x12], al
and byte [rsp + 0x1234], al
and byte [rsp + 0x12345678], al

and byte [rsp + rax], al
and byte [rsp + rbp], al
and byte [rsp + 2*rbp], al
and byte [rsp + 4*rbp], al
and byte [rsp + 8*rbp], al

; use each register as indirect.
and byte [rax], al
and byte [rcx], al
and byte [rdx], al
and byte [rbx], al
and byte [rsp], al
and byte [rbp], al
and byte [rsi], al
and byte [rdi], al

; use each register as indirect.
; rsp is forbidden as index
and byte [rax + 2*rax], al
and byte [rcx + 2*rcx], al
and byte [rdx + 2*rdx], al
and byte [rbx + 2*rbx], al
and byte [rbp + 2*rbp], al
and byte [rsi + 2*rsi], al
and byte [rdi + 2*rdi], al
