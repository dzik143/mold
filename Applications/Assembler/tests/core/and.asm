use64
; ------------------------------------------------------------------------------
; opcode r,r
; ------------------------------------------------------------------------------
; 8-bit registers
and al, al
and al, cl
and al, dl
and al, bl
and al, ah
and al, ch
and al, dh
and al, bh

and al, al
and cl, al
and dl, al
and bl, al
and ah, al
and ch, al
and dh, al
and bh, al

and al, bh
and cl, dh
and dl, ch
and bl, ah
and ah, bl
and ch, dl
and dh, cl
and bh, al

; 16-bit registers
and ax, ax
and ax, cx
and ax, dx
and ax, bx
and ax, sp
and ax, bp
and ax, si
and ax, di

and ax, ax
and cx, ax
and dx, ax
and bx, ax
and sp, ax
and bp, ax
and si, ax
and di, ax

and ax, di
and cx, si
and dx, bp
and bx, sp
and sp, bx
and bp, dx
and si, cx
and di, ax

; 32-bit registers
and eax, eax
and eax, ecx
and eax, edx
and eax, ebx
and eax, esp
and eax, ebp
and eax, esi
and eax, edi

and eax, eax
and ecx, eax
and edx, eax
and ebx, eax
and esp, eax
and ebp, eax
and esi, eax
and edi, eax

and eax, edi
and ecx, esi
and edx, ebp
and ebx, esp
and esp, ebx
and ebp, edx
and esi, ecx
and edi, eax

; 64-bit registers
and rax, rax
and rax, rcx
and rax, rdx
and rax, rbx
and rax, rsp
and rax, rbp
and rax, rsi
and rax, rdi

and rax, rax
and rcx, rax
and rdx, rax
and rbx, rax
and rsp, rax
and rbp, rax
and rsi, rax
and rdi, rax

and rax, rdi
and rcx, rsi
and rdx, rbp
and rbx, rsp
and rsp, rbx
and rbp, rdx
and rsi, rcx
and rdi, rax

; ------------------------------------------------------------------------------
; opcode r,m
; ------------------------------------------------------------------------------
; [rip + disp32]
and bl,  byte  [rip + 0x12]
and cx,  word  [rip + 0x13]
and edx, dword [rip + 0x14]
and rsi, qword [rip + 0x15]

and bl,  byte  [rip + 0x1234]
and cx,  word  [rip + 0x1235]
and edx, dword [rip + 0x1236]
and rsi, qword [rip + 0x1237]

and bl,  byte  [rip + 0x12345678]
and cx,  word  [rip + 0x12345679]
and edx, dword [rip + 0x1234567a]
and rsi, qword [rip + 0x1234567b]

; [rip + base]
and bl,  byte  [rax]
and cx,  word  [rbx]
and edx, dword [rcx]
and rsi, qword [rdx]

; [rip + base + disp8]
and bl,  byte  [rax + 0x12]
and cx,  word  [rbx + 0x13]
and edx, dword [rcx + 0x14]
and rsi, qword [rdx + 0x15]

; [rip + base + disp32]
and bl,  byte  [rax + 0x1234]
and cx,  word  [rbx + 0x1235]
and edx, dword [rcx + 0x1236]
and rsi, qword [rdx + 0x1237]

and bl,  byte  [rax + 0x12345678]
and cx,  word  [rbx + 0x12345679]
and edx, dword [rcx + 0x1234567a]
and rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
and bl,  byte  [rax + rbx]
and cx,  word  [rbx + rcx]
and edx, dword [rcx + rsi]
and rsi, qword [rdx + rdi]

; [rip + base + scale * index]
and bl,  byte  [rax + 2 * rbx]
and cx,  word  [rbx + 4 * rcx]
and edx, dword [rcx + 8 * rsi]
and rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
and bl,  byte  [rax + rbx + 0x12]
and cx,  word  [rbx + rcx + 0x13]
and edx, dword [rcx + rsi + 0x14]
and rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
and bl,  byte  [rax + rbx + 0x1234]
and cx,  word  [rbx + rcx + 0x1235]
and edx, dword [rcx + rsi + 0x1236]
and rsi, qword [rdx + rdi + 0x1237]

and bl,  byte  [rax + rbx + 0x12345678]
and cx,  word  [rbx + rcx + 0x12345679]
and edx, dword [rcx + rsi + 0x1234567a]
and rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
and bl,  byte  [rax + 2 * rbx + 0x12]
and cx,  word  [rbx + 4 * rcx + 0x13]
and edx, dword [rcx + 8 * rsi + 0x14]
and rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
and bl,  byte  [rax + 2 * rbx + 0x1234]
and cx,  word  [rbx + 4 * rcx + 0x1235]
and edx, dword [rcx + 8 * rsi + 0x1236]
and rsi, qword [rdx + 8 * rdi + 0x1237]

and bl,  byte  [rax + 2 * rbx + 0x12345678]
and cx,  word  [rbx + 4 * rcx + 0x12345679]
and edx, dword [rcx + 8 * rsi + 0x1234567a]
and rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
and bl,  byte  [2 * rbx]
and cx,  word  [4 * rcx]
and edx, dword [8 * rsi]
and rsi, qword [8 * rdi]

; [scale * index + disp8]
and bl,  byte  [2 * rbx + 0x12]
and cx,  word  [4 * rcx + 0x13]
and edx, dword [8 * rsi + 0x14]
and rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
and bl,  byte  [2 * rbx + 0x1234]
and cx,  word  [4 * rcx + 0x1235]
and edx, dword [8 * rsi + 0x1236]
and rsi, qword [8 * rdi + 0x1237]

and bl,  byte  [2 * rbx + 0x12345678]
and cx,  word  [4 * rcx + 0x12345679]
and edx, dword [8 * rsi + 0x1234567a]
and rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
and al, byte [rbp]
and al, byte [rbp + 0x12]
and al, byte [rbp + 0x1234]
and al, byte [rbp + 0x12345678]

and al, byte [4 * rbp]
and al, byte [4 * rbp + 0x12]
and al, byte [4 * rbp + 0x1234]
and al, byte [4 * rbp + 0x12345678]

and al, byte [rbx + 4 * rbp]
and al, byte [rbx + 4 * rbp + 0x12]
and al, byte [rbx + 4 * rbp + 0x1234]
and al, byte [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
and al, byte [rsp]
and al, byte [rsp + 0x12]
and al, byte [rsp + 0x1234]
and al, byte [rsp + 0x12345678]

and al, byte [rsp + rax]
and al, byte [rsp + rbp]
and al, byte [rsp + 2*rbp]
and al, byte [rsp + 4*rbp]
and al, byte [rsp + 8*rbp]

; use each register as indirect.
and al, byte [rax]
and al, byte [rcx]
and al, byte [rdx]
and al, byte [rbx]
and al, byte [rsp]
and al, byte [rbp]
and al, byte [rsi]
and al, byte [rdi]

; use each register as indirect.
; rsp is forbidden as index
and al, byte [rax + 2*rax]
and al, byte [rcx + 2*rcx]
and al, byte [rdx + 2*rdx]
and al, byte [rbx + 2*rbx]
and al, byte [rbp + 2*rbp]
and al, byte [rsi + 2*rsi]
and al, byte [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode m,r
; ------------------------------------------------------------------------------
; [rip + disp32]
and byte  [rip + 0x12], bl
and word  [rip + 0x13], cx
and dword [rip + 0x14], edx
and qword [rip + 0x15], rsi

and byte  [rip + 0x1234], bl
and word  [rip + 0x1235], cx
and dword [rip + 0x1236], edx
and qword [rip + 0x1237], rsi

and byte  [rip + 0x12345678], bl
and word  [rip + 0x12345679], cx
and dword [rip + 0x1234567a], edx
and qword [rip + 0x1234567b], rsi

; [rip + base]
and byte  [rax], bl
and word  [rbx], cx
and dword [rcx], edx
and qword [rdx], rsi

; [rip + base + disp8]
and byte  [rax + 0x12], bl
and word  [rbx + 0x13], cx
and dword [rcx + 0x14], edx
and qword [rdx + 0x15], rsi

; [rip + base + disp32]
and byte  [rax + 0x1234], bl
and word  [rbx + 0x1235], cx
and dword [rcx + 0x1236], edx
and qword [rdx + 0x1237], rsi

and byte  [rax + 0x12345678], bl
and word  [rbx + 0x12345679], cx
and dword [rcx + 0x1234567a], edx
and qword [rdx + 0x1234567b], rsi

; [rip + base + index]
and byte  [rax + rbx], bl
and word  [rbx + rcx], cx
and dword [rcx + rsi], edx
and qword [rdx + rdi], rsi

; [rip + base + scale * index]
and byte  [rax + 2 * rbx], bl
and word  [rbx + 4 * rcx], cx
and dword [rcx + 8 * rsi], edx
and qword [rdx + 8 * rdi], rsi

; [rip + base + index + disp8]
and byte  [rax + rbx + 0x12], bl
and word  [rbx + rcx + 0x13], cx
and dword [rcx + rsi + 0x14], edx
and qword [rdx + rdi + 0x15], rsi

; [rip + base + index + disp32]
and byte  [rax + rbx + 0x1234], bl
and word  [rbx + rcx + 0x1235], cx
and dword [rcx + rsi + 0x1236], edx
and qword [rdx + rdi + 0x1237], rsi

and byte  [rax + rbx + 0x12345678], bl
and word  [rbx + rcx + 0x12345679], cx
and dword [rcx + rsi + 0x1234567a], edx
and qword [rdx + rdi + 0x1234567b], rsi

; [rip + base + scale * index + disp8]
and byte  [rax + 2 * rbx + 0x12], bl
and word  [rbx + 4 * rcx + 0x13], cx
and dword [rcx + 8 * rsi + 0x14], edx
and qword [rdx + 8 * rdi + 0x15], rsi

; [rip + base + scale * index + disp32]
and byte  [rax + 2 * rbx + 0x1234], bl
and word  [rbx + 4 * rcx + 0x1235], cx
and dword [rcx + 8 * rsi + 0x1236], edx
and qword [rdx + 8 * rdi + 0x1237], rsi

and byte  [rax + 2 * rbx + 0x12345678], bl
and word  [rbx + 4 * rcx + 0x12345679], cx
and dword [rcx + 8 * rsi + 0x1234567a], edx
and qword [rdx + 8 * rdi + 0x1234567b], rsi

; [scale * index]
and byte  [2 * rbx], bl
and word  [4 * rcx], cx
and dword [8 * rsi], edx
and qword [8 * rdi], rsi

; [scale * index + disp8]
and byte  [2 * rbx + 0x12], bl
and word  [4 * rcx + 0x13], cx
and dword [8 * rsi + 0x14], edx
and qword [8 * rdi + 0x15], rsi

; [scale * index + disp32]
and byte  [2 * rbx + 0x1234], bl
and word  [4 * rcx + 0x1235], cx
and dword [8 * rsi + 0x1236], edx
and qword [8 * rdi + 0x1237], rsi

and byte  [2 * rbx + 0x12345678], bl
and word  [4 * rcx + 0x12345679], cx
and dword [8 * rsi + 0x1234567a], edx
and qword [8 * rdi + 0x1234567b], rsi

; Use rbp as base or index.
and byte [rbp], al
and byte [rbp + 0x12], al
and byte [rbp + 0x1234], al
and byte [rbp + 0x12345678], al

and byte [4 * rbp], al
and byte [4 * rbp + 0x12], al
and byte [4 * rbp + 0x1234], al
and byte [4 * rbp + 0x12345678], al

and byte [rbx + 4 * rbp], al
and byte [rbx + 4 * rbp + 0x12], al
and byte [rbx + 4 * rbp + 0x1234], al
and byte [rbx + 4 * rbp + 0x12345678], al

; Use rsp as base.
and byte [rsp], al
and byte [rsp + 0x12], al
and byte [rsp + 0x1234], al
and byte [rsp + 0x12345678], al

and byte [rsp + rax], al
and byte [rsp + rbp], al
and byte [rsp + 2*rbp], al
and byte [rsp + 4*rbp], al
and byte [rsp + 8*rbp], al

; use each register as indirect.
and byte [rax], al
and byte [rcx], al
and byte [rdx], al
and byte [rbx], al
and byte [rsp], al
and byte [rbp], al
and byte [rsi], al
and byte [rdi], al

; use each register as indirect.
; rsp is forbidden as index
and byte [rax + 2*rax], al
and byte [rcx + 2*rcx], al
and byte [rdx + 2*rdx], al
and byte [rbx + 2*rbx], al
and byte [rbp + 2*rbp], al
and byte [rsi + 2*rsi], al
and byte [rdi + 2*rdi], al

; ------------------------------------------------------------------------------
; opcode r,imm
; ------------------------------------------------------------------------------
; immediate to each register: 8-bit
and al, 0x12
and cl, 0x13
and dl, 0x14
and bl, 0x15
and ah, 0x16
and ch, 0x17
and dh, 0x18
and bh, 0x19

; immediate to each register: 16-bit
and ax, 0x12
and cx, 0x13
and dx, 0x14
and bx, 0x15
and sp, 0x16
and bp, 0x17
and si, 0x18
and di, 0x19

and ax, 0x1234
and cx, 0x1235
and dx, 0x1236
and bx, 0x1237
and sp, 0x1238
and bp, 0x1239
and si, 0x123a
and di, 0x123b

; immediate to each register: 32-bit
and eax, 0x12
and ecx, 0x13
and edx, 0x14
and ebx, 0x15
and esp, 0x16
and ebp, 0x17
and esi, 0x18
and edi, 0x19

and eax, 0x1234
and ecx, 0x1235
and edx, 0x1236
and ebx, 0x1237
and esp, 0x1238
and ebp, 0x1239
and esi, 0x123a
and edi, 0x123b

and eax, 0x12345678
and ecx, 0x12345679
and edx, 0x1234567a
and ebx, 0x1234567b
and esp, 0x1234567c
and ebp, 0x1234567d
and esi, 0x1234567e
and edi, 0x1234567f

; immediate to each register: 64-bit
and rax, 0x12
and rcx, 0x13
and rdx, 0x14
and rbx, 0x15
and rsp, 0x16
and rbp, 0x17
and rsi, 0x18
and rdi, 0x19

and rax, 0x1234
and rcx, 0x1235
and rdx, 0x1236
and rbx, 0x1237
and rsp, 0x1238
and rbp, 0x1239
and rsi, 0x123a
and rdi, 0x123b

and rax, 0x12345678
and rcx, 0x12345679
and rdx, 0x1234567a
and rbx, 0x1234567b
and rsp, 0x1234567c
and rbp, 0x1234567d
and rsi, 0x1234567e
and rdi, 0x1234567f

; ------------------------------------------------------------------------------
; opcode m,imm
; ------------------------------------------------------------------------------
; [rip + disp32]
and byte  [rip + 0x12], 0x13
and word  [rip + 0x13], 0x1234
and dword [rip + 0x14], 0x12345678
and qword [rip + 0x15], 0x12345679

and byte  [rip + 0x1234], 0x13
and word  [rip + 0x1235], 0x1234
and dword [rip + 0x1236], 0x12345678
and qword [rip + 0x1237], 0x12345679

and byte  [rip + 0x12345678], 0x13
and word  [rip + 0x12345679], 0x1234
and dword [rip + 0x1234567a], 0x12345678
and qword [rip + 0x1234567b], 0x12345679

; [rip + base]
and byte  [rax], 0x13
and word  [rbx], 0x1234
and dword [rcx], 0x12345678
and qword [rdx], 0x12345679

; [rip + base + disp8]
and byte  [rax + 0x12], 0x13
and word  [rbx + 0x13], 0x1234
and dword [rcx + 0x14], 0x12345678
and qword [rdx + 0x15], 0x12345679

; [rip + base + disp32]
and byte  [rax + 0x1234], 0x13
and word  [rbx + 0x1235], 0x1234
and dword [rcx + 0x1236], 0x12345678
and qword [rdx + 0x1237], 0x12345679

and byte  [rax + 0x12345678], 0x13
and word  [rbx + 0x12345679], 0x1234
and dword [rcx + 0x1234567a], 0x12345678
and qword [rdx + 0x1234567b], 0x12345679

; [rip + base + index]
and byte  [rax + rbx], 0x13
and word  [rbx + rcx], 0x1234
and dword [rcx + rsi], 0x12345678
and qword [rdx + rdi], 0x12345679

; [rip + base + scale * index]
and byte  [rax + 2 * rbx], 0x13
and word  [rbx + 4 * rcx], 0x1234
and dword [rcx + 8 * rsi], 0x12345678
and qword [rdx + 8 * rdi], 0x12345679

; [rip + base + index + disp8]
and byte  [rax + rbx + 0x12], 0x13
and word  [rbx + rcx + 0x13], 0x1234
and dword [rcx + rsi + 0x14], 0x12345678
and qword [rdx + rdi + 0x15], 0x12345679

; [rip + base + index + disp32]
and byte  [rax + rbx + 0x1234], 0x13
and word  [rbx + rcx + 0x1235], 0x1234
and dword [rcx + rsi + 0x1236], 0x12345678
and qword [rdx + rdi + 0x1237], 0x12345679

and byte  [rax + rbx + 0x12345678], 0x13
and word  [rbx + rcx + 0x12345679], 0x1234
and dword [rcx + rsi + 0x1234567a], 0x12345678
and qword [rdx + rdi + 0x1234567b], 0x12345679

; [rip + base + scale * index + disp8]
and byte  [rax + 2 * rbx + 0x12], 0x13
and word  [rbx + 4 * rcx + 0x13], 0x1234
and dword [rcx + 8 * rsi + 0x14], 0x12345678
and qword [rdx + 8 * rdi + 0x15], 0x12345679

; [rip + base + scale * index + disp32]
and byte  [rax + 2 * rbx + 0x1234], 0x13
and word  [rbx + 4 * rcx + 0x1235], 0x1234
and dword [rcx + 8 * rsi + 0x1236], 0x12345678
and qword [rdx + 8 * rdi + 0x1237], 0x12345679

and byte  [rax + 2 * rbx + 0x12345678], 0x13
and word  [rbx + 4 * rcx + 0x12345679], 0x1234
and dword [rcx + 8 * rsi + 0x1234567a], 0x12345678
and qword [rdx + 8 * rdi + 0x1234567b], 0x12345679

; [scale * index]
and byte  [2 * rbx], 0x13
and word  [4 * rcx], 0x1234
and dword [8 * rsi], 0x12345678
and qword [8 * rdi], 0x12345679

; [scale * index + disp8]
and byte  [2 * rbx + 0x12], 0x13
and word  [4 * rcx + 0x13], 0x1234
and dword [8 * rsi + 0x14], 0x12345678
and qword [8 * rdi + 0x15], 0x12345679

; [scale * index + disp32]
and byte  [2 * rbx + 0x1234], 0x13
and word  [4 * rcx + 0x1235], 0x1234
and dword [8 * rsi + 0x1236], 0x12345678
and qword [8 * rdi + 0x1237], 0x12345679

and byte  [2 * rbx + 0x12345678], 0x13
and word  [4 * rcx + 0x12345679], 0x1234
and dword [8 * rsi + 0x1234567a], 0x12345678
and qword [8 * rdi + 0x1234567b], 0x12345679

; Use rbp as base or index.
and byte [rbp], 0x12
and byte [rbp + 0x12], 0x13
and byte [rbp + 0x1234], 0x14
and byte [rbp + 0x12345678], 0x15

and byte [4 * rbp], 0x12
and byte [4 * rbp + 0x12], 0x13
and byte [4 * rbp + 0x1234], 0x14
and byte [4 * rbp + 0x12345678], 0x15

and byte [rbx + 4 * rbp], 0x12
and byte [rbx + 4 * rbp + 0x12], 0x13
and byte [rbx + 4 * rbp + 0x1234], 0x14
and byte [rbx + 4 * rbp + 0x12345678], 0x15

; Use rsp as base.
and byte [rsp], 0x12
and byte [rsp + 0x12], 0x13
and byte [rsp + 0x1234], 0x14
and byte [rsp + 0x12345678], 0x15

and byte [rsp + rax], 0x12
and byte [rsp + rbp], 0x13
and byte [rsp + 2*rbp], 0x14
and byte [rsp + 4*rbp], 0x15
and byte [rsp + 8*rbp], 0x16

; use each register as indirect.
and byte [rax], 0x12
and byte [rcx], 0x13
and byte [rdx], 0x14
and byte [rbx], 0x15
and byte [rsp], 0x16
and byte [rbp], 0x17
and byte [rsi], 0x18
and byte [rdi], 0x19

; use each register as indirect.
; rsp is forbidden as index
and byte [rax + 2*rax], 0x12
and byte [rcx + 2*rcx], 0x13
and byte [rdx + 2*rdx], 0x14
and byte [rbx + 2*rbx], 0x15
and byte [rbp + 2*rbp], 0x16
and byte [rsi + 2*rsi], 0x17
and byte [rdi + 2*rdi], 0x18

