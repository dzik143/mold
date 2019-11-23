use64
; ------------------------------------------------------------------------------
; opcode md
; ------------------------------------------------------------------------------
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
fistp word  [rip + 0x13]
fistp dword [rip + 0x14]
fistp qword [rip + 0x15]

fistp word  [rip + 0x1235]
fistp dword [rip + 0x1236]
fistp qword [rip + 0x1237]

fistp word  [rip + 0x12345679]
fistp dword [rip + 0x1234567a]
fistp qword [rip + 0x1234567b]

; [rip + base]
fistp word  [rbx]
fistp dword [rcx]
fistp qword [rdx]

; [rip + base + disp8]
fistp word  [rbx + 0x13]
fistp dword [rcx + 0x14]
fistp qword [rdx + 0x15]

; [rip + base + disp32]
fistp word  [rbx + 0x1235]
fistp dword [rcx + 0x1236]
fistp qword [rdx + 0x1237]

fistp word  [rbx + 0x12345679]
fistp dword [rcx + 0x1234567a]
fistp qword [rdx + 0x1234567b]

; [rip + base + index]
fistp word  [rbx + rcx]
fistp dword [rcx + rsi]
fistp qword [rdx + rdi]

; [rip + base + scale * index]
fistp word  [rbx + 4 * rcx]
fistp dword [rcx + 8 * rsi]
fistp qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
fistp word  [rbx + rcx + 0x13]
fistp dword [rcx + rsi + 0x14]
fistp qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
fistp word  [rbx + rcx + 0x1235]
fistp dword [rcx + rsi + 0x1236]
fistp qword [rdx + rdi + 0x1237]

fistp word  [rbx + rcx + 0x12345679]
fistp dword [rcx + rsi + 0x1234567a]
fistp qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
fistp word  [rbx + 4 * rcx + 0x13]
fistp dword [rcx + 8 * rsi + 0x14]
fistp qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
fistp word  [rbx + 4 * rcx + 0x1235]
fistp dword [rcx + 8 * rsi + 0x1236]
fistp qword [rdx + 8 * rdi + 0x1237]

fistp word  [rbx + 4 * rcx + 0x12345679]
fistp dword [rcx + 8 * rsi + 0x1234567a]
fistp qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
fistp word  [4 * rcx]
fistp dword [8 * rsi]
fistp qword [8 * rdi]

; [scale * index + disp8]
fistp word  [4 * rcx + 0x13]
fistp dword [8 * rsi + 0x14]
fistp qword [8 * rdi + 0x15]

; [scale * index + disp32]
fistp word  [4 * rcx + 0x1235]
fistp dword [8 * rsi + 0x1236]
fistp qword [8 * rdi + 0x1237]

fistp word  [4 * rcx + 0x12345679]
fistp dword [8 * rsi + 0x1234567a]
fistp qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
fistp word [rbp]
fistp word [rbp + 0x12]
fistp word [rbp + 0x1234]
fistp word [rbp + 0x12345678]

fistp dword [4 * rbp]
fistp dword [4 * rbp + 0x12]
fistp dword [4 * rbp + 0x1234]
fistp dword [4 * rbp + 0x12345678]

fistp qword [rbx + 4 * rbp]
fistp qword [rbx + 4 * rbp + 0x12]
fistp qword [rbx + 4 * rbp + 0x1234]
fistp qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fistp word [rsp]
fistp word [rsp + 0x12]
fistp word [rsp + 0x1234]
fistp word [rsp + 0x12345678]

fistp dword [rsp + rax]
fistp dword [rsp + rbp]
fistp dword [rsp + 2*rbp]
fistp dword [rsp + 4*rbp]
fistp dword [rsp + 8*rbp]

; use each register as indirect.
fistp word [rax]
fistp word [rcx]
fistp word [rdx]
fistp word [rbx]
fistp word [rsp]
fistp word [rbp]
fistp word [rsi]
fistp word [rdi]

; use each register as indirect.
; rsp is forbidden as index
fistp dword [rax + 2*rax]
fistp dword [rcx + 2*rcx]
fistp dword [rdx + 2*rdx]
fistp dword [rbx + 2*rbx]
fistp dword [rbp + 2*rbp]
fistp dword [rsi + 2*rsi]
fistp dword [rdi + 2*rdi]

