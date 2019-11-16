use64

; [rip + disp32]
test byte  [rip + 0x12], 0x13
test word  [rip + 0x13], 0x1234
test dword [rip + 0x14], 0x12345678
test qword [rip + 0x15], 0x12345679

test byte  [rip + 0x1234], 0x13
test word  [rip + 0x1235], 0x1234
test dword [rip + 0x1236], 0x12345678
test qword [rip + 0x1237], 0x12345679

test byte  [rip + 0x12345678], 0x13
test word  [rip + 0x12345679], 0x1234
test dword [rip + 0x1234567a], 0x12345678
test qword [rip + 0x1234567b], 0x12345679

; [rip + base]
test byte  [rax], 0x13
test word  [rbx], 0x1234
test dword [rcx], 0x12345678
test qword [rdx], 0x12345679

; [rip + base + disp8]
test byte  [rax + 0x12], 0x13
test word  [rbx + 0x13], 0x1234
test dword [rcx + 0x14], 0x12345678
test qword [rdx + 0x15], 0x12345679

; [rip + base + disp32]
test byte  [rax + 0x1234], 0x13
test word  [rbx + 0x1235], 0x1234
test dword [rcx + 0x1236], 0x12345678
test qword [rdx + 0x1237], 0x12345679

test byte  [rax + 0x12345678], 0x13
test word  [rbx + 0x12345679], 0x1234
test dword [rcx + 0x1234567a], 0x12345678
test qword [rdx + 0x1234567b], 0x12345679

; [rip + base + index]
test byte  [rax + rbx], 0x13
test word  [rbx + rcx], 0x1234
test dword [rcx + rsi], 0x12345678
test qword [rdx + rdi], 0x12345679

; [rip + base + scale * index]
test byte  [rax + 2 * rbx], 0x13
test word  [rbx + 4 * rcx], 0x1234
test dword [rcx + 8 * rsi], 0x12345678
test qword [rdx + 8 * rdi], 0x12345679

; [rip + base + index + disp8]
test byte  [rax + rbx + 0x12], 0x13
test word  [rbx + rcx + 0x13], 0x1234
test dword [rcx + rsi + 0x14], 0x12345678
test qword [rdx + rdi + 0x15], 0x12345679

; [rip + base + index + disp32]
test byte  [rax + rbx + 0x1234], 0x13
test word  [rbx + rcx + 0x1235], 0x1234
test dword [rcx + rsi + 0x1236], 0x12345678
test qword [rdx + rdi + 0x1237], 0x12345679

test byte  [rax + rbx + 0x12345678], 0x13
test word  [rbx + rcx + 0x12345679], 0x1234
test dword [rcx + rsi + 0x1234567a], 0x12345678
test qword [rdx + rdi + 0x1234567b], 0x12345679

; [rip + base + scale * index + disp8]
test byte  [rax + 2 * rbx + 0x12], 0x13
test word  [rbx + 4 * rcx + 0x13], 0x1234
test dword [rcx + 8 * rsi + 0x14], 0x12345678
test qword [rdx + 8 * rdi + 0x15], 0x12345679

; [rip + base + scale * index + disp32]
test byte  [rax + 2 * rbx + 0x1234], 0x13
test word  [rbx + 4 * rcx + 0x1235], 0x1234
test dword [rcx + 8 * rsi + 0x1236], 0x12345678
test qword [rdx + 8 * rdi + 0x1237], 0x12345679

test byte  [rax + 2 * rbx + 0x12345678], 0x13
test word  [rbx + 4 * rcx + 0x12345679], 0x1234
test dword [rcx + 8 * rsi + 0x1234567a], 0x12345678
test qword [rdx + 8 * rdi + 0x1234567b], 0x12345679

; [scale * index]
test byte  [2 * rbx], 0x13
test word  [4 * rcx], 0x1234
test dword [8 * rsi], 0x12345678
test qword [8 * rdi], 0x12345679

; [scale * index + disp8]
test byte  [2 * rbx + 0x12], 0x13
test word  [4 * rcx + 0x13], 0x1234
test dword [8 * rsi + 0x14], 0x12345678
test qword [8 * rdi + 0x15], 0x12345679

; [scale * index + disp32]
test byte  [2 * rbx + 0x1234], 0x13
test word  [4 * rcx + 0x1235], 0x1234
test dword [8 * rsi + 0x1236], 0x12345678
test qword [8 * rdi + 0x1237], 0x12345679

test byte  [2 * rbx + 0x12345678], 0x13
test word  [4 * rcx + 0x12345679], 0x1234
test dword [8 * rsi + 0x1234567a], 0x12345678
test qword [8 * rdi + 0x1234567b], 0x12345679

; Use rbp as base or index.
test byte [rbp], 0x12
test byte [rbp + 0x12], 0x13
test byte [rbp + 0x1234], 0x14
test byte [rbp + 0x12345678], 0x15

test byte [4 * rbp], 0x12
test byte [4 * rbp + 0x12], 0x13
test byte [4 * rbp + 0x1234], 0x14
test byte [4 * rbp + 0x12345678], 0x15

test byte [rbx + 4 * rbp], 0x12
test byte [rbx + 4 * rbp + 0x12], 0x13
test byte [rbx + 4 * rbp + 0x1234], 0x14
test byte [rbx + 4 * rbp + 0x12345678], 0x15

; Use rsp as base.
test byte [rsp], 0x12
test byte [rsp + 0x12], 0x13
test byte [rsp + 0x1234], 0x14
test byte [rsp + 0x12345678], 0x15

test byte [rsp + rax], 0x12
test byte [rsp + rbp], 0x13
test byte [rsp + 2*rbp], 0x14
test byte [rsp + 4*rbp], 0x15
test byte [rsp + 8*rbp], 0x16

; use each register as indirect.
test byte [rax], 0x12
test byte [rcx], 0x13
test byte [rdx], 0x14
test byte [rbx], 0x15
test byte [rsp], 0x16
test byte [rbp], 0x17
test byte [rsi], 0x18
test byte [rdi], 0x19

; use each register as indirect.
; rsp is forbidden as index
test byte [rax + 2*rax], 0x12
test byte [rcx + 2*rcx], 0x13
test byte [rdx + 2*rdx], 0x14
test byte [rbx + 2*rbx], 0x15
test byte [rbp + 2*rbp], 0x16
test byte [rsi + 2*rsi], 0x17
test byte [rdi + 2*rdi], 0x18

