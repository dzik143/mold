use64
; ------------------------------------------------------------------------------
; opcode r,r
; ------------------------------------------------------------------------------
; 8-bit registers
sbb al, al
sbb al, cl
sbb al, dl
sbb al, bl
sbb al, ah
sbb al, ch
sbb al, dh
sbb al, bh

sbb al, al
sbb cl, al
sbb dl, al
sbb bl, al
sbb ah, al
sbb ch, al
sbb dh, al
sbb bh, al

sbb al, bh
sbb cl, dh
sbb dl, ch
sbb bl, ah
sbb ah, bl
sbb ch, dl
sbb dh, cl
sbb bh, al

; 16-bit registers
sbb ax, ax
sbb ax, cx
sbb ax, dx
sbb ax, bx
sbb ax, sp
sbb ax, bp
sbb ax, si
sbb ax, di

sbb ax, ax
sbb cx, ax
sbb dx, ax
sbb bx, ax
sbb sp, ax
sbb bp, ax
sbb si, ax
sbb di, ax

sbb ax, di
sbb cx, si
sbb dx, bp
sbb bx, sp
sbb sp, bx
sbb bp, dx
sbb si, cx
sbb di, ax

; 32-bit registers
sbb eax, eax
sbb eax, ecx
sbb eax, edx
sbb eax, ebx
sbb eax, esp
sbb eax, ebp
sbb eax, esi
sbb eax, edi

sbb eax, eax
sbb ecx, eax
sbb edx, eax
sbb ebx, eax
sbb esp, eax
sbb ebp, eax
sbb esi, eax
sbb edi, eax

sbb eax, edi
sbb ecx, esi
sbb edx, ebp
sbb ebx, esp
sbb esp, ebx
sbb ebp, edx
sbb esi, ecx
sbb edi, eax

; 64-bit registers
sbb rax, rax
sbb rax, rcx
sbb rax, rdx
sbb rax, rbx
sbb rax, rsp
sbb rax, rbp
sbb rax, rsi
sbb rax, rdi

sbb rax, rax
sbb rcx, rax
sbb rdx, rax
sbb rbx, rax
sbb rsp, rax
sbb rbp, rax
sbb rsi, rax
sbb rdi, rax

sbb rax, rdi
sbb rcx, rsi
sbb rdx, rbp
sbb rbx, rsp
sbb rsp, rbx
sbb rbp, rdx
sbb rsi, rcx
sbb rdi, rax

; ------------------------------------------------------------------------------
; opcode r,m
; ------------------------------------------------------------------------------
; [rip + disp32]
sbb bl,  byte  [rip + 0x12]
sbb cx,  word  [rip + 0x13]
sbb edx, dword [rip + 0x14]
sbb rsi, qword [rip + 0x15]

sbb bl,  byte  [rip + 0x1234]
sbb cx,  word  [rip + 0x1235]
sbb edx, dword [rip + 0x1236]
sbb rsi, qword [rip + 0x1237]

sbb bl,  byte  [rip + 0x12345678]
sbb cx,  word  [rip + 0x12345679]
sbb edx, dword [rip + 0x1234567a]
sbb rsi, qword [rip + 0x1234567b]

; [rip + base]
sbb bl,  byte  [rax]
sbb cx,  word  [rbx]
sbb edx, dword [rcx]
sbb rsi, qword [rdx]

; [rip + base + disp8]
sbb bl,  byte  [rax + 0x12]
sbb cx,  word  [rbx + 0x13]
sbb edx, dword [rcx + 0x14]
sbb rsi, qword [rdx + 0x15]

; [rip + base + disp32]
sbb bl,  byte  [rax + 0x1234]
sbb cx,  word  [rbx + 0x1235]
sbb edx, dword [rcx + 0x1236]
sbb rsi, qword [rdx + 0x1237]

sbb bl,  byte  [rax + 0x12345678]
sbb cx,  word  [rbx + 0x12345679]
sbb edx, dword [rcx + 0x1234567a]
sbb rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
sbb bl,  byte  [rax + rbx]
sbb cx,  word  [rbx + rcx]
sbb edx, dword [rcx + rsi]
sbb rsi, qword [rdx + rdi]

; [rip + base + scale * index]
sbb bl,  byte  [rax + 2 * rbx]
sbb cx,  word  [rbx + 4 * rcx]
sbb edx, dword [rcx + 8 * rsi]
sbb rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
sbb bl,  byte  [rax + rbx + 0x12]
sbb cx,  word  [rbx + rcx + 0x13]
sbb edx, dword [rcx + rsi + 0x14]
sbb rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
sbb bl,  byte  [rax + rbx + 0x1234]
sbb cx,  word  [rbx + rcx + 0x1235]
sbb edx, dword [rcx + rsi + 0x1236]
sbb rsi, qword [rdx + rdi + 0x1237]

sbb bl,  byte  [rax + rbx + 0x12345678]
sbb cx,  word  [rbx + rcx + 0x12345679]
sbb edx, dword [rcx + rsi + 0x1234567a]
sbb rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
sbb bl,  byte  [rax + 2 * rbx + 0x12]
sbb cx,  word  [rbx + 4 * rcx + 0x13]
sbb edx, dword [rcx + 8 * rsi + 0x14]
sbb rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
sbb bl,  byte  [rax + 2 * rbx + 0x1234]
sbb cx,  word  [rbx + 4 * rcx + 0x1235]
sbb edx, dword [rcx + 8 * rsi + 0x1236]
sbb rsi, qword [rdx + 8 * rdi + 0x1237]

sbb bl,  byte  [rax + 2 * rbx + 0x12345678]
sbb cx,  word  [rbx + 4 * rcx + 0x12345679]
sbb edx, dword [rcx + 8 * rsi + 0x1234567a]
sbb rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
sbb bl,  byte  [2 * rbx]
sbb cx,  word  [4 * rcx]
sbb edx, dword [8 * rsi]
sbb rsi, qword [8 * rdi]

; [scale * index + disp8]
sbb bl,  byte  [2 * rbx + 0x12]
sbb cx,  word  [4 * rcx + 0x13]
sbb edx, dword [8 * rsi + 0x14]
sbb rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
sbb bl,  byte  [2 * rbx + 0x1234]
sbb cx,  word  [4 * rcx + 0x1235]
sbb edx, dword [8 * rsi + 0x1236]
sbb rsi, qword [8 * rdi + 0x1237]

sbb bl,  byte  [2 * rbx + 0x12345678]
sbb cx,  word  [4 * rcx + 0x12345679]
sbb edx, dword [8 * rsi + 0x1234567a]
sbb rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
sbb al, byte [rbp]
sbb al, byte [rbp + 0x12]
sbb al, byte [rbp + 0x1234]
sbb al, byte [rbp + 0x12345678]

sbb al, byte [4 * rbp]
sbb al, byte [4 * rbp + 0x12]
sbb al, byte [4 * rbp + 0x1234]
sbb al, byte [4 * rbp + 0x12345678]

sbb al, byte [rbx + 4 * rbp]
sbb al, byte [rbx + 4 * rbp + 0x12]
sbb al, byte [rbx + 4 * rbp + 0x1234]
sbb al, byte [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
sbb al, byte [rsp]
sbb al, byte [rsp + 0x12]
sbb al, byte [rsp + 0x1234]
sbb al, byte [rsp + 0x12345678]

sbb al, byte [rsp + rax]
sbb al, byte [rsp + rbp]
sbb al, byte [rsp + 2*rbp]
sbb al, byte [rsp + 4*rbp]
sbb al, byte [rsp + 8*rbp]

; use each register as indirect.
sbb al, byte [rax]
sbb al, byte [rcx]
sbb al, byte [rdx]
sbb al, byte [rbx]
sbb al, byte [rsp]
sbb al, byte [rbp]
sbb al, byte [rsi]
sbb al, byte [rdi]

; use each register as indirect.
; rsp is forbidden as index
sbb al, byte [rax + 2*rax]
sbb al, byte [rcx + 2*rcx]
sbb al, byte [rdx + 2*rdx]
sbb al, byte [rbx + 2*rbx]
sbb al, byte [rbp + 2*rbp]
sbb al, byte [rsi + 2*rsi]
sbb al, byte [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode m,r
; ------------------------------------------------------------------------------
; [rip + disp32]
sbb byte  [rip + 0x12], bl
sbb word  [rip + 0x13], cx
sbb dword [rip + 0x14], edx
sbb qword [rip + 0x15], rsi

sbb byte  [rip + 0x1234], bl
sbb word  [rip + 0x1235], cx
sbb dword [rip + 0x1236], edx
sbb qword [rip + 0x1237], rsi

sbb byte  [rip + 0x12345678], bl
sbb word  [rip + 0x12345679], cx
sbb dword [rip + 0x1234567a], edx
sbb qword [rip + 0x1234567b], rsi

; [rip + base]
sbb byte  [rax], bl
sbb word  [rbx], cx
sbb dword [rcx], edx
sbb qword [rdx], rsi

; [rip + base + disp8]
sbb byte  [rax + 0x12], bl
sbb word  [rbx + 0x13], cx
sbb dword [rcx + 0x14], edx
sbb qword [rdx + 0x15], rsi

; [rip + base + disp32]
sbb byte  [rax + 0x1234], bl
sbb word  [rbx + 0x1235], cx
sbb dword [rcx + 0x1236], edx
sbb qword [rdx + 0x1237], rsi

sbb byte  [rax + 0x12345678], bl
sbb word  [rbx + 0x12345679], cx
sbb dword [rcx + 0x1234567a], edx
sbb qword [rdx + 0x1234567b], rsi

; [rip + base + index]
sbb byte  [rax + rbx], bl
sbb word  [rbx + rcx], cx
sbb dword [rcx + rsi], edx
sbb qword [rdx + rdi], rsi

; [rip + base + scale * index]
sbb byte  [rax + 2 * rbx], bl
sbb word  [rbx + 4 * rcx], cx
sbb dword [rcx + 8 * rsi], edx
sbb qword [rdx + 8 * rdi], rsi

; [rip + base + index + disp8]
sbb byte  [rax + rbx + 0x12], bl
sbb word  [rbx + rcx + 0x13], cx
sbb dword [rcx + rsi + 0x14], edx
sbb qword [rdx + rdi + 0x15], rsi

; [rip + base + index + disp32]
sbb byte  [rax + rbx + 0x1234], bl
sbb word  [rbx + rcx + 0x1235], cx
sbb dword [rcx + rsi + 0x1236], edx
sbb qword [rdx + rdi + 0x1237], rsi

sbb byte  [rax + rbx + 0x12345678], bl
sbb word  [rbx + rcx + 0x12345679], cx
sbb dword [rcx + rsi + 0x1234567a], edx
sbb qword [rdx + rdi + 0x1234567b], rsi

; [rip + base + scale * index + disp8]
sbb byte  [rax + 2 * rbx + 0x12], bl
sbb word  [rbx + 4 * rcx + 0x13], cx
sbb dword [rcx + 8 * rsi + 0x14], edx
sbb qword [rdx + 8 * rdi + 0x15], rsi

; [rip + base + scale * index + disp32]
sbb byte  [rax + 2 * rbx + 0x1234], bl
sbb word  [rbx + 4 * rcx + 0x1235], cx
sbb dword [rcx + 8 * rsi + 0x1236], edx
sbb qword [rdx + 8 * rdi + 0x1237], rsi

sbb byte  [rax + 2 * rbx + 0x12345678], bl
sbb word  [rbx + 4 * rcx + 0x12345679], cx
sbb dword [rcx + 8 * rsi + 0x1234567a], edx
sbb qword [rdx + 8 * rdi + 0x1234567b], rsi

; [scale * index]
sbb byte  [2 * rbx], bl
sbb word  [4 * rcx], cx
sbb dword [8 * rsi], edx
sbb qword [8 * rdi], rsi

; [scale * index + disp8]
sbb byte  [2 * rbx + 0x12], bl
sbb word  [4 * rcx + 0x13], cx
sbb dword [8 * rsi + 0x14], edx
sbb qword [8 * rdi + 0x15], rsi

; [scale * index + disp32]
sbb byte  [2 * rbx + 0x1234], bl
sbb word  [4 * rcx + 0x1235], cx
sbb dword [8 * rsi + 0x1236], edx
sbb qword [8 * rdi + 0x1237], rsi

sbb byte  [2 * rbx + 0x12345678], bl
sbb word  [4 * rcx + 0x12345679], cx
sbb dword [8 * rsi + 0x1234567a], edx
sbb qword [8 * rdi + 0x1234567b], rsi

; Use rbp as base or index.
sbb byte [rbp], al
sbb byte [rbp + 0x12], al
sbb byte [rbp + 0x1234], al
sbb byte [rbp + 0x12345678], al

sbb byte [4 * rbp], al
sbb byte [4 * rbp + 0x12], al
sbb byte [4 * rbp + 0x1234], al
sbb byte [4 * rbp + 0x12345678], al

sbb byte [rbx + 4 * rbp], al
sbb byte [rbx + 4 * rbp + 0x12], al
sbb byte [rbx + 4 * rbp + 0x1234], al
sbb byte [rbx + 4 * rbp + 0x12345678], al

; Use rsp as base.
sbb byte [rsp], al
sbb byte [rsp + 0x12], al
sbb byte [rsp + 0x1234], al
sbb byte [rsp + 0x12345678], al

sbb byte [rsp + rax], al
sbb byte [rsp + rbp], al
sbb byte [rsp + 2*rbp], al
sbb byte [rsp + 4*rbp], al
sbb byte [rsp + 8*rbp], al

; use each register as indirect.
sbb byte [rax], al
sbb byte [rcx], al
sbb byte [rdx], al
sbb byte [rbx], al
sbb byte [rsp], al
sbb byte [rbp], al
sbb byte [rsi], al
sbb byte [rdi], al

; use each register as indirect.
; rsp is forbidden as index
sbb byte [rax + 2*rax], al
sbb byte [rcx + 2*rcx], al
sbb byte [rdx + 2*rdx], al
sbb byte [rbx + 2*rbx], al
sbb byte [rbp + 2*rbp], al
sbb byte [rsi + 2*rsi], al
sbb byte [rdi + 2*rdi], al

; ------------------------------------------------------------------------------
; opcode r,imm
; ------------------------------------------------------------------------------
; immediate to each register: 8-bit
sbb al, 0x12
sbb cl, 0x13
sbb dl, 0x14
sbb bl, 0x15
sbb ah, 0x16
sbb ch, 0x17
sbb dh, 0x18
sbb bh, 0x19

; immediate to each register: 16-bit
sbb ax, 0x12
sbb cx, 0x13
sbb dx, 0x14
sbb bx, 0x15
sbb sp, 0x16
sbb bp, 0x17
sbb si, 0x18
sbb di, 0x19

sbb ax, 0x1234
sbb cx, 0x1235
sbb dx, 0x1236
sbb bx, 0x1237
sbb sp, 0x1238
sbb bp, 0x1239
sbb si, 0x123a
sbb di, 0x123b

; immediate to each register: 32-bit
sbb eax, 0x12
sbb ecx, 0x13
sbb edx, 0x14
sbb ebx, 0x15
sbb esp, 0x16
sbb ebp, 0x17
sbb esi, 0x18
sbb edi, 0x19

sbb eax, 0x1234
sbb ecx, 0x1235
sbb edx, 0x1236
sbb ebx, 0x1237
sbb esp, 0x1238
sbb ebp, 0x1239
sbb esi, 0x123a
sbb edi, 0x123b

sbb eax, 0x12345678
sbb ecx, 0x12345679
sbb edx, 0x1234567a
sbb ebx, 0x1234567b
sbb esp, 0x1234567c
sbb ebp, 0x1234567d
sbb esi, 0x1234567e
sbb edi, 0x1234567f

; immediate to each register: 64-bit
sbb rax, 0x12
sbb rcx, 0x13
sbb rdx, 0x14
sbb rbx, 0x15
sbb rsp, 0x16
sbb rbp, 0x17
sbb rsi, 0x18
sbb rdi, 0x19

sbb rax, 0x1234
sbb rcx, 0x1235
sbb rdx, 0x1236
sbb rbx, 0x1237
sbb rsp, 0x1238
sbb rbp, 0x1239
sbb rsi, 0x123a
sbb rdi, 0x123b

sbb rax, 0x12345678
sbb rcx, 0x12345679
sbb rdx, 0x1234567a
sbb rbx, 0x1234567b
sbb rsp, 0x1234567c
sbb rbp, 0x1234567d
sbb rsi, 0x1234567e
sbb rdi, 0x1234567f

; ------------------------------------------------------------------------------
; opcode m,imm
; ------------------------------------------------------------------------------
; [rip + disp32]
sbb byte  [rip + 0x12], 0x13
sbb word  [rip + 0x13], 0x1234
sbb dword [rip + 0x14], 0x12345678
sbb qword [rip + 0x15], 0x12345679

sbb byte  [rip + 0x1234], 0x13
sbb word  [rip + 0x1235], 0x1234
sbb dword [rip + 0x1236], 0x12345678
sbb qword [rip + 0x1237], 0x12345679

sbb byte  [rip + 0x12345678], 0x13
sbb word  [rip + 0x12345679], 0x1234
sbb dword [rip + 0x1234567a], 0x12345678
sbb qword [rip + 0x1234567b], 0x12345679

; [rip + base]
sbb byte  [rax], 0x13
sbb word  [rbx], 0x1234
sbb dword [rcx], 0x12345678
sbb qword [rdx], 0x12345679

; [rip + base + disp8]
sbb byte  [rax + 0x12], 0x13
sbb word  [rbx + 0x13], 0x1234
sbb dword [rcx + 0x14], 0x12345678
sbb qword [rdx + 0x15], 0x12345679

; [rip + base + disp32]
sbb byte  [rax + 0x1234], 0x13
sbb word  [rbx + 0x1235], 0x1234
sbb dword [rcx + 0x1236], 0x12345678
sbb qword [rdx + 0x1237], 0x12345679

sbb byte  [rax + 0x12345678], 0x13
sbb word  [rbx + 0x12345679], 0x1234
sbb dword [rcx + 0x1234567a], 0x12345678
sbb qword [rdx + 0x1234567b], 0x12345679

; [rip + base + index]
sbb byte  [rax + rbx], 0x13
sbb word  [rbx + rcx], 0x1234
sbb dword [rcx + rsi], 0x12345678
sbb qword [rdx + rdi], 0x12345679

; [rip + base + scale * index]
sbb byte  [rax + 2 * rbx], 0x13
sbb word  [rbx + 4 * rcx], 0x1234
sbb dword [rcx + 8 * rsi], 0x12345678
sbb qword [rdx + 8 * rdi], 0x12345679

; [rip + base + index + disp8]
sbb byte  [rax + rbx + 0x12], 0x13
sbb word  [rbx + rcx + 0x13], 0x1234
sbb dword [rcx + rsi + 0x14], 0x12345678
sbb qword [rdx + rdi + 0x15], 0x12345679

; [rip + base + index + disp32]
sbb byte  [rax + rbx + 0x1234], 0x13
sbb word  [rbx + rcx + 0x1235], 0x1234
sbb dword [rcx + rsi + 0x1236], 0x12345678
sbb qword [rdx + rdi + 0x1237], 0x12345679

sbb byte  [rax + rbx + 0x12345678], 0x13
sbb word  [rbx + rcx + 0x12345679], 0x1234
sbb dword [rcx + rsi + 0x1234567a], 0x12345678
sbb qword [rdx + rdi + 0x1234567b], 0x12345679

; [rip + base + scale * index + disp8]
sbb byte  [rax + 2 * rbx + 0x12], 0x13
sbb word  [rbx + 4 * rcx + 0x13], 0x1234
sbb dword [rcx + 8 * rsi + 0x14], 0x12345678
sbb qword [rdx + 8 * rdi + 0x15], 0x12345679

; [rip + base + scale * index + disp32]
sbb byte  [rax + 2 * rbx + 0x1234], 0x13
sbb word  [rbx + 4 * rcx + 0x1235], 0x1234
sbb dword [rcx + 8 * rsi + 0x1236], 0x12345678
sbb qword [rdx + 8 * rdi + 0x1237], 0x12345679

sbb byte  [rax + 2 * rbx + 0x12345678], 0x13
sbb word  [rbx + 4 * rcx + 0x12345679], 0x1234
sbb dword [rcx + 8 * rsi + 0x1234567a], 0x12345678
sbb qword [rdx + 8 * rdi + 0x1234567b], 0x12345679

; [scale * index]
sbb byte  [2 * rbx], 0x13
sbb word  [4 * rcx], 0x1234
sbb dword [8 * rsi], 0x12345678
sbb qword [8 * rdi], 0x12345679

; [scale * index + disp8]
sbb byte  [2 * rbx + 0x12], 0x13
sbb word  [4 * rcx + 0x13], 0x1234
sbb dword [8 * rsi + 0x14], 0x12345678
sbb qword [8 * rdi + 0x15], 0x12345679

; [scale * index + disp32]
sbb byte  [2 * rbx + 0x1234], 0x13
sbb word  [4 * rcx + 0x1235], 0x1234
sbb dword [8 * rsi + 0x1236], 0x12345678
sbb qword [8 * rdi + 0x1237], 0x12345679

sbb byte  [2 * rbx + 0x12345678], 0x13
sbb word  [4 * rcx + 0x12345679], 0x1234
sbb dword [8 * rsi + 0x1234567a], 0x12345678
sbb qword [8 * rdi + 0x1234567b], 0x12345679

; Use rbp as base or index.
sbb byte [rbp], 0x12
sbb byte [rbp + 0x12], 0x13
sbb byte [rbp + 0x1234], 0x14
sbb byte [rbp + 0x12345678], 0x15

sbb byte [4 * rbp], 0x12
sbb byte [4 * rbp + 0x12], 0x13
sbb byte [4 * rbp + 0x1234], 0x14
sbb byte [4 * rbp + 0x12345678], 0x15

sbb byte [rbx + 4 * rbp], 0x12
sbb byte [rbx + 4 * rbp + 0x12], 0x13
sbb byte [rbx + 4 * rbp + 0x1234], 0x14
sbb byte [rbx + 4 * rbp + 0x12345678], 0x15

; Use rsp as base.
sbb byte [rsp], 0x12
sbb byte [rsp + 0x12], 0x13
sbb byte [rsp + 0x1234], 0x14
sbb byte [rsp + 0x12345678], 0x15

sbb byte [rsp + rax], 0x12
sbb byte [rsp + rbp], 0x13
sbb byte [rsp + 2*rbp], 0x14
sbb byte [rsp + 4*rbp], 0x15
sbb byte [rsp + 8*rbp], 0x16

; use each register as indirect.
sbb byte [rax], 0x12
sbb byte [rcx], 0x13
sbb byte [rdx], 0x14
sbb byte [rbx], 0x15
sbb byte [rsp], 0x16
sbb byte [rbp], 0x17
sbb byte [rsi], 0x18
sbb byte [rdi], 0x19

; use each register as indirect.
; rsp is forbidden as index
sbb byte [rax + 2*rax], 0x12
sbb byte [rcx + 2*rcx], 0x13
sbb byte [rdx + 2*rdx], 0x14
sbb byte [rbx + 2*rbx], 0x15
sbb byte [rbp + 2*rbp], 0x16
sbb byte [rsi + 2*rsi], 0x17
sbb byte [rdi + 2*rdi], 0x18

