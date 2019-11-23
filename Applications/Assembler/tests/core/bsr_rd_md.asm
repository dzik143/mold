use64
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
bsr cx,  word  [rip + 0x13]
bsr edx, dword [rip + 0x14]
bsr rsi, qword [rip + 0x15]

bsr cx,  word  [rip + 0x1235]
bsr edx, dword [rip + 0x1236]
bsr rsi, qword [rip + 0x1237]

bsr cx,  word  [rip + 0x12345679]
bsr edx, dword [rip + 0x1234567a]
bsr rsi, qword [rip + 0x1234567b]

; [rip + base]
bsr cx,  word  [rbx]
bsr edx, dword [rcx]
bsr rsi, qword [rdx]

; [rip + base + disp8]
bsr cx,  word  [rbx + 0x13]
bsr edx, dword [rcx + 0x14]
bsr rsi, qword [rdx + 0x15]

; [rip + base + disp32]
bsr cx,  word  [rbx + 0x1235]
bsr edx, dword [rcx + 0x1236]
bsr rsi, qword [rdx + 0x1237]

bsr cx,  word  [rbx + 0x12345679]
bsr edx, dword [rcx + 0x1234567a]
bsr rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
bsr cx,  word  [rbx + rcx]
bsr edx, dword [rcx + rsi]
bsr rsi, qword [rdx + rdi]

; [rip + base + scale * index]
bsr cx,  word  [rbx + 4 * rcx]
bsr edx, dword [rcx + 8 * rsi]
bsr rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
bsr cx,  word  [rbx + rcx + 0x13]
bsr edx, dword [rcx + rsi + 0x14]
bsr rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
bsr cx,  word  [rbx + rcx + 0x1235]
bsr edx, dword [rcx + rsi + 0x1236]
bsr rsi, qword [rdx + rdi + 0x1237]

bsr cx,  word  [rbx + rcx + 0x12345679]
bsr edx, dword [rcx + rsi + 0x1234567a]
bsr rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
bsr cx,  word  [rbx + 4 * rcx + 0x13]
bsr edx, dword [rcx + 8 * rsi + 0x14]
bsr rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
bsr cx,  word  [rbx + 4 * rcx + 0x1235]
bsr edx, dword [rcx + 8 * rsi + 0x1236]
bsr rsi, qword [rdx + 8 * rdi + 0x1237]

bsr cx,  word  [rbx + 4 * rcx + 0x12345679]
bsr edx, dword [rcx + 8 * rsi + 0x1234567a]
bsr rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
bsr cx,  word  [4 * rcx]
bsr edx, dword [8 * rsi]
bsr rsi, qword [8 * rdi]

; [scale * index + disp8]
bsr cx,  word  [4 * rcx + 0x13]
bsr edx, dword [8 * rsi + 0x14]
bsr rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
bsr cx,  word  [4 * rcx + 0x1235]
bsr edx, dword [8 * rsi + 0x1236]
bsr rsi, qword [8 * rdi + 0x1237]

bsr cx,  word  [4 * rcx + 0x12345679]
bsr edx, dword [8 * rsi + 0x1234567a]
bsr rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
bsr ax, word [rbp]
bsr ax, word [rbp + 0x12]
bsr ax, word [rbp + 0x1234]
bsr ax, word [rbp + 0x12345678]

bsr eax, dword [4 * rbp]
bsr eax, dword [4 * rbp + 0x12]
bsr eax, dword [4 * rbp + 0x1234]
bsr eax, dword [4 * rbp + 0x12345678]

bsr rax, qword [rbx + 4 * rbp]
bsr rax, qword [rbx + 4 * rbp + 0x12]
bsr rax, qword [rbx + 4 * rbp + 0x1234]
bsr rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
bsr ax, word [rsp]
bsr ax, word [rsp + 0x12]
bsr ax, word [rsp + 0x1234]
bsr ax, word [rsp + 0x12345678]

bsr eax, dword [rsp + rax]
bsr eax, dword [rsp + rbp]
bsr eax, dword [rsp + 2*rbp]
bsr eax, dword [rsp + 4*rbp]
bsr eax, dword [rsp + 8*rbp]

; use each register as indirect.
bsr ax, word [rax]
bsr ax, word [rcx]
bsr ax, word [rdx]
bsr ax, word [rbx]
bsr ax, word [rsp]
bsr ax, word [rbp]
bsr ax, word [rsi]
bsr ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
bsr eax, dword [rax + 2*rax]
bsr eax, dword [rcx + 2*rcx]
bsr eax, dword [rdx + 2*rdx]
bsr eax, dword [rbx + 2*rbx]
bsr eax, dword [rbp + 2*rbp]
bsr eax, dword [rsi + 2*rsi]
bsr eax, dword [rdi + 2*rdi]
