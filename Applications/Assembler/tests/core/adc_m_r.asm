use64

; [rip + disp32]
adc byte  [rip + 0x12], bl
adc word  [rip + 0x13], cx
adc dword [rip + 0x14], edx
adc qword [rip + 0x15], rsi

adc byte  [rip + 0x1234], bl
adc word  [rip + 0x1235], cx
adc dword [rip + 0x1236], edx
adc qword [rip + 0x1237], rsi

adc byte  [rip + 0x12345678], bl
adc word  [rip + 0x12345679], cx
adc dword [rip + 0x1234567a], edx
adc qword [rip + 0x1234567b], rsi

; [rip + base]
adc byte  [rax], bl
adc word  [rbx], cx
adc dword [rcx], edx
adc qword [rdx], rsi

; [rip + base + disp8]
adc byte  [rax + 0x12], bl
adc word  [rbx + 0x13], cx
adc dword [rcx + 0x14], edx
adc qword [rdx + 0x15], rsi

; [rip + base + disp32]
adc byte  [rax + 0x1234], bl
adc word  [rbx + 0x1235], cx
adc dword [rcx + 0x1236], edx
adc qword [rdx + 0x1237], rsi

adc byte  [rax + 0x12345678], bl
adc word  [rbx + 0x12345679], cx
adc dword [rcx + 0x1234567a], edx
adc qword [rdx + 0x1234567b], rsi

; [rip + base + index]
adc byte  [rax + rbx], bl
adc word  [rbx + rcx], cx
adc dword [rcx + rsi], edx
adc qword [rdx + rdi], rsi

; [rip + base + scale * index]
adc byte  [rax + 2 * rbx], bl
adc word  [rbx + 4 * rcx], cx
adc dword [rcx + 8 * rsi], edx
adc qword [rdx + 8 * rdi], rsi

; [rip + base + index + disp8]
adc byte  [rax + rbx + 0x12], bl
adc word  [rbx + rcx + 0x13], cx
adc dword [rcx + rsi + 0x14], edx
adc qword [rdx + rdi + 0x15], rsi

; [rip + base + index + disp32]
adc byte  [rax + rbx + 0x1234], bl
adc word  [rbx + rcx + 0x1235], cx
adc dword [rcx + rsi + 0x1236], edx
adc qword [rdx + rdi + 0x1237], rsi

adc byte  [rax + rbx + 0x12345678], bl
adc word  [rbx + rcx + 0x12345679], cx
adc dword [rcx + rsi + 0x1234567a], edx
adc qword [rdx + rdi + 0x1234567b], rsi

; [rip + base + scale * index + disp8]
adc byte  [rax + 2 * rbx + 0x12], bl
adc word  [rbx + 4 * rcx + 0x13], cx
adc dword [rcx + 8 * rsi + 0x14], edx
adc qword [rdx + 8 * rdi + 0x15], rsi

; [rip + base + scale * index + disp32]
adc byte  [rax + 2 * rbx + 0x1234], bl
adc word  [rbx + 4 * rcx + 0x1235], cx
adc dword [rcx + 8 * rsi + 0x1236], edx
adc qword [rdx + 8 * rdi + 0x1237], rsi

adc byte  [rax + 2 * rbx + 0x12345678], bl
adc word  [rbx + 4 * rcx + 0x12345679], cx
adc dword [rcx + 8 * rsi + 0x1234567a], edx
adc qword [rdx + 8 * rdi + 0x1234567b], rsi

; [scale * index]
adc byte  [2 * rbx], bl
adc word  [4 * rcx], cx
adc dword [8 * rsi], edx
adc qword [8 * rdi], rsi

; [scale * index + disp8]
adc byte  [2 * rbx + 0x12], bl
adc word  [4 * rcx + 0x13], cx
adc dword [8 * rsi + 0x14], edx
adc qword [8 * rdi + 0x15], rsi

; [scale * index + disp32]
adc byte  [2 * rbx + 0x1234], bl
adc word  [4 * rcx + 0x1235], cx
adc dword [8 * rsi + 0x1236], edx
adc qword [8 * rdi + 0x1237], rsi

adc byte  [2 * rbx + 0x12345678], bl
adc word  [4 * rcx + 0x12345679], cx
adc dword [8 * rsi + 0x1234567a], edx
adc qword [8 * rdi + 0x1234567b], rsi

; Use rbp as base or index.
adc byte [rbp], al
adc byte [rbp + 0x12], al
adc byte [rbp + 0x1234], al
adc byte [rbp + 0x12345678], al

adc byte [4 * rbp], al
adc byte [4 * rbp + 0x12], al
adc byte [4 * rbp + 0x1234], al
adc byte [4 * rbp + 0x12345678], al

adc byte [rbx + 4 * rbp], al
adc byte [rbx + 4 * rbp + 0x12], al
adc byte [rbx + 4 * rbp + 0x1234], al
adc byte [rbx + 4 * rbp + 0x12345678], al

; Use rsp as base.
adc byte [rsp], al
adc byte [rsp + 0x12], al
adc byte [rsp + 0x1234], al
adc byte [rsp + 0x12345678], al

adc byte [rsp + rax], al
adc byte [rsp + rbp], al
adc byte [rsp + 2*rbp], al
adc byte [rsp + 4*rbp], al
adc byte [rsp + 8*rbp], al

; use each register as indirect.
adc byte [rax], al
adc byte [rcx], al
adc byte [rdx], al
adc byte [rbx], al
adc byte [rsp], al
adc byte [rbp], al
adc byte [rsi], al
adc byte [rdi], al

; use each register as indirect.
; rsp is forbidden as index
adc byte [rax + 2*rax], al
adc byte [rcx + 2*rcx], al
adc byte [rdx + 2*rdx], al
adc byte [rbx + 2*rbx], al
adc byte [rbp + 2*rbp], al
adc byte [rsi + 2*rsi], al
adc byte [rdi + 2*rdi], al
