use64
; ------------------------------------------------------------------------------
; opcode r,r
; ------------------------------------------------------------------------------
; 8-bit registers
cmp al, al
cmp al, cl
cmp al, dl
cmp al, bl
cmp al, ah
cmp al, ch
cmp al, dh
cmp al, bh

cmp al, al
cmp cl, al
cmp dl, al
cmp bl, al
cmp ah, al
cmp ch, al
cmp dh, al
cmp bh, al

cmp al, bh
cmp cl, dh
cmp dl, ch
cmp bl, ah
cmp ah, bl
cmp ch, dl
cmp dh, cl
cmp bh, al

; 16-bit registers
cmp ax, ax
cmp ax, cx
cmp ax, dx
cmp ax, bx
cmp ax, sp
cmp ax, bp
cmp ax, si
cmp ax, di

cmp ax, ax
cmp cx, ax
cmp dx, ax
cmp bx, ax
cmp sp, ax
cmp bp, ax
cmp si, ax
cmp di, ax

cmp ax, di
cmp cx, si
cmp dx, bp
cmp bx, sp
cmp sp, bx
cmp bp, dx
cmp si, cx
cmp di, ax

; 32-bit registers
cmp eax, eax
cmp eax, ecx
cmp eax, edx
cmp eax, ebx
cmp eax, esp
cmp eax, ebp
cmp eax, esi
cmp eax, edi

cmp eax, eax
cmp ecx, eax
cmp edx, eax
cmp ebx, eax
cmp esp, eax
cmp ebp, eax
cmp esi, eax
cmp edi, eax

cmp eax, edi
cmp ecx, esi
cmp edx, ebp
cmp ebx, esp
cmp esp, ebx
cmp ebp, edx
cmp esi, ecx
cmp edi, eax

; 64-bit registers
cmp rax, rax
cmp rax, rcx
cmp rax, rdx
cmp rax, rbx
cmp rax, rsp
cmp rax, rbp
cmp rax, rsi
cmp rax, rdi

cmp rax, rax
cmp rcx, rax
cmp rdx, rax
cmp rbx, rax
cmp rsp, rax
cmp rbp, rax
cmp rsi, rax
cmp rdi, rax

cmp rax, rdi
cmp rcx, rsi
cmp rdx, rbp
cmp rbx, rsp
cmp rsp, rbx
cmp rbp, rdx
cmp rsi, rcx
cmp rdi, rax

; ------------------------------------------------------------------------------
; opcode r,m
; ------------------------------------------------------------------------------
; [rip + disp32]
cmp bl,  byte  [rip + 0x12]
cmp cx,  word  [rip + 0x13]
cmp edx, dword [rip + 0x14]
cmp rsi, qword [rip + 0x15]

cmp bl,  byte  [rip + 0x1234]
cmp cx,  word  [rip + 0x1235]
cmp edx, dword [rip + 0x1236]
cmp rsi, qword [rip + 0x1237]

cmp bl,  byte  [rip + 0x12345678]
cmp cx,  word  [rip + 0x12345679]
cmp edx, dword [rip + 0x1234567a]
cmp rsi, qword [rip + 0x1234567b]

; [rip + base]
cmp bl,  byte  [rax]
cmp cx,  word  [rbx]
cmp edx, dword [rcx]
cmp rsi, qword [rdx]

; [rip + base + disp8]
cmp bl,  byte  [rax + 0x12]
cmp cx,  word  [rbx + 0x13]
cmp edx, dword [rcx + 0x14]
cmp rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmp bl,  byte  [rax + 0x1234]
cmp cx,  word  [rbx + 0x1235]
cmp edx, dword [rcx + 0x1236]
cmp rsi, qword [rdx + 0x1237]

cmp bl,  byte  [rax + 0x12345678]
cmp cx,  word  [rbx + 0x12345679]
cmp edx, dword [rcx + 0x1234567a]
cmp rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmp bl,  byte  [rax + rbx]
cmp cx,  word  [rbx + rcx]
cmp edx, dword [rcx + rsi]
cmp rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmp bl,  byte  [rax + 2 * rbx]
cmp cx,  word  [rbx + 4 * rcx]
cmp edx, dword [rcx + 8 * rsi]
cmp rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmp bl,  byte  [rax + rbx + 0x12]
cmp cx,  word  [rbx + rcx + 0x13]
cmp edx, dword [rcx + rsi + 0x14]
cmp rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmp bl,  byte  [rax + rbx + 0x1234]
cmp cx,  word  [rbx + rcx + 0x1235]
cmp edx, dword [rcx + rsi + 0x1236]
cmp rsi, qword [rdx + rdi + 0x1237]

cmp bl,  byte  [rax + rbx + 0x12345678]
cmp cx,  word  [rbx + rcx + 0x12345679]
cmp edx, dword [rcx + rsi + 0x1234567a]
cmp rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmp bl,  byte  [rax + 2 * rbx + 0x12]
cmp cx,  word  [rbx + 4 * rcx + 0x13]
cmp edx, dword [rcx + 8 * rsi + 0x14]
cmp rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmp bl,  byte  [rax + 2 * rbx + 0x1234]
cmp cx,  word  [rbx + 4 * rcx + 0x1235]
cmp edx, dword [rcx + 8 * rsi + 0x1236]
cmp rsi, qword [rdx + 8 * rdi + 0x1237]

cmp bl,  byte  [rax + 2 * rbx + 0x12345678]
cmp cx,  word  [rbx + 4 * rcx + 0x12345679]
cmp edx, dword [rcx + 8 * rsi + 0x1234567a]
cmp rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmp bl,  byte  [2 * rbx]
cmp cx,  word  [4 * rcx]
cmp edx, dword [8 * rsi]
cmp rsi, qword [8 * rdi]

; [scale * index + disp8]
cmp bl,  byte  [2 * rbx + 0x12]
cmp cx,  word  [4 * rcx + 0x13]
cmp edx, dword [8 * rsi + 0x14]
cmp rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmp bl,  byte  [2 * rbx + 0x1234]
cmp cx,  word  [4 * rcx + 0x1235]
cmp edx, dword [8 * rsi + 0x1236]
cmp rsi, qword [8 * rdi + 0x1237]

cmp bl,  byte  [2 * rbx + 0x12345678]
cmp cx,  word  [4 * rcx + 0x12345679]
cmp edx, dword [8 * rsi + 0x1234567a]
cmp rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmp al, byte [rbp]
cmp al, byte [rbp + 0x12]
cmp al, byte [rbp + 0x1234]
cmp al, byte [rbp + 0x12345678]

cmp al, byte [4 * rbp]
cmp al, byte [4 * rbp + 0x12]
cmp al, byte [4 * rbp + 0x1234]
cmp al, byte [4 * rbp + 0x12345678]

cmp al, byte [rbx + 4 * rbp]
cmp al, byte [rbx + 4 * rbp + 0x12]
cmp al, byte [rbx + 4 * rbp + 0x1234]
cmp al, byte [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmp al, byte [rsp]
cmp al, byte [rsp + 0x12]
cmp al, byte [rsp + 0x1234]
cmp al, byte [rsp + 0x12345678]

cmp al, byte [rsp + rax]
cmp al, byte [rsp + rbp]
cmp al, byte [rsp + 2*rbp]
cmp al, byte [rsp + 4*rbp]
cmp al, byte [rsp + 8*rbp]

; use each register as indirect.
cmp al, byte [rax]
cmp al, byte [rcx]
cmp al, byte [rdx]
cmp al, byte [rbx]
cmp al, byte [rsp]
cmp al, byte [rbp]
cmp al, byte [rsi]
cmp al, byte [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmp al, byte [rax + 2*rax]
cmp al, byte [rcx + 2*rcx]
cmp al, byte [rdx + 2*rdx]
cmp al, byte [rbx + 2*rbx]
cmp al, byte [rbp + 2*rbp]
cmp al, byte [rsi + 2*rsi]
cmp al, byte [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode m,r
; ------------------------------------------------------------------------------
; [rip + disp32]
cmp byte  [rip + 0x12], bl
cmp word  [rip + 0x13], cx
cmp dword [rip + 0x14], edx
cmp qword [rip + 0x15], rsi

cmp byte  [rip + 0x1234], bl
cmp word  [rip + 0x1235], cx
cmp dword [rip + 0x1236], edx
cmp qword [rip + 0x1237], rsi

cmp byte  [rip + 0x12345678], bl
cmp word  [rip + 0x12345679], cx
cmp dword [rip + 0x1234567a], edx
cmp qword [rip + 0x1234567b], rsi

; [rip + base]
cmp byte  [rax], bl
cmp word  [rbx], cx
cmp dword [rcx], edx
cmp qword [rdx], rsi

; [rip + base + disp8]
cmp byte  [rax + 0x12], bl
cmp word  [rbx + 0x13], cx
cmp dword [rcx + 0x14], edx
cmp qword [rdx + 0x15], rsi

; [rip + base + disp32]
cmp byte  [rax + 0x1234], bl
cmp word  [rbx + 0x1235], cx
cmp dword [rcx + 0x1236], edx
cmp qword [rdx + 0x1237], rsi

cmp byte  [rax + 0x12345678], bl
cmp word  [rbx + 0x12345679], cx
cmp dword [rcx + 0x1234567a], edx
cmp qword [rdx + 0x1234567b], rsi

; [rip + base + index]
cmp byte  [rax + rbx], bl
cmp word  [rbx + rcx], cx
cmp dword [rcx + rsi], edx
cmp qword [rdx + rdi], rsi

; [rip + base + scale * index]
cmp byte  [rax + 2 * rbx], bl
cmp word  [rbx + 4 * rcx], cx
cmp dword [rcx + 8 * rsi], edx
cmp qword [rdx + 8 * rdi], rsi

; [rip + base + index + disp8]
cmp byte  [rax + rbx + 0x12], bl
cmp word  [rbx + rcx + 0x13], cx
cmp dword [rcx + rsi + 0x14], edx
cmp qword [rdx + rdi + 0x15], rsi

; [rip + base + index + disp32]
cmp byte  [rax + rbx + 0x1234], bl
cmp word  [rbx + rcx + 0x1235], cx
cmp dword [rcx + rsi + 0x1236], edx
cmp qword [rdx + rdi + 0x1237], rsi

cmp byte  [rax + rbx + 0x12345678], bl
cmp word  [rbx + rcx + 0x12345679], cx
cmp dword [rcx + rsi + 0x1234567a], edx
cmp qword [rdx + rdi + 0x1234567b], rsi

; [rip + base + scale * index + disp8]
cmp byte  [rax + 2 * rbx + 0x12], bl
cmp word  [rbx + 4 * rcx + 0x13], cx
cmp dword [rcx + 8 * rsi + 0x14], edx
cmp qword [rdx + 8 * rdi + 0x15], rsi

; [rip + base + scale * index + disp32]
cmp byte  [rax + 2 * rbx + 0x1234], bl
cmp word  [rbx + 4 * rcx + 0x1235], cx
cmp dword [rcx + 8 * rsi + 0x1236], edx
cmp qword [rdx + 8 * rdi + 0x1237], rsi

cmp byte  [rax + 2 * rbx + 0x12345678], bl
cmp word  [rbx + 4 * rcx + 0x12345679], cx
cmp dword [rcx + 8 * rsi + 0x1234567a], edx
cmp qword [rdx + 8 * rdi + 0x1234567b], rsi

; [scale * index]
cmp byte  [2 * rbx], bl
cmp word  [4 * rcx], cx
cmp dword [8 * rsi], edx
cmp qword [8 * rdi], rsi

; [scale * index + disp8]
cmp byte  [2 * rbx + 0x12], bl
cmp word  [4 * rcx + 0x13], cx
cmp dword [8 * rsi + 0x14], edx
cmp qword [8 * rdi + 0x15], rsi

; [scale * index + disp32]
cmp byte  [2 * rbx + 0x1234], bl
cmp word  [4 * rcx + 0x1235], cx
cmp dword [8 * rsi + 0x1236], edx
cmp qword [8 * rdi + 0x1237], rsi

cmp byte  [2 * rbx + 0x12345678], bl
cmp word  [4 * rcx + 0x12345679], cx
cmp dword [8 * rsi + 0x1234567a], edx
cmp qword [8 * rdi + 0x1234567b], rsi

; Use rbp as base or index.
cmp byte [rbp], al
cmp byte [rbp + 0x12], al
cmp byte [rbp + 0x1234], al
cmp byte [rbp + 0x12345678], al

cmp byte [4 * rbp], al
cmp byte [4 * rbp + 0x12], al
cmp byte [4 * rbp + 0x1234], al
cmp byte [4 * rbp + 0x12345678], al

cmp byte [rbx + 4 * rbp], al
cmp byte [rbx + 4 * rbp + 0x12], al
cmp byte [rbx + 4 * rbp + 0x1234], al
cmp byte [rbx + 4 * rbp + 0x12345678], al

; Use rsp as base.
cmp byte [rsp], al
cmp byte [rsp + 0x12], al
cmp byte [rsp + 0x1234], al
cmp byte [rsp + 0x12345678], al

cmp byte [rsp + rax], al
cmp byte [rsp + rbp], al
cmp byte [rsp + 2*rbp], al
cmp byte [rsp + 4*rbp], al
cmp byte [rsp + 8*rbp], al

; use each register as indirect.
cmp byte [rax], al
cmp byte [rcx], al
cmp byte [rdx], al
cmp byte [rbx], al
cmp byte [rsp], al
cmp byte [rbp], al
cmp byte [rsi], al
cmp byte [rdi], al

; use each register as indirect.
; rsp is forbidden as index
cmp byte [rax + 2*rax], al
cmp byte [rcx + 2*rcx], al
cmp byte [rdx + 2*rdx], al
cmp byte [rbx + 2*rbx], al
cmp byte [rbp + 2*rbp], al
cmp byte [rsi + 2*rsi], al
cmp byte [rdi + 2*rdi], al

; ------------------------------------------------------------------------------
; opcode r,imm
; ------------------------------------------------------------------------------
; immediate to each register: 8-bit
cmp al, 0x12
cmp cl, 0x13
cmp dl, 0x14
cmp bl, 0x15
cmp ah, 0x16
cmp ch, 0x17
cmp dh, 0x18
cmp bh, 0x19

; immediate to each register: 16-bit
cmp ax, 0x12
cmp cx, 0x13
cmp dx, 0x14
cmp bx, 0x15
cmp sp, 0x16
cmp bp, 0x17
cmp si, 0x18
cmp di, 0x19

cmp ax, 0x1234
cmp cx, 0x1235
cmp dx, 0x1236
cmp bx, 0x1237
cmp sp, 0x1238
cmp bp, 0x1239
cmp si, 0x123a
cmp di, 0x123b

; immediate to each register: 32-bit
cmp eax, 0x12
cmp ecx, 0x13
cmp edx, 0x14
cmp ebx, 0x15
cmp esp, 0x16
cmp ebp, 0x17
cmp esi, 0x18
cmp edi, 0x19

cmp eax, 0x1234
cmp ecx, 0x1235
cmp edx, 0x1236
cmp ebx, 0x1237
cmp esp, 0x1238
cmp ebp, 0x1239
cmp esi, 0x123a
cmp edi, 0x123b

cmp eax, 0x12345678
cmp ecx, 0x12345679
cmp edx, 0x1234567a
cmp ebx, 0x1234567b
cmp esp, 0x1234567c
cmp ebp, 0x1234567d
cmp esi, 0x1234567e
cmp edi, 0x1234567f

; immediate to each register: 64-bit
cmp rax, 0x12
cmp rcx, 0x13
cmp rdx, 0x14
cmp rbx, 0x15
cmp rsp, 0x16
cmp rbp, 0x17
cmp rsi, 0x18
cmp rdi, 0x19

cmp rax, 0x1234
cmp rcx, 0x1235
cmp rdx, 0x1236
cmp rbx, 0x1237
cmp rsp, 0x1238
cmp rbp, 0x1239
cmp rsi, 0x123a
cmp rdi, 0x123b

cmp rax, 0x12345678
cmp rcx, 0x12345679
cmp rdx, 0x1234567a
cmp rbx, 0x1234567b
cmp rsp, 0x1234567c
cmp rbp, 0x1234567d
cmp rsi, 0x1234567e
cmp rdi, 0x1234567f

; ------------------------------------------------------------------------------
; opcode m,imm
; ------------------------------------------------------------------------------
; [rip + disp32]
cmp byte  [rip + 0x12], 0x13
cmp word  [rip + 0x13], 0x1234
cmp dword [rip + 0x14], 0x12345678
cmp qword [rip + 0x15], 0x12345679

cmp byte  [rip + 0x1234], 0x13
cmp word  [rip + 0x1235], 0x1234
cmp dword [rip + 0x1236], 0x12345678
cmp qword [rip + 0x1237], 0x12345679

cmp byte  [rip + 0x12345678], 0x13
cmp word  [rip + 0x12345679], 0x1234
cmp dword [rip + 0x1234567a], 0x12345678
cmp qword [rip + 0x1234567b], 0x12345679

; [rip + base]
cmp byte  [rax], 0x13
cmp word  [rbx], 0x1234
cmp dword [rcx], 0x12345678
cmp qword [rdx], 0x12345679

; [rip + base + disp8]
cmp byte  [rax + 0x12], 0x13
cmp word  [rbx + 0x13], 0x1234
cmp dword [rcx + 0x14], 0x12345678
cmp qword [rdx + 0x15], 0x12345679

; [rip + base + disp32]
cmp byte  [rax + 0x1234], 0x13
cmp word  [rbx + 0x1235], 0x1234
cmp dword [rcx + 0x1236], 0x12345678
cmp qword [rdx + 0x1237], 0x12345679

cmp byte  [rax + 0x12345678], 0x13
cmp word  [rbx + 0x12345679], 0x1234
cmp dword [rcx + 0x1234567a], 0x12345678
cmp qword [rdx + 0x1234567b], 0x12345679

; [rip + base + index]
cmp byte  [rax + rbx], 0x13
cmp word  [rbx + rcx], 0x1234
cmp dword [rcx + rsi], 0x12345678
cmp qword [rdx + rdi], 0x12345679

; [rip + base + scale * index]
cmp byte  [rax + 2 * rbx], 0x13
cmp word  [rbx + 4 * rcx], 0x1234
cmp dword [rcx + 8 * rsi], 0x12345678
cmp qword [rdx + 8 * rdi], 0x12345679

; [rip + base + index + disp8]
cmp byte  [rax + rbx + 0x12], 0x13
cmp word  [rbx + rcx + 0x13], 0x1234
cmp dword [rcx + rsi + 0x14], 0x12345678
cmp qword [rdx + rdi + 0x15], 0x12345679

; [rip + base + index + disp32]
cmp byte  [rax + rbx + 0x1234], 0x13
cmp word  [rbx + rcx + 0x1235], 0x1234
cmp dword [rcx + rsi + 0x1236], 0x12345678
cmp qword [rdx + rdi + 0x1237], 0x12345679

cmp byte  [rax + rbx + 0x12345678], 0x13
cmp word  [rbx + rcx + 0x12345679], 0x1234
cmp dword [rcx + rsi + 0x1234567a], 0x12345678
cmp qword [rdx + rdi + 0x1234567b], 0x12345679

; [rip + base + scale * index + disp8]
cmp byte  [rax + 2 * rbx + 0x12], 0x13
cmp word  [rbx + 4 * rcx + 0x13], 0x1234
cmp dword [rcx + 8 * rsi + 0x14], 0x12345678
cmp qword [rdx + 8 * rdi + 0x15], 0x12345679

; [rip + base + scale * index + disp32]
cmp byte  [rax + 2 * rbx + 0x1234], 0x13
cmp word  [rbx + 4 * rcx + 0x1235], 0x1234
cmp dword [rcx + 8 * rsi + 0x1236], 0x12345678
cmp qword [rdx + 8 * rdi + 0x1237], 0x12345679

cmp byte  [rax + 2 * rbx + 0x12345678], 0x13
cmp word  [rbx + 4 * rcx + 0x12345679], 0x1234
cmp dword [rcx + 8 * rsi + 0x1234567a], 0x12345678
cmp qword [rdx + 8 * rdi + 0x1234567b], 0x12345679

; [scale * index]
cmp byte  [2 * rbx], 0x13
cmp word  [4 * rcx], 0x1234
cmp dword [8 * rsi], 0x12345678
cmp qword [8 * rdi], 0x12345679

; [scale * index + disp8]
cmp byte  [2 * rbx + 0x12], 0x13
cmp word  [4 * rcx + 0x13], 0x1234
cmp dword [8 * rsi + 0x14], 0x12345678
cmp qword [8 * rdi + 0x15], 0x12345679

; [scale * index + disp32]
cmp byte  [2 * rbx + 0x1234], 0x13
cmp word  [4 * rcx + 0x1235], 0x1234
cmp dword [8 * rsi + 0x1236], 0x12345678
cmp qword [8 * rdi + 0x1237], 0x12345679

cmp byte  [2 * rbx + 0x12345678], 0x13
cmp word  [4 * rcx + 0x12345679], 0x1234
cmp dword [8 * rsi + 0x1234567a], 0x12345678
cmp qword [8 * rdi + 0x1234567b], 0x12345679

; Use rbp as base or index.
cmp byte [rbp], 0x12
cmp byte [rbp + 0x12], 0x13
cmp byte [rbp + 0x1234], 0x14
cmp byte [rbp + 0x12345678], 0x15

cmp byte [4 * rbp], 0x12
cmp byte [4 * rbp + 0x12], 0x13
cmp byte [4 * rbp + 0x1234], 0x14
cmp byte [4 * rbp + 0x12345678], 0x15

cmp byte [rbx + 4 * rbp], 0x12
cmp byte [rbx + 4 * rbp + 0x12], 0x13
cmp byte [rbx + 4 * rbp + 0x1234], 0x14
cmp byte [rbx + 4 * rbp + 0x12345678], 0x15

; Use rsp as base.
cmp byte [rsp], 0x12
cmp byte [rsp + 0x12], 0x13
cmp byte [rsp + 0x1234], 0x14
cmp byte [rsp + 0x12345678], 0x15

cmp byte [rsp + rax], 0x12
cmp byte [rsp + rbp], 0x13
cmp byte [rsp + 2*rbp], 0x14
cmp byte [rsp + 4*rbp], 0x15
cmp byte [rsp + 8*rbp], 0x16

; use each register as indirect.
cmp byte [rax], 0x12
cmp byte [rcx], 0x13
cmp byte [rdx], 0x14
cmp byte [rbx], 0x15
cmp byte [rsp], 0x16
cmp byte [rbp], 0x17
cmp byte [rsi], 0x18
cmp byte [rdi], 0x19

; use each register as indirect.
; rsp is forbidden as index
cmp byte [rax + 2*rax], 0x12
cmp byte [rcx + 2*rcx], 0x13
cmp byte [rdx + 2*rdx], 0x14
cmp byte [rbx + 2*rbx], 0x15
cmp byte [rbp + 2*rbp], 0x16
cmp byte [rsi + 2*rsi], 0x17
cmp byte [rdi + 2*rdi], 0x18

