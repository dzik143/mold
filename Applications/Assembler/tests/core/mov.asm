use64
; ------------------------------------------------------------------------------
; opcode r,r
; ------------------------------------------------------------------------------
; 8-bit registers
mov al, al
mov al, cl
mov al, dl
mov al, bl
mov al, ah
mov al, ch
mov al, dh
mov al, bh

mov al, al
mov cl, al
mov dl, al
mov bl, al
mov ah, al
mov ch, al
mov dh, al
mov bh, al

mov al, bh
mov cl, dh
mov dl, ch
mov bl, ah
mov ah, bl
mov ch, dl
mov dh, cl
mov bh, al

; 16-bit registers
mov ax, ax
mov ax, cx
mov ax, dx
mov ax, bx
mov ax, sp
mov ax, bp
mov ax, si
mov ax, di

mov ax, ax
mov cx, ax
mov dx, ax
mov bx, ax
mov sp, ax
mov bp, ax
mov si, ax
mov di, ax

mov ax, di
mov cx, si
mov dx, bp
mov bx, sp
mov sp, bx
mov bp, dx
mov si, cx
mov di, ax

; 32-bit registers
mov eax, eax
mov eax, ecx
mov eax, edx
mov eax, ebx
mov eax, esp
mov eax, ebp
mov eax, esi
mov eax, edi

mov eax, eax
mov ecx, eax
mov edx, eax
mov ebx, eax
mov esp, eax
mov ebp, eax
mov esi, eax
mov edi, eax

mov eax, edi
mov ecx, esi
mov edx, ebp
mov ebx, esp
mov esp, ebx
mov ebp, edx
mov esi, ecx
mov edi, eax

; 64-bit registers
mov rax, rax
mov rax, rcx
mov rax, rdx
mov rax, rbx
mov rax, rsp
mov rax, rbp
mov rax, rsi
mov rax, rdi

mov rax, rax
mov rcx, rax
mov rdx, rax
mov rbx, rax
mov rsp, rax
mov rbp, rax
mov rsi, rax
mov rdi, rax

mov rax, rdi
mov rcx, rsi
mov rdx, rbp
mov rbx, rsp
mov rsp, rbx
mov rbp, rdx
mov rsi, rcx
mov rdi, rax

; ------------------------------------------------------------------------------
; opcode r,m
; ------------------------------------------------------------------------------
; [rip + disp32]
mov bl,  byte  [rip + 0x12]
mov cx,  word  [rip + 0x13]
mov edx, dword [rip + 0x14]
mov rsi, qword [rip + 0x15]

mov bl,  byte  [rip + 0x1234]
mov cx,  word  [rip + 0x1235]
mov edx, dword [rip + 0x1236]
mov rsi, qword [rip + 0x1237]

mov bl,  byte  [rip + 0x12345678]
mov cx,  word  [rip + 0x12345679]
mov edx, dword [rip + 0x1234567a]
mov rsi, qword [rip + 0x1234567b]

; [rip + base]
mov bl,  byte  [rax]
mov cx,  word  [rbx]
mov edx, dword [rcx]
mov rsi, qword [rdx]

; [rip + base + disp8]
mov bl,  byte  [rax + 0x12]
mov cx,  word  [rbx + 0x13]
mov edx, dword [rcx + 0x14]
mov rsi, qword [rdx + 0x15]

; [rip + base + disp32]
mov bl,  byte  [rax + 0x1234]
mov cx,  word  [rbx + 0x1235]
mov edx, dword [rcx + 0x1236]
mov rsi, qword [rdx + 0x1237]

mov bl,  byte  [rax + 0x12345678]
mov cx,  word  [rbx + 0x12345679]
mov edx, dword [rcx + 0x1234567a]
mov rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
mov bl,  byte  [rax + rbx]
mov cx,  word  [rbx + rcx]
mov edx, dword [rcx + rsi]
mov rsi, qword [rdx + rdi]

; [rip + base + scale * index]
mov bl,  byte  [rax + 2 * rbx]
mov cx,  word  [rbx + 4 * rcx]
mov edx, dword [rcx + 8 * rsi]
mov rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
mov bl,  byte  [rax + rbx + 0x12]
mov cx,  word  [rbx + rcx + 0x13]
mov edx, dword [rcx + rsi + 0x14]
mov rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
mov bl,  byte  [rax + rbx + 0x1234]
mov cx,  word  [rbx + rcx + 0x1235]
mov edx, dword [rcx + rsi + 0x1236]
mov rsi, qword [rdx + rdi + 0x1237]

mov bl,  byte  [rax + rbx + 0x12345678]
mov cx,  word  [rbx + rcx + 0x12345679]
mov edx, dword [rcx + rsi + 0x1234567a]
mov rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
mov bl,  byte  [rax + 2 * rbx + 0x12]
mov cx,  word  [rbx + 4 * rcx + 0x13]
mov edx, dword [rcx + 8 * rsi + 0x14]
mov rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
mov bl,  byte  [rax + 2 * rbx + 0x1234]
mov cx,  word  [rbx + 4 * rcx + 0x1235]
mov edx, dword [rcx + 8 * rsi + 0x1236]
mov rsi, qword [rdx + 8 * rdi + 0x1237]

mov bl,  byte  [rax + 2 * rbx + 0x12345678]
mov cx,  word  [rbx + 4 * rcx + 0x12345679]
mov edx, dword [rcx + 8 * rsi + 0x1234567a]
mov rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
mov bl,  byte  [2 * rbx]
mov cx,  word  [4 * rcx]
mov edx, dword [8 * rsi]
mov rsi, qword [8 * rdi]

; [scale * index + disp8]
mov bl,  byte  [2 * rbx + 0x12]
mov cx,  word  [4 * rcx + 0x13]
mov edx, dword [8 * rsi + 0x14]
mov rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
mov bl,  byte  [2 * rbx + 0x1234]
mov cx,  word  [4 * rcx + 0x1235]
mov edx, dword [8 * rsi + 0x1236]
mov rsi, qword [8 * rdi + 0x1237]

mov bl,  byte  [2 * rbx + 0x12345678]
mov cx,  word  [4 * rcx + 0x12345679]
mov edx, dword [8 * rsi + 0x1234567a]
mov rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
mov al, byte [rbp]
mov al, byte [rbp + 0x12]
mov al, byte [rbp + 0x1234]
mov al, byte [rbp + 0x12345678]

mov al, byte [4 * rbp]
mov al, byte [4 * rbp + 0x12]
mov al, byte [4 * rbp + 0x1234]
mov al, byte [4 * rbp + 0x12345678]

mov al, byte [rbx + 4 * rbp]
mov al, byte [rbx + 4 * rbp + 0x12]
mov al, byte [rbx + 4 * rbp + 0x1234]
mov al, byte [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
mov al, byte [rsp]
mov al, byte [rsp + 0x12]
mov al, byte [rsp + 0x1234]
mov al, byte [rsp + 0x12345678]

mov al, byte [rsp + rax]
mov al, byte [rsp + rbp]
mov al, byte [rsp + 2*rbp]
mov al, byte [rsp + 4*rbp]
mov al, byte [rsp + 8*rbp]

; use each register as indirect.
mov al, byte [rax]
mov al, byte [rcx]
mov al, byte [rdx]
mov al, byte [rbx]
mov al, byte [rsp]
mov al, byte [rbp]
mov al, byte [rsi]
mov al, byte [rdi]

; use each register as indirect.
; rsp is forbidden as index
mov al, byte [rax + 2*rax]
mov al, byte [rcx + 2*rcx]
mov al, byte [rdx + 2*rdx]
mov al, byte [rbx + 2*rbx]
mov al, byte [rbp + 2*rbp]
mov al, byte [rsi + 2*rsi]
mov al, byte [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode m,r
; ------------------------------------------------------------------------------
; [rip + disp32]
mov byte  [rip + 0x12], bl
mov word  [rip + 0x13], cx
mov dword [rip + 0x14], edx
mov qword [rip + 0x15], rsi

mov byte  [rip + 0x1234], bl
mov word  [rip + 0x1235], cx
mov dword [rip + 0x1236], edx
mov qword [rip + 0x1237], rsi

mov byte  [rip + 0x12345678], bl
mov word  [rip + 0x12345679], cx
mov dword [rip + 0x1234567a], edx
mov qword [rip + 0x1234567b], rsi

; [rip + base]
mov byte  [rax], bl
mov word  [rbx], cx
mov dword [rcx], edx
mov qword [rdx], rsi

; [rip + base + disp8]
mov byte  [rax + 0x12], bl
mov word  [rbx + 0x13], cx
mov dword [rcx + 0x14], edx
mov qword [rdx + 0x15], rsi

; [rip + base + disp32]
mov byte  [rax + 0x1234], bl
mov word  [rbx + 0x1235], cx
mov dword [rcx + 0x1236], edx
mov qword [rdx + 0x1237], rsi

mov byte  [rax + 0x12345678], bl
mov word  [rbx + 0x12345679], cx
mov dword [rcx + 0x1234567a], edx
mov qword [rdx + 0x1234567b], rsi

; [rip + base + index]
mov byte  [rax + rbx], bl
mov word  [rbx + rcx], cx
mov dword [rcx + rsi], edx
mov qword [rdx + rdi], rsi

; [rip + base + scale * index]
mov byte  [rax + 2 * rbx], bl
mov word  [rbx + 4 * rcx], cx
mov dword [rcx + 8 * rsi], edx
mov qword [rdx + 8 * rdi], rsi

; [rip + base + index + disp8]
mov byte  [rax + rbx + 0x12], bl
mov word  [rbx + rcx + 0x13], cx
mov dword [rcx + rsi + 0x14], edx
mov qword [rdx + rdi + 0x15], rsi

; [rip + base + index + disp32]
mov byte  [rax + rbx + 0x1234], bl
mov word  [rbx + rcx + 0x1235], cx
mov dword [rcx + rsi + 0x1236], edx
mov qword [rdx + rdi + 0x1237], rsi

mov byte  [rax + rbx + 0x12345678], bl
mov word  [rbx + rcx + 0x12345679], cx
mov dword [rcx + rsi + 0x1234567a], edx
mov qword [rdx + rdi + 0x1234567b], rsi

; [rip + base + scale * index + disp8]
mov byte  [rax + 2 * rbx + 0x12], bl
mov word  [rbx + 4 * rcx + 0x13], cx
mov dword [rcx + 8 * rsi + 0x14], edx
mov qword [rdx + 8 * rdi + 0x15], rsi

; [rip + base + scale * index + disp32]
mov byte  [rax + 2 * rbx + 0x1234], bl
mov word  [rbx + 4 * rcx + 0x1235], cx
mov dword [rcx + 8 * rsi + 0x1236], edx
mov qword [rdx + 8 * rdi + 0x1237], rsi

mov byte  [rax + 2 * rbx + 0x12345678], bl
mov word  [rbx + 4 * rcx + 0x12345679], cx
mov dword [rcx + 8 * rsi + 0x1234567a], edx
mov qword [rdx + 8 * rdi + 0x1234567b], rsi

; [scale * index]
mov byte  [2 * rbx], bl
mov word  [4 * rcx], cx
mov dword [8 * rsi], edx
mov qword [8 * rdi], rsi

; [scale * index + disp8]
mov byte  [2 * rbx + 0x12], bl
mov word  [4 * rcx + 0x13], cx
mov dword [8 * rsi + 0x14], edx
mov qword [8 * rdi + 0x15], rsi

; [scale * index + disp32]
mov byte  [2 * rbx + 0x1234], bl
mov word  [4 * rcx + 0x1235], cx
mov dword [8 * rsi + 0x1236], edx
mov qword [8 * rdi + 0x1237], rsi

mov byte  [2 * rbx + 0x12345678], bl
mov word  [4 * rcx + 0x12345679], cx
mov dword [8 * rsi + 0x1234567a], edx
mov qword [8 * rdi + 0x1234567b], rsi

; Use rbp as base or index.
mov byte [rbp], al
mov byte [rbp + 0x12], al
mov byte [rbp + 0x1234], al
mov byte [rbp + 0x12345678], al

mov byte [4 * rbp], al
mov byte [4 * rbp + 0x12], al
mov byte [4 * rbp + 0x1234], al
mov byte [4 * rbp + 0x12345678], al

mov byte [rbx + 4 * rbp], al
mov byte [rbx + 4 * rbp + 0x12], al
mov byte [rbx + 4 * rbp + 0x1234], al
mov byte [rbx + 4 * rbp + 0x12345678], al

; Use rsp as base.
mov byte [rsp], al
mov byte [rsp + 0x12], al
mov byte [rsp + 0x1234], al
mov byte [rsp + 0x12345678], al

mov byte [rsp + rax], al
mov byte [rsp + rbp], al
mov byte [rsp + 2*rbp], al
mov byte [rsp + 4*rbp], al
mov byte [rsp + 8*rbp], al

; use each register as indirect.
mov byte [rax], al
mov byte [rcx], al
mov byte [rdx], al
mov byte [rbx], al
mov byte [rsp], al
mov byte [rbp], al
mov byte [rsi], al
mov byte [rdi], al

; use each register as indirect.
; rsp is forbidden as index
mov byte [rax + 2*rax], al
mov byte [rcx + 2*rcx], al
mov byte [rdx + 2*rdx], al
mov byte [rbx + 2*rbx], al
mov byte [rbp + 2*rbp], al
mov byte [rsi + 2*rsi], al
mov byte [rdi + 2*rdi], al

; ------------------------------------------------------------------------------
; opcode r,imm
; ------------------------------------------------------------------------------
; immediate to each register: 8-bit
mov al, 0x12
mov cl, 0x13
mov dl, 0x14
mov bl, 0x15
mov ah, 0x16
mov ch, 0x17
mov dh, 0x18
mov bh, 0x19

; immediate to each register: 16-bit
mov ax, 0x12
mov cx, 0x13
mov dx, 0x14
mov bx, 0x15
mov sp, 0x16
mov bp, 0x17
mov si, 0x18
mov di, 0x19

mov ax, 0x1234
mov cx, 0x1235
mov dx, 0x1236
mov bx, 0x1237
mov sp, 0x1238
mov bp, 0x1239
mov si, 0x123a
mov di, 0x123b

; immediate to each register: 32-bit
mov eax, 0x12
mov ecx, 0x13
mov edx, 0x14
mov ebx, 0x15
mov esp, 0x16
mov ebp, 0x17
mov esi, 0x18
mov edi, 0x19

mov eax, 0x1234
mov ecx, 0x1235
mov edx, 0x1236
mov ebx, 0x1237
mov esp, 0x1238
mov ebp, 0x1239
mov esi, 0x123a
mov edi, 0x123b

mov eax, 0x12345678
mov ecx, 0x12345679
mov edx, 0x1234567a
mov ebx, 0x1234567b
mov esp, 0x1234567c
mov ebp, 0x1234567d
mov esi, 0x1234567e
mov edi, 0x1234567f

; immediate to each register: 64-bit
mov rax, 0x12
mov rcx, 0x13
mov rdx, 0x14
mov rbx, 0x15
mov rsp, 0x16
mov rbp, 0x17
mov rsi, 0x18
mov rdi, 0x19

mov rax, 0x1234
mov rcx, 0x1235
mov rdx, 0x1236
mov rbx, 0x1237
mov rsp, 0x1238
mov rbp, 0x1239
mov rsi, 0x123a
mov rdi, 0x123b

mov rax, 0x12345678
mov rcx, 0x12345679
mov rdx, 0x1234567a
mov rbx, 0x1234567b
mov rsp, 0x1234567c
mov rbp, 0x1234567d
mov rsi, 0x1234567e
mov rdi, 0x1234567f

; ------------------------------------------------------------------------------
; opcode m,imm
; ------------------------------------------------------------------------------
; [rip + disp32]
mov byte  [rip + 0x12], 0x13
mov word  [rip + 0x13], 0x1234
mov dword [rip + 0x14], 0x12345678
mov qword [rip + 0x15], 0x12345679

mov byte  [rip + 0x1234], 0x13
mov word  [rip + 0x1235], 0x1234
mov dword [rip + 0x1236], 0x12345678
mov qword [rip + 0x1237], 0x12345679

mov byte  [rip + 0x12345678], 0x13
mov word  [rip + 0x12345679], 0x1234
mov dword [rip + 0x1234567a], 0x12345678
mov qword [rip + 0x1234567b], 0x12345679

; [rip + base]
mov byte  [rax], 0x13
mov word  [rbx], 0x1234
mov dword [rcx], 0x12345678
mov qword [rdx], 0x12345679

; [rip + base + disp8]
mov byte  [rax + 0x12], 0x13
mov word  [rbx + 0x13], 0x1234
mov dword [rcx + 0x14], 0x12345678
mov qword [rdx + 0x15], 0x12345679

; [rip + base + disp32]
mov byte  [rax + 0x1234], 0x13
mov word  [rbx + 0x1235], 0x1234
mov dword [rcx + 0x1236], 0x12345678
mov qword [rdx + 0x1237], 0x12345679

mov byte  [rax + 0x12345678], 0x13
mov word  [rbx + 0x12345679], 0x1234
mov dword [rcx + 0x1234567a], 0x12345678
mov qword [rdx + 0x1234567b], 0x12345679

; [rip + base + index]
mov byte  [rax + rbx], 0x13
mov word  [rbx + rcx], 0x1234
mov dword [rcx + rsi], 0x12345678
mov qword [rdx + rdi], 0x12345679

; [rip + base + scale * index]
mov byte  [rax + 2 * rbx], 0x13
mov word  [rbx + 4 * rcx], 0x1234
mov dword [rcx + 8 * rsi], 0x12345678
mov qword [rdx + 8 * rdi], 0x12345679

; [rip + base + index + disp8]
mov byte  [rax + rbx + 0x12], 0x13
mov word  [rbx + rcx + 0x13], 0x1234
mov dword [rcx + rsi + 0x14], 0x12345678
mov qword [rdx + rdi + 0x15], 0x12345679

; [rip + base + index + disp32]
mov byte  [rax + rbx + 0x1234], 0x13
mov word  [rbx + rcx + 0x1235], 0x1234
mov dword [rcx + rsi + 0x1236], 0x12345678
mov qword [rdx + rdi + 0x1237], 0x12345679

mov byte  [rax + rbx + 0x12345678], 0x13
mov word  [rbx + rcx + 0x12345679], 0x1234
mov dword [rcx + rsi + 0x1234567a], 0x12345678
mov qword [rdx + rdi + 0x1234567b], 0x12345679

; [rip + base + scale * index + disp8]
mov byte  [rax + 2 * rbx + 0x12], 0x13
mov word  [rbx + 4 * rcx + 0x13], 0x1234
mov dword [rcx + 8 * rsi + 0x14], 0x12345678
mov qword [rdx + 8 * rdi + 0x15], 0x12345679

; [rip + base + scale * index + disp32]
mov byte  [rax + 2 * rbx + 0x1234], 0x13
mov word  [rbx + 4 * rcx + 0x1235], 0x1234
mov dword [rcx + 8 * rsi + 0x1236], 0x12345678
mov qword [rdx + 8 * rdi + 0x1237], 0x12345679

mov byte  [rax + 2 * rbx + 0x12345678], 0x13
mov word  [rbx + 4 * rcx + 0x12345679], 0x1234
mov dword [rcx + 8 * rsi + 0x1234567a], 0x12345678
mov qword [rdx + 8 * rdi + 0x1234567b], 0x12345679

; [scale * index]
mov byte  [2 * rbx], 0x13
mov word  [4 * rcx], 0x1234
mov dword [8 * rsi], 0x12345678
mov qword [8 * rdi], 0x12345679

; [scale * index + disp8]
mov byte  [2 * rbx + 0x12], 0x13
mov word  [4 * rcx + 0x13], 0x1234
mov dword [8 * rsi + 0x14], 0x12345678
mov qword [8 * rdi + 0x15], 0x12345679

; [scale * index + disp32]
mov byte  [2 * rbx + 0x1234], 0x13
mov word  [4 * rcx + 0x1235], 0x1234
mov dword [8 * rsi + 0x1236], 0x12345678
mov qword [8 * rdi + 0x1237], 0x12345679

mov byte  [2 * rbx + 0x12345678], 0x13
mov word  [4 * rcx + 0x12345679], 0x1234
mov dword [8 * rsi + 0x1234567a], 0x12345678
mov qword [8 * rdi + 0x1234567b], 0x12345679

; Use rbp as base or index.
mov byte [rbp], 0x12
mov byte [rbp + 0x12], 0x13
mov byte [rbp + 0x1234], 0x14
mov byte [rbp + 0x12345678], 0x15

mov byte [4 * rbp], 0x12
mov byte [4 * rbp + 0x12], 0x13
mov byte [4 * rbp + 0x1234], 0x14
mov byte [4 * rbp + 0x12345678], 0x15

mov byte [rbx + 4 * rbp], 0x12
mov byte [rbx + 4 * rbp + 0x12], 0x13
mov byte [rbx + 4 * rbp + 0x1234], 0x14
mov byte [rbx + 4 * rbp + 0x12345678], 0x15

; Use rsp as base.
mov byte [rsp], 0x12
mov byte [rsp + 0x12], 0x13
mov byte [rsp + 0x1234], 0x14
mov byte [rsp + 0x12345678], 0x15

mov byte [rsp + rax], 0x12
mov byte [rsp + rbp], 0x13
mov byte [rsp + 2*rbp], 0x14
mov byte [rsp + 4*rbp], 0x15
mov byte [rsp + 8*rbp], 0x16

; use each register as indirect.
mov byte [rax], 0x12
mov byte [rcx], 0x13
mov byte [rdx], 0x14
mov byte [rbx], 0x15
mov byte [rsp], 0x16
mov byte [rbp], 0x17
mov byte [rsi], 0x18
mov byte [rdi], 0x19

; use each register as indirect.
; rsp is forbidden as index
mov byte [rax + 2*rax], 0x12
mov byte [rcx + 2*rcx], 0x13
mov byte [rdx + 2*rdx], 0x14
mov byte [rbx + 2*rbx], 0x15
mov byte [rbp + 2*rbp], 0x16
mov byte [rsi + 2*rsi], 0x17
mov byte [rdi + 2*rdi], 0x18

; ------------------------------------------------------------------------------
; opcode r64,imm64
; ------------------------------------------------------------------------------
mov rax, 0x123456789abcdef0
mov rax, 1125899906842624
mov rax, -9223372036854775807
mov rax, 0xffffffffffffffff
mov rcx, 0x123456789abcdef0
mov rcx, 1125899906842624
mov rcx, -9223372036854775807
mov rcx, 0xffffffffffffffff
mov rdx, 0x123456789abcdef0
mov rdx, 1125899906842624
mov rdx, -9223372036854775807
mov rdx, 0xffffffffffffffff
mov rbx, 0x123456789abcdef0
mov rbx, 1125899906842624
mov rbx, -9223372036854775807
mov rbx, 0xffffffffffffffff
mov rsp, 0x123456789abcdef0
mov rsp, 1125899906842624
mov rsp, -9223372036854775807
mov rsp, 0xffffffffffffffff
mov rbp, 0x123456789abcdef0
mov rbp, 1125899906842624
mov rbp, -9223372036854775807
mov rbp, 0xffffffffffffffff
mov rsi, 0x123456789abcdef0
mov rsi, 1125899906842624
mov rsi, -9223372036854775807
mov rsi, 0xffffffffffffffff
mov rdi, 0x123456789abcdef0
mov rdi, 1125899906842624
mov rdi, -9223372036854775807
mov rdi, 0xffffffffffffffff

