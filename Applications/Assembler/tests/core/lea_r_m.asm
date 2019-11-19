use64

; [rip + disp32]
lea cx,  word  [rip + 0x13]
lea edx, dword [rip + 0x14]
lea rsi, qword [rip + 0x15]

lea cx,  word  [rip + 0x1235]
lea edx, dword [rip + 0x1236]
lea rsi, qword [rip + 0x1237]

lea cx,  word  [rip + 0x12345679]
lea edx, dword [rip + 0x1234567a]
lea rsi, qword [rip + 0x1234567b]

; [rip + base]
lea cx,  word  [rbx]
lea edx, dword [rcx]
lea rsi, qword [rdx]

; [rip + base + disp8]
lea cx,  word  [rbx + 0x13]
lea edx, dword [rcx + 0x14]
lea rsi, qword [rdx + 0x15]

; [rip + base + disp32]
lea cx,  word  [rbx + 0x1235]
lea edx, dword [rcx + 0x1236]
lea rsi, qword [rdx + 0x1237]

lea cx,  word  [rbx + 0x12345679]
lea edx, dword [rcx + 0x1234567a]
lea rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
lea cx,  word  [rbx + rcx]
lea edx, dword [rcx + rsi]
lea rsi, qword [rdx + rdi]

; [rip + base + scale * index]
lea cx,  word  [rbx + 4 * rcx]
lea edx, dword [rcx + 8 * rsi]
lea rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
lea cx,  word  [rbx + rcx + 0x13]
lea edx, dword [rcx + rsi + 0x14]
lea rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
lea cx,  word  [rbx + rcx + 0x1235]
lea edx, dword [rcx + rsi + 0x1236]
lea rsi, qword [rdx + rdi + 0x1237]

lea cx,  word  [rbx + rcx + 0x12345679]
lea edx, dword [rcx + rsi + 0x1234567a]
lea rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
lea cx,  word  [rbx + 4 * rcx + 0x13]
lea edx, dword [rcx + 8 * rsi + 0x14]
lea rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
lea cx,  word  [rbx + 4 * rcx + 0x1235]
lea edx, dword [rcx + 8 * rsi + 0x1236]
lea rsi, qword [rdx + 8 * rdi + 0x1237]

lea cx,  word  [rbx + 4 * rcx + 0x12345679]
lea edx, dword [rcx + 8 * rsi + 0x1234567a]
lea rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
lea cx,  word  [4 * rcx]
lea edx, dword [8 * rsi]
lea rsi, qword [8 * rdi]

; [scale * index + disp8]
lea cx,  word  [4 * rcx + 0x13]
lea edx, dword [8 * rsi + 0x14]
lea rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
lea cx,  word  [4 * rcx + 0x1235]
lea edx, dword [8 * rsi + 0x1236]
lea rsi, qword [8 * rdi + 0x1237]

lea cx,  word  [4 * rcx + 0x12345679]
lea edx, dword [8 * rsi + 0x1234567a]
lea rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
lea rax, qword [rbp]
lea rax, qword [rbp + 0x12]
lea rax, qword [rbp + 0x1234]
lea rax, qword [rbp + 0x12345678]

lea rax, qword [4 * rbp]
lea rax, qword [4 * rbp + 0x12]
lea rax, qword [4 * rbp + 0x1234]
lea rax, qword [4 * rbp + 0x12345678]

lea rax, qword [rbx + 4 * rbp]
lea rax, qword [rbx + 4 * rbp + 0x12]
lea rax, qword [rbx + 4 * rbp + 0x1234]
lea rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
lea rax, qword [rsp]
lea rax, qword [rsp + 0x12]
lea rax, qword [rsp + 0x1234]
lea rax, qword [rsp + 0x12345678]

lea rax, qword [rsp + rax]
lea rax, qword [rsp + rbp]
lea rax, qword [rsp + 2*rbp]
lea rax, qword [rsp + 4*rbp]
lea rax, qword [rsp + 8*rbp]

; use each register as indirect.
lea rax, qword [rax]
lea rax, qword [rcx]
lea rax, qword [rdx]
lea rax, qword [rbx]
lea rax, qword [rsp]
lea rax, qword [rbp]
lea rax, qword [rsi]
lea rax, qword [rdi]

; use each register as indirect.
; rsp is forbidden as index
lea rax, qword [rax + 2*rax]
lea rax, qword [rcx + 2*rcx]
lea rax, qword [rdx + 2*rdx]
lea rax, qword [rbx + 2*rbx]
lea rax, qword [rbp + 2*rbp]
lea rax, qword [rsi + 2*rsi]
lea rax, qword [rdi + 2*rdi]
