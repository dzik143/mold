use64

; [rip + disp32]
cmp byte  [rip + 0x12], 0x13
cmp word  [rip + 0x13], 0x1234
cmp dword [rip + 0x14], 0x12345678
cmp qword [rip + 0x15], 0x12345679

cmp byte  [rip + 0x1234], 0x13
cmp word  [rip + 0x1235], 0x1234
cmp dword [rip + 0x1236], 0x12345678
cmp qword [rip + 0x1237], 0x12345679

cmp byte  [rip + 0x12345678], 0x13
cmp word  [rip + 0x12345679], 0x1234
cmp dword [rip + 0x1234567a], 0x12345678
cmp qword [rip + 0x1234567b], 0x12345679

; [rip + base]
cmp byte  [rax], 0x13
cmp word  [rbx], 0x1234
cmp dword [rcx], 0x12345678
cmp qword [rdx], 0x12345679

; [rip + base + disp8]
cmp byte  [rax + 0x12], 0x13
cmp word  [rbx + 0x13], 0x1234
cmp dword [rcx + 0x14], 0x12345678
cmp qword [rdx + 0x15], 0x12345679

; [rip + base + disp32]
cmp byte  [rax + 0x1234], 0x13
cmp word  [rbx + 0x1235], 0x1234
cmp dword [rcx + 0x1236], 0x12345678
cmp qword [rdx + 0x1237], 0x12345679

cmp byte  [rax + 0x12345678], 0x13
cmp word  [rbx + 0x12345679], 0x1234
cmp dword [rcx + 0x1234567a], 0x12345678
cmp qword [rdx + 0x1234567b], 0x12345679

; [rip + base + index]
cmp byte  [rax + rbx], 0x13
cmp word  [rbx + rcx], 0x1234
cmp dword [rcx + rsi], 0x12345678
cmp qword [rdx + rdi], 0x12345679

; [rip + base + scale * index]
cmp byte  [rax + 2 * rbx], 0x13
cmp word  [rbx + 4 * rcx], 0x1234
cmp dword [rcx + 8 * rsi], 0x12345678
cmp qword [rdx + 8 * rdi], 0x12345679

; [rip + base + index + disp8]
cmp byte  [rax + rbx + 0x12], 0x13
cmp word  [rbx + rcx + 0x13], 0x1234
cmp dword [rcx + rsi + 0x14], 0x12345678
cmp qword [rdx + rdi + 0x15], 0x12345679

; [rip + base + index + disp32]
cmp byte  [rax + rbx + 0x1234], 0x13
cmp word  [rbx + rcx + 0x1235], 0x1234
cmp dword [rcx + rsi + 0x1236], 0x12345678
cmp qword [rdx + rdi + 0x1237], 0x12345679

cmp byte  [rax + rbx + 0x12345678], 0x13
cmp word  [rbx + rcx + 0x12345679], 0x1234
cmp dword [rcx + rsi + 0x1234567a], 0x12345678
cmp qword [rdx + rdi + 0x1234567b], 0x12345679

; [rip + base + scale * index + disp8]
cmp byte  [rax + 2 * rbx + 0x12], 0x13
cmp word  [rbx + 4 * rcx + 0x13], 0x1234
cmp dword [rcx + 8 * rsi + 0x14], 0x12345678
cmp qword [rdx + 8 * rdi + 0x15], 0x12345679

; [rip + base + scale * index + disp32]
cmp byte  [rax + 2 * rbx + 0x1234], 0x13
cmp word  [rbx + 4 * rcx + 0x1235], 0x1234
cmp dword [rcx + 8 * rsi + 0x1236], 0x12345678
cmp qword [rdx + 8 * rdi + 0x1237], 0x12345679

cmp byte  [rax + 2 * rbx + 0x12345678], 0x13
cmp word  [rbx + 4 * rcx + 0x12345679], 0x1234
cmp dword [rcx + 8 * rsi + 0x1234567a], 0x12345678
cmp qword [rdx + 8 * rdi + 0x1234567b], 0x12345679

; [scale * index]
cmp byte  [2 * rbx], 0x13
cmp word  [4 * rcx], 0x1234
cmp dword [8 * rsi], 0x12345678
cmp qword [8 * rdi], 0x12345679

; [scale * index + disp8]
cmp byte  [2 * rbx + 0x12], 0x13
cmp word  [4 * rcx + 0x13], 0x1234
cmp dword [8 * rsi + 0x14], 0x12345678
cmp qword [8 * rdi + 0x15], 0x12345679

; [scale * index + disp32]
cmp byte  [2 * rbx + 0x1234], 0x13
cmp word  [4 * rcx + 0x1235], 0x1234
cmp dword [8 * rsi + 0x1236], 0x12345678
cmp qword [8 * rdi + 0x1237], 0x12345679

cmp byte  [2 * rbx + 0x12345678], 0x13
cmp word  [4 * rcx + 0x12345679], 0x1234
cmp dword [8 * rsi + 0x1234567a], 0x12345678
cmp qword [8 * rdi + 0x1234567b], 0x12345679

; Use rbp as base or index.
cmp byte [rbp], 0x12
cmp byte [rbp + 0x12], 0x13
cmp byte [rbp + 0x1234], 0x14
cmp byte [rbp + 0x12345678], 0x15

cmp byte [4 * rbp], 0x12
cmp byte [4 * rbp + 0x12], 0x13
cmp byte [4 * rbp + 0x1234], 0x14
cmp byte [4 * rbp + 0x12345678], 0x15

cmp byte [rbx + 4 * rbp], 0x12
cmp byte [rbx + 4 * rbp + 0x12], 0x13
cmp byte [rbx + 4 * rbp + 0x1234], 0x14
cmp byte [rbx + 4 * rbp + 0x12345678], 0x15

; Use rsp as base.
cmp byte [rsp], 0x12
cmp byte [rsp + 0x12], 0x13
cmp byte [rsp + 0x1234], 0x14
cmp byte [rsp + 0x12345678], 0x15

cmp byte [rsp + rax], 0x12
cmp byte [rsp + rbp], 0x13
cmp byte [rsp + 2*rbp], 0x14
cmp byte [rsp + 4*rbp], 0x15
cmp byte [rsp + 8*rbp], 0x16

; use each register as indirect.
cmp byte [rax], 0x12
cmp byte [rcx], 0x13
cmp byte [rdx], 0x14
cmp byte [rbx], 0x15
cmp byte [rsp], 0x16
cmp byte [rbp], 0x17
cmp byte [rsi], 0x18
cmp byte [rdi], 0x19

; use each register as indirect.
; rsp is forbidden as index
cmp byte [rax + 2*rax], 0x12
cmp byte [rcx + 2*rcx], 0x13
cmp byte [rdx + 2*rdx], 0x14
cmp byte [rbx + 2*rbx], 0x15
cmp byte [rbp + 2*rbp], 0x16
cmp byte [rsi + 2*rsi], 0x17
cmp byte [rdi + 2*rdi], 0x18

