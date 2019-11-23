use64
; ------------------------------------------------------------------------------
; opcode rd,rd
; ------------------------------------------------------------------------------
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
btc ax, ax
btc ax, cx
btc ax, dx
btc ax, bx
btc ax, sp
btc ax, bp
btc ax, si
btc ax, di

btc ax, ax
btc cx, ax
btc dx, ax
btc bx, ax
btc sp, ax
btc bp, ax
btc si, ax
btc di, ax

btc ax, di
btc cx, si
btc dx, bp
btc bx, sp
btc sp, bx
btc bp, dx
btc si, cx
btc di, ax

; 32-bit registers
btc eax, eax
btc eax, ecx
btc eax, edx
btc eax, ebx
btc eax, esp
btc eax, ebp
btc eax, esi
btc eax, edi

btc eax, eax
btc ecx, eax
btc edx, eax
btc ebx, eax
btc esp, eax
btc ebp, eax
btc esi, eax
btc edi, eax

btc eax, edi
btc ecx, esi
btc edx, ebp
btc ebx, esp
btc esp, ebx
btc ebp, edx
btc esi, ecx
btc edi, eax

; 64-bit registers
btc rax, rax
btc rax, rcx
btc rax, rdx
btc rax, rbx
btc rax, rsp
btc rax, rbp
btc rax, rsi
btc rax, rdi

btc rax, rax
btc rcx, rax
btc rdx, rax
btc rbx, rax
btc rsp, rax
btc rbp, rax
btc rsi, rax
btc rdi, rax

btc rax, rdi
btc rcx, rsi
btc rdx, rbp
btc rbx, rsp
btc rsp, rbx
btc rbp, rdx
btc rsi, rcx
btc rdi, rax

; ------------------------------------------------------------------------------
; opcode md,rd
; ------------------------------------------------------------------------------
; m,r without 8-bit combinations:
; m16, r16
; m32, r32
; m64, r64

; [rip + disp32]
btc word  [rip + 0x13], cx
btc dword [rip + 0x14], edx
btc qword [rip + 0x15], rsi

btc word  [rip + 0x1235], cx
btc dword [rip + 0x1236], edx
btc qword [rip + 0x1237], rsi

btc word  [rip + 0x12345679], cx
btc dword [rip + 0x1234567a], edx
btc qword [rip + 0x1234567b], rsi

; [rip + base]
btc word  [rbx], cx
btc dword [rcx], edx
btc qword [rdx], rsi

; [rip + base + disp8]
btc word  [rbx + 0x13], cx
btc dword [rcx + 0x14], edx
btc qword [rdx + 0x15], rsi

; [rip + base + disp32]
btc word  [rbx + 0x1235], cx
btc dword [rcx + 0x1236], edx
btc qword [rdx + 0x1237], rsi

btc word  [rbx + 0x12345679], cx
btc dword [rcx + 0x1234567a], edx
btc qword [rdx + 0x1234567b], rsi

; [rip + base + index]
btc word  [rbx + rcx], cx
btc dword [rcx + rsi], edx
btc qword [rdx + rdi], rsi

; [rip + base + scale * index]
btc word  [rbx + 4 * rcx], cx
btc dword [rcx + 8 * rsi], edx
btc qword [rdx + 8 * rdi], rsi

; [rip + base + index + disp8]
btc word  [rbx + rcx + 0x13], cx
btc dword [rcx + rsi + 0x14], edx
btc qword [rdx + rdi + 0x15], rsi

; [rip + base + index + disp32]
btc word  [rbx + rcx + 0x1235], cx
btc dword [rcx + rsi + 0x1236], edx
btc qword [rdx + rdi + 0x1237], rsi

btc word  [rbx + rcx + 0x12345679], cx
btc dword [rcx + rsi + 0x1234567a], edx
btc qword [rdx + rdi + 0x1234567b], rsi

; [rip + base + scale * index + disp8]
btc word  [rbx + 4 * rcx + 0x13], cx
btc dword [rcx + 8 * rsi + 0x14], edx
btc qword [rdx + 8 * rdi + 0x15], rsi

; [rip + base + scale * index + disp32]
btc word  [rbx + 4 * rcx + 0x1235], cx
btc dword [rcx + 8 * rsi + 0x1236], edx
btc qword [rdx + 8 * rdi + 0x1237], rsi

btc word  [rbx + 4 * rcx + 0x12345679], cx
btc dword [rcx + 8 * rsi + 0x1234567a], edx
btc qword [rdx + 8 * rdi + 0x1234567b], rsi

; [scale * index]
btc word  [4 * rcx], cx
btc dword [8 * rsi], edx
btc qword [8 * rdi], rsi

; [scale * index + disp8]
btc word  [4 * rcx + 0x13], cx
btc dword [8 * rsi + 0x14], edx
btc qword [8 * rdi + 0x15], rsi

; [scale * index + disp32]
btc word  [4 * rcx + 0x1235], cx
btc dword [8 * rsi + 0x1236], edx
btc qword [8 * rdi + 0x1237], rsi

btc word  [4 * rcx + 0x12345679], cx
btc dword [8 * rsi + 0x1234567a], edx
btc qword [8 * rdi + 0x1234567b], rsi

; Use rbp as base or index.
btc word [rbp], ax
btc word [rbp + 0x12], ax
btc word [rbp + 0x1234], ax
btc word [rbp + 0x12345678], ax

btc dword [4 * rbp], eax
btc dword [4 * rbp + 0x12], eax
btc dword [4 * rbp + 0x1234], eax
btc dword [4 * rbp + 0x12345678], eax

btc qword [rbx + 4 * rbp], rax
btc qword [rbx + 4 * rbp + 0x12], rax
btc qword [rbx + 4 * rbp + 0x1234], rax
btc qword [rbx + 4 * rbp + 0x12345678], rax

; Use rsp as base.
btc word [rsp], ax
btc word [rsp + 0x12], ax
btc word [rsp + 0x1234], ax
btc word [rsp + 0x12345678], ax

btc dword [rsp + rax], eax
btc dword [rsp + rbp], eax
btc dword [rsp + 2*rbp], eax
btc dword [rsp + 4*rbp], eax
btc dword [rsp + 8*rbp], eax

; use each register as indirect.
btc dword [rax], eax
btc dword [rcx], eax
btc dword [rdx], eax
btc dword [rbx], eax
btc dword [rsp], eax
btc dword [rbp], eax
btc dword [rsi], eax
btc dword [rdi], eax

; use each register as indirect.
; rsp is forbidden as index
btc qword [rax + 2*rax], rax
btc qword [rcx + 2*rcx], rax
btc qword [rdx + 2*rdx], rax
btc qword [rbx + 2*rbx], rax
btc qword [rbp + 2*rbp], rax
btc qword [rsi + 2*rsi], rax
btc qword [rdi + 2*rdi], rax

