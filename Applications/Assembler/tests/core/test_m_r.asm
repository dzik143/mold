use64

; [rip + disp32]
test byte  [rip + 0x12], bl
test word  [rip + 0x13], cx
test dword [rip + 0x14], edx
test qword [rip + 0x15], rsi

test byte  [rip + 0x1234], bl
test word  [rip + 0x1235], cx
test dword [rip + 0x1236], edx
test qword [rip + 0x1237], rsi

test byte  [rip + 0x12345678], bl
test word  [rip + 0x12345679], cx
test dword [rip + 0x1234567a], edx
test qword [rip + 0x1234567b], rsi

; [rip + base]
test byte  [rax], bl
test word  [rbx], cx
test dword [rcx], edx
test qword [rdx], rsi

; [rip + base + disp8]
test byte  [rax + 0x12], bl
test word  [rbx + 0x13], cx
test dword [rcx + 0x14], edx
test qword [rdx + 0x15], rsi

; [rip + base + disp32]
test byte  [rax + 0x1234], bl
test word  [rbx + 0x1235], cx
test dword [rcx + 0x1236], edx
test qword [rdx + 0x1237], rsi

test byte  [rax + 0x12345678], bl
test word  [rbx + 0x12345679], cx
test dword [rcx + 0x1234567a], edx
test qword [rdx + 0x1234567b], rsi

; [rip + base + index]
test byte  [rax + rbx], bl
test word  [rbx + rcx], cx
test dword [rcx + rsi], edx
test qword [rdx + rdi], rsi

; [rip + base + scale * index]
test byte  [rax + 2 * rbx], bl
test word  [rbx + 4 * rcx], cx
test dword [rcx + 8 * rsi], edx
test qword [rdx + 8 * rdi], rsi

; [rip + base + index + disp8]
test byte  [rax + rbx + 0x12], bl
test word  [rbx + rcx + 0x13], cx
test dword [rcx + rsi + 0x14], edx
test qword [rdx + rdi + 0x15], rsi

; [rip + base + index + disp32]
test byte  [rax + rbx + 0x1234], bl
test word  [rbx + rcx + 0x1235], cx
test dword [rcx + rsi + 0x1236], edx
test qword [rdx + rdi + 0x1237], rsi

test byte  [rax + rbx + 0x12345678], bl
test word  [rbx + rcx + 0x12345679], cx
test dword [rcx + rsi + 0x1234567a], edx
test qword [rdx + rdi + 0x1234567b], rsi

; [rip + base + scale * index + disp8]
test byte  [rax + 2 * rbx + 0x12], bl
test word  [rbx + 4 * rcx + 0x13], cx
test dword [rcx + 8 * rsi + 0x14], edx
test qword [rdx + 8 * rdi + 0x15], rsi

; [rip + base + scale * index + disp32]
test byte  [rax + 2 * rbx + 0x1234], bl
test word  [rbx + 4 * rcx + 0x1235], cx
test dword [rcx + 8 * rsi + 0x1236], edx
test qword [rdx + 8 * rdi + 0x1237], rsi

test byte  [rax + 2 * rbx + 0x12345678], bl
test word  [rbx + 4 * rcx + 0x12345679], cx
test dword [rcx + 8 * rsi + 0x1234567a], edx
test qword [rdx + 8 * rdi + 0x1234567b], rsi

; [scale * index]
test byte  [2 * rbx], bl
test word  [4 * rcx], cx
test dword [8 * rsi], edx
test qword [8 * rdi], rsi

; [scale * index + disp8]
test byte  [2 * rbx + 0x12], bl
test word  [4 * rcx + 0x13], cx
test dword [8 * rsi + 0x14], edx
test qword [8 * rdi + 0x15], rsi

; [scale * index + disp32]
test byte  [2 * rbx + 0x1234], bl
test word  [4 * rcx + 0x1235], cx
test dword [8 * rsi + 0x1236], edx
test qword [8 * rdi + 0x1237], rsi

test byte  [2 * rbx + 0x12345678], bl
test word  [4 * rcx + 0x12345679], cx
test dword [8 * rsi + 0x1234567a], edx
test qword [8 * rdi + 0x1234567b], rsi

; Use rbp as base or index.
test byte [rbp], al
test byte [rbp + 0x12], al
test byte [rbp + 0x1234], al
test byte [rbp + 0x12345678], al

test byte [4 * rbp], al
test byte [4 * rbp + 0x12], al
test byte [4 * rbp + 0x1234], al
test byte [4 * rbp + 0x12345678], al

test byte [rbx + 4 * rbp], al
test byte [rbx + 4 * rbp + 0x12], al
test byte [rbx + 4 * rbp + 0x1234], al
test byte [rbx + 4 * rbp + 0x12345678], al

; Use rsp as base.
test byte [rsp], al
test byte [rsp + 0x12], al
test byte [rsp + 0x1234], al
test byte [rsp + 0x12345678], al

test byte [rsp + rax], al
test byte [rsp + rbp], al
test byte [rsp + 2*rbp], al
test byte [rsp + 4*rbp], al
test byte [rsp + 8*rbp], al

; use each register as indirect.
test byte [rax], al
test byte [rcx], al
test byte [rdx], al
test byte [rbx], al
test byte [rsp], al
test byte [rbp], al
test byte [rsi], al
test byte [rdi], al

; use each register as indirect.
; rsp is forbidden as index
test byte [rax + 2*rax], al
test byte [rcx + 2*rcx], al
test byte [rdx + 2*rdx], al
test byte [rbx + 2*rbx], al
test byte [rbp + 2*rbp], al
test byte [rsi + 2*rsi], al
test byte [rdi + 2*rdi], al
