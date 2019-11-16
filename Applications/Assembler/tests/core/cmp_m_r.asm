use64

; [rip + disp32]
cmp byte  [rip + 0x12], bl
cmp word  [rip + 0x13], cx
cmp dword [rip + 0x14], edx
cmp qword [rip + 0x15], rsi

cmp byte  [rip + 0x1234], bl
cmp word  [rip + 0x1235], cx
cmp dword [rip + 0x1236], edx
cmp qword [rip + 0x1237], rsi

cmp byte  [rip + 0x12345678], bl
cmp word  [rip + 0x12345679], cx
cmp dword [rip + 0x1234567a], edx
cmp qword [rip + 0x1234567b], rsi

; [rip + base]
cmp byte  [rax], bl
cmp word  [rbx], cx
cmp dword [rcx], edx
cmp qword [rdx], rsi

; [rip + base + disp8]
cmp byte  [rax + 0x12], bl
cmp word  [rbx + 0x13], cx
cmp dword [rcx + 0x14], edx
cmp qword [rdx + 0x15], rsi

; [rip + base + disp32]
cmp byte  [rax + 0x1234], bl
cmp word  [rbx + 0x1235], cx
cmp dword [rcx + 0x1236], edx
cmp qword [rdx + 0x1237], rsi

cmp byte  [rax + 0x12345678], bl
cmp word  [rbx + 0x12345679], cx
cmp dword [rcx + 0x1234567a], edx
cmp qword [rdx + 0x1234567b], rsi

; [rip + base + index]
cmp byte  [rax + rbx], bl
cmp word  [rbx + rcx], cx
cmp dword [rcx + rsi], edx
cmp qword [rdx + rdi], rsi

; [rip + base + scale * index]
cmp byte  [rax + 2 * rbx], bl
cmp word  [rbx + 4 * rcx], cx
cmp dword [rcx + 8 * rsi], edx
cmp qword [rdx + 8 * rdi], rsi

; [rip + base + index + disp8]
cmp byte  [rax + rbx + 0x12], bl
cmp word  [rbx + rcx + 0x13], cx
cmp dword [rcx + rsi + 0x14], edx
cmp qword [rdx + rdi + 0x15], rsi

; [rip + base + index + disp32]
cmp byte  [rax + rbx + 0x1234], bl
cmp word  [rbx + rcx + 0x1235], cx
cmp dword [rcx + rsi + 0x1236], edx
cmp qword [rdx + rdi + 0x1237], rsi

cmp byte  [rax + rbx + 0x12345678], bl
cmp word  [rbx + rcx + 0x12345679], cx
cmp dword [rcx + rsi + 0x1234567a], edx
cmp qword [rdx + rdi + 0x1234567b], rsi

; [rip + base + scale * index + disp8]
cmp byte  [rax + 2 * rbx + 0x12], bl
cmp word  [rbx + 4 * rcx + 0x13], cx
cmp dword [rcx + 8 * rsi + 0x14], edx
cmp qword [rdx + 8 * rdi + 0x15], rsi

; [rip + base + scale * index + disp32]
cmp byte  [rax + 2 * rbx + 0x1234], bl
cmp word  [rbx + 4 * rcx + 0x1235], cx
cmp dword [rcx + 8 * rsi + 0x1236], edx
cmp qword [rdx + 8 * rdi + 0x1237], rsi

cmp byte  [rax + 2 * rbx + 0x12345678], bl
cmp word  [rbx + 4 * rcx + 0x12345679], cx
cmp dword [rcx + 8 * rsi + 0x1234567a], edx
cmp qword [rdx + 8 * rdi + 0x1234567b], rsi

; [scale * index]
cmp byte  [2 * rbx], bl
cmp word  [4 * rcx], cx
cmp dword [8 * rsi], edx
cmp qword [8 * rdi], rsi

; [scale * index + disp8]
cmp byte  [2 * rbx + 0x12], bl
cmp word  [4 * rcx + 0x13], cx
cmp dword [8 * rsi + 0x14], edx
cmp qword [8 * rdi + 0x15], rsi

; [scale * index + disp32]
cmp byte  [2 * rbx + 0x1234], bl
cmp word  [4 * rcx + 0x1235], cx
cmp dword [8 * rsi + 0x1236], edx
cmp qword [8 * rdi + 0x1237], rsi

cmp byte  [2 * rbx + 0x12345678], bl
cmp word  [4 * rcx + 0x12345679], cx
cmp dword [8 * rsi + 0x1234567a], edx
cmp qword [8 * rdi + 0x1234567b], rsi

; Use rbp as base or index.
cmp byte [rbp], al
cmp byte [rbp + 0x12], al
cmp byte [rbp + 0x1234], al
cmp byte [rbp + 0x12345678], al

cmp byte [4 * rbp], al
cmp byte [4 * rbp + 0x12], al
cmp byte [4 * rbp + 0x1234], al
cmp byte [4 * rbp + 0x12345678], al

cmp byte [rbx + 4 * rbp], al
cmp byte [rbx + 4 * rbp + 0x12], al
cmp byte [rbx + 4 * rbp + 0x1234], al
cmp byte [rbx + 4 * rbp + 0x12345678], al

; Use rsp as base.
cmp byte [rsp], al
cmp byte [rsp + 0x12], al
cmp byte [rsp + 0x1234], al
cmp byte [rsp + 0x12345678], al

cmp byte [rsp + rax], al
cmp byte [rsp + rbp], al
cmp byte [rsp + 2*rbp], al
cmp byte [rsp + 4*rbp], al
cmp byte [rsp + 8*rbp], al

; use each register as indirect.
cmp byte [rax], al
cmp byte [rcx], al
cmp byte [rdx], al
cmp byte [rbx], al
cmp byte [rsp], al
cmp byte [rbp], al
cmp byte [rsi], al
cmp byte [rdi], al

; use each register as indirect.
; rsp is forbidden as index
cmp byte [rax + 2*rax], al
cmp byte [rcx + 2*rcx], al
cmp byte [rdx + 2*rdx], al
cmp byte [rbx + 2*rbx], al
cmp byte [rbp + 2*rbp], al
cmp byte [rsi + 2*rsi], al
cmp byte [rdi + 2*rdi], al
