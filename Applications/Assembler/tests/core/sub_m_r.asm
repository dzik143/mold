use64

; [rip + disp32]
sub byte  [rip + 0x12], bl
sub word  [rip + 0x13], cx
sub dword [rip + 0x14], edx
sub qword [rip + 0x15], rsi

sub byte  [rip + 0x1234], bl
sub word  [rip + 0x1235], cx
sub dword [rip + 0x1236], edx
sub qword [rip + 0x1237], rsi

sub byte  [rip + 0x12345678], bl
sub word  [rip + 0x12345679], cx
sub dword [rip + 0x1234567a], edx
sub qword [rip + 0x1234567b], rsi

; [rip + base]
sub byte  [rax], bl
sub word  [rbx], cx
sub dword [rcx], edx
sub qword [rdx], rsi

; [rip + base + disp8]
sub byte  [rax + 0x12], bl
sub word  [rbx + 0x13], cx
sub dword [rcx + 0x14], edx
sub qword [rdx + 0x15], rsi

; [rip + base + disp32]
sub byte  [rax + 0x1234], bl
sub word  [rbx + 0x1235], cx
sub dword [rcx + 0x1236], edx
sub qword [rdx + 0x1237], rsi

sub byte  [rax + 0x12345678], bl
sub word  [rbx + 0x12345679], cx
sub dword [rcx + 0x1234567a], edx
sub qword [rdx + 0x1234567b], rsi

; [rip + base + index]
sub byte  [rax + rbx], bl
sub word  [rbx + rcx], cx
sub dword [rcx + rsi], edx
sub qword [rdx + rdi], rsi

; [rip + base + scale * index]
sub byte  [rax + 2 * rbx], bl
sub word  [rbx + 4 * rcx], cx
sub dword [rcx + 8 * rsi], edx
sub qword [rdx + 8 * rdi], rsi

; [rip + base + index + disp8]
sub byte  [rax + rbx + 0x12], bl
sub word  [rbx + rcx + 0x13], cx
sub dword [rcx + rsi + 0x14], edx
sub qword [rdx + rdi + 0x15], rsi

; [rip + base + index + disp32]
sub byte  [rax + rbx + 0x1234], bl
sub word  [rbx + rcx + 0x1235], cx
sub dword [rcx + rsi + 0x1236], edx
sub qword [rdx + rdi + 0x1237], rsi

sub byte  [rax + rbx + 0x12345678], bl
sub word  [rbx + rcx + 0x12345679], cx
sub dword [rcx + rsi + 0x1234567a], edx
sub qword [rdx + rdi + 0x1234567b], rsi

; [rip + base + scale * index + disp8]
sub byte  [rax + 2 * rbx + 0x12], bl
sub word  [rbx + 4 * rcx + 0x13], cx
sub dword [rcx + 8 * rsi + 0x14], edx
sub qword [rdx + 8 * rdi + 0x15], rsi

; [rip + base + scale * index + disp32]
sub byte  [rax + 2 * rbx + 0x1234], bl
sub word  [rbx + 4 * rcx + 0x1235], cx
sub dword [rcx + 8 * rsi + 0x1236], edx
sub qword [rdx + 8 * rdi + 0x1237], rsi

sub byte  [rax + 2 * rbx + 0x12345678], bl
sub word  [rbx + 4 * rcx + 0x12345679], cx
sub dword [rcx + 8 * rsi + 0x1234567a], edx
sub qword [rdx + 8 * rdi + 0x1234567b], rsi

; [scale * index]
sub byte  [2 * rbx], bl
sub word  [4 * rcx], cx
sub dword [8 * rsi], edx
sub qword [8 * rdi], rsi

; [scale * index + disp8]
sub byte  [2 * rbx + 0x12], bl
sub word  [4 * rcx + 0x13], cx
sub dword [8 * rsi + 0x14], edx
sub qword [8 * rdi + 0x15], rsi

; [scale * index + disp32]
sub byte  [2 * rbx + 0x1234], bl
sub word  [4 * rcx + 0x1235], cx
sub dword [8 * rsi + 0x1236], edx
sub qword [8 * rdi + 0x1237], rsi

sub byte  [2 * rbx + 0x12345678], bl
sub word  [4 * rcx + 0x12345679], cx
sub dword [8 * rsi + 0x1234567a], edx
sub qword [8 * rdi + 0x1234567b], rsi

; Use rbp as base or index.
sub byte [rbp], al
sub byte [rbp + 0x12], al
sub byte [rbp + 0x1234], al
sub byte [rbp + 0x12345678], al

sub byte [4 * rbp], al
sub byte [4 * rbp + 0x12], al
sub byte [4 * rbp + 0x1234], al
sub byte [4 * rbp + 0x12345678], al

sub byte [rbx + 4 * rbp], al
sub byte [rbx + 4 * rbp + 0x12], al
sub byte [rbx + 4 * rbp + 0x1234], al
sub byte [rbx + 4 * rbp + 0x12345678], al

; Use rsp as base.
sub byte [rsp], al
sub byte [rsp + 0x12], al
sub byte [rsp + 0x1234], al
sub byte [rsp + 0x12345678], al

sub byte [rsp + rax], al
sub byte [rsp + rbp], al
sub byte [rsp + 2*rbp], al
sub byte [rsp + 4*rbp], al
sub byte [rsp + 8*rbp], al

; use each register as indirect.
sub byte [rax], al
sub byte [rcx], al
sub byte [rdx], al
sub byte [rbx], al
sub byte [rsp], al
sub byte [rbp], al
sub byte [rsi], al
sub byte [rdi], al

; use each register as indirect.
; rsp is forbidden as index
sub byte [rax + 2*rax], al
sub byte [rcx + 2*rcx], al
sub byte [rdx + 2*rdx], al
sub byte [rbx + 2*rbx], al
sub byte [rbp + 2*rbp], al
sub byte [rsi + 2*rsi], al
sub byte [rdi + 2*rdi], al
