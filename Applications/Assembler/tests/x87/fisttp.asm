use64
; ------------------------------------------------------------------------------
; opcode md
; ------------------------------------------------------------------------------
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
fisttp word  [rip + 0x13]
fisttp dword [rip + 0x14]
fisttp qword [rip + 0x15]

fisttp word  [rip + 0x1235]
fisttp dword [rip + 0x1236]
fisttp qword [rip + 0x1237]

fisttp word  [rip + 0x12345679]
fisttp dword [rip + 0x1234567a]
fisttp qword [rip + 0x1234567b]

; [rip + base]
fisttp word  [rbx]
fisttp dword [rcx]
fisttp qword [rdx]

; [rip + base + disp8]
fisttp word  [rbx + 0x13]
fisttp dword [rcx + 0x14]
fisttp qword [rdx + 0x15]

; [rip + base + disp32]
fisttp word  [rbx + 0x1235]
fisttp dword [rcx + 0x1236]
fisttp qword [rdx + 0x1237]

fisttp word  [rbx + 0x12345679]
fisttp dword [rcx + 0x1234567a]
fisttp qword [rdx + 0x1234567b]

; [rip + base + index]
fisttp word  [rbx + rcx]
fisttp dword [rcx + rsi]
fisttp qword [rdx + rdi]

; [rip + base + scale * index]
fisttp word  [rbx + 4 * rcx]
fisttp dword [rcx + 8 * rsi]
fisttp qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
fisttp word  [rbx + rcx + 0x13]
fisttp dword [rcx + rsi + 0x14]
fisttp qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
fisttp word  [rbx + rcx + 0x1235]
fisttp dword [rcx + rsi + 0x1236]
fisttp qword [rdx + rdi + 0x1237]

fisttp word  [rbx + rcx + 0x12345679]
fisttp dword [rcx + rsi + 0x1234567a]
fisttp qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
fisttp word  [rbx + 4 * rcx + 0x13]
fisttp dword [rcx + 8 * rsi + 0x14]
fisttp qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
fisttp word  [rbx + 4 * rcx + 0x1235]
fisttp dword [rcx + 8 * rsi + 0x1236]
fisttp qword [rdx + 8 * rdi + 0x1237]

fisttp word  [rbx + 4 * rcx + 0x12345679]
fisttp dword [rcx + 8 * rsi + 0x1234567a]
fisttp qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
fisttp word  [4 * rcx]
fisttp dword [8 * rsi]
fisttp qword [8 * rdi]

; [scale * index + disp8]
fisttp word  [4 * rcx + 0x13]
fisttp dword [8 * rsi + 0x14]
fisttp qword [8 * rdi + 0x15]

; [scale * index + disp32]
fisttp word  [4 * rcx + 0x1235]
fisttp dword [8 * rsi + 0x1236]
fisttp qword [8 * rdi + 0x1237]

fisttp word  [4 * rcx + 0x12345679]
fisttp dword [8 * rsi + 0x1234567a]
fisttp qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
fisttp word [rbp]
fisttp word [rbp + 0x12]
fisttp word [rbp + 0x1234]
fisttp word [rbp + 0x12345678]

fisttp dword [4 * rbp]
fisttp dword [4 * rbp + 0x12]
fisttp dword [4 * rbp + 0x1234]
fisttp dword [4 * rbp + 0x12345678]

fisttp qword [rbx + 4 * rbp]
fisttp qword [rbx + 4 * rbp + 0x12]
fisttp qword [rbx + 4 * rbp + 0x1234]
fisttp qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fisttp word [rsp]
fisttp word [rsp + 0x12]
fisttp word [rsp + 0x1234]
fisttp word [rsp + 0x12345678]

fisttp dword [rsp + rax]
fisttp dword [rsp + rbp]
fisttp dword [rsp + 2*rbp]
fisttp dword [rsp + 4*rbp]
fisttp dword [rsp + 8*rbp]

; use each register as indirect.
fisttp word [rax]
fisttp word [rcx]
fisttp word [rdx]
fisttp word [rbx]
fisttp word [rsp]
fisttp word [rbp]
fisttp word [rsi]
fisttp word [rdi]

; use each register as indirect.
; rsp is forbidden as index
fisttp dword [rax + 2*rax]
fisttp dword [rcx + 2*rcx]
fisttp dword [rdx + 2*rdx]
fisttp dword [rbx + 2*rbx]
fisttp dword [rbp + 2*rbp]
fisttp dword [rsi + 2*rsi]
fisttp dword [rdi + 2*rdi]

