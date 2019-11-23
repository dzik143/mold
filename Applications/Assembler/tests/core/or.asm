use64
; ------------------------------------------------------------------------------
; opcode r,r
; ------------------------------------------------------------------------------
; 8-bit registers
or al, al
or al, cl
or al, dl
or al, bl
or al, ah
or al, ch
or al, dh
or al, bh

or al, al
or cl, al
or dl, al
or bl, al
or ah, al
or ch, al
or dh, al
or bh, al

or al, bh
or cl, dh
or dl, ch
or bl, ah
or ah, bl
or ch, dl
or dh, cl
or bh, al

; 16-bit registers
or ax, ax
or ax, cx
or ax, dx
or ax, bx
or ax, sp
or ax, bp
or ax, si
or ax, di

or ax, ax
or cx, ax
or dx, ax
or bx, ax
or sp, ax
or bp, ax
or si, ax
or di, ax

or ax, di
or cx, si
or dx, bp
or bx, sp
or sp, bx
or bp, dx
or si, cx
or di, ax

; 32-bit registers
or eax, eax
or eax, ecx
or eax, edx
or eax, ebx
or eax, esp
or eax, ebp
or eax, esi
or eax, edi

or eax, eax
or ecx, eax
or edx, eax
or ebx, eax
or esp, eax
or ebp, eax
or esi, eax
or edi, eax

or eax, edi
or ecx, esi
or edx, ebp
or ebx, esp
or esp, ebx
or ebp, edx
or esi, ecx
or edi, eax

; 64-bit registers
or rax, rax
or rax, rcx
or rax, rdx
or rax, rbx
or rax, rsp
or rax, rbp
or rax, rsi
or rax, rdi

or rax, rax
or rcx, rax
or rdx, rax
or rbx, rax
or rsp, rax
or rbp, rax
or rsi, rax
or rdi, rax

or rax, rdi
or rcx, rsi
or rdx, rbp
or rbx, rsp
or rsp, rbx
or rbp, rdx
or rsi, rcx
or rdi, rax

; ------------------------------------------------------------------------------
; opcode r,m
; ------------------------------------------------------------------------------
; [rip + disp32]
or bl,  byte  [rip + 0x12]
or cx,  word  [rip + 0x13]
or edx, dword [rip + 0x14]
or rsi, qword [rip + 0x15]

or bl,  byte  [rip + 0x1234]
or cx,  word  [rip + 0x1235]
or edx, dword [rip + 0x1236]
or rsi, qword [rip + 0x1237]

or bl,  byte  [rip + 0x12345678]
or cx,  word  [rip + 0x12345679]
or edx, dword [rip + 0x1234567a]
or rsi, qword [rip + 0x1234567b]

; [rip + base]
or bl,  byte  [rax]
or cx,  word  [rbx]
or edx, dword [rcx]
or rsi, qword [rdx]

; [rip + base + disp8]
or bl,  byte  [rax + 0x12]
or cx,  word  [rbx + 0x13]
or edx, dword [rcx + 0x14]
or rsi, qword [rdx + 0x15]

; [rip + base + disp32]
or bl,  byte  [rax + 0x1234]
or cx,  word  [rbx + 0x1235]
or edx, dword [rcx + 0x1236]
or rsi, qword [rdx + 0x1237]

or bl,  byte  [rax + 0x12345678]
or cx,  word  [rbx + 0x12345679]
or edx, dword [rcx + 0x1234567a]
or rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
or bl,  byte  [rax + rbx]
or cx,  word  [rbx + rcx]
or edx, dword [rcx + rsi]
or rsi, qword [rdx + rdi]

; [rip + base + scale * index]
or bl,  byte  [rax + 2 * rbx]
or cx,  word  [rbx + 4 * rcx]
or edx, dword [rcx + 8 * rsi]
or rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
or bl,  byte  [rax + rbx + 0x12]
or cx,  word  [rbx + rcx + 0x13]
or edx, dword [rcx + rsi + 0x14]
or rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
or bl,  byte  [rax + rbx + 0x1234]
or cx,  word  [rbx + rcx + 0x1235]
or edx, dword [rcx + rsi + 0x1236]
or rsi, qword [rdx + rdi + 0x1237]

or bl,  byte  [rax + rbx + 0x12345678]
or cx,  word  [rbx + rcx + 0x12345679]
or edx, dword [rcx + rsi + 0x1234567a]
or rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
or bl,  byte  [rax + 2 * rbx + 0x12]
or cx,  word  [rbx + 4 * rcx + 0x13]
or edx, dword [rcx + 8 * rsi + 0x14]
or rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
or bl,  byte  [rax + 2 * rbx + 0x1234]
or cx,  word  [rbx + 4 * rcx + 0x1235]
or edx, dword [rcx + 8 * rsi + 0x1236]
or rsi, qword [rdx + 8 * rdi + 0x1237]

or bl,  byte  [rax + 2 * rbx + 0x12345678]
or cx,  word  [rbx + 4 * rcx + 0x12345679]
or edx, dword [rcx + 8 * rsi + 0x1234567a]
or rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
or bl,  byte  [2 * rbx]
or cx,  word  [4 * rcx]
or edx, dword [8 * rsi]
or rsi, qword [8 * rdi]

; [scale * index + disp8]
or bl,  byte  [2 * rbx + 0x12]
or cx,  word  [4 * rcx + 0x13]
or edx, dword [8 * rsi + 0x14]
or rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
or bl,  byte  [2 * rbx + 0x1234]
or cx,  word  [4 * rcx + 0x1235]
or edx, dword [8 * rsi + 0x1236]
or rsi, qword [8 * rdi + 0x1237]

or bl,  byte  [2 * rbx + 0x12345678]
or cx,  word  [4 * rcx + 0x12345679]
or edx, dword [8 * rsi + 0x1234567a]
or rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
or al, byte [rbp]
or al, byte [rbp + 0x12]
or al, byte [rbp + 0x1234]
or al, byte [rbp + 0x12345678]

or al, byte [4 * rbp]
or al, byte [4 * rbp + 0x12]
or al, byte [4 * rbp + 0x1234]
or al, byte [4 * rbp + 0x12345678]

or al, byte [rbx + 4 * rbp]
or al, byte [rbx + 4 * rbp + 0x12]
or al, byte [rbx + 4 * rbp + 0x1234]
or al, byte [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
or al, byte [rsp]
or al, byte [rsp + 0x12]
or al, byte [rsp + 0x1234]
or al, byte [rsp + 0x12345678]

or al, byte [rsp + rax]
or al, byte [rsp + rbp]
or al, byte [rsp + 2*rbp]
or al, byte [rsp + 4*rbp]
or al, byte [rsp + 8*rbp]

; use each register as indirect.
or al, byte [rax]
or al, byte [rcx]
or al, byte [rdx]
or al, byte [rbx]
or al, byte [rsp]
or al, byte [rbp]
or al, byte [rsi]
or al, byte [rdi]

; use each register as indirect.
; rsp is forbidden as index
or al, byte [rax + 2*rax]
or al, byte [rcx + 2*rcx]
or al, byte [rdx + 2*rdx]
or al, byte [rbx + 2*rbx]
or al, byte [rbp + 2*rbp]
or al, byte [rsi + 2*rsi]
or al, byte [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode m,r
; ------------------------------------------------------------------------------
; [rip + disp32]
or byte  [rip + 0x12], bl
or word  [rip + 0x13], cx
or dword [rip + 0x14], edx
or qword [rip + 0x15], rsi

or byte  [rip + 0x1234], bl
or word  [rip + 0x1235], cx
or dword [rip + 0x1236], edx
or qword [rip + 0x1237], rsi

or byte  [rip + 0x12345678], bl
or word  [rip + 0x12345679], cx
or dword [rip + 0x1234567a], edx
or qword [rip + 0x1234567b], rsi

; [rip + base]
or byte  [rax], bl
or word  [rbx], cx
or dword [rcx], edx
or qword [rdx], rsi

; [rip + base + disp8]
or byte  [rax + 0x12], bl
or word  [rbx + 0x13], cx
or dword [rcx + 0x14], edx
or qword [rdx + 0x15], rsi

; [rip + base + disp32]
or byte  [rax + 0x1234], bl
or word  [rbx + 0x1235], cx
or dword [rcx + 0x1236], edx
or qword [rdx + 0x1237], rsi

or byte  [rax + 0x12345678], bl
or word  [rbx + 0x12345679], cx
or dword [rcx + 0x1234567a], edx
or qword [rdx + 0x1234567b], rsi

; [rip + base + index]
or byte  [rax + rbx], bl
or word  [rbx + rcx], cx
or dword [rcx + rsi], edx
or qword [rdx + rdi], rsi

; [rip + base + scale * index]
or byte  [rax + 2 * rbx], bl
or word  [rbx + 4 * rcx], cx
or dword [rcx + 8 * rsi], edx
or qword [rdx + 8 * rdi], rsi

; [rip + base + index + disp8]
or byte  [rax + rbx + 0x12], bl
or word  [rbx + rcx + 0x13], cx
or dword [rcx + rsi + 0x14], edx
or qword [rdx + rdi + 0x15], rsi

; [rip + base + index + disp32]
or byte  [rax + rbx + 0x1234], bl
or word  [rbx + rcx + 0x1235], cx
or dword [rcx + rsi + 0x1236], edx
or qword [rdx + rdi + 0x1237], rsi

or byte  [rax + rbx + 0x12345678], bl
or word  [rbx + rcx + 0x12345679], cx
or dword [rcx + rsi + 0x1234567a], edx
or qword [rdx + rdi + 0x1234567b], rsi

; [rip + base + scale * index + disp8]
or byte  [rax + 2 * rbx + 0x12], bl
or word  [rbx + 4 * rcx + 0x13], cx
or dword [rcx + 8 * rsi + 0x14], edx
or qword [rdx + 8 * rdi + 0x15], rsi

; [rip + base + scale * index + disp32]
or byte  [rax + 2 * rbx + 0x1234], bl
or word  [rbx + 4 * rcx + 0x1235], cx
or dword [rcx + 8 * rsi + 0x1236], edx
or qword [rdx + 8 * rdi + 0x1237], rsi

or byte  [rax + 2 * rbx + 0x12345678], bl
or word  [rbx + 4 * rcx + 0x12345679], cx
or dword [rcx + 8 * rsi + 0x1234567a], edx
or qword [rdx + 8 * rdi + 0x1234567b], rsi

; [scale * index]
or byte  [2 * rbx], bl
or word  [4 * rcx], cx
or dword [8 * rsi], edx
or qword [8 * rdi], rsi

; [scale * index + disp8]
or byte  [2 * rbx + 0x12], bl
or word  [4 * rcx + 0x13], cx
or dword [8 * rsi + 0x14], edx
or qword [8 * rdi + 0x15], rsi

; [scale * index + disp32]
or byte  [2 * rbx + 0x1234], bl
or word  [4 * rcx + 0x1235], cx
or dword [8 * rsi + 0x1236], edx
or qword [8 * rdi + 0x1237], rsi

or byte  [2 * rbx + 0x12345678], bl
or word  [4 * rcx + 0x12345679], cx
or dword [8 * rsi + 0x1234567a], edx
or qword [8 * rdi + 0x1234567b], rsi

; Use rbp as base or index.
or byte [rbp], al
or byte [rbp + 0x12], al
or byte [rbp + 0x1234], al
or byte [rbp + 0x12345678], al

or byte [4 * rbp], al
or byte [4 * rbp + 0x12], al
or byte [4 * rbp + 0x1234], al
or byte [4 * rbp + 0x12345678], al

or byte [rbx + 4 * rbp], al
or byte [rbx + 4 * rbp + 0x12], al
or byte [rbx + 4 * rbp + 0x1234], al
or byte [rbx + 4 * rbp + 0x12345678], al

; Use rsp as base.
or byte [rsp], al
or byte [rsp + 0x12], al
or byte [rsp + 0x1234], al
or byte [rsp + 0x12345678], al

or byte [rsp + rax], al
or byte [rsp + rbp], al
or byte [rsp + 2*rbp], al
or byte [rsp + 4*rbp], al
or byte [rsp + 8*rbp], al

; use each register as indirect.
or byte [rax], al
or byte [rcx], al
or byte [rdx], al
or byte [rbx], al
or byte [rsp], al
or byte [rbp], al
or byte [rsi], al
or byte [rdi], al

; use each register as indirect.
; rsp is forbidden as index
or byte [rax + 2*rax], al
or byte [rcx + 2*rcx], al
or byte [rdx + 2*rdx], al
or byte [rbx + 2*rbx], al
or byte [rbp + 2*rbp], al
or byte [rsi + 2*rsi], al
or byte [rdi + 2*rdi], al

; ------------------------------------------------------------------------------
; opcode r,imm
; ------------------------------------------------------------------------------
; immediate to each register: 8-bit
or al, 0x12
or cl, 0x13
or dl, 0x14
or bl, 0x15
or ah, 0x16
or ch, 0x17
or dh, 0x18
or bh, 0x19

; immediate to each register: 16-bit
or ax, 0x12
or cx, 0x13
or dx, 0x14
or bx, 0x15
or sp, 0x16
or bp, 0x17
or si, 0x18
or di, 0x19

or ax, 0x1234
or cx, 0x1235
or dx, 0x1236
or bx, 0x1237
or sp, 0x1238
or bp, 0x1239
or si, 0x123a
or di, 0x123b

; immediate to each register: 32-bit
or eax, 0x12
or ecx, 0x13
or edx, 0x14
or ebx, 0x15
or esp, 0x16
or ebp, 0x17
or esi, 0x18
or edi, 0x19

or eax, 0x1234
or ecx, 0x1235
or edx, 0x1236
or ebx, 0x1237
or esp, 0x1238
or ebp, 0x1239
or esi, 0x123a
or edi, 0x123b

or eax, 0x12345678
or ecx, 0x12345679
or edx, 0x1234567a
or ebx, 0x1234567b
or esp, 0x1234567c
or ebp, 0x1234567d
or esi, 0x1234567e
or edi, 0x1234567f

; immediate to each register: 64-bit
or rax, 0x12
or rcx, 0x13
or rdx, 0x14
or rbx, 0x15
or rsp, 0x16
or rbp, 0x17
or rsi, 0x18
or rdi, 0x19

or rax, 0x1234
or rcx, 0x1235
or rdx, 0x1236
or rbx, 0x1237
or rsp, 0x1238
or rbp, 0x1239
or rsi, 0x123a
or rdi, 0x123b

or rax, 0x12345678
or rcx, 0x12345679
or rdx, 0x1234567a
or rbx, 0x1234567b
or rsp, 0x1234567c
or rbp, 0x1234567d
or rsi, 0x1234567e
or rdi, 0x1234567f

; ------------------------------------------------------------------------------
; opcode m,imm
; ------------------------------------------------------------------------------
; [rip + disp32]
or byte  [rip + 0x12], 0x13
or word  [rip + 0x13], 0x1234
or dword [rip + 0x14], 0x12345678
or qword [rip + 0x15], 0x12345679

or byte  [rip + 0x1234], 0x13
or word  [rip + 0x1235], 0x1234
or dword [rip + 0x1236], 0x12345678
or qword [rip + 0x1237], 0x12345679

or byte  [rip + 0x12345678], 0x13
or word  [rip + 0x12345679], 0x1234
or dword [rip + 0x1234567a], 0x12345678
or qword [rip + 0x1234567b], 0x12345679

; [rip + base]
or byte  [rax], 0x13
or word  [rbx], 0x1234
or dword [rcx], 0x12345678
or qword [rdx], 0x12345679

; [rip + base + disp8]
or byte  [rax + 0x12], 0x13
or word  [rbx + 0x13], 0x1234
or dword [rcx + 0x14], 0x12345678
or qword [rdx + 0x15], 0x12345679

; [rip + base + disp32]
or byte  [rax + 0x1234], 0x13
or word  [rbx + 0x1235], 0x1234
or dword [rcx + 0x1236], 0x12345678
or qword [rdx + 0x1237], 0x12345679

or byte  [rax + 0x12345678], 0x13
or word  [rbx + 0x12345679], 0x1234
or dword [rcx + 0x1234567a], 0x12345678
or qword [rdx + 0x1234567b], 0x12345679

; [rip + base + index]
or byte  [rax + rbx], 0x13
or word  [rbx + rcx], 0x1234
or dword [rcx + rsi], 0x12345678
or qword [rdx + rdi], 0x12345679

; [rip + base + scale * index]
or byte  [rax + 2 * rbx], 0x13
or word  [rbx + 4 * rcx], 0x1234
or dword [rcx + 8 * rsi], 0x12345678
or qword [rdx + 8 * rdi], 0x12345679

; [rip + base + index + disp8]
or byte  [rax + rbx + 0x12], 0x13
or word  [rbx + rcx + 0x13], 0x1234
or dword [rcx + rsi + 0x14], 0x12345678
or qword [rdx + rdi + 0x15], 0x12345679

; [rip + base + index + disp32]
or byte  [rax + rbx + 0x1234], 0x13
or word  [rbx + rcx + 0x1235], 0x1234
or dword [rcx + rsi + 0x1236], 0x12345678
or qword [rdx + rdi + 0x1237], 0x12345679

or byte  [rax + rbx + 0x12345678], 0x13
or word  [rbx + rcx + 0x12345679], 0x1234
or dword [rcx + rsi + 0x1234567a], 0x12345678
or qword [rdx + rdi + 0x1234567b], 0x12345679

; [rip + base + scale * index + disp8]
or byte  [rax + 2 * rbx + 0x12], 0x13
or word  [rbx + 4 * rcx + 0x13], 0x1234
or dword [rcx + 8 * rsi + 0x14], 0x12345678
or qword [rdx + 8 * rdi + 0x15], 0x12345679

; [rip + base + scale * index + disp32]
or byte  [rax + 2 * rbx + 0x1234], 0x13
or word  [rbx + 4 * rcx + 0x1235], 0x1234
or dword [rcx + 8 * rsi + 0x1236], 0x12345678
or qword [rdx + 8 * rdi + 0x1237], 0x12345679

or byte  [rax + 2 * rbx + 0x12345678], 0x13
or word  [rbx + 4 * rcx + 0x12345679], 0x1234
or dword [rcx + 8 * rsi + 0x1234567a], 0x12345678
or qword [rdx + 8 * rdi + 0x1234567b], 0x12345679

; [scale * index]
or byte  [2 * rbx], 0x13
or word  [4 * rcx], 0x1234
or dword [8 * rsi], 0x12345678
or qword [8 * rdi], 0x12345679

; [scale * index + disp8]
or byte  [2 * rbx + 0x12], 0x13
or word  [4 * rcx + 0x13], 0x1234
or dword [8 * rsi + 0x14], 0x12345678
or qword [8 * rdi + 0x15], 0x12345679

; [scale * index + disp32]
or byte  [2 * rbx + 0x1234], 0x13
or word  [4 * rcx + 0x1235], 0x1234
or dword [8 * rsi + 0x1236], 0x12345678
or qword [8 * rdi + 0x1237], 0x12345679

or byte  [2 * rbx + 0x12345678], 0x13
or word  [4 * rcx + 0x12345679], 0x1234
or dword [8 * rsi + 0x1234567a], 0x12345678
or qword [8 * rdi + 0x1234567b], 0x12345679

; Use rbp as base or index.
or byte [rbp], 0x12
or byte [rbp + 0x12], 0x13
or byte [rbp + 0x1234], 0x14
or byte [rbp + 0x12345678], 0x15

or byte [4 * rbp], 0x12
or byte [4 * rbp + 0x12], 0x13
or byte [4 * rbp + 0x1234], 0x14
or byte [4 * rbp + 0x12345678], 0x15

or byte [rbx + 4 * rbp], 0x12
or byte [rbx + 4 * rbp + 0x12], 0x13
or byte [rbx + 4 * rbp + 0x1234], 0x14
or byte [rbx + 4 * rbp + 0x12345678], 0x15

; Use rsp as base.
or byte [rsp], 0x12
or byte [rsp + 0x12], 0x13
or byte [rsp + 0x1234], 0x14
or byte [rsp + 0x12345678], 0x15

or byte [rsp + rax], 0x12
or byte [rsp + rbp], 0x13
or byte [rsp + 2*rbp], 0x14
or byte [rsp + 4*rbp], 0x15
or byte [rsp + 8*rbp], 0x16

; use each register as indirect.
or byte [rax], 0x12
or byte [rcx], 0x13
or byte [rdx], 0x14
or byte [rbx], 0x15
or byte [rsp], 0x16
or byte [rbp], 0x17
or byte [rsi], 0x18
or byte [rdi], 0x19

; use each register as indirect.
; rsp is forbidden as index
or byte [rax + 2*rax], 0x12
or byte [rcx + 2*rcx], 0x13
or byte [rdx + 2*rdx], 0x14
or byte [rbx + 2*rbx], 0x15
or byte [rbp + 2*rbp], 0x16
or byte [rsi + 2*rsi], 0x17
or byte [rdi + 2*rdi], 0x18

