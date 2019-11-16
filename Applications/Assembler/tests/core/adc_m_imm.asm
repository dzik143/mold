use64

; [rip + disp32]
adc byte  [rip + 0x12], 0x13
adc word  [rip + 0x13], 0x1234
adc dword [rip + 0x14], 0x12345678
adc qword [rip + 0x15], 0x12345679

adc byte  [rip + 0x1234], 0x13
adc word  [rip + 0x1235], 0x1234
adc dword [rip + 0x1236], 0x12345678
adc qword [rip + 0x1237], 0x12345679

adc byte  [rip + 0x12345678], 0x13
adc word  [rip + 0x12345679], 0x1234
adc dword [rip + 0x1234567a], 0x12345678
adc qword [rip + 0x1234567b], 0x12345679

; [rip + base]
adc byte  [rax], 0x13
adc word  [rbx], 0x1234
adc dword [rcx], 0x12345678
adc qword [rdx], 0x12345679

; [rip + base + disp8]
adc byte  [rax + 0x12], 0x13
adc word  [rbx + 0x13], 0x1234
adc dword [rcx + 0x14], 0x12345678
adc qword [rdx + 0x15], 0x12345679

; [rip + base + disp32]
adc byte  [rax + 0x1234], 0x13
adc word  [rbx + 0x1235], 0x1234
adc dword [rcx + 0x1236], 0x12345678
adc qword [rdx + 0x1237], 0x12345679

adc byte  [rax + 0x12345678], 0x13
adc word  [rbx + 0x12345679], 0x1234
adc dword [rcx + 0x1234567a], 0x12345678
adc qword [rdx + 0x1234567b], 0x12345679

; [rip + base + index]
adc byte  [rax + rbx], 0x13
adc word  [rbx + rcx], 0x1234
adc dword [rcx + rsi], 0x12345678
adc qword [rdx + rdi], 0x12345679

; [rip + base + scale * index]
adc byte  [rax + 2 * rbx], 0x13
adc word  [rbx + 4 * rcx], 0x1234
adc dword [rcx + 8 * rsi], 0x12345678
adc qword [rdx + 8 * rdi], 0x12345679

; [rip + base + index + disp8]
adc byte  [rax + rbx + 0x12], 0x13
adc word  [rbx + rcx + 0x13], 0x1234
adc dword [rcx + rsi + 0x14], 0x12345678
adc qword [rdx + rdi + 0x15], 0x12345679

; [rip + base + index + disp32]
adc byte  [rax + rbx + 0x1234], 0x13
adc word  [rbx + rcx + 0x1235], 0x1234
adc dword [rcx + rsi + 0x1236], 0x12345678
adc qword [rdx + rdi + 0x1237], 0x12345679

adc byte  [rax + rbx + 0x12345678], 0x13
adc word  [rbx + rcx + 0x12345679], 0x1234
adc dword [rcx + rsi + 0x1234567a], 0x12345678
adc qword [rdx + rdi + 0x1234567b], 0x12345679

; [rip + base + scale * index + disp8]
adc byte  [rax + 2 * rbx + 0x12], 0x13
adc word  [rbx + 4 * rcx + 0x13], 0x1234
adc dword [rcx + 8 * rsi + 0x14], 0x12345678
adc qword [rdx + 8 * rdi + 0x15], 0x12345679

; [rip + base + scale * index + disp32]
adc byte  [rax + 2 * rbx + 0x1234], 0x13
adc word  [rbx + 4 * rcx + 0x1235], 0x1234
adc dword [rcx + 8 * rsi + 0x1236], 0x12345678
adc qword [rdx + 8 * rdi + 0x1237], 0x12345679

adc byte  [rax + 2 * rbx + 0x12345678], 0x13
adc word  [rbx + 4 * rcx + 0x12345679], 0x1234
adc dword [rcx + 8 * rsi + 0x1234567a], 0x12345678
adc qword [rdx + 8 * rdi + 0x1234567b], 0x12345679

; [scale * index]
adc byte  [2 * rbx], 0x13
adc word  [4 * rcx], 0x1234
adc dword [8 * rsi], 0x12345678
adc qword [8 * rdi], 0x12345679

; [scale * index + disp8]
adc byte  [2 * rbx + 0x12], 0x13
adc word  [4 * rcx + 0x13], 0x1234
adc dword [8 * rsi + 0x14], 0x12345678
adc qword [8 * rdi + 0x15], 0x12345679

; [scale * index + disp32]
adc byte  [2 * rbx + 0x1234], 0x13
adc word  [4 * rcx + 0x1235], 0x1234
adc dword [8 * rsi + 0x1236], 0x12345678
adc qword [8 * rdi + 0x1237], 0x12345679

adc byte  [2 * rbx + 0x12345678], 0x13
adc word  [4 * rcx + 0x12345679], 0x1234
adc dword [8 * rsi + 0x1234567a], 0x12345678
adc qword [8 * rdi + 0x1234567b], 0x12345679

; Use rbp as base or index.
adc byte [rbp], 0x12
adc byte [rbp + 0x12], 0x13
adc byte [rbp + 0x1234], 0x14
adc byte [rbp + 0x12345678], 0x15

adc byte [4 * rbp], 0x12
adc byte [4 * rbp + 0x12], 0x13
adc byte [4 * rbp + 0x1234], 0x14
adc byte [4 * rbp + 0x12345678], 0x15

adc byte [rbx + 4 * rbp], 0x12
adc byte [rbx + 4 * rbp + 0x12], 0x13
adc byte [rbx + 4 * rbp + 0x1234], 0x14
adc byte [rbx + 4 * rbp + 0x12345678], 0x15

; Use rsp as base.
adc byte [rsp], 0x12
adc byte [rsp + 0x12], 0x13
adc byte [rsp + 0x1234], 0x14
adc byte [rsp + 0x12345678], 0x15

adc byte [rsp + rax], 0x12
adc byte [rsp + rbp], 0x13
adc byte [rsp + 2*rbp], 0x14
adc byte [rsp + 4*rbp], 0x15
adc byte [rsp + 8*rbp], 0x16

; use each register as indirect.
adc byte [rax], 0x12
adc byte [rcx], 0x13
adc byte [rdx], 0x14
adc byte [rbx], 0x15
adc byte [rsp], 0x16
adc byte [rbp], 0x17
adc byte [rsi], 0x18
adc byte [rdi], 0x19

; use each register as indirect.
; rsp is forbidden as index
adc byte [rax + 2*rax], 0x12
adc byte [rcx + 2*rcx], 0x13
adc byte [rdx + 2*rdx], 0x14
adc byte [rbx + 2*rbx], 0x15
adc byte [rbp + 2*rbp], 0x16
adc byte [rsi + 2*rsi], 0x17
adc byte [rdi + 2*rdi], 0x18

