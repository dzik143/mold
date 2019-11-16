use64

; [rip + disp32]
sub byte  [rip + 0x12], 0x13
sub word  [rip + 0x13], 0x1234
sub dword [rip + 0x14], 0x12345678
sub qword [rip + 0x15], 0x12345679

sub byte  [rip + 0x1234], 0x13
sub word  [rip + 0x1235], 0x1234
sub dword [rip + 0x1236], 0x12345678
sub qword [rip + 0x1237], 0x12345679

sub byte  [rip + 0x12345678], 0x13
sub word  [rip + 0x12345679], 0x1234
sub dword [rip + 0x1234567a], 0x12345678
sub qword [rip + 0x1234567b], 0x12345679

; [rip + base]
sub byte  [rax], 0x13
sub word  [rbx], 0x1234
sub dword [rcx], 0x12345678
sub qword [rdx], 0x12345679

; [rip + base + disp8]
sub byte  [rax + 0x12], 0x13
sub word  [rbx + 0x13], 0x1234
sub dword [rcx + 0x14], 0x12345678
sub qword [rdx + 0x15], 0x12345679

; [rip + base + disp32]
sub byte  [rax + 0x1234], 0x13
sub word  [rbx + 0x1235], 0x1234
sub dword [rcx + 0x1236], 0x12345678
sub qword [rdx + 0x1237], 0x12345679

sub byte  [rax + 0x12345678], 0x13
sub word  [rbx + 0x12345679], 0x1234
sub dword [rcx + 0x1234567a], 0x12345678
sub qword [rdx + 0x1234567b], 0x12345679

; [rip + base + index]
sub byte  [rax + rbx], 0x13
sub word  [rbx + rcx], 0x1234
sub dword [rcx + rsi], 0x12345678
sub qword [rdx + rdi], 0x12345679

; [rip + base + scale * index]
sub byte  [rax + 2 * rbx], 0x13
sub word  [rbx + 4 * rcx], 0x1234
sub dword [rcx + 8 * rsi], 0x12345678
sub qword [rdx + 8 * rdi], 0x12345679

; [rip + base + index + disp8]
sub byte  [rax + rbx + 0x12], 0x13
sub word  [rbx + rcx + 0x13], 0x1234
sub dword [rcx + rsi + 0x14], 0x12345678
sub qword [rdx + rdi + 0x15], 0x12345679

; [rip + base + index + disp32]
sub byte  [rax + rbx + 0x1234], 0x13
sub word  [rbx + rcx + 0x1235], 0x1234
sub dword [rcx + rsi + 0x1236], 0x12345678
sub qword [rdx + rdi + 0x1237], 0x12345679

sub byte  [rax + rbx + 0x12345678], 0x13
sub word  [rbx + rcx + 0x12345679], 0x1234
sub dword [rcx + rsi + 0x1234567a], 0x12345678
sub qword [rdx + rdi + 0x1234567b], 0x12345679

; [rip + base + scale * index + disp8]
sub byte  [rax + 2 * rbx + 0x12], 0x13
sub word  [rbx + 4 * rcx + 0x13], 0x1234
sub dword [rcx + 8 * rsi + 0x14], 0x12345678
sub qword [rdx + 8 * rdi + 0x15], 0x12345679

; [rip + base + scale * index + disp32]
sub byte  [rax + 2 * rbx + 0x1234], 0x13
sub word  [rbx + 4 * rcx + 0x1235], 0x1234
sub dword [rcx + 8 * rsi + 0x1236], 0x12345678
sub qword [rdx + 8 * rdi + 0x1237], 0x12345679

sub byte  [rax + 2 * rbx + 0x12345678], 0x13
sub word  [rbx + 4 * rcx + 0x12345679], 0x1234
sub dword [rcx + 8 * rsi + 0x1234567a], 0x12345678
sub qword [rdx + 8 * rdi + 0x1234567b], 0x12345679

; [scale * index]
sub byte  [2 * rbx], 0x13
sub word  [4 * rcx], 0x1234
sub dword [8 * rsi], 0x12345678
sub qword [8 * rdi], 0x12345679

; [scale * index + disp8]
sub byte  [2 * rbx + 0x12], 0x13
sub word  [4 * rcx + 0x13], 0x1234
sub dword [8 * rsi + 0x14], 0x12345678
sub qword [8 * rdi + 0x15], 0x12345679

; [scale * index + disp32]
sub byte  [2 * rbx + 0x1234], 0x13
sub word  [4 * rcx + 0x1235], 0x1234
sub dword [8 * rsi + 0x1236], 0x12345678
sub qword [8 * rdi + 0x1237], 0x12345679

sub byte  [2 * rbx + 0x12345678], 0x13
sub word  [4 * rcx + 0x12345679], 0x1234
sub dword [8 * rsi + 0x1234567a], 0x12345678
sub qword [8 * rdi + 0x1234567b], 0x12345679

; Use rbp as base or index.
sub byte [rbp], 0x12
sub byte [rbp + 0x12], 0x13
sub byte [rbp + 0x1234], 0x14
sub byte [rbp + 0x12345678], 0x15

sub byte [4 * rbp], 0x12
sub byte [4 * rbp + 0x12], 0x13
sub byte [4 * rbp + 0x1234], 0x14
sub byte [4 * rbp + 0x12345678], 0x15

sub byte [rbx + 4 * rbp], 0x12
sub byte [rbx + 4 * rbp + 0x12], 0x13
sub byte [rbx + 4 * rbp + 0x1234], 0x14
sub byte [rbx + 4 * rbp + 0x12345678], 0x15

; Use rsp as base.
sub byte [rsp], 0x12
sub byte [rsp + 0x12], 0x13
sub byte [rsp + 0x1234], 0x14
sub byte [rsp + 0x12345678], 0x15

sub byte [rsp + rax], 0x12
sub byte [rsp + rbp], 0x13
sub byte [rsp + 2*rbp], 0x14
sub byte [rsp + 4*rbp], 0x15
sub byte [rsp + 8*rbp], 0x16

; use each register as indirect.
sub byte [rax], 0x12
sub byte [rcx], 0x13
sub byte [rdx], 0x14
sub byte [rbx], 0x15
sub byte [rsp], 0x16
sub byte [rbp], 0x17
sub byte [rsi], 0x18
sub byte [rdi], 0x19

; use each register as indirect.
; rsp is forbidden as index
sub byte [rax + 2*rax], 0x12
sub byte [rcx + 2*rcx], 0x13
sub byte [rdx + 2*rdx], 0x14
sub byte [rbx + 2*rbx], 0x15
sub byte [rbp + 2*rbp], 0x16
sub byte [rsi + 2*rsi], 0x17
sub byte [rdi + 2*rdi], 0x18

