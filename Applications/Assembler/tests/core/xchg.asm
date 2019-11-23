use64
; ------------------------------------------------------------------------------
; opcode r,r
; ------------------------------------------------------------------------------
; 8-bit registers
xchg al, al
xchg al, cl
xchg al, dl
xchg al, bl
xchg al, ah
xchg al, ch
xchg al, dh
xchg al, bh

xchg al, al
xchg cl, al
xchg dl, al
xchg bl, al
xchg ah, al
xchg ch, al
xchg dh, al
xchg bh, al

xchg al, bh
xchg cl, dh
xchg dl, ch
xchg bl, ah
xchg ah, bl
xchg ch, dl
xchg dh, cl
xchg bh, al

; 16-bit registers
xchg ax, ax
xchg ax, cx
xchg ax, dx
xchg ax, bx
xchg ax, sp
xchg ax, bp
xchg ax, si
xchg ax, di

xchg ax, ax
xchg cx, ax
xchg dx, ax
xchg bx, ax
xchg sp, ax
xchg bp, ax
xchg si, ax
xchg di, ax

xchg ax, di
xchg cx, si
xchg dx, bp
xchg bx, sp
xchg sp, bx
xchg bp, dx
xchg si, cx
xchg di, ax

; 32-bit registers
xchg eax, eax
xchg eax, ecx
xchg eax, edx
xchg eax, ebx
xchg eax, esp
xchg eax, ebp
xchg eax, esi
xchg eax, edi

xchg eax, eax
xchg ecx, eax
xchg edx, eax
xchg ebx, eax
xchg esp, eax
xchg ebp, eax
xchg esi, eax
xchg edi, eax

xchg eax, edi
xchg ecx, esi
xchg edx, ebp
xchg ebx, esp
xchg esp, ebx
xchg ebp, edx
xchg esi, ecx
xchg edi, eax

; 64-bit registers
xchg rax, rax
xchg rax, rcx
xchg rax, rdx
xchg rax, rbx
xchg rax, rsp
xchg rax, rbp
xchg rax, rsi
xchg rax, rdi

xchg rax, rax
xchg rcx, rax
xchg rdx, rax
xchg rbx, rax
xchg rsp, rax
xchg rbp, rax
xchg rsi, rax
xchg rdi, rax

xchg rax, rdi
xchg rcx, rsi
xchg rdx, rbp
xchg rbx, rsp
xchg rsp, rbx
xchg rbp, rdx
xchg rsi, rcx
xchg rdi, rax

; ------------------------------------------------------------------------------
; opcode r,m
; ------------------------------------------------------------------------------
; [rip + disp32]
xchg bl,  byte  [rip + 0x12]
xchg cx,  word  [rip + 0x13]
xchg edx, dword [rip + 0x14]
xchg rsi, qword [rip + 0x15]

xchg bl,  byte  [rip + 0x1234]
xchg cx,  word  [rip + 0x1235]
xchg edx, dword [rip + 0x1236]
xchg rsi, qword [rip + 0x1237]

xchg bl,  byte  [rip + 0x12345678]
xchg cx,  word  [rip + 0x12345679]
xchg edx, dword [rip + 0x1234567a]
xchg rsi, qword [rip + 0x1234567b]

; [rip + base]
xchg bl,  byte  [rax]
xchg cx,  word  [rbx]
xchg edx, dword [rcx]
xchg rsi, qword [rdx]

; [rip + base + disp8]
xchg bl,  byte  [rax + 0x12]
xchg cx,  word  [rbx + 0x13]
xchg edx, dword [rcx + 0x14]
xchg rsi, qword [rdx + 0x15]

; [rip + base + disp32]
xchg bl,  byte  [rax + 0x1234]
xchg cx,  word  [rbx + 0x1235]
xchg edx, dword [rcx + 0x1236]
xchg rsi, qword [rdx + 0x1237]

xchg bl,  byte  [rax + 0x12345678]
xchg cx,  word  [rbx + 0x12345679]
xchg edx, dword [rcx + 0x1234567a]
xchg rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
xchg bl,  byte  [rax + rbx]
xchg cx,  word  [rbx + rcx]
xchg edx, dword [rcx + rsi]
xchg rsi, qword [rdx + rdi]

; [rip + base + scale * index]
xchg bl,  byte  [rax + 2 * rbx]
xchg cx,  word  [rbx + 4 * rcx]
xchg edx, dword [rcx + 8 * rsi]
xchg rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
xchg bl,  byte  [rax + rbx + 0x12]
xchg cx,  word  [rbx + rcx + 0x13]
xchg edx, dword [rcx + rsi + 0x14]
xchg rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
xchg bl,  byte  [rax + rbx + 0x1234]
xchg cx,  word  [rbx + rcx + 0x1235]
xchg edx, dword [rcx + rsi + 0x1236]
xchg rsi, qword [rdx + rdi + 0x1237]

xchg bl,  byte  [rax + rbx + 0x12345678]
xchg cx,  word  [rbx + rcx + 0x12345679]
xchg edx, dword [rcx + rsi + 0x1234567a]
xchg rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
xchg bl,  byte  [rax + 2 * rbx + 0x12]
xchg cx,  word  [rbx + 4 * rcx + 0x13]
xchg edx, dword [rcx + 8 * rsi + 0x14]
xchg rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
xchg bl,  byte  [rax + 2 * rbx + 0x1234]
xchg cx,  word  [rbx + 4 * rcx + 0x1235]
xchg edx, dword [rcx + 8 * rsi + 0x1236]
xchg rsi, qword [rdx + 8 * rdi + 0x1237]

xchg bl,  byte  [rax + 2 * rbx + 0x12345678]
xchg cx,  word  [rbx + 4 * rcx + 0x12345679]
xchg edx, dword [rcx + 8 * rsi + 0x1234567a]
xchg rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
xchg bl,  byte  [2 * rbx]
xchg cx,  word  [4 * rcx]
xchg edx, dword [8 * rsi]
xchg rsi, qword [8 * rdi]

; [scale * index + disp8]
xchg bl,  byte  [2 * rbx + 0x12]
xchg cx,  word  [4 * rcx + 0x13]
xchg edx, dword [8 * rsi + 0x14]
xchg rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
xchg bl,  byte  [2 * rbx + 0x1234]
xchg cx,  word  [4 * rcx + 0x1235]
xchg edx, dword [8 * rsi + 0x1236]
xchg rsi, qword [8 * rdi + 0x1237]

xchg bl,  byte  [2 * rbx + 0x12345678]
xchg cx,  word  [4 * rcx + 0x12345679]
xchg edx, dword [8 * rsi + 0x1234567a]
xchg rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
xchg al, byte [rbp]
xchg al, byte [rbp + 0x12]
xchg al, byte [rbp + 0x1234]
xchg al, byte [rbp + 0x12345678]

xchg al, byte [4 * rbp]
xchg al, byte [4 * rbp + 0x12]
xchg al, byte [4 * rbp + 0x1234]
xchg al, byte [4 * rbp + 0x12345678]

xchg al, byte [rbx + 4 * rbp]
xchg al, byte [rbx + 4 * rbp + 0x12]
xchg al, byte [rbx + 4 * rbp + 0x1234]
xchg al, byte [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
xchg al, byte [rsp]
xchg al, byte [rsp + 0x12]
xchg al, byte [rsp + 0x1234]
xchg al, byte [rsp + 0x12345678]

xchg al, byte [rsp + rax]
xchg al, byte [rsp + rbp]
xchg al, byte [rsp + 2*rbp]
xchg al, byte [rsp + 4*rbp]
xchg al, byte [rsp + 8*rbp]

; use each register as indirect.
xchg al, byte [rax]
xchg al, byte [rcx]
xchg al, byte [rdx]
xchg al, byte [rbx]
xchg al, byte [rsp]
xchg al, byte [rbp]
xchg al, byte [rsi]
xchg al, byte [rdi]

; use each register as indirect.
; rsp is forbidden as index
xchg al, byte [rax + 2*rax]
xchg al, byte [rcx + 2*rcx]
xchg al, byte [rdx + 2*rdx]
xchg al, byte [rbx + 2*rbx]
xchg al, byte [rbp + 2*rbp]
xchg al, byte [rsi + 2*rsi]
xchg al, byte [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode m,r
; ------------------------------------------------------------------------------
; [rip + disp32]
xchg byte  [rip + 0x12], bl
xchg word  [rip + 0x13], cx
xchg dword [rip + 0x14], edx
xchg qword [rip + 0x15], rsi

xchg byte  [rip + 0x1234], bl
xchg word  [rip + 0x1235], cx
xchg dword [rip + 0x1236], edx
xchg qword [rip + 0x1237], rsi

xchg byte  [rip + 0x12345678], bl
xchg word  [rip + 0x12345679], cx
xchg dword [rip + 0x1234567a], edx
xchg qword [rip + 0x1234567b], rsi

; [rip + base]
xchg byte  [rax], bl
xchg word  [rbx], cx
xchg dword [rcx], edx
xchg qword [rdx], rsi

; [rip + base + disp8]
xchg byte  [rax + 0x12], bl
xchg word  [rbx + 0x13], cx
xchg dword [rcx + 0x14], edx
xchg qword [rdx + 0x15], rsi

; [rip + base + disp32]
xchg byte  [rax + 0x1234], bl
xchg word  [rbx + 0x1235], cx
xchg dword [rcx + 0x1236], edx
xchg qword [rdx + 0x1237], rsi

xchg byte  [rax + 0x12345678], bl
xchg word  [rbx + 0x12345679], cx
xchg dword [rcx + 0x1234567a], edx
xchg qword [rdx + 0x1234567b], rsi

; [rip + base + index]
xchg byte  [rax + rbx], bl
xchg word  [rbx + rcx], cx
xchg dword [rcx + rsi], edx
xchg qword [rdx + rdi], rsi

; [rip + base + scale * index]
xchg byte  [rax + 2 * rbx], bl
xchg word  [rbx + 4 * rcx], cx
xchg dword [rcx + 8 * rsi], edx
xchg qword [rdx + 8 * rdi], rsi

; [rip + base + index + disp8]
xchg byte  [rax + rbx + 0x12], bl
xchg word  [rbx + rcx + 0x13], cx
xchg dword [rcx + rsi + 0x14], edx
xchg qword [rdx + rdi + 0x15], rsi

; [rip + base + index + disp32]
xchg byte  [rax + rbx + 0x1234], bl
xchg word  [rbx + rcx + 0x1235], cx
xchg dword [rcx + rsi + 0x1236], edx
xchg qword [rdx + rdi + 0x1237], rsi

xchg byte  [rax + rbx + 0x12345678], bl
xchg word  [rbx + rcx + 0x12345679], cx
xchg dword [rcx + rsi + 0x1234567a], edx
xchg qword [rdx + rdi + 0x1234567b], rsi

; [rip + base + scale * index + disp8]
xchg byte  [rax + 2 * rbx + 0x12], bl
xchg word  [rbx + 4 * rcx + 0x13], cx
xchg dword [rcx + 8 * rsi + 0x14], edx
xchg qword [rdx + 8 * rdi + 0x15], rsi

; [rip + base + scale * index + disp32]
xchg byte  [rax + 2 * rbx + 0x1234], bl
xchg word  [rbx + 4 * rcx + 0x1235], cx
xchg dword [rcx + 8 * rsi + 0x1236], edx
xchg qword [rdx + 8 * rdi + 0x1237], rsi

xchg byte  [rax + 2 * rbx + 0x12345678], bl
xchg word  [rbx + 4 * rcx + 0x12345679], cx
xchg dword [rcx + 8 * rsi + 0x1234567a], edx
xchg qword [rdx + 8 * rdi + 0x1234567b], rsi

; [scale * index]
xchg byte  [2 * rbx], bl
xchg word  [4 * rcx], cx
xchg dword [8 * rsi], edx
xchg qword [8 * rdi], rsi

; [scale * index + disp8]
xchg byte  [2 * rbx + 0x12], bl
xchg word  [4 * rcx + 0x13], cx
xchg dword [8 * rsi + 0x14], edx
xchg qword [8 * rdi + 0x15], rsi

; [scale * index + disp32]
xchg byte  [2 * rbx + 0x1234], bl
xchg word  [4 * rcx + 0x1235], cx
xchg dword [8 * rsi + 0x1236], edx
xchg qword [8 * rdi + 0x1237], rsi

xchg byte  [2 * rbx + 0x12345678], bl
xchg word  [4 * rcx + 0x12345679], cx
xchg dword [8 * rsi + 0x1234567a], edx
xchg qword [8 * rdi + 0x1234567b], rsi

; Use rbp as base or index.
xchg byte [rbp], al
xchg byte [rbp + 0x12], al
xchg byte [rbp + 0x1234], al
xchg byte [rbp + 0x12345678], al

xchg byte [4 * rbp], al
xchg byte [4 * rbp + 0x12], al
xchg byte [4 * rbp + 0x1234], al
xchg byte [4 * rbp + 0x12345678], al

xchg byte [rbx + 4 * rbp], al
xchg byte [rbx + 4 * rbp + 0x12], al
xchg byte [rbx + 4 * rbp + 0x1234], al
xchg byte [rbx + 4 * rbp + 0x12345678], al

; Use rsp as base.
xchg byte [rsp], al
xchg byte [rsp + 0x12], al
xchg byte [rsp + 0x1234], al
xchg byte [rsp + 0x12345678], al

xchg byte [rsp + rax], al
xchg byte [rsp + rbp], al
xchg byte [rsp + 2*rbp], al
xchg byte [rsp + 4*rbp], al
xchg byte [rsp + 8*rbp], al

; use each register as indirect.
xchg byte [rax], al
xchg byte [rcx], al
xchg byte [rdx], al
xchg byte [rbx], al
xchg byte [rsp], al
xchg byte [rbp], al
xchg byte [rsi], al
xchg byte [rdi], al

; use each register as indirect.
; rsp is forbidden as index
xchg byte [rax + 2*rax], al
xchg byte [rcx + 2*rcx], al
xchg byte [rdx + 2*rdx], al
xchg byte [rbx + 2*rbx], al
xchg byte [rbp + 2*rbp], al
xchg byte [rsi + 2*rsi], al
xchg byte [rdi + 2*rdi], al

