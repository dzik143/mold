use64
; ------------------------------------------------------------------------------
; opcode r,r
; ------------------------------------------------------------------------------
; 8-bit registers
adc al, al
adc al, cl
adc al, dl
adc al, bl
adc al, ah
adc al, ch
adc al, dh
adc al, bh

adc al, al
adc cl, al
adc dl, al
adc bl, al
adc ah, al
adc ch, al
adc dh, al
adc bh, al

adc al, bh
adc cl, dh
adc dl, ch
adc bl, ah
adc ah, bl
adc ch, dl
adc dh, cl
adc bh, al

; 16-bit registers
adc ax, ax
adc ax, cx
adc ax, dx
adc ax, bx
adc ax, sp
adc ax, bp
adc ax, si
adc ax, di

adc ax, ax
adc cx, ax
adc dx, ax
adc bx, ax
adc sp, ax
adc bp, ax
adc si, ax
adc di, ax

adc ax, di
adc cx, si
adc dx, bp
adc bx, sp
adc sp, bx
adc bp, dx
adc si, cx
adc di, ax

; 32-bit registers
adc eax, eax
adc eax, ecx
adc eax, edx
adc eax, ebx
adc eax, esp
adc eax, ebp
adc eax, esi
adc eax, edi

adc eax, eax
adc ecx, eax
adc edx, eax
adc ebx, eax
adc esp, eax
adc ebp, eax
adc esi, eax
adc edi, eax

adc eax, edi
adc ecx, esi
adc edx, ebp
adc ebx, esp
adc esp, ebx
adc ebp, edx
adc esi, ecx
adc edi, eax

; 64-bit registers
adc rax, rax
adc rax, rcx
adc rax, rdx
adc rax, rbx
adc rax, rsp
adc rax, rbp
adc rax, rsi
adc rax, rdi

adc rax, rax
adc rcx, rax
adc rdx, rax
adc rbx, rax
adc rsp, rax
adc rbp, rax
adc rsi, rax
adc rdi, rax

adc rax, rdi
adc rcx, rsi
adc rdx, rbp
adc rbx, rsp
adc rsp, rbx
adc rbp, rdx
adc rsi, rcx
adc rdi, rax

; ------------------------------------------------------------------------------
; opcode r,m
; ------------------------------------------------------------------------------
; [rip + disp32]
adc bl,  byte  [rip + 0x12]
adc cx,  word  [rip + 0x13]
adc edx, dword [rip + 0x14]
adc rsi, qword [rip + 0x15]

adc bl,  byte  [rip + 0x1234]
adc cx,  word  [rip + 0x1235]
adc edx, dword [rip + 0x1236]
adc rsi, qword [rip + 0x1237]

adc bl,  byte  [rip + 0x12345678]
adc cx,  word  [rip + 0x12345679]
adc edx, dword [rip + 0x1234567a]
adc rsi, qword [rip + 0x1234567b]

; [rip + base]
adc bl,  byte  [rax]
adc cx,  word  [rbx]
adc edx, dword [rcx]
adc rsi, qword [rdx]

; [rip + base + disp8]
adc bl,  byte  [rax + 0x12]
adc cx,  word  [rbx + 0x13]
adc edx, dword [rcx + 0x14]
adc rsi, qword [rdx + 0x15]

; [rip + base + disp32]
adc bl,  byte  [rax + 0x1234]
adc cx,  word  [rbx + 0x1235]
adc edx, dword [rcx + 0x1236]
adc rsi, qword [rdx + 0x1237]

adc bl,  byte  [rax + 0x12345678]
adc cx,  word  [rbx + 0x12345679]
adc edx, dword [rcx + 0x1234567a]
adc rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
adc bl,  byte  [rax + rbx]
adc cx,  word  [rbx + rcx]
adc edx, dword [rcx + rsi]
adc rsi, qword [rdx + rdi]

; [rip + base + scale * index]
adc bl,  byte  [rax + 2 * rbx]
adc cx,  word  [rbx + 4 * rcx]
adc edx, dword [rcx + 8 * rsi]
adc rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
adc bl,  byte  [rax + rbx + 0x12]
adc cx,  word  [rbx + rcx + 0x13]
adc edx, dword [rcx + rsi + 0x14]
adc rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
adc bl,  byte  [rax + rbx + 0x1234]
adc cx,  word  [rbx + rcx + 0x1235]
adc edx, dword [rcx + rsi + 0x1236]
adc rsi, qword [rdx + rdi + 0x1237]

adc bl,  byte  [rax + rbx + 0x12345678]
adc cx,  word  [rbx + rcx + 0x12345679]
adc edx, dword [rcx + rsi + 0x1234567a]
adc rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
adc bl,  byte  [rax + 2 * rbx + 0x12]
adc cx,  word  [rbx + 4 * rcx + 0x13]
adc edx, dword [rcx + 8 * rsi + 0x14]
adc rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
adc bl,  byte  [rax + 2 * rbx + 0x1234]
adc cx,  word  [rbx + 4 * rcx + 0x1235]
adc edx, dword [rcx + 8 * rsi + 0x1236]
adc rsi, qword [rdx + 8 * rdi + 0x1237]

adc bl,  byte  [rax + 2 * rbx + 0x12345678]
adc cx,  word  [rbx + 4 * rcx + 0x12345679]
adc edx, dword [rcx + 8 * rsi + 0x1234567a]
adc rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
adc bl,  byte  [2 * rbx]
adc cx,  word  [4 * rcx]
adc edx, dword [8 * rsi]
adc rsi, qword [8 * rdi]

; [scale * index + disp8]
adc bl,  byte  [2 * rbx + 0x12]
adc cx,  word  [4 * rcx + 0x13]
adc edx, dword [8 * rsi + 0x14]
adc rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
adc bl,  byte  [2 * rbx + 0x1234]
adc cx,  word  [4 * rcx + 0x1235]
adc edx, dword [8 * rsi + 0x1236]
adc rsi, qword [8 * rdi + 0x1237]

adc bl,  byte  [2 * rbx + 0x12345678]
adc cx,  word  [4 * rcx + 0x12345679]
adc edx, dword [8 * rsi + 0x1234567a]
adc rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
adc al, byte [rbp]
adc al, byte [rbp + 0x12]
adc al, byte [rbp + 0x1234]
adc al, byte [rbp + 0x12345678]

adc al, byte [4 * rbp]
adc al, byte [4 * rbp + 0x12]
adc al, byte [4 * rbp + 0x1234]
adc al, byte [4 * rbp + 0x12345678]

adc al, byte [rbx + 4 * rbp]
adc al, byte [rbx + 4 * rbp + 0x12]
adc al, byte [rbx + 4 * rbp + 0x1234]
adc al, byte [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
adc al, byte [rsp]
adc al, byte [rsp + 0x12]
adc al, byte [rsp + 0x1234]
adc al, byte [rsp + 0x12345678]

adc al, byte [rsp + rax]
adc al, byte [rsp + rbp]
adc al, byte [rsp + 2*rbp]
adc al, byte [rsp + 4*rbp]
adc al, byte [rsp + 8*rbp]

; use each register as indirect.
adc al, byte [rax]
adc al, byte [rcx]
adc al, byte [rdx]
adc al, byte [rbx]
adc al, byte [rsp]
adc al, byte [rbp]
adc al, byte [rsi]
adc al, byte [rdi]

; use each register as indirect.
; rsp is forbidden as index
adc al, byte [rax + 2*rax]
adc al, byte [rcx + 2*rcx]
adc al, byte [rdx + 2*rdx]
adc al, byte [rbx + 2*rbx]
adc al, byte [rbp + 2*rbp]
adc al, byte [rsi + 2*rsi]
adc al, byte [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode m,r
; ------------------------------------------------------------------------------
; [rip + disp32]
adc byte  [rip + 0x12], bl
adc word  [rip + 0x13], cx
adc dword [rip + 0x14], edx
adc qword [rip + 0x15], rsi

adc byte  [rip + 0x1234], bl
adc word  [rip + 0x1235], cx
adc dword [rip + 0x1236], edx
adc qword [rip + 0x1237], rsi

adc byte  [rip + 0x12345678], bl
adc word  [rip + 0x12345679], cx
adc dword [rip + 0x1234567a], edx
adc qword [rip + 0x1234567b], rsi

; [rip + base]
adc byte  [rax], bl
adc word  [rbx], cx
adc dword [rcx], edx
adc qword [rdx], rsi

; [rip + base + disp8]
adc byte  [rax + 0x12], bl
adc word  [rbx + 0x13], cx
adc dword [rcx + 0x14], edx
adc qword [rdx + 0x15], rsi

; [rip + base + disp32]
adc byte  [rax + 0x1234], bl
adc word  [rbx + 0x1235], cx
adc dword [rcx + 0x1236], edx
adc qword [rdx + 0x1237], rsi

adc byte  [rax + 0x12345678], bl
adc word  [rbx + 0x12345679], cx
adc dword [rcx + 0x1234567a], edx
adc qword [rdx + 0x1234567b], rsi

; [rip + base + index]
adc byte  [rax + rbx], bl
adc word  [rbx + rcx], cx
adc dword [rcx + rsi], edx
adc qword [rdx + rdi], rsi

; [rip + base + scale * index]
adc byte  [rax + 2 * rbx], bl
adc word  [rbx + 4 * rcx], cx
adc dword [rcx + 8 * rsi], edx
adc qword [rdx + 8 * rdi], rsi

; [rip + base + index + disp8]
adc byte  [rax + rbx + 0x12], bl
adc word  [rbx + rcx + 0x13], cx
adc dword [rcx + rsi + 0x14], edx
adc qword [rdx + rdi + 0x15], rsi

; [rip + base + index + disp32]
adc byte  [rax + rbx + 0x1234], bl
adc word  [rbx + rcx + 0x1235], cx
adc dword [rcx + rsi + 0x1236], edx
adc qword [rdx + rdi + 0x1237], rsi

adc byte  [rax + rbx + 0x12345678], bl
adc word  [rbx + rcx + 0x12345679], cx
adc dword [rcx + rsi + 0x1234567a], edx
adc qword [rdx + rdi + 0x1234567b], rsi

; [rip + base + scale * index + disp8]
adc byte  [rax + 2 * rbx + 0x12], bl
adc word  [rbx + 4 * rcx + 0x13], cx
adc dword [rcx + 8 * rsi + 0x14], edx
adc qword [rdx + 8 * rdi + 0x15], rsi

; [rip + base + scale * index + disp32]
adc byte  [rax + 2 * rbx + 0x1234], bl
adc word  [rbx + 4 * rcx + 0x1235], cx
adc dword [rcx + 8 * rsi + 0x1236], edx
adc qword [rdx + 8 * rdi + 0x1237], rsi

adc byte  [rax + 2 * rbx + 0x12345678], bl
adc word  [rbx + 4 * rcx + 0x12345679], cx
adc dword [rcx + 8 * rsi + 0x1234567a], edx
adc qword [rdx + 8 * rdi + 0x1234567b], rsi

; [scale * index]
adc byte  [2 * rbx], bl
adc word  [4 * rcx], cx
adc dword [8 * rsi], edx
adc qword [8 * rdi], rsi

; [scale * index + disp8]
adc byte  [2 * rbx + 0x12], bl
adc word  [4 * rcx + 0x13], cx
adc dword [8 * rsi + 0x14], edx
adc qword [8 * rdi + 0x15], rsi

; [scale * index + disp32]
adc byte  [2 * rbx + 0x1234], bl
adc word  [4 * rcx + 0x1235], cx
adc dword [8 * rsi + 0x1236], edx
adc qword [8 * rdi + 0x1237], rsi

adc byte  [2 * rbx + 0x12345678], bl
adc word  [4 * rcx + 0x12345679], cx
adc dword [8 * rsi + 0x1234567a], edx
adc qword [8 * rdi + 0x1234567b], rsi

; Use rbp as base or index.
adc byte [rbp], al
adc byte [rbp + 0x12], al
adc byte [rbp + 0x1234], al
adc byte [rbp + 0x12345678], al

adc byte [4 * rbp], al
adc byte [4 * rbp + 0x12], al
adc byte [4 * rbp + 0x1234], al
adc byte [4 * rbp + 0x12345678], al

adc byte [rbx + 4 * rbp], al
adc byte [rbx + 4 * rbp + 0x12], al
adc byte [rbx + 4 * rbp + 0x1234], al
adc byte [rbx + 4 * rbp + 0x12345678], al

; Use rsp as base.
adc byte [rsp], al
adc byte [rsp + 0x12], al
adc byte [rsp + 0x1234], al
adc byte [rsp + 0x12345678], al

adc byte [rsp + rax], al
adc byte [rsp + rbp], al
adc byte [rsp + 2*rbp], al
adc byte [rsp + 4*rbp], al
adc byte [rsp + 8*rbp], al

; use each register as indirect.
adc byte [rax], al
adc byte [rcx], al
adc byte [rdx], al
adc byte [rbx], al
adc byte [rsp], al
adc byte [rbp], al
adc byte [rsi], al
adc byte [rdi], al

; use each register as indirect.
; rsp is forbidden as index
adc byte [rax + 2*rax], al
adc byte [rcx + 2*rcx], al
adc byte [rdx + 2*rdx], al
adc byte [rbx + 2*rbx], al
adc byte [rbp + 2*rbp], al
adc byte [rsi + 2*rsi], al
adc byte [rdi + 2*rdi], al

; ------------------------------------------------------------------------------
; opcode r,imm
; ------------------------------------------------------------------------------
; immediate to each register: 8-bit
adc al, 0x12
adc cl, 0x13
adc dl, 0x14
adc bl, 0x15
adc ah, 0x16
adc ch, 0x17
adc dh, 0x18
adc bh, 0x19

; immediate to each register: 16-bit
adc ax, 0x12
adc cx, 0x13
adc dx, 0x14
adc bx, 0x15
adc sp, 0x16
adc bp, 0x17
adc si, 0x18
adc di, 0x19

adc ax, 0x1234
adc cx, 0x1235
adc dx, 0x1236
adc bx, 0x1237
adc sp, 0x1238
adc bp, 0x1239
adc si, 0x123a
adc di, 0x123b

; immediate to each register: 32-bit
adc eax, 0x12
adc ecx, 0x13
adc edx, 0x14
adc ebx, 0x15
adc esp, 0x16
adc ebp, 0x17
adc esi, 0x18
adc edi, 0x19

adc eax, 0x1234
adc ecx, 0x1235
adc edx, 0x1236
adc ebx, 0x1237
adc esp, 0x1238
adc ebp, 0x1239
adc esi, 0x123a
adc edi, 0x123b

adc eax, 0x12345678
adc ecx, 0x12345679
adc edx, 0x1234567a
adc ebx, 0x1234567b
adc esp, 0x1234567c
adc ebp, 0x1234567d
adc esi, 0x1234567e
adc edi, 0x1234567f

; immediate to each register: 64-bit
adc rax, 0x12
adc rcx, 0x13
adc rdx, 0x14
adc rbx, 0x15
adc rsp, 0x16
adc rbp, 0x17
adc rsi, 0x18
adc rdi, 0x19

adc rax, 0x1234
adc rcx, 0x1235
adc rdx, 0x1236
adc rbx, 0x1237
adc rsp, 0x1238
adc rbp, 0x1239
adc rsi, 0x123a
adc rdi, 0x123b

adc rax, 0x12345678
adc rcx, 0x12345679
adc rdx, 0x1234567a
adc rbx, 0x1234567b
adc rsp, 0x1234567c
adc rbp, 0x1234567d
adc rsi, 0x1234567e
adc rdi, 0x1234567f

; ------------------------------------------------------------------------------
; opcode m,imm
; ------------------------------------------------------------------------------
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

