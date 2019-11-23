use64
; m,r without 8-bit combinations:
; m16, r16
; m32, r32
; m64, r64

; [rip + disp32]
bt word  [rip + 0x13], cx
bt dword [rip + 0x14], edx
bt qword [rip + 0x15], rsi

bt word  [rip + 0x1235], cx
bt dword [rip + 0x1236], edx
bt qword [rip + 0x1237], rsi

bt word  [rip + 0x12345679], cx
bt dword [rip + 0x1234567a], edx
bt qword [rip + 0x1234567b], rsi

; [rip + base]
bt word  [rbx], cx
bt dword [rcx], edx
bt qword [rdx], rsi

; [rip + base + disp8]
bt word  [rbx + 0x13], cx
bt dword [rcx + 0x14], edx
bt qword [rdx + 0x15], rsi

; [rip + base + disp32]
bt word  [rbx + 0x1235], cx
bt dword [rcx + 0x1236], edx
bt qword [rdx + 0x1237], rsi

bt word  [rbx + 0x12345679], cx
bt dword [rcx + 0x1234567a], edx
bt qword [rdx + 0x1234567b], rsi

; [rip + base + index]
bt word  [rbx + rcx], cx
bt dword [rcx + rsi], edx
bt qword [rdx + rdi], rsi

; [rip + base + scale * index]
bt word  [rbx + 4 * rcx], cx
bt dword [rcx + 8 * rsi], edx
bt qword [rdx + 8 * rdi], rsi

; [rip + base + index + disp8]
bt word  [rbx + rcx + 0x13], cx
bt dword [rcx + rsi + 0x14], edx
bt qword [rdx + rdi + 0x15], rsi

; [rip + base + index + disp32]
bt word  [rbx + rcx + 0x1235], cx
bt dword [rcx + rsi + 0x1236], edx
bt qword [rdx + rdi + 0x1237], rsi

bt word  [rbx + rcx + 0x12345679], cx
bt dword [rcx + rsi + 0x1234567a], edx
bt qword [rdx + rdi + 0x1234567b], rsi

; [rip + base + scale * index + disp8]
bt word  [rbx + 4 * rcx + 0x13], cx
bt dword [rcx + 8 * rsi + 0x14], edx
bt qword [rdx + 8 * rdi + 0x15], rsi

; [rip + base + scale * index + disp32]
bt word  [rbx + 4 * rcx + 0x1235], cx
bt dword [rcx + 8 * rsi + 0x1236], edx
bt qword [rdx + 8 * rdi + 0x1237], rsi

bt word  [rbx + 4 * rcx + 0x12345679], cx
bt dword [rcx + 8 * rsi + 0x1234567a], edx
bt qword [rdx + 8 * rdi + 0x1234567b], rsi

; [scale * index]
bt word  [4 * rcx], cx
bt dword [8 * rsi], edx
bt qword [8 * rdi], rsi

; [scale * index + disp8]
bt word  [4 * rcx + 0x13], cx
bt dword [8 * rsi + 0x14], edx
bt qword [8 * rdi + 0x15], rsi

; [scale * index + disp32]
bt word  [4 * rcx + 0x1235], cx
bt dword [8 * rsi + 0x1236], edx
bt qword [8 * rdi + 0x1237], rsi

bt word  [4 * rcx + 0x12345679], cx
bt dword [8 * rsi + 0x1234567a], edx
bt qword [8 * rdi + 0x1234567b], rsi

; Use rbp as base or index.
bt word [rbp], ax
bt word [rbp + 0x12], ax
bt word [rbp + 0x1234], ax
bt word [rbp + 0x12345678], ax

bt dword [4 * rbp], eax
bt dword [4 * rbp + 0x12], eax
bt dword [4 * rbp + 0x1234], eax
bt dword [4 * rbp + 0x12345678], eax

bt qword [rbx + 4 * rbp], rax
bt qword [rbx + 4 * rbp + 0x12], rax
bt qword [rbx + 4 * rbp + 0x1234], rax
bt qword [rbx + 4 * rbp + 0x12345678], rax

; Use rsp as base.
bt word [rsp], ax
bt word [rsp + 0x12], ax
bt word [rsp + 0x1234], ax
bt word [rsp + 0x12345678], ax

bt dword [rsp + rax], eax
bt dword [rsp + rbp], eax
bt dword [rsp + 2*rbp], eax
bt dword [rsp + 4*rbp], eax
bt dword [rsp + 8*rbp], eax

; use each register as indirect.
bt dword [rax], eax
bt dword [rcx], eax
bt dword [rdx], eax
bt dword [rbx], eax
bt dword [rsp], eax
bt dword [rbp], eax
bt dword [rsi], eax
bt dword [rdi], eax

; use each register as indirect.
; rsp is forbidden as index
bt qword [rax + 2*rax], rax
bt qword [rcx + 2*rcx], rax
bt qword [rdx + 2*rdx], rax
bt qword [rbx + 2*rbx], rax
bt qword [rbp + 2*rbp], rax
bt qword [rsi + 2*rsi], rax
bt qword [rdi + 2*rdi], rax
