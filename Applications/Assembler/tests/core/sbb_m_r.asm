use64

; [rip + disp32]
sbb byte  [rip + 0x12], bl
sbb word  [rip + 0x13], cx
sbb dword [rip + 0x14], edx
sbb qword [rip + 0x15], rsi

sbb byte  [rip + 0x1234], bl
sbb word  [rip + 0x1235], cx
sbb dword [rip + 0x1236], edx
sbb qword [rip + 0x1237], rsi

sbb byte  [rip + 0x12345678], bl
sbb word  [rip + 0x12345679], cx
sbb dword [rip + 0x1234567a], edx
sbb qword [rip + 0x1234567b], rsi

; [rip + base]
sbb byte  [rax], bl
sbb word  [rbx], cx
sbb dword [rcx], edx
sbb qword [rdx], rsi

; [rip + base + disp8]
sbb byte  [rax + 0x12], bl
sbb word  [rbx + 0x13], cx
sbb dword [rcx + 0x14], edx
sbb qword [rdx + 0x15], rsi

; [rip + base + disp32]
sbb byte  [rax + 0x1234], bl
sbb word  [rbx + 0x1235], cx
sbb dword [rcx + 0x1236], edx
sbb qword [rdx + 0x1237], rsi

sbb byte  [rax + 0x12345678], bl
sbb word  [rbx + 0x12345679], cx
sbb dword [rcx + 0x1234567a], edx
sbb qword [rdx + 0x1234567b], rsi

; [rip + base + index]
sbb byte  [rax + rbx], bl
sbb word  [rbx + rcx], cx
sbb dword [rcx + rsi], edx
sbb qword [rdx + rdi], rsi

; [rip + base + scale * index]
sbb byte  [rax + 2 * rbx], bl
sbb word  [rbx + 4 * rcx], cx
sbb dword [rcx + 8 * rsi], edx
sbb qword [rdx + 8 * rdi], rsi

; [rip + base + index + disp8]
sbb byte  [rax + rbx + 0x12], bl
sbb word  [rbx + rcx + 0x13], cx
sbb dword [rcx + rsi + 0x14], edx
sbb qword [rdx + rdi + 0x15], rsi

; [rip + base + index + disp32]
sbb byte  [rax + rbx + 0x1234], bl
sbb word  [rbx + rcx + 0x1235], cx
sbb dword [rcx + rsi + 0x1236], edx
sbb qword [rdx + rdi + 0x1237], rsi

sbb byte  [rax + rbx + 0x12345678], bl
sbb word  [rbx + rcx + 0x12345679], cx
sbb dword [rcx + rsi + 0x1234567a], edx
sbb qword [rdx + rdi + 0x1234567b], rsi

; [rip + base + scale * index + disp8]
sbb byte  [rax + 2 * rbx + 0x12], bl
sbb word  [rbx + 4 * rcx + 0x13], cx
sbb dword [rcx + 8 * rsi + 0x14], edx
sbb qword [rdx + 8 * rdi + 0x15], rsi

; [rip + base + scale * index + disp32]
sbb byte  [rax + 2 * rbx + 0x1234], bl
sbb word  [rbx + 4 * rcx + 0x1235], cx
sbb dword [rcx + 8 * rsi + 0x1236], edx
sbb qword [rdx + 8 * rdi + 0x1237], rsi

sbb byte  [rax + 2 * rbx + 0x12345678], bl
sbb word  [rbx + 4 * rcx + 0x12345679], cx
sbb dword [rcx + 8 * rsi + 0x1234567a], edx
sbb qword [rdx + 8 * rdi + 0x1234567b], rsi

; [scale * index]
sbb byte  [2 * rbx], bl
sbb word  [4 * rcx], cx
sbb dword [8 * rsi], edx
sbb qword [8 * rdi], rsi

; [scale * index + disp8]
sbb byte  [2 * rbx + 0x12], bl
sbb word  [4 * rcx + 0x13], cx
sbb dword [8 * rsi + 0x14], edx
sbb qword [8 * rdi + 0x15], rsi

; [scale * index + disp32]
sbb byte  [2 * rbx + 0x1234], bl
sbb word  [4 * rcx + 0x1235], cx
sbb dword [8 * rsi + 0x1236], edx
sbb qword [8 * rdi + 0x1237], rsi

sbb byte  [2 * rbx + 0x12345678], bl
sbb word  [4 * rcx + 0x12345679], cx
sbb dword [8 * rsi + 0x1234567a], edx
sbb qword [8 * rdi + 0x1234567b], rsi

; Use rbp as base or index.
sbb byte [rbp], al
sbb byte [rbp + 0x12], al
sbb byte [rbp + 0x1234], al
sbb byte [rbp + 0x12345678], al

sbb byte [4 * rbp], al
sbb byte [4 * rbp + 0x12], al
sbb byte [4 * rbp + 0x1234], al
sbb byte [4 * rbp + 0x12345678], al

sbb byte [rbx + 4 * rbp], al
sbb byte [rbx + 4 * rbp + 0x12], al
sbb byte [rbx + 4 * rbp + 0x1234], al
sbb byte [rbx + 4 * rbp + 0x12345678], al

; Use rsp as base.
sbb byte [rsp], al
sbb byte [rsp + 0x12], al
sbb byte [rsp + 0x1234], al
sbb byte [rsp + 0x12345678], al

sbb byte [rsp + rax], al
sbb byte [rsp + rbp], al
sbb byte [rsp + 2*rbp], al
sbb byte [rsp + 4*rbp], al
sbb byte [rsp + 8*rbp], al

; use each register as indirect.
sbb byte [rax], al
sbb byte [rcx], al
sbb byte [rdx], al
sbb byte [rbx], al
sbb byte [rsp], al
sbb byte [rbp], al
sbb byte [rsi], al
sbb byte [rdi], al

; use each register as indirect.
; rsp is forbidden as index
sbb byte [rax + 2*rax], al
sbb byte [rcx + 2*rcx], al
sbb byte [rdx + 2*rdx], al
sbb byte [rbx + 2*rbx], al
sbb byte [rbp + 2*rbp], al
sbb byte [rsi + 2*rsi], al
sbb byte [rdi + 2*rdi], al
