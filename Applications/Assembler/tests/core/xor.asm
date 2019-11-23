use64
; ------------------------------------------------------------------------------
; opcode r,r
; ------------------------------------------------------------------------------
; 8-bit registers
xor al, al
xor al, cl
xor al, dl
xor al, bl
xor al, ah
xor al, ch
xor al, dh
xor al, bh

xor al, al
xor cl, al
xor dl, al
xor bl, al
xor ah, al
xor ch, al
xor dh, al
xor bh, al

xor al, bh
xor cl, dh
xor dl, ch
xor bl, ah
xor ah, bl
xor ch, dl
xor dh, cl
xor bh, al

; 16-bit registers
xor ax, ax
xor ax, cx
xor ax, dx
xor ax, bx
xor ax, sp
xor ax, bp
xor ax, si
xor ax, di

xor ax, ax
xor cx, ax
xor dx, ax
xor bx, ax
xor sp, ax
xor bp, ax
xor si, ax
xor di, ax

xor ax, di
xor cx, si
xor dx, bp
xor bx, sp
xor sp, bx
xor bp, dx
xor si, cx
xor di, ax

; 32-bit registers
xor eax, eax
xor eax, ecx
xor eax, edx
xor eax, ebx
xor eax, esp
xor eax, ebp
xor eax, esi
xor eax, edi

xor eax, eax
xor ecx, eax
xor edx, eax
xor ebx, eax
xor esp, eax
xor ebp, eax
xor esi, eax
xor edi, eax

xor eax, edi
xor ecx, esi
xor edx, ebp
xor ebx, esp
xor esp, ebx
xor ebp, edx
xor esi, ecx
xor edi, eax

; 64-bit registers
xor rax, rax
xor rax, rcx
xor rax, rdx
xor rax, rbx
xor rax, rsp
xor rax, rbp
xor rax, rsi
xor rax, rdi

xor rax, rax
xor rcx, rax
xor rdx, rax
xor rbx, rax
xor rsp, rax
xor rbp, rax
xor rsi, rax
xor rdi, rax

xor rax, rdi
xor rcx, rsi
xor rdx, rbp
xor rbx, rsp
xor rsp, rbx
xor rbp, rdx
xor rsi, rcx
xor rdi, rax

; ------------------------------------------------------------------------------
; opcode r,m
; ------------------------------------------------------------------------------
; [rip + disp32]
xor bl,  byte  [rip + 0x12]
xor cx,  word  [rip + 0x13]
xor edx, dword [rip + 0x14]
xor rsi, qword [rip + 0x15]

xor bl,  byte  [rip + 0x1234]
xor cx,  word  [rip + 0x1235]
xor edx, dword [rip + 0x1236]
xor rsi, qword [rip + 0x1237]

xor bl,  byte  [rip + 0x12345678]
xor cx,  word  [rip + 0x12345679]
xor edx, dword [rip + 0x1234567a]
xor rsi, qword [rip + 0x1234567b]

; [rip + base]
xor bl,  byte  [rax]
xor cx,  word  [rbx]
xor edx, dword [rcx]
xor rsi, qword [rdx]

; [rip + base + disp8]
xor bl,  byte  [rax + 0x12]
xor cx,  word  [rbx + 0x13]
xor edx, dword [rcx + 0x14]
xor rsi, qword [rdx + 0x15]

; [rip + base + disp32]
xor bl,  byte  [rax + 0x1234]
xor cx,  word  [rbx + 0x1235]
xor edx, dword [rcx + 0x1236]
xor rsi, qword [rdx + 0x1237]

xor bl,  byte  [rax + 0x12345678]
xor cx,  word  [rbx + 0x12345679]
xor edx, dword [rcx + 0x1234567a]
xor rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
xor bl,  byte  [rax + rbx]
xor cx,  word  [rbx + rcx]
xor edx, dword [rcx + rsi]
xor rsi, qword [rdx + rdi]

; [rip + base + scale * index]
xor bl,  byte  [rax + 2 * rbx]
xor cx,  word  [rbx + 4 * rcx]
xor edx, dword [rcx + 8 * rsi]
xor rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
xor bl,  byte  [rax + rbx + 0x12]
xor cx,  word  [rbx + rcx + 0x13]
xor edx, dword [rcx + rsi + 0x14]
xor rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
xor bl,  byte  [rax + rbx + 0x1234]
xor cx,  word  [rbx + rcx + 0x1235]
xor edx, dword [rcx + rsi + 0x1236]
xor rsi, qword [rdx + rdi + 0x1237]

xor bl,  byte  [rax + rbx + 0x12345678]
xor cx,  word  [rbx + rcx + 0x12345679]
xor edx, dword [rcx + rsi + 0x1234567a]
xor rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
xor bl,  byte  [rax + 2 * rbx + 0x12]
xor cx,  word  [rbx + 4 * rcx + 0x13]
xor edx, dword [rcx + 8 * rsi + 0x14]
xor rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
xor bl,  byte  [rax + 2 * rbx + 0x1234]
xor cx,  word  [rbx + 4 * rcx + 0x1235]
xor edx, dword [rcx + 8 * rsi + 0x1236]
xor rsi, qword [rdx + 8 * rdi + 0x1237]

xor bl,  byte  [rax + 2 * rbx + 0x12345678]
xor cx,  word  [rbx + 4 * rcx + 0x12345679]
xor edx, dword [rcx + 8 * rsi + 0x1234567a]
xor rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
xor bl,  byte  [2 * rbx]
xor cx,  word  [4 * rcx]
xor edx, dword [8 * rsi]
xor rsi, qword [8 * rdi]

; [scale * index + disp8]
xor bl,  byte  [2 * rbx + 0x12]
xor cx,  word  [4 * rcx + 0x13]
xor edx, dword [8 * rsi + 0x14]
xor rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
xor bl,  byte  [2 * rbx + 0x1234]
xor cx,  word  [4 * rcx + 0x1235]
xor edx, dword [8 * rsi + 0x1236]
xor rsi, qword [8 * rdi + 0x1237]

xor bl,  byte  [2 * rbx + 0x12345678]
xor cx,  word  [4 * rcx + 0x12345679]
xor edx, dword [8 * rsi + 0x1234567a]
xor rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
xor al, byte [rbp]
xor al, byte [rbp + 0x12]
xor al, byte [rbp + 0x1234]
xor al, byte [rbp + 0x12345678]

xor al, byte [4 * rbp]
xor al, byte [4 * rbp + 0x12]
xor al, byte [4 * rbp + 0x1234]
xor al, byte [4 * rbp + 0x12345678]

xor al, byte [rbx + 4 * rbp]
xor al, byte [rbx + 4 * rbp + 0x12]
xor al, byte [rbx + 4 * rbp + 0x1234]
xor al, byte [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
xor al, byte [rsp]
xor al, byte [rsp + 0x12]
xor al, byte [rsp + 0x1234]
xor al, byte [rsp + 0x12345678]

xor al, byte [rsp + rax]
xor al, byte [rsp + rbp]
xor al, byte [rsp + 2*rbp]
xor al, byte [rsp + 4*rbp]
xor al, byte [rsp + 8*rbp]

; use each register as indirect.
xor al, byte [rax]
xor al, byte [rcx]
xor al, byte [rdx]
xor al, byte [rbx]
xor al, byte [rsp]
xor al, byte [rbp]
xor al, byte [rsi]
xor al, byte [rdi]

; use each register as indirect.
; rsp is forbidden as index
xor al, byte [rax + 2*rax]
xor al, byte [rcx + 2*rcx]
xor al, byte [rdx + 2*rdx]
xor al, byte [rbx + 2*rbx]
xor al, byte [rbp + 2*rbp]
xor al, byte [rsi + 2*rsi]
xor al, byte [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode m,r
; ------------------------------------------------------------------------------
; [rip + disp32]
xor byte  [rip + 0x12], bl
xor word  [rip + 0x13], cx
xor dword [rip + 0x14], edx
xor qword [rip + 0x15], rsi

xor byte  [rip + 0x1234], bl
xor word  [rip + 0x1235], cx
xor dword [rip + 0x1236], edx
xor qword [rip + 0x1237], rsi

xor byte  [rip + 0x12345678], bl
xor word  [rip + 0x12345679], cx
xor dword [rip + 0x1234567a], edx
xor qword [rip + 0x1234567b], rsi

; [rip + base]
xor byte  [rax], bl
xor word  [rbx], cx
xor dword [rcx], edx
xor qword [rdx], rsi

; [rip + base + disp8]
xor byte  [rax + 0x12], bl
xor word  [rbx + 0x13], cx
xor dword [rcx + 0x14], edx
xor qword [rdx + 0x15], rsi

; [rip + base + disp32]
xor byte  [rax + 0x1234], bl
xor word  [rbx + 0x1235], cx
xor dword [rcx + 0x1236], edx
xor qword [rdx + 0x1237], rsi

xor byte  [rax + 0x12345678], bl
xor word  [rbx + 0x12345679], cx
xor dword [rcx + 0x1234567a], edx
xor qword [rdx + 0x1234567b], rsi

; [rip + base + index]
xor byte  [rax + rbx], bl
xor word  [rbx + rcx], cx
xor dword [rcx + rsi], edx
xor qword [rdx + rdi], rsi

; [rip + base + scale * index]
xor byte  [rax + 2 * rbx], bl
xor word  [rbx + 4 * rcx], cx
xor dword [rcx + 8 * rsi], edx
xor qword [rdx + 8 * rdi], rsi

; [rip + base + index + disp8]
xor byte  [rax + rbx + 0x12], bl
xor word  [rbx + rcx + 0x13], cx
xor dword [rcx + rsi + 0x14], edx
xor qword [rdx + rdi + 0x15], rsi

; [rip + base + index + disp32]
xor byte  [rax + rbx + 0x1234], bl
xor word  [rbx + rcx + 0x1235], cx
xor dword [rcx + rsi + 0x1236], edx
xor qword [rdx + rdi + 0x1237], rsi

xor byte  [rax + rbx + 0x12345678], bl
xor word  [rbx + rcx + 0x12345679], cx
xor dword [rcx + rsi + 0x1234567a], edx
xor qword [rdx + rdi + 0x1234567b], rsi

; [rip + base + scale * index + disp8]
xor byte  [rax + 2 * rbx + 0x12], bl
xor word  [rbx + 4 * rcx + 0x13], cx
xor dword [rcx + 8 * rsi + 0x14], edx
xor qword [rdx + 8 * rdi + 0x15], rsi

; [rip + base + scale * index + disp32]
xor byte  [rax + 2 * rbx + 0x1234], bl
xor word  [rbx + 4 * rcx + 0x1235], cx
xor dword [rcx + 8 * rsi + 0x1236], edx
xor qword [rdx + 8 * rdi + 0x1237], rsi

xor byte  [rax + 2 * rbx + 0x12345678], bl
xor word  [rbx + 4 * rcx + 0x12345679], cx
xor dword [rcx + 8 * rsi + 0x1234567a], edx
xor qword [rdx + 8 * rdi + 0x1234567b], rsi

; [scale * index]
xor byte  [2 * rbx], bl
xor word  [4 * rcx], cx
xor dword [8 * rsi], edx
xor qword [8 * rdi], rsi

; [scale * index + disp8]
xor byte  [2 * rbx + 0x12], bl
xor word  [4 * rcx + 0x13], cx
xor dword [8 * rsi + 0x14], edx
xor qword [8 * rdi + 0x15], rsi

; [scale * index + disp32]
xor byte  [2 * rbx + 0x1234], bl
xor word  [4 * rcx + 0x1235], cx
xor dword [8 * rsi + 0x1236], edx
xor qword [8 * rdi + 0x1237], rsi

xor byte  [2 * rbx + 0x12345678], bl
xor word  [4 * rcx + 0x12345679], cx
xor dword [8 * rsi + 0x1234567a], edx
xor qword [8 * rdi + 0x1234567b], rsi

; Use rbp as base or index.
xor byte [rbp], al
xor byte [rbp + 0x12], al
xor byte [rbp + 0x1234], al
xor byte [rbp + 0x12345678], al

xor byte [4 * rbp], al
xor byte [4 * rbp + 0x12], al
xor byte [4 * rbp + 0x1234], al
xor byte [4 * rbp + 0x12345678], al

xor byte [rbx + 4 * rbp], al
xor byte [rbx + 4 * rbp + 0x12], al
xor byte [rbx + 4 * rbp + 0x1234], al
xor byte [rbx + 4 * rbp + 0x12345678], al

; Use rsp as base.
xor byte [rsp], al
xor byte [rsp + 0x12], al
xor byte [rsp + 0x1234], al
xor byte [rsp + 0x12345678], al

xor byte [rsp + rax], al
xor byte [rsp + rbp], al
xor byte [rsp + 2*rbp], al
xor byte [rsp + 4*rbp], al
xor byte [rsp + 8*rbp], al

; use each register as indirect.
xor byte [rax], al
xor byte [rcx], al
xor byte [rdx], al
xor byte [rbx], al
xor byte [rsp], al
xor byte [rbp], al
xor byte [rsi], al
xor byte [rdi], al

; use each register as indirect.
; rsp is forbidden as index
xor byte [rax + 2*rax], al
xor byte [rcx + 2*rcx], al
xor byte [rdx + 2*rdx], al
xor byte [rbx + 2*rbx], al
xor byte [rbp + 2*rbp], al
xor byte [rsi + 2*rsi], al
xor byte [rdi + 2*rdi], al

; ------------------------------------------------------------------------------
; opcode r,imm
; ------------------------------------------------------------------------------
; immediate to each register: 8-bit
xor al, 0x12
xor cl, 0x13
xor dl, 0x14
xor bl, 0x15
xor ah, 0x16
xor ch, 0x17
xor dh, 0x18
xor bh, 0x19

; immediate to each register: 16-bit
xor ax, 0x12
xor cx, 0x13
xor dx, 0x14
xor bx, 0x15
xor sp, 0x16
xor bp, 0x17
xor si, 0x18
xor di, 0x19

xor ax, 0x1234
xor cx, 0x1235
xor dx, 0x1236
xor bx, 0x1237
xor sp, 0x1238
xor bp, 0x1239
xor si, 0x123a
xor di, 0x123b

; immediate to each register: 32-bit
xor eax, 0x12
xor ecx, 0x13
xor edx, 0x14
xor ebx, 0x15
xor esp, 0x16
xor ebp, 0x17
xor esi, 0x18
xor edi, 0x19

xor eax, 0x1234
xor ecx, 0x1235
xor edx, 0x1236
xor ebx, 0x1237
xor esp, 0x1238
xor ebp, 0x1239
xor esi, 0x123a
xor edi, 0x123b

xor eax, 0x12345678
xor ecx, 0x12345679
xor edx, 0x1234567a
xor ebx, 0x1234567b
xor esp, 0x1234567c
xor ebp, 0x1234567d
xor esi, 0x1234567e
xor edi, 0x1234567f

; immediate to each register: 64-bit
xor rax, 0x12
xor rcx, 0x13
xor rdx, 0x14
xor rbx, 0x15
xor rsp, 0x16
xor rbp, 0x17
xor rsi, 0x18
xor rdi, 0x19

xor rax, 0x1234
xor rcx, 0x1235
xor rdx, 0x1236
xor rbx, 0x1237
xor rsp, 0x1238
xor rbp, 0x1239
xor rsi, 0x123a
xor rdi, 0x123b

xor rax, 0x12345678
xor rcx, 0x12345679
xor rdx, 0x1234567a
xor rbx, 0x1234567b
xor rsp, 0x1234567c
xor rbp, 0x1234567d
xor rsi, 0x1234567e
xor rdi, 0x1234567f

; ------------------------------------------------------------------------------
; opcode m,imm
; ------------------------------------------------------------------------------
; [rip + disp32]
xor byte  [rip + 0x12], 0x13
xor word  [rip + 0x13], 0x1234
xor dword [rip + 0x14], 0x12345678
xor qword [rip + 0x15], 0x12345679

xor byte  [rip + 0x1234], 0x13
xor word  [rip + 0x1235], 0x1234
xor dword [rip + 0x1236], 0x12345678
xor qword [rip + 0x1237], 0x12345679

xor byte  [rip + 0x12345678], 0x13
xor word  [rip + 0x12345679], 0x1234
xor dword [rip + 0x1234567a], 0x12345678
xor qword [rip + 0x1234567b], 0x12345679

; [rip + base]
xor byte  [rax], 0x13
xor word  [rbx], 0x1234
xor dword [rcx], 0x12345678
xor qword [rdx], 0x12345679

; [rip + base + disp8]
xor byte  [rax + 0x12], 0x13
xor word  [rbx + 0x13], 0x1234
xor dword [rcx + 0x14], 0x12345678
xor qword [rdx + 0x15], 0x12345679

; [rip + base + disp32]
xor byte  [rax + 0x1234], 0x13
xor word  [rbx + 0x1235], 0x1234
xor dword [rcx + 0x1236], 0x12345678
xor qword [rdx + 0x1237], 0x12345679

xor byte  [rax + 0x12345678], 0x13
xor word  [rbx + 0x12345679], 0x1234
xor dword [rcx + 0x1234567a], 0x12345678
xor qword [rdx + 0x1234567b], 0x12345679

; [rip + base + index]
xor byte  [rax + rbx], 0x13
xor word  [rbx + rcx], 0x1234
xor dword [rcx + rsi], 0x12345678
xor qword [rdx + rdi], 0x12345679

; [rip + base + scale * index]
xor byte  [rax + 2 * rbx], 0x13
xor word  [rbx + 4 * rcx], 0x1234
xor dword [rcx + 8 * rsi], 0x12345678
xor qword [rdx + 8 * rdi], 0x12345679

; [rip + base + index + disp8]
xor byte  [rax + rbx + 0x12], 0x13
xor word  [rbx + rcx + 0x13], 0x1234
xor dword [rcx + rsi + 0x14], 0x12345678
xor qword [rdx + rdi + 0x15], 0x12345679

; [rip + base + index + disp32]
xor byte  [rax + rbx + 0x1234], 0x13
xor word  [rbx + rcx + 0x1235], 0x1234
xor dword [rcx + rsi + 0x1236], 0x12345678
xor qword [rdx + rdi + 0x1237], 0x12345679

xor byte  [rax + rbx + 0x12345678], 0x13
xor word  [rbx + rcx + 0x12345679], 0x1234
xor dword [rcx + rsi + 0x1234567a], 0x12345678
xor qword [rdx + rdi + 0x1234567b], 0x12345679

; [rip + base + scale * index + disp8]
xor byte  [rax + 2 * rbx + 0x12], 0x13
xor word  [rbx + 4 * rcx + 0x13], 0x1234
xor dword [rcx + 8 * rsi + 0x14], 0x12345678
xor qword [rdx + 8 * rdi + 0x15], 0x12345679

; [rip + base + scale * index + disp32]
xor byte  [rax + 2 * rbx + 0x1234], 0x13
xor word  [rbx + 4 * rcx + 0x1235], 0x1234
xor dword [rcx + 8 * rsi + 0x1236], 0x12345678
xor qword [rdx + 8 * rdi + 0x1237], 0x12345679

xor byte  [rax + 2 * rbx + 0x12345678], 0x13
xor word  [rbx + 4 * rcx + 0x12345679], 0x1234
xor dword [rcx + 8 * rsi + 0x1234567a], 0x12345678
xor qword [rdx + 8 * rdi + 0x1234567b], 0x12345679

; [scale * index]
xor byte  [2 * rbx], 0x13
xor word  [4 * rcx], 0x1234
xor dword [8 * rsi], 0x12345678
xor qword [8 * rdi], 0x12345679

; [scale * index + disp8]
xor byte  [2 * rbx + 0x12], 0x13
xor word  [4 * rcx + 0x13], 0x1234
xor dword [8 * rsi + 0x14], 0x12345678
xor qword [8 * rdi + 0x15], 0x12345679

; [scale * index + disp32]
xor byte  [2 * rbx + 0x1234], 0x13
xor word  [4 * rcx + 0x1235], 0x1234
xor dword [8 * rsi + 0x1236], 0x12345678
xor qword [8 * rdi + 0x1237], 0x12345679

xor byte  [2 * rbx + 0x12345678], 0x13
xor word  [4 * rcx + 0x12345679], 0x1234
xor dword [8 * rsi + 0x1234567a], 0x12345678
xor qword [8 * rdi + 0x1234567b], 0x12345679

; Use rbp as base or index.
xor byte [rbp], 0x12
xor byte [rbp + 0x12], 0x13
xor byte [rbp + 0x1234], 0x14
xor byte [rbp + 0x12345678], 0x15

xor byte [4 * rbp], 0x12
xor byte [4 * rbp + 0x12], 0x13
xor byte [4 * rbp + 0x1234], 0x14
xor byte [4 * rbp + 0x12345678], 0x15

xor byte [rbx + 4 * rbp], 0x12
xor byte [rbx + 4 * rbp + 0x12], 0x13
xor byte [rbx + 4 * rbp + 0x1234], 0x14
xor byte [rbx + 4 * rbp + 0x12345678], 0x15

; Use rsp as base.
xor byte [rsp], 0x12
xor byte [rsp + 0x12], 0x13
xor byte [rsp + 0x1234], 0x14
xor byte [rsp + 0x12345678], 0x15

xor byte [rsp + rax], 0x12
xor byte [rsp + rbp], 0x13
xor byte [rsp + 2*rbp], 0x14
xor byte [rsp + 4*rbp], 0x15
xor byte [rsp + 8*rbp], 0x16

; use each register as indirect.
xor byte [rax], 0x12
xor byte [rcx], 0x13
xor byte [rdx], 0x14
xor byte [rbx], 0x15
xor byte [rsp], 0x16
xor byte [rbp], 0x17
xor byte [rsi], 0x18
xor byte [rdi], 0x19

; use each register as indirect.
; rsp is forbidden as index
xor byte [rax + 2*rax], 0x12
xor byte [rcx + 2*rcx], 0x13
xor byte [rdx + 2*rdx], 0x14
xor byte [rbx + 2*rbx], 0x15
xor byte [rbp + 2*rbp], 0x16
xor byte [rsi + 2*rsi], 0x17
xor byte [rdi + 2*rdi], 0x18

