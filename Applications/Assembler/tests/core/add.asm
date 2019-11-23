use64
; ------------------------------------------------------------------------------
; opcode r,r
; ------------------------------------------------------------------------------
; 8-bit registers
add al, al
add al, cl
add al, dl
add al, bl
add al, ah
add al, ch
add al, dh
add al, bh

add al, al
add cl, al
add dl, al
add bl, al
add ah, al
add ch, al
add dh, al
add bh, al

add al, bh
add cl, dh
add dl, ch
add bl, ah
add ah, bl
add ch, dl
add dh, cl
add bh, al

; 16-bit registers
add ax, ax
add ax, cx
add ax, dx
add ax, bx
add ax, sp
add ax, bp
add ax, si
add ax, di

add ax, ax
add cx, ax
add dx, ax
add bx, ax
add sp, ax
add bp, ax
add si, ax
add di, ax

add ax, di
add cx, si
add dx, bp
add bx, sp
add sp, bx
add bp, dx
add si, cx
add di, ax

; 32-bit registers
add eax, eax
add eax, ecx
add eax, edx
add eax, ebx
add eax, esp
add eax, ebp
add eax, esi
add eax, edi

add eax, eax
add ecx, eax
add edx, eax
add ebx, eax
add esp, eax
add ebp, eax
add esi, eax
add edi, eax

add eax, edi
add ecx, esi
add edx, ebp
add ebx, esp
add esp, ebx
add ebp, edx
add esi, ecx
add edi, eax

; 64-bit registers
add rax, rax
add rax, rcx
add rax, rdx
add rax, rbx
add rax, rsp
add rax, rbp
add rax, rsi
add rax, rdi

add rax, rax
add rcx, rax
add rdx, rax
add rbx, rax
add rsp, rax
add rbp, rax
add rsi, rax
add rdi, rax

add rax, rdi
add rcx, rsi
add rdx, rbp
add rbx, rsp
add rsp, rbx
add rbp, rdx
add rsi, rcx
add rdi, rax

; ------------------------------------------------------------------------------
; opcode r,m
; ------------------------------------------------------------------------------
; [rip + disp32]
add bl,  byte  [rip + 0x12]
add cx,  word  [rip + 0x13]
add edx, dword [rip + 0x14]
add rsi, qword [rip + 0x15]

add bl,  byte  [rip + 0x1234]
add cx,  word  [rip + 0x1235]
add edx, dword [rip + 0x1236]
add rsi, qword [rip + 0x1237]

add bl,  byte  [rip + 0x12345678]
add cx,  word  [rip + 0x12345679]
add edx, dword [rip + 0x1234567a]
add rsi, qword [rip + 0x1234567b]

; [rip + base]
add bl,  byte  [rax]
add cx,  word  [rbx]
add edx, dword [rcx]
add rsi, qword [rdx]

; [rip + base + disp8]
add bl,  byte  [rax + 0x12]
add cx,  word  [rbx + 0x13]
add edx, dword [rcx + 0x14]
add rsi, qword [rdx + 0x15]

; [rip + base + disp32]
add bl,  byte  [rax + 0x1234]
add cx,  word  [rbx + 0x1235]
add edx, dword [rcx + 0x1236]
add rsi, qword [rdx + 0x1237]

add bl,  byte  [rax + 0x12345678]
add cx,  word  [rbx + 0x12345679]
add edx, dword [rcx + 0x1234567a]
add rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
add bl,  byte  [rax + rbx]
add cx,  word  [rbx + rcx]
add edx, dword [rcx + rsi]
add rsi, qword [rdx + rdi]

; [rip + base + scale * index]
add bl,  byte  [rax + 2 * rbx]
add cx,  word  [rbx + 4 * rcx]
add edx, dword [rcx + 8 * rsi]
add rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
add bl,  byte  [rax + rbx + 0x12]
add cx,  word  [rbx + rcx + 0x13]
add edx, dword [rcx + rsi + 0x14]
add rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
add bl,  byte  [rax + rbx + 0x1234]
add cx,  word  [rbx + rcx + 0x1235]
add edx, dword [rcx + rsi + 0x1236]
add rsi, qword [rdx + rdi + 0x1237]

add bl,  byte  [rax + rbx + 0x12345678]
add cx,  word  [rbx + rcx + 0x12345679]
add edx, dword [rcx + rsi + 0x1234567a]
add rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
add bl,  byte  [rax + 2 * rbx + 0x12]
add cx,  word  [rbx + 4 * rcx + 0x13]
add edx, dword [rcx + 8 * rsi + 0x14]
add rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
add bl,  byte  [rax + 2 * rbx + 0x1234]
add cx,  word  [rbx + 4 * rcx + 0x1235]
add edx, dword [rcx + 8 * rsi + 0x1236]
add rsi, qword [rdx + 8 * rdi + 0x1237]

add bl,  byte  [rax + 2 * rbx + 0x12345678]
add cx,  word  [rbx + 4 * rcx + 0x12345679]
add edx, dword [rcx + 8 * rsi + 0x1234567a]
add rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
add bl,  byte  [2 * rbx]
add cx,  word  [4 * rcx]
add edx, dword [8 * rsi]
add rsi, qword [8 * rdi]

; [scale * index + disp8]
add bl,  byte  [2 * rbx + 0x12]
add cx,  word  [4 * rcx + 0x13]
add edx, dword [8 * rsi + 0x14]
add rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
add bl,  byte  [2 * rbx + 0x1234]
add cx,  word  [4 * rcx + 0x1235]
add edx, dword [8 * rsi + 0x1236]
add rsi, qword [8 * rdi + 0x1237]

add bl,  byte  [2 * rbx + 0x12345678]
add cx,  word  [4 * rcx + 0x12345679]
add edx, dword [8 * rsi + 0x1234567a]
add rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
add al, byte [rbp]
add al, byte [rbp + 0x12]
add al, byte [rbp + 0x1234]
add al, byte [rbp + 0x12345678]

add al, byte [4 * rbp]
add al, byte [4 * rbp + 0x12]
add al, byte [4 * rbp + 0x1234]
add al, byte [4 * rbp + 0x12345678]

add al, byte [rbx + 4 * rbp]
add al, byte [rbx + 4 * rbp + 0x12]
add al, byte [rbx + 4 * rbp + 0x1234]
add al, byte [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
add al, byte [rsp]
add al, byte [rsp + 0x12]
add al, byte [rsp + 0x1234]
add al, byte [rsp + 0x12345678]

add al, byte [rsp + rax]
add al, byte [rsp + rbp]
add al, byte [rsp + 2*rbp]
add al, byte [rsp + 4*rbp]
add al, byte [rsp + 8*rbp]

; use each register as indirect.
add al, byte [rax]
add al, byte [rcx]
add al, byte [rdx]
add al, byte [rbx]
add al, byte [rsp]
add al, byte [rbp]
add al, byte [rsi]
add al, byte [rdi]

; use each register as indirect.
; rsp is forbidden as index
add al, byte [rax + 2*rax]
add al, byte [rcx + 2*rcx]
add al, byte [rdx + 2*rdx]
add al, byte [rbx + 2*rbx]
add al, byte [rbp + 2*rbp]
add al, byte [rsi + 2*rsi]
add al, byte [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode m,r
; ------------------------------------------------------------------------------
; [rip + disp32]
add byte  [rip + 0x12], bl
add word  [rip + 0x13], cx
add dword [rip + 0x14], edx
add qword [rip + 0x15], rsi

add byte  [rip + 0x1234], bl
add word  [rip + 0x1235], cx
add dword [rip + 0x1236], edx
add qword [rip + 0x1237], rsi

add byte  [rip + 0x12345678], bl
add word  [rip + 0x12345679], cx
add dword [rip + 0x1234567a], edx
add qword [rip + 0x1234567b], rsi

; [rip + base]
add byte  [rax], bl
add word  [rbx], cx
add dword [rcx], edx
add qword [rdx], rsi

; [rip + base + disp8]
add byte  [rax + 0x12], bl
add word  [rbx + 0x13], cx
add dword [rcx + 0x14], edx
add qword [rdx + 0x15], rsi

; [rip + base + disp32]
add byte  [rax + 0x1234], bl
add word  [rbx + 0x1235], cx
add dword [rcx + 0x1236], edx
add qword [rdx + 0x1237], rsi

add byte  [rax + 0x12345678], bl
add word  [rbx + 0x12345679], cx
add dword [rcx + 0x1234567a], edx
add qword [rdx + 0x1234567b], rsi

; [rip + base + index]
add byte  [rax + rbx], bl
add word  [rbx + rcx], cx
add dword [rcx + rsi], edx
add qword [rdx + rdi], rsi

; [rip + base + scale * index]
add byte  [rax + 2 * rbx], bl
add word  [rbx + 4 * rcx], cx
add dword [rcx + 8 * rsi], edx
add qword [rdx + 8 * rdi], rsi

; [rip + base + index + disp8]
add byte  [rax + rbx + 0x12], bl
add word  [rbx + rcx + 0x13], cx
add dword [rcx + rsi + 0x14], edx
add qword [rdx + rdi + 0x15], rsi

; [rip + base + index + disp32]
add byte  [rax + rbx + 0x1234], bl
add word  [rbx + rcx + 0x1235], cx
add dword [rcx + rsi + 0x1236], edx
add qword [rdx + rdi + 0x1237], rsi

add byte  [rax + rbx + 0x12345678], bl
add word  [rbx + rcx + 0x12345679], cx
add dword [rcx + rsi + 0x1234567a], edx
add qword [rdx + rdi + 0x1234567b], rsi

; [rip + base + scale * index + disp8]
add byte  [rax + 2 * rbx + 0x12], bl
add word  [rbx + 4 * rcx + 0x13], cx
add dword [rcx + 8 * rsi + 0x14], edx
add qword [rdx + 8 * rdi + 0x15], rsi

; [rip + base + scale * index + disp32]
add byte  [rax + 2 * rbx + 0x1234], bl
add word  [rbx + 4 * rcx + 0x1235], cx
add dword [rcx + 8 * rsi + 0x1236], edx
add qword [rdx + 8 * rdi + 0x1237], rsi

add byte  [rax + 2 * rbx + 0x12345678], bl
add word  [rbx + 4 * rcx + 0x12345679], cx
add dword [rcx + 8 * rsi + 0x1234567a], edx
add qword [rdx + 8 * rdi + 0x1234567b], rsi

; [scale * index]
add byte  [2 * rbx], bl
add word  [4 * rcx], cx
add dword [8 * rsi], edx
add qword [8 * rdi], rsi

; [scale * index + disp8]
add byte  [2 * rbx + 0x12], bl
add word  [4 * rcx + 0x13], cx
add dword [8 * rsi + 0x14], edx
add qword [8 * rdi + 0x15], rsi

; [scale * index + disp32]
add byte  [2 * rbx + 0x1234], bl
add word  [4 * rcx + 0x1235], cx
add dword [8 * rsi + 0x1236], edx
add qword [8 * rdi + 0x1237], rsi

add byte  [2 * rbx + 0x12345678], bl
add word  [4 * rcx + 0x12345679], cx
add dword [8 * rsi + 0x1234567a], edx
add qword [8 * rdi + 0x1234567b], rsi

; Use rbp as base or index.
add byte [rbp], al
add byte [rbp + 0x12], al
add byte [rbp + 0x1234], al
add byte [rbp + 0x12345678], al

add byte [4 * rbp], al
add byte [4 * rbp + 0x12], al
add byte [4 * rbp + 0x1234], al
add byte [4 * rbp + 0x12345678], al

add byte [rbx + 4 * rbp], al
add byte [rbx + 4 * rbp + 0x12], al
add byte [rbx + 4 * rbp + 0x1234], al
add byte [rbx + 4 * rbp + 0x12345678], al

; Use rsp as base.
add byte [rsp], al
add byte [rsp + 0x12], al
add byte [rsp + 0x1234], al
add byte [rsp + 0x12345678], al

add byte [rsp + rax], al
add byte [rsp + rbp], al
add byte [rsp + 2*rbp], al
add byte [rsp + 4*rbp], al
add byte [rsp + 8*rbp], al

; use each register as indirect.
add byte [rax], al
add byte [rcx], al
add byte [rdx], al
add byte [rbx], al
add byte [rsp], al
add byte [rbp], al
add byte [rsi], al
add byte [rdi], al

; use each register as indirect.
; rsp is forbidden as index
add byte [rax + 2*rax], al
add byte [rcx + 2*rcx], al
add byte [rdx + 2*rdx], al
add byte [rbx + 2*rbx], al
add byte [rbp + 2*rbp], al
add byte [rsi + 2*rsi], al
add byte [rdi + 2*rdi], al

; ------------------------------------------------------------------------------
; opcode r,imm
; ------------------------------------------------------------------------------
; immediate to each register: 8-bit
add al, 0x12
add cl, 0x13
add dl, 0x14
add bl, 0x15
add ah, 0x16
add ch, 0x17
add dh, 0x18
add bh, 0x19

; immediate to each register: 16-bit
add ax, 0x12
add cx, 0x13
add dx, 0x14
add bx, 0x15
add sp, 0x16
add bp, 0x17
add si, 0x18
add di, 0x19

add ax, 0x1234
add cx, 0x1235
add dx, 0x1236
add bx, 0x1237
add sp, 0x1238
add bp, 0x1239
add si, 0x123a
add di, 0x123b

; immediate to each register: 32-bit
add eax, 0x12
add ecx, 0x13
add edx, 0x14
add ebx, 0x15
add esp, 0x16
add ebp, 0x17
add esi, 0x18
add edi, 0x19

add eax, 0x1234
add ecx, 0x1235
add edx, 0x1236
add ebx, 0x1237
add esp, 0x1238
add ebp, 0x1239
add esi, 0x123a
add edi, 0x123b

add eax, 0x12345678
add ecx, 0x12345679
add edx, 0x1234567a
add ebx, 0x1234567b
add esp, 0x1234567c
add ebp, 0x1234567d
add esi, 0x1234567e
add edi, 0x1234567f

; immediate to each register: 64-bit
add rax, 0x12
add rcx, 0x13
add rdx, 0x14
add rbx, 0x15
add rsp, 0x16
add rbp, 0x17
add rsi, 0x18
add rdi, 0x19

add rax, 0x1234
add rcx, 0x1235
add rdx, 0x1236
add rbx, 0x1237
add rsp, 0x1238
add rbp, 0x1239
add rsi, 0x123a
add rdi, 0x123b

add rax, 0x12345678
add rcx, 0x12345679
add rdx, 0x1234567a
add rbx, 0x1234567b
add rsp, 0x1234567c
add rbp, 0x1234567d
add rsi, 0x1234567e
add rdi, 0x1234567f

; ------------------------------------------------------------------------------
; opcode m,imm
; ------------------------------------------------------------------------------
; [rip + disp32]
add byte  [rip + 0x12], 0x13
add word  [rip + 0x13], 0x1234
add dword [rip + 0x14], 0x12345678
add qword [rip + 0x15], 0x12345679

add byte  [rip + 0x1234], 0x13
add word  [rip + 0x1235], 0x1234
add dword [rip + 0x1236], 0x12345678
add qword [rip + 0x1237], 0x12345679

add byte  [rip + 0x12345678], 0x13
add word  [rip + 0x12345679], 0x1234
add dword [rip + 0x1234567a], 0x12345678
add qword [rip + 0x1234567b], 0x12345679

; [rip + base]
add byte  [rax], 0x13
add word  [rbx], 0x1234
add dword [rcx], 0x12345678
add qword [rdx], 0x12345679

; [rip + base + disp8]
add byte  [rax + 0x12], 0x13
add word  [rbx + 0x13], 0x1234
add dword [rcx + 0x14], 0x12345678
add qword [rdx + 0x15], 0x12345679

; [rip + base + disp32]
add byte  [rax + 0x1234], 0x13
add word  [rbx + 0x1235], 0x1234
add dword [rcx + 0x1236], 0x12345678
add qword [rdx + 0x1237], 0x12345679

add byte  [rax + 0x12345678], 0x13
add word  [rbx + 0x12345679], 0x1234
add dword [rcx + 0x1234567a], 0x12345678
add qword [rdx + 0x1234567b], 0x12345679

; [rip + base + index]
add byte  [rax + rbx], 0x13
add word  [rbx + rcx], 0x1234
add dword [rcx + rsi], 0x12345678
add qword [rdx + rdi], 0x12345679

; [rip + base + scale * index]
add byte  [rax + 2 * rbx], 0x13
add word  [rbx + 4 * rcx], 0x1234
add dword [rcx + 8 * rsi], 0x12345678
add qword [rdx + 8 * rdi], 0x12345679

; [rip + base + index + disp8]
add byte  [rax + rbx + 0x12], 0x13
add word  [rbx + rcx + 0x13], 0x1234
add dword [rcx + rsi + 0x14], 0x12345678
add qword [rdx + rdi + 0x15], 0x12345679

; [rip + base + index + disp32]
add byte  [rax + rbx + 0x1234], 0x13
add word  [rbx + rcx + 0x1235], 0x1234
add dword [rcx + rsi + 0x1236], 0x12345678
add qword [rdx + rdi + 0x1237], 0x12345679

add byte  [rax + rbx + 0x12345678], 0x13
add word  [rbx + rcx + 0x12345679], 0x1234
add dword [rcx + rsi + 0x1234567a], 0x12345678
add qword [rdx + rdi + 0x1234567b], 0x12345679

; [rip + base + scale * index + disp8]
add byte  [rax + 2 * rbx + 0x12], 0x13
add word  [rbx + 4 * rcx + 0x13], 0x1234
add dword [rcx + 8 * rsi + 0x14], 0x12345678
add qword [rdx + 8 * rdi + 0x15], 0x12345679

; [rip + base + scale * index + disp32]
add byte  [rax + 2 * rbx + 0x1234], 0x13
add word  [rbx + 4 * rcx + 0x1235], 0x1234
add dword [rcx + 8 * rsi + 0x1236], 0x12345678
add qword [rdx + 8 * rdi + 0x1237], 0x12345679

add byte  [rax + 2 * rbx + 0x12345678], 0x13
add word  [rbx + 4 * rcx + 0x12345679], 0x1234
add dword [rcx + 8 * rsi + 0x1234567a], 0x12345678
add qword [rdx + 8 * rdi + 0x1234567b], 0x12345679

; [scale * index]
add byte  [2 * rbx], 0x13
add word  [4 * rcx], 0x1234
add dword [8 * rsi], 0x12345678
add qword [8 * rdi], 0x12345679

; [scale * index + disp8]
add byte  [2 * rbx + 0x12], 0x13
add word  [4 * rcx + 0x13], 0x1234
add dword [8 * rsi + 0x14], 0x12345678
add qword [8 * rdi + 0x15], 0x12345679

; [scale * index + disp32]
add byte  [2 * rbx + 0x1234], 0x13
add word  [4 * rcx + 0x1235], 0x1234
add dword [8 * rsi + 0x1236], 0x12345678
add qword [8 * rdi + 0x1237], 0x12345679

add byte  [2 * rbx + 0x12345678], 0x13
add word  [4 * rcx + 0x12345679], 0x1234
add dword [8 * rsi + 0x1234567a], 0x12345678
add qword [8 * rdi + 0x1234567b], 0x12345679

; Use rbp as base or index.
add byte [rbp], 0x12
add byte [rbp + 0x12], 0x13
add byte [rbp + 0x1234], 0x14
add byte [rbp + 0x12345678], 0x15

add byte [4 * rbp], 0x12
add byte [4 * rbp + 0x12], 0x13
add byte [4 * rbp + 0x1234], 0x14
add byte [4 * rbp + 0x12345678], 0x15

add byte [rbx + 4 * rbp], 0x12
add byte [rbx + 4 * rbp + 0x12], 0x13
add byte [rbx + 4 * rbp + 0x1234], 0x14
add byte [rbx + 4 * rbp + 0x12345678], 0x15

; Use rsp as base.
add byte [rsp], 0x12
add byte [rsp + 0x12], 0x13
add byte [rsp + 0x1234], 0x14
add byte [rsp + 0x12345678], 0x15

add byte [rsp + rax], 0x12
add byte [rsp + rbp], 0x13
add byte [rsp + 2*rbp], 0x14
add byte [rsp + 4*rbp], 0x15
add byte [rsp + 8*rbp], 0x16

; use each register as indirect.
add byte [rax], 0x12
add byte [rcx], 0x13
add byte [rdx], 0x14
add byte [rbx], 0x15
add byte [rsp], 0x16
add byte [rbp], 0x17
add byte [rsi], 0x18
add byte [rdi], 0x19

; use each register as indirect.
; rsp is forbidden as index
add byte [rax + 2*rax], 0x12
add byte [rcx + 2*rcx], 0x13
add byte [rdx + 2*rdx], 0x14
add byte [rbx + 2*rbx], 0x15
add byte [rbp + 2*rbp], 0x16
add byte [rsi + 2*rsi], 0x17
add byte [rdi + 2*rdi], 0x18

