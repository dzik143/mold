use64
; ------------------------------------------------------------------------------
; opcode r,r
; ------------------------------------------------------------------------------
; 8-bit registers
sub al, al
sub al, cl
sub al, dl
sub al, bl
sub al, ah
sub al, ch
sub al, dh
sub al, bh

sub al, al
sub cl, al
sub dl, al
sub bl, al
sub ah, al
sub ch, al
sub dh, al
sub bh, al

sub al, bh
sub cl, dh
sub dl, ch
sub bl, ah
sub ah, bl
sub ch, dl
sub dh, cl
sub bh, al

; 16-bit registers
sub ax, ax
sub ax, cx
sub ax, dx
sub ax, bx
sub ax, sp
sub ax, bp
sub ax, si
sub ax, di

sub ax, ax
sub cx, ax
sub dx, ax
sub bx, ax
sub sp, ax
sub bp, ax
sub si, ax
sub di, ax

sub ax, di
sub cx, si
sub dx, bp
sub bx, sp
sub sp, bx
sub bp, dx
sub si, cx
sub di, ax

; 32-bit registers
sub eax, eax
sub eax, ecx
sub eax, edx
sub eax, ebx
sub eax, esp
sub eax, ebp
sub eax, esi
sub eax, edi

sub eax, eax
sub ecx, eax
sub edx, eax
sub ebx, eax
sub esp, eax
sub ebp, eax
sub esi, eax
sub edi, eax

sub eax, edi
sub ecx, esi
sub edx, ebp
sub ebx, esp
sub esp, ebx
sub ebp, edx
sub esi, ecx
sub edi, eax

; 64-bit registers
sub rax, rax
sub rax, rcx
sub rax, rdx
sub rax, rbx
sub rax, rsp
sub rax, rbp
sub rax, rsi
sub rax, rdi

sub rax, rax
sub rcx, rax
sub rdx, rax
sub rbx, rax
sub rsp, rax
sub rbp, rax
sub rsi, rax
sub rdi, rax

sub rax, rdi
sub rcx, rsi
sub rdx, rbp
sub rbx, rsp
sub rsp, rbx
sub rbp, rdx
sub rsi, rcx
sub rdi, rax

; ------------------------------------------------------------------------------
; opcode r,m
; ------------------------------------------------------------------------------
; [rip + disp32]
sub bl,  byte  [rip + 0x12]
sub cx,  word  [rip + 0x13]
sub edx, dword [rip + 0x14]
sub rsi, qword [rip + 0x15]

sub bl,  byte  [rip + 0x1234]
sub cx,  word  [rip + 0x1235]
sub edx, dword [rip + 0x1236]
sub rsi, qword [rip + 0x1237]

sub bl,  byte  [rip + 0x12345678]
sub cx,  word  [rip + 0x12345679]
sub edx, dword [rip + 0x1234567a]
sub rsi, qword [rip + 0x1234567b]

; [rip + base]
sub bl,  byte  [rax]
sub cx,  word  [rbx]
sub edx, dword [rcx]
sub rsi, qword [rdx]

; [rip + base + disp8]
sub bl,  byte  [rax + 0x12]
sub cx,  word  [rbx + 0x13]
sub edx, dword [rcx + 0x14]
sub rsi, qword [rdx + 0x15]

; [rip + base + disp32]
sub bl,  byte  [rax + 0x1234]
sub cx,  word  [rbx + 0x1235]
sub edx, dword [rcx + 0x1236]
sub rsi, qword [rdx + 0x1237]

sub bl,  byte  [rax + 0x12345678]
sub cx,  word  [rbx + 0x12345679]
sub edx, dword [rcx + 0x1234567a]
sub rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
sub bl,  byte  [rax + rbx]
sub cx,  word  [rbx + rcx]
sub edx, dword [rcx + rsi]
sub rsi, qword [rdx + rdi]

; [rip + base + scale * index]
sub bl,  byte  [rax + 2 * rbx]
sub cx,  word  [rbx + 4 * rcx]
sub edx, dword [rcx + 8 * rsi]
sub rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
sub bl,  byte  [rax + rbx + 0x12]
sub cx,  word  [rbx + rcx + 0x13]
sub edx, dword [rcx + rsi + 0x14]
sub rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
sub bl,  byte  [rax + rbx + 0x1234]
sub cx,  word  [rbx + rcx + 0x1235]
sub edx, dword [rcx + rsi + 0x1236]
sub rsi, qword [rdx + rdi + 0x1237]

sub bl,  byte  [rax + rbx + 0x12345678]
sub cx,  word  [rbx + rcx + 0x12345679]
sub edx, dword [rcx + rsi + 0x1234567a]
sub rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
sub bl,  byte  [rax + 2 * rbx + 0x12]
sub cx,  word  [rbx + 4 * rcx + 0x13]
sub edx, dword [rcx + 8 * rsi + 0x14]
sub rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
sub bl,  byte  [rax + 2 * rbx + 0x1234]
sub cx,  word  [rbx + 4 * rcx + 0x1235]
sub edx, dword [rcx + 8 * rsi + 0x1236]
sub rsi, qword [rdx + 8 * rdi + 0x1237]

sub bl,  byte  [rax + 2 * rbx + 0x12345678]
sub cx,  word  [rbx + 4 * rcx + 0x12345679]
sub edx, dword [rcx + 8 * rsi + 0x1234567a]
sub rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
sub bl,  byte  [2 * rbx]
sub cx,  word  [4 * rcx]
sub edx, dword [8 * rsi]
sub rsi, qword [8 * rdi]

; [scale * index + disp8]
sub bl,  byte  [2 * rbx + 0x12]
sub cx,  word  [4 * rcx + 0x13]
sub edx, dword [8 * rsi + 0x14]
sub rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
sub bl,  byte  [2 * rbx + 0x1234]
sub cx,  word  [4 * rcx + 0x1235]
sub edx, dword [8 * rsi + 0x1236]
sub rsi, qword [8 * rdi + 0x1237]

sub bl,  byte  [2 * rbx + 0x12345678]
sub cx,  word  [4 * rcx + 0x12345679]
sub edx, dword [8 * rsi + 0x1234567a]
sub rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
sub al, byte [rbp]
sub al, byte [rbp + 0x12]
sub al, byte [rbp + 0x1234]
sub al, byte [rbp + 0x12345678]

sub al, byte [4 * rbp]
sub al, byte [4 * rbp + 0x12]
sub al, byte [4 * rbp + 0x1234]
sub al, byte [4 * rbp + 0x12345678]

sub al, byte [rbx + 4 * rbp]
sub al, byte [rbx + 4 * rbp + 0x12]
sub al, byte [rbx + 4 * rbp + 0x1234]
sub al, byte [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
sub al, byte [rsp]
sub al, byte [rsp + 0x12]
sub al, byte [rsp + 0x1234]
sub al, byte [rsp + 0x12345678]

sub al, byte [rsp + rax]
sub al, byte [rsp + rbp]
sub al, byte [rsp + 2*rbp]
sub al, byte [rsp + 4*rbp]
sub al, byte [rsp + 8*rbp]

; use each register as indirect.
sub al, byte [rax]
sub al, byte [rcx]
sub al, byte [rdx]
sub al, byte [rbx]
sub al, byte [rsp]
sub al, byte [rbp]
sub al, byte [rsi]
sub al, byte [rdi]

; use each register as indirect.
; rsp is forbidden as index
sub al, byte [rax + 2*rax]
sub al, byte [rcx + 2*rcx]
sub al, byte [rdx + 2*rdx]
sub al, byte [rbx + 2*rbx]
sub al, byte [rbp + 2*rbp]
sub al, byte [rsi + 2*rsi]
sub al, byte [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode m,r
; ------------------------------------------------------------------------------
; [rip + disp32]
sub byte  [rip + 0x12], bl
sub word  [rip + 0x13], cx
sub dword [rip + 0x14], edx
sub qword [rip + 0x15], rsi

sub byte  [rip + 0x1234], bl
sub word  [rip + 0x1235], cx
sub dword [rip + 0x1236], edx
sub qword [rip + 0x1237], rsi

sub byte  [rip + 0x12345678], bl
sub word  [rip + 0x12345679], cx
sub dword [rip + 0x1234567a], edx
sub qword [rip + 0x1234567b], rsi

; [rip + base]
sub byte  [rax], bl
sub word  [rbx], cx
sub dword [rcx], edx
sub qword [rdx], rsi

; [rip + base + disp8]
sub byte  [rax + 0x12], bl
sub word  [rbx + 0x13], cx
sub dword [rcx + 0x14], edx
sub qword [rdx + 0x15], rsi

; [rip + base + disp32]
sub byte  [rax + 0x1234], bl
sub word  [rbx + 0x1235], cx
sub dword [rcx + 0x1236], edx
sub qword [rdx + 0x1237], rsi

sub byte  [rax + 0x12345678], bl
sub word  [rbx + 0x12345679], cx
sub dword [rcx + 0x1234567a], edx
sub qword [rdx + 0x1234567b], rsi

; [rip + base + index]
sub byte  [rax + rbx], bl
sub word  [rbx + rcx], cx
sub dword [rcx + rsi], edx
sub qword [rdx + rdi], rsi

; [rip + base + scale * index]
sub byte  [rax + 2 * rbx], bl
sub word  [rbx + 4 * rcx], cx
sub dword [rcx + 8 * rsi], edx
sub qword [rdx + 8 * rdi], rsi

; [rip + base + index + disp8]
sub byte  [rax + rbx + 0x12], bl
sub word  [rbx + rcx + 0x13], cx
sub dword [rcx + rsi + 0x14], edx
sub qword [rdx + rdi + 0x15], rsi

; [rip + base + index + disp32]
sub byte  [rax + rbx + 0x1234], bl
sub word  [rbx + rcx + 0x1235], cx
sub dword [rcx + rsi + 0x1236], edx
sub qword [rdx + rdi + 0x1237], rsi

sub byte  [rax + rbx + 0x12345678], bl
sub word  [rbx + rcx + 0x12345679], cx
sub dword [rcx + rsi + 0x1234567a], edx
sub qword [rdx + rdi + 0x1234567b], rsi

; [rip + base + scale * index + disp8]
sub byte  [rax + 2 * rbx + 0x12], bl
sub word  [rbx + 4 * rcx + 0x13], cx
sub dword [rcx + 8 * rsi + 0x14], edx
sub qword [rdx + 8 * rdi + 0x15], rsi

; [rip + base + scale * index + disp32]
sub byte  [rax + 2 * rbx + 0x1234], bl
sub word  [rbx + 4 * rcx + 0x1235], cx
sub dword [rcx + 8 * rsi + 0x1236], edx
sub qword [rdx + 8 * rdi + 0x1237], rsi

sub byte  [rax + 2 * rbx + 0x12345678], bl
sub word  [rbx + 4 * rcx + 0x12345679], cx
sub dword [rcx + 8 * rsi + 0x1234567a], edx
sub qword [rdx + 8 * rdi + 0x1234567b], rsi

; [scale * index]
sub byte  [2 * rbx], bl
sub word  [4 * rcx], cx
sub dword [8 * rsi], edx
sub qword [8 * rdi], rsi

; [scale * index + disp8]
sub byte  [2 * rbx + 0x12], bl
sub word  [4 * rcx + 0x13], cx
sub dword [8 * rsi + 0x14], edx
sub qword [8 * rdi + 0x15], rsi

; [scale * index + disp32]
sub byte  [2 * rbx + 0x1234], bl
sub word  [4 * rcx + 0x1235], cx
sub dword [8 * rsi + 0x1236], edx
sub qword [8 * rdi + 0x1237], rsi

sub byte  [2 * rbx + 0x12345678], bl
sub word  [4 * rcx + 0x12345679], cx
sub dword [8 * rsi + 0x1234567a], edx
sub qword [8 * rdi + 0x1234567b], rsi

; Use rbp as base or index.
sub byte [rbp], al
sub byte [rbp + 0x12], al
sub byte [rbp + 0x1234], al
sub byte [rbp + 0x12345678], al

sub byte [4 * rbp], al
sub byte [4 * rbp + 0x12], al
sub byte [4 * rbp + 0x1234], al
sub byte [4 * rbp + 0x12345678], al

sub byte [rbx + 4 * rbp], al
sub byte [rbx + 4 * rbp + 0x12], al
sub byte [rbx + 4 * rbp + 0x1234], al
sub byte [rbx + 4 * rbp + 0x12345678], al

; Use rsp as base.
sub byte [rsp], al
sub byte [rsp + 0x12], al
sub byte [rsp + 0x1234], al
sub byte [rsp + 0x12345678], al

sub byte [rsp + rax], al
sub byte [rsp + rbp], al
sub byte [rsp + 2*rbp], al
sub byte [rsp + 4*rbp], al
sub byte [rsp + 8*rbp], al

; use each register as indirect.
sub byte [rax], al
sub byte [rcx], al
sub byte [rdx], al
sub byte [rbx], al
sub byte [rsp], al
sub byte [rbp], al
sub byte [rsi], al
sub byte [rdi], al

; use each register as indirect.
; rsp is forbidden as index
sub byte [rax + 2*rax], al
sub byte [rcx + 2*rcx], al
sub byte [rdx + 2*rdx], al
sub byte [rbx + 2*rbx], al
sub byte [rbp + 2*rbp], al
sub byte [rsi + 2*rsi], al
sub byte [rdi + 2*rdi], al

; ------------------------------------------------------------------------------
; opcode r,imm
; ------------------------------------------------------------------------------
; immediate to each register: 8-bit
sub al, 0x12
sub cl, 0x13
sub dl, 0x14
sub bl, 0x15
sub ah, 0x16
sub ch, 0x17
sub dh, 0x18
sub bh, 0x19

; immediate to each register: 16-bit
sub ax, 0x12
sub cx, 0x13
sub dx, 0x14
sub bx, 0x15
sub sp, 0x16
sub bp, 0x17
sub si, 0x18
sub di, 0x19

sub ax, 0x1234
sub cx, 0x1235
sub dx, 0x1236
sub bx, 0x1237
sub sp, 0x1238
sub bp, 0x1239
sub si, 0x123a
sub di, 0x123b

; immediate to each register: 32-bit
sub eax, 0x12
sub ecx, 0x13
sub edx, 0x14
sub ebx, 0x15
sub esp, 0x16
sub ebp, 0x17
sub esi, 0x18
sub edi, 0x19

sub eax, 0x1234
sub ecx, 0x1235
sub edx, 0x1236
sub ebx, 0x1237
sub esp, 0x1238
sub ebp, 0x1239
sub esi, 0x123a
sub edi, 0x123b

sub eax, 0x12345678
sub ecx, 0x12345679
sub edx, 0x1234567a
sub ebx, 0x1234567b
sub esp, 0x1234567c
sub ebp, 0x1234567d
sub esi, 0x1234567e
sub edi, 0x1234567f

; immediate to each register: 64-bit
sub rax, 0x12
sub rcx, 0x13
sub rdx, 0x14
sub rbx, 0x15
sub rsp, 0x16
sub rbp, 0x17
sub rsi, 0x18
sub rdi, 0x19

sub rax, 0x1234
sub rcx, 0x1235
sub rdx, 0x1236
sub rbx, 0x1237
sub rsp, 0x1238
sub rbp, 0x1239
sub rsi, 0x123a
sub rdi, 0x123b

sub rax, 0x12345678
sub rcx, 0x12345679
sub rdx, 0x1234567a
sub rbx, 0x1234567b
sub rsp, 0x1234567c
sub rbp, 0x1234567d
sub rsi, 0x1234567e
sub rdi, 0x1234567f

; ------------------------------------------------------------------------------
; opcode m,imm
; ------------------------------------------------------------------------------
; [rip + disp32]
sub byte  [rip + 0x12], 0x13
sub word  [rip + 0x13], 0x1234
sub dword [rip + 0x14], 0x12345678
sub qword [rip + 0x15], 0x12345679

sub byte  [rip + 0x1234], 0x13
sub word  [rip + 0x1235], 0x1234
sub dword [rip + 0x1236], 0x12345678
sub qword [rip + 0x1237], 0x12345679

sub byte  [rip + 0x12345678], 0x13
sub word  [rip + 0x12345679], 0x1234
sub dword [rip + 0x1234567a], 0x12345678
sub qword [rip + 0x1234567b], 0x12345679

; [rip + base]
sub byte  [rax], 0x13
sub word  [rbx], 0x1234
sub dword [rcx], 0x12345678
sub qword [rdx], 0x12345679

; [rip + base + disp8]
sub byte  [rax + 0x12], 0x13
sub word  [rbx + 0x13], 0x1234
sub dword [rcx + 0x14], 0x12345678
sub qword [rdx + 0x15], 0x12345679

; [rip + base + disp32]
sub byte  [rax + 0x1234], 0x13
sub word  [rbx + 0x1235], 0x1234
sub dword [rcx + 0x1236], 0x12345678
sub qword [rdx + 0x1237], 0x12345679

sub byte  [rax + 0x12345678], 0x13
sub word  [rbx + 0x12345679], 0x1234
sub dword [rcx + 0x1234567a], 0x12345678
sub qword [rdx + 0x1234567b], 0x12345679

; [rip + base + index]
sub byte  [rax + rbx], 0x13
sub word  [rbx + rcx], 0x1234
sub dword [rcx + rsi], 0x12345678
sub qword [rdx + rdi], 0x12345679

; [rip + base + scale * index]
sub byte  [rax + 2 * rbx], 0x13
sub word  [rbx + 4 * rcx], 0x1234
sub dword [rcx + 8 * rsi], 0x12345678
sub qword [rdx + 8 * rdi], 0x12345679

; [rip + base + index + disp8]
sub byte  [rax + rbx + 0x12], 0x13
sub word  [rbx + rcx + 0x13], 0x1234
sub dword [rcx + rsi + 0x14], 0x12345678
sub qword [rdx + rdi + 0x15], 0x12345679

; [rip + base + index + disp32]
sub byte  [rax + rbx + 0x1234], 0x13
sub word  [rbx + rcx + 0x1235], 0x1234
sub dword [rcx + rsi + 0x1236], 0x12345678
sub qword [rdx + rdi + 0x1237], 0x12345679

sub byte  [rax + rbx + 0x12345678], 0x13
sub word  [rbx + rcx + 0x12345679], 0x1234
sub dword [rcx + rsi + 0x1234567a], 0x12345678
sub qword [rdx + rdi + 0x1234567b], 0x12345679

; [rip + base + scale * index + disp8]
sub byte  [rax + 2 * rbx + 0x12], 0x13
sub word  [rbx + 4 * rcx + 0x13], 0x1234
sub dword [rcx + 8 * rsi + 0x14], 0x12345678
sub qword [rdx + 8 * rdi + 0x15], 0x12345679

; [rip + base + scale * index + disp32]
sub byte  [rax + 2 * rbx + 0x1234], 0x13
sub word  [rbx + 4 * rcx + 0x1235], 0x1234
sub dword [rcx + 8 * rsi + 0x1236], 0x12345678
sub qword [rdx + 8 * rdi + 0x1237], 0x12345679

sub byte  [rax + 2 * rbx + 0x12345678], 0x13
sub word  [rbx + 4 * rcx + 0x12345679], 0x1234
sub dword [rcx + 8 * rsi + 0x1234567a], 0x12345678
sub qword [rdx + 8 * rdi + 0x1234567b], 0x12345679

; [scale * index]
sub byte  [2 * rbx], 0x13
sub word  [4 * rcx], 0x1234
sub dword [8 * rsi], 0x12345678
sub qword [8 * rdi], 0x12345679

; [scale * index + disp8]
sub byte  [2 * rbx + 0x12], 0x13
sub word  [4 * rcx + 0x13], 0x1234
sub dword [8 * rsi + 0x14], 0x12345678
sub qword [8 * rdi + 0x15], 0x12345679

; [scale * index + disp32]
sub byte  [2 * rbx + 0x1234], 0x13
sub word  [4 * rcx + 0x1235], 0x1234
sub dword [8 * rsi + 0x1236], 0x12345678
sub qword [8 * rdi + 0x1237], 0x12345679

sub byte  [2 * rbx + 0x12345678], 0x13
sub word  [4 * rcx + 0x12345679], 0x1234
sub dword [8 * rsi + 0x1234567a], 0x12345678
sub qword [8 * rdi + 0x1234567b], 0x12345679

; Use rbp as base or index.
sub byte [rbp], 0x12
sub byte [rbp + 0x12], 0x13
sub byte [rbp + 0x1234], 0x14
sub byte [rbp + 0x12345678], 0x15

sub byte [4 * rbp], 0x12
sub byte [4 * rbp + 0x12], 0x13
sub byte [4 * rbp + 0x1234], 0x14
sub byte [4 * rbp + 0x12345678], 0x15

sub byte [rbx + 4 * rbp], 0x12
sub byte [rbx + 4 * rbp + 0x12], 0x13
sub byte [rbx + 4 * rbp + 0x1234], 0x14
sub byte [rbx + 4 * rbp + 0x12345678], 0x15

; Use rsp as base.
sub byte [rsp], 0x12
sub byte [rsp + 0x12], 0x13
sub byte [rsp + 0x1234], 0x14
sub byte [rsp + 0x12345678], 0x15

sub byte [rsp + rax], 0x12
sub byte [rsp + rbp], 0x13
sub byte [rsp + 2*rbp], 0x14
sub byte [rsp + 4*rbp], 0x15
sub byte [rsp + 8*rbp], 0x16

; use each register as indirect.
sub byte [rax], 0x12
sub byte [rcx], 0x13
sub byte [rdx], 0x14
sub byte [rbx], 0x15
sub byte [rsp], 0x16
sub byte [rbp], 0x17
sub byte [rsi], 0x18
sub byte [rdi], 0x19

; use each register as indirect.
; rsp is forbidden as index
sub byte [rax + 2*rax], 0x12
sub byte [rcx + 2*rcx], 0x13
sub byte [rdx + 2*rdx], 0x14
sub byte [rbx + 2*rbx], 0x15
sub byte [rbp + 2*rbp], 0x16
sub byte [rsi + 2*rsi], 0x17
sub byte [rdi + 2*rdi], 0x18

