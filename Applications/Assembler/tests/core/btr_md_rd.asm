use64
; m,r without 8-bit combinations:
; m16, r16
; m32, r32
; m64, r64

; [rip + disp32]
btr word  [rip + 0x13], cx
btr dword [rip + 0x14], edx
btr qword [rip + 0x15], rsi

btr word  [rip + 0x1235], cx
btr dword [rip + 0x1236], edx
btr qword [rip + 0x1237], rsi

btr word  [rip + 0x12345679], cx
btr dword [rip + 0x1234567a], edx
btr qword [rip + 0x1234567b], rsi

; [rip + base]
btr word  [rbx], cx
btr dword [rcx], edx
btr qword [rdx], rsi

; [rip + base + disp8]
btr word  [rbx + 0x13], cx
btr dword [rcx + 0x14], edx
btr qword [rdx + 0x15], rsi

; [rip + base + disp32]
btr word  [rbx + 0x1235], cx
btr dword [rcx + 0x1236], edx
btr qword [rdx + 0x1237], rsi

btr word  [rbx + 0x12345679], cx
btr dword [rcx + 0x1234567a], edx
btr qword [rdx + 0x1234567b], rsi

; [rip + base + index]
btr word  [rbx + rcx], cx
btr dword [rcx + rsi], edx
btr qword [rdx + rdi], rsi

; [rip + base + scale * index]
btr word  [rbx + 4 * rcx], cx
btr dword [rcx + 8 * rsi], edx
btr qword [rdx + 8 * rdi], rsi

; [rip + base + index + disp8]
btr word  [rbx + rcx + 0x13], cx
btr dword [rcx + rsi + 0x14], edx
btr qword [rdx + rdi + 0x15], rsi

; [rip + base + index + disp32]
btr word  [rbx + rcx + 0x1235], cx
btr dword [rcx + rsi + 0x1236], edx
btr qword [rdx + rdi + 0x1237], rsi

btr word  [rbx + rcx + 0x12345679], cx
btr dword [rcx + rsi + 0x1234567a], edx
btr qword [rdx + rdi + 0x1234567b], rsi

; [rip + base + scale * index + disp8]
btr word  [rbx + 4 * rcx + 0x13], cx
btr dword [rcx + 8 * rsi + 0x14], edx
btr qword [rdx + 8 * rdi + 0x15], rsi

; [rip + base + scale * index + disp32]
btr word  [rbx + 4 * rcx + 0x1235], cx
btr dword [rcx + 8 * rsi + 0x1236], edx
btr qword [rdx + 8 * rdi + 0x1237], rsi

btr word  [rbx + 4 * rcx + 0x12345679], cx
btr dword [rcx + 8 * rsi + 0x1234567a], edx
btr qword [rdx + 8 * rdi + 0x1234567b], rsi

; [scale * index]
btr word  [4 * rcx], cx
btr dword [8 * rsi], edx
btr qword [8 * rdi], rsi

; [scale * index + disp8]
btr word  [4 * rcx + 0x13], cx
btr dword [8 * rsi + 0x14], edx
btr qword [8 * rdi + 0x15], rsi

; [scale * index + disp32]
btr word  [4 * rcx + 0x1235], cx
btr dword [8 * rsi + 0x1236], edx
btr qword [8 * rdi + 0x1237], rsi

btr word  [4 * rcx + 0x12345679], cx
btr dword [8 * rsi + 0x1234567a], edx
btr qword [8 * rdi + 0x1234567b], rsi

; Use rbp as base or index.
btr word [rbp], ax
btr word [rbp + 0x12], ax
btr word [rbp + 0x1234], ax
btr word [rbp + 0x12345678], ax

btr dword [4 * rbp], eax
btr dword [4 * rbp + 0x12], eax
btr dword [4 * rbp + 0x1234], eax
btr dword [4 * rbp + 0x12345678], eax

btr qword [rbx + 4 * rbp], rax
btr qword [rbx + 4 * rbp + 0x12], rax
btr qword [rbx + 4 * rbp + 0x1234], rax
btr qword [rbx + 4 * rbp + 0x12345678], rax

; Use rsp as base.
btr word [rsp], ax
btr word [rsp + 0x12], ax
btr word [rsp + 0x1234], ax
btr word [rsp + 0x12345678], ax

btr dword [rsp + rax], eax
btr dword [rsp + rbp], eax
btr dword [rsp + 2*rbp], eax
btr dword [rsp + 4*rbp], eax
btr dword [rsp + 8*rbp], eax

; use each register as indirect.
btr dword [rax], eax
btr dword [rcx], eax
btr dword [rdx], eax
btr dword [rbx], eax
btr dword [rsp], eax
btr dword [rbp], eax
btr dword [rsi], eax
btr dword [rdi], eax

; use each register as indirect.
; rsp is forbidden as index
btr qword [rax + 2*rax], rax
btr qword [rcx + 2*rcx], rax
btr qword [rdx + 2*rdx], rax
btr qword [rbx + 2*rbx], rax
btr qword [rbp + 2*rbp], rax
btr qword [rsi + 2*rsi], rax
btr qword [rdi + 2*rdi], rax
