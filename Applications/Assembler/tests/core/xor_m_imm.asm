use64

; [rip + disp32]
xor byte  [rip + 0x12], 0x13
xor word  [rip + 0x13], 0x1234
xor dword [rip + 0x14], 0x12345678
xor qword [rip + 0x15], 0x12345679

xor byte  [rip + 0x1234], 0x13
xor word  [rip + 0x1235], 0x1234
xor dword [rip + 0x1236], 0x12345678
xor qword [rip + 0x1237], 0x12345679

xor byte  [rip + 0x12345678], 0x13
xor word  [rip + 0x12345679], 0x1234
xor dword [rip + 0x1234567a], 0x12345678
xor qword [rip + 0x1234567b], 0x12345679

; [rip + base]
xor byte  [rax], 0x13
xor word  [rbx], 0x1234
xor dword [rcx], 0x12345678
xor qword [rdx], 0x12345679

; [rip + base + disp8]
xor byte  [rax + 0x12], 0x13
xor word  [rbx + 0x13], 0x1234
xor dword [rcx + 0x14], 0x12345678
xor qword [rdx + 0x15], 0x12345679

; [rip + base + disp32]
xor byte  [rax + 0x1234], 0x13
xor word  [rbx + 0x1235], 0x1234
xor dword [rcx + 0x1236], 0x12345678
xor qword [rdx + 0x1237], 0x12345679

xor byte  [rax + 0x12345678], 0x13
xor word  [rbx + 0x12345679], 0x1234
xor dword [rcx + 0x1234567a], 0x12345678
xor qword [rdx + 0x1234567b], 0x12345679

; [rip + base + index]
xor byte  [rax + rbx], 0x13
xor word  [rbx + rcx], 0x1234
xor dword [rcx + rsi], 0x12345678
xor qword [rdx + rdi], 0x12345679

; [rip + base + scale * index]
xor byte  [rax + 2 * rbx], 0x13
xor word  [rbx + 4 * rcx], 0x1234
xor dword [rcx + 8 * rsi], 0x12345678
xor qword [rdx + 8 * rdi], 0x12345679

; [rip + base + index + disp8]
xor byte  [rax + rbx + 0x12], 0x13
xor word  [rbx + rcx + 0x13], 0x1234
xor dword [rcx + rsi + 0x14], 0x12345678
xor qword [rdx + rdi + 0x15], 0x12345679

; [rip + base + index + disp32]
xor byte  [rax + rbx + 0x1234], 0x13
xor word  [rbx + rcx + 0x1235], 0x1234
xor dword [rcx + rsi + 0x1236], 0x12345678
xor qword [rdx + rdi + 0x1237], 0x12345679

xor byte  [rax + rbx + 0x12345678], 0x13
xor word  [rbx + rcx + 0x12345679], 0x1234
xor dword [rcx + rsi + 0x1234567a], 0x12345678
xor qword [rdx + rdi + 0x1234567b], 0x12345679

; [rip + base + scale * index + disp8]
xor byte  [rax + 2 * rbx + 0x12], 0x13
xor word  [rbx + 4 * rcx + 0x13], 0x1234
xor dword [rcx + 8 * rsi + 0x14], 0x12345678
xor qword [rdx + 8 * rdi + 0x15], 0x12345679

; [rip + base + scale * index + disp32]
xor byte  [rax + 2 * rbx + 0x1234], 0x13
xor word  [rbx + 4 * rcx + 0x1235], 0x1234
xor dword [rcx + 8 * rsi + 0x1236], 0x12345678
xor qword [rdx + 8 * rdi + 0x1237], 0x12345679

xor byte  [rax + 2 * rbx + 0x12345678], 0x13
xor word  [rbx + 4 * rcx + 0x12345679], 0x1234
xor dword [rcx + 8 * rsi + 0x1234567a], 0x12345678
xor qword [rdx + 8 * rdi + 0x1234567b], 0x12345679

; [scale * index]
xor byte  [2 * rbx], 0x13
xor word  [4 * rcx], 0x1234
xor dword [8 * rsi], 0x12345678
xor qword [8 * rdi], 0x12345679

; [scale * index + disp8]
xor byte  [2 * rbx + 0x12], 0x13
xor word  [4 * rcx + 0x13], 0x1234
xor dword [8 * rsi + 0x14], 0x12345678
xor qword [8 * rdi + 0x15], 0x12345679

; [scale * index + disp32]
xor byte  [2 * rbx + 0x1234], 0x13
xor word  [4 * rcx + 0x1235], 0x1234
xor dword [8 * rsi + 0x1236], 0x12345678
xor qword [8 * rdi + 0x1237], 0x12345679

xor byte  [2 * rbx + 0x12345678], 0x13
xor word  [4 * rcx + 0x12345679], 0x1234
xor dword [8 * rsi + 0x1234567a], 0x12345678
xor qword [8 * rdi + 0x1234567b], 0x12345679

; Use rbp as base or index.
xor byte [rbp], 0x12
xor byte [rbp + 0x12], 0x13
xor byte [rbp + 0x1234], 0x14
xor byte [rbp + 0x12345678], 0x15

xor byte [4 * rbp], 0x12
xor byte [4 * rbp + 0x12], 0x13
xor byte [4 * rbp + 0x1234], 0x14
xor byte [4 * rbp + 0x12345678], 0x15

xor byte [rbx + 4 * rbp], 0x12
xor byte [rbx + 4 * rbp + 0x12], 0x13
xor byte [rbx + 4 * rbp + 0x1234], 0x14
xor byte [rbx + 4 * rbp + 0x12345678], 0x15

; Use rsp as base.
xor byte [rsp], 0x12
xor byte [rsp + 0x12], 0x13
xor byte [rsp + 0x1234], 0x14
xor byte [rsp + 0x12345678], 0x15

xor byte [rsp + rax], 0x12
xor byte [rsp + rbp], 0x13
xor byte [rsp + 2*rbp], 0x14
xor byte [rsp + 4*rbp], 0x15
xor byte [rsp + 8*rbp], 0x16

; use each register as indirect.
xor byte [rax], 0x12
xor byte [rcx], 0x13
xor byte [rdx], 0x14
xor byte [rbx], 0x15
xor byte [rsp], 0x16
xor byte [rbp], 0x17
xor byte [rsi], 0x18
xor byte [rdi], 0x19

; use each register as indirect.
; rsp is forbidden as index
xor byte [rax + 2*rax], 0x12
xor byte [rcx + 2*rcx], 0x13
xor byte [rdx + 2*rdx], 0x14
xor byte [rbx + 2*rbx], 0x15
xor byte [rbp + 2*rbp], 0x16
xor byte [rsi + 2*rsi], 0x17
xor byte [rdi + 2*rdi], 0x18

