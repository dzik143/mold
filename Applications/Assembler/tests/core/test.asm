use64
; ------------------------------------------------------------------------------
; opcode r,r
; ------------------------------------------------------------------------------
; 8-bit registers
test al, al
test al, cl
test al, dl
test al, bl
test al, ah
test al, ch
test al, dh
test al, bh

test al, al
test cl, al
test dl, al
test bl, al
test ah, al
test ch, al
test dh, al
test bh, al

test al, bh
test cl, dh
test dl, ch
test bl, ah
test ah, bl
test ch, dl
test dh, cl
test bh, al

; 16-bit registers
test ax, ax
test ax, cx
test ax, dx
test ax, bx
test ax, sp
test ax, bp
test ax, si
test ax, di

test ax, ax
test cx, ax
test dx, ax
test bx, ax
test sp, ax
test bp, ax
test si, ax
test di, ax

test ax, di
test cx, si
test dx, bp
test bx, sp
test sp, bx
test bp, dx
test si, cx
test di, ax

; 32-bit registers
test eax, eax
test eax, ecx
test eax, edx
test eax, ebx
test eax, esp
test eax, ebp
test eax, esi
test eax, edi

test eax, eax
test ecx, eax
test edx, eax
test ebx, eax
test esp, eax
test ebp, eax
test esi, eax
test edi, eax

test eax, edi
test ecx, esi
test edx, ebp
test ebx, esp
test esp, ebx
test ebp, edx
test esi, ecx
test edi, eax

; 64-bit registers
test rax, rax
test rax, rcx
test rax, rdx
test rax, rbx
test rax, rsp
test rax, rbp
test rax, rsi
test rax, rdi

test rax, rax
test rcx, rax
test rdx, rax
test rbx, rax
test rsp, rax
test rbp, rax
test rsi, rax
test rdi, rax

test rax, rdi
test rcx, rsi
test rdx, rbp
test rbx, rsp
test rsp, rbx
test rbp, rdx
test rsi, rcx
test rdi, rax

; ------------------------------------------------------------------------------
; opcode r,m
; ------------------------------------------------------------------------------
; [rip + disp32]
test bl,  byte  [rip + 0x12]
test cx,  word  [rip + 0x13]
test edx, dword [rip + 0x14]
test rsi, qword [rip + 0x15]

test bl,  byte  [rip + 0x1234]
test cx,  word  [rip + 0x1235]
test edx, dword [rip + 0x1236]
test rsi, qword [rip + 0x1237]

test bl,  byte  [rip + 0x12345678]
test cx,  word  [rip + 0x12345679]
test edx, dword [rip + 0x1234567a]
test rsi, qword [rip + 0x1234567b]

; [rip + base]
test bl,  byte  [rax]
test cx,  word  [rbx]
test edx, dword [rcx]
test rsi, qword [rdx]

; [rip + base + disp8]
test bl,  byte  [rax + 0x12]
test cx,  word  [rbx + 0x13]
test edx, dword [rcx + 0x14]
test rsi, qword [rdx + 0x15]

; [rip + base + disp32]
test bl,  byte  [rax + 0x1234]
test cx,  word  [rbx + 0x1235]
test edx, dword [rcx + 0x1236]
test rsi, qword [rdx + 0x1237]

test bl,  byte  [rax + 0x12345678]
test cx,  word  [rbx + 0x12345679]
test edx, dword [rcx + 0x1234567a]
test rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
test bl,  byte  [rax + rbx]
test cx,  word  [rbx + rcx]
test edx, dword [rcx + rsi]
test rsi, qword [rdx + rdi]

; [rip + base + scale * index]
test bl,  byte  [rax + 2 * rbx]
test cx,  word  [rbx + 4 * rcx]
test edx, dword [rcx + 8 * rsi]
test rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
test bl,  byte  [rax + rbx + 0x12]
test cx,  word  [rbx + rcx + 0x13]
test edx, dword [rcx + rsi + 0x14]
test rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
test bl,  byte  [rax + rbx + 0x1234]
test cx,  word  [rbx + rcx + 0x1235]
test edx, dword [rcx + rsi + 0x1236]
test rsi, qword [rdx + rdi + 0x1237]

test bl,  byte  [rax + rbx + 0x12345678]
test cx,  word  [rbx + rcx + 0x12345679]
test edx, dword [rcx + rsi + 0x1234567a]
test rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
test bl,  byte  [rax + 2 * rbx + 0x12]
test cx,  word  [rbx + 4 * rcx + 0x13]
test edx, dword [rcx + 8 * rsi + 0x14]
test rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
test bl,  byte  [rax + 2 * rbx + 0x1234]
test cx,  word  [rbx + 4 * rcx + 0x1235]
test edx, dword [rcx + 8 * rsi + 0x1236]
test rsi, qword [rdx + 8 * rdi + 0x1237]

test bl,  byte  [rax + 2 * rbx + 0x12345678]
test cx,  word  [rbx + 4 * rcx + 0x12345679]
test edx, dword [rcx + 8 * rsi + 0x1234567a]
test rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
test bl,  byte  [2 * rbx]
test cx,  word  [4 * rcx]
test edx, dword [8 * rsi]
test rsi, qword [8 * rdi]

; [scale * index + disp8]
test bl,  byte  [2 * rbx + 0x12]
test cx,  word  [4 * rcx + 0x13]
test edx, dword [8 * rsi + 0x14]
test rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
test bl,  byte  [2 * rbx + 0x1234]
test cx,  word  [4 * rcx + 0x1235]
test edx, dword [8 * rsi + 0x1236]
test rsi, qword [8 * rdi + 0x1237]

test bl,  byte  [2 * rbx + 0x12345678]
test cx,  word  [4 * rcx + 0x12345679]
test edx, dword [8 * rsi + 0x1234567a]
test rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
test al, byte [rbp]
test al, byte [rbp + 0x12]
test al, byte [rbp + 0x1234]
test al, byte [rbp + 0x12345678]

test al, byte [4 * rbp]
test al, byte [4 * rbp + 0x12]
test al, byte [4 * rbp + 0x1234]
test al, byte [4 * rbp + 0x12345678]

test al, byte [rbx + 4 * rbp]
test al, byte [rbx + 4 * rbp + 0x12]
test al, byte [rbx + 4 * rbp + 0x1234]
test al, byte [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
test al, byte [rsp]
test al, byte [rsp + 0x12]
test al, byte [rsp + 0x1234]
test al, byte [rsp + 0x12345678]

test al, byte [rsp + rax]
test al, byte [rsp + rbp]
test al, byte [rsp + 2*rbp]
test al, byte [rsp + 4*rbp]
test al, byte [rsp + 8*rbp]

; use each register as indirect.
test al, byte [rax]
test al, byte [rcx]
test al, byte [rdx]
test al, byte [rbx]
test al, byte [rsp]
test al, byte [rbp]
test al, byte [rsi]
test al, byte [rdi]

; use each register as indirect.
; rsp is forbidden as index
test al, byte [rax + 2*rax]
test al, byte [rcx + 2*rcx]
test al, byte [rdx + 2*rdx]
test al, byte [rbx + 2*rbx]
test al, byte [rbp + 2*rbp]
test al, byte [rsi + 2*rsi]
test al, byte [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode m,r
; ------------------------------------------------------------------------------
; [rip + disp32]
test byte  [rip + 0x12], bl
test word  [rip + 0x13], cx
test dword [rip + 0x14], edx
test qword [rip + 0x15], rsi

test byte  [rip + 0x1234], bl
test word  [rip + 0x1235], cx
test dword [rip + 0x1236], edx
test qword [rip + 0x1237], rsi

test byte  [rip + 0x12345678], bl
test word  [rip + 0x12345679], cx
test dword [rip + 0x1234567a], edx
test qword [rip + 0x1234567b], rsi

; [rip + base]
test byte  [rax], bl
test word  [rbx], cx
test dword [rcx], edx
test qword [rdx], rsi

; [rip + base + disp8]
test byte  [rax + 0x12], bl
test word  [rbx + 0x13], cx
test dword [rcx + 0x14], edx
test qword [rdx + 0x15], rsi

; [rip + base + disp32]
test byte  [rax + 0x1234], bl
test word  [rbx + 0x1235], cx
test dword [rcx + 0x1236], edx
test qword [rdx + 0x1237], rsi

test byte  [rax + 0x12345678], bl
test word  [rbx + 0x12345679], cx
test dword [rcx + 0x1234567a], edx
test qword [rdx + 0x1234567b], rsi

; [rip + base + index]
test byte  [rax + rbx], bl
test word  [rbx + rcx], cx
test dword [rcx + rsi], edx
test qword [rdx + rdi], rsi

; [rip + base + scale * index]
test byte  [rax + 2 * rbx], bl
test word  [rbx + 4 * rcx], cx
test dword [rcx + 8 * rsi], edx
test qword [rdx + 8 * rdi], rsi

; [rip + base + index + disp8]
test byte  [rax + rbx + 0x12], bl
test word  [rbx + rcx + 0x13], cx
test dword [rcx + rsi + 0x14], edx
test qword [rdx + rdi + 0x15], rsi

; [rip + base + index + disp32]
test byte  [rax + rbx + 0x1234], bl
test word  [rbx + rcx + 0x1235], cx
test dword [rcx + rsi + 0x1236], edx
test qword [rdx + rdi + 0x1237], rsi

test byte  [rax + rbx + 0x12345678], bl
test word  [rbx + rcx + 0x12345679], cx
test dword [rcx + rsi + 0x1234567a], edx
test qword [rdx + rdi + 0x1234567b], rsi

; [rip + base + scale * index + disp8]
test byte  [rax + 2 * rbx + 0x12], bl
test word  [rbx + 4 * rcx + 0x13], cx
test dword [rcx + 8 * rsi + 0x14], edx
test qword [rdx + 8 * rdi + 0x15], rsi

; [rip + base + scale * index + disp32]
test byte  [rax + 2 * rbx + 0x1234], bl
test word  [rbx + 4 * rcx + 0x1235], cx
test dword [rcx + 8 * rsi + 0x1236], edx
test qword [rdx + 8 * rdi + 0x1237], rsi

test byte  [rax + 2 * rbx + 0x12345678], bl
test word  [rbx + 4 * rcx + 0x12345679], cx
test dword [rcx + 8 * rsi + 0x1234567a], edx
test qword [rdx + 8 * rdi + 0x1234567b], rsi

; [scale * index]
test byte  [2 * rbx], bl
test word  [4 * rcx], cx
test dword [8 * rsi], edx
test qword [8 * rdi], rsi

; [scale * index + disp8]
test byte  [2 * rbx + 0x12], bl
test word  [4 * rcx + 0x13], cx
test dword [8 * rsi + 0x14], edx
test qword [8 * rdi + 0x15], rsi

; [scale * index + disp32]
test byte  [2 * rbx + 0x1234], bl
test word  [4 * rcx + 0x1235], cx
test dword [8 * rsi + 0x1236], edx
test qword [8 * rdi + 0x1237], rsi

test byte  [2 * rbx + 0x12345678], bl
test word  [4 * rcx + 0x12345679], cx
test dword [8 * rsi + 0x1234567a], edx
test qword [8 * rdi + 0x1234567b], rsi

; Use rbp as base or index.
test byte [rbp], al
test byte [rbp + 0x12], al
test byte [rbp + 0x1234], al
test byte [rbp + 0x12345678], al

test byte [4 * rbp], al
test byte [4 * rbp + 0x12], al
test byte [4 * rbp + 0x1234], al
test byte [4 * rbp + 0x12345678], al

test byte [rbx + 4 * rbp], al
test byte [rbx + 4 * rbp + 0x12], al
test byte [rbx + 4 * rbp + 0x1234], al
test byte [rbx + 4 * rbp + 0x12345678], al

; Use rsp as base.
test byte [rsp], al
test byte [rsp + 0x12], al
test byte [rsp + 0x1234], al
test byte [rsp + 0x12345678], al

test byte [rsp + rax], al
test byte [rsp + rbp], al
test byte [rsp + 2*rbp], al
test byte [rsp + 4*rbp], al
test byte [rsp + 8*rbp], al

; use each register as indirect.
test byte [rax], al
test byte [rcx], al
test byte [rdx], al
test byte [rbx], al
test byte [rsp], al
test byte [rbp], al
test byte [rsi], al
test byte [rdi], al

; use each register as indirect.
; rsp is forbidden as index
test byte [rax + 2*rax], al
test byte [rcx + 2*rcx], al
test byte [rdx + 2*rdx], al
test byte [rbx + 2*rbx], al
test byte [rbp + 2*rbp], al
test byte [rsi + 2*rsi], al
test byte [rdi + 2*rdi], al

; ------------------------------------------------------------------------------
; opcode r,imm
; ------------------------------------------------------------------------------
; immediate to each register: 8-bit
test al, 0x12
test cl, 0x13
test dl, 0x14
test bl, 0x15
test ah, 0x16
test ch, 0x17
test dh, 0x18
test bh, 0x19

; immediate to each register: 16-bit
test ax, 0x12
test cx, 0x13
test dx, 0x14
test bx, 0x15
test sp, 0x16
test bp, 0x17
test si, 0x18
test di, 0x19

test ax, 0x1234
test cx, 0x1235
test dx, 0x1236
test bx, 0x1237
test sp, 0x1238
test bp, 0x1239
test si, 0x123a
test di, 0x123b

; immediate to each register: 32-bit
test eax, 0x12
test ecx, 0x13
test edx, 0x14
test ebx, 0x15
test esp, 0x16
test ebp, 0x17
test esi, 0x18
test edi, 0x19

test eax, 0x1234
test ecx, 0x1235
test edx, 0x1236
test ebx, 0x1237
test esp, 0x1238
test ebp, 0x1239
test esi, 0x123a
test edi, 0x123b

test eax, 0x12345678
test ecx, 0x12345679
test edx, 0x1234567a
test ebx, 0x1234567b
test esp, 0x1234567c
test ebp, 0x1234567d
test esi, 0x1234567e
test edi, 0x1234567f

; immediate to each register: 64-bit
test rax, 0x12
test rcx, 0x13
test rdx, 0x14
test rbx, 0x15
test rsp, 0x16
test rbp, 0x17
test rsi, 0x18
test rdi, 0x19

test rax, 0x1234
test rcx, 0x1235
test rdx, 0x1236
test rbx, 0x1237
test rsp, 0x1238
test rbp, 0x1239
test rsi, 0x123a
test rdi, 0x123b

test rax, 0x12345678
test rcx, 0x12345679
test rdx, 0x1234567a
test rbx, 0x1234567b
test rsp, 0x1234567c
test rbp, 0x1234567d
test rsi, 0x1234567e
test rdi, 0x1234567f

; ------------------------------------------------------------------------------
; opcode m,imm
; ------------------------------------------------------------------------------
; [rip + disp32]
test byte  [rip + 0x12], 0x13
test word  [rip + 0x13], 0x1234
test dword [rip + 0x14], 0x12345678
test qword [rip + 0x15], 0x12345679

test byte  [rip + 0x1234], 0x13
test word  [rip + 0x1235], 0x1234
test dword [rip + 0x1236], 0x12345678
test qword [rip + 0x1237], 0x12345679

test byte  [rip + 0x12345678], 0x13
test word  [rip + 0x12345679], 0x1234
test dword [rip + 0x1234567a], 0x12345678
test qword [rip + 0x1234567b], 0x12345679

; [rip + base]
test byte  [rax], 0x13
test word  [rbx], 0x1234
test dword [rcx], 0x12345678
test qword [rdx], 0x12345679

; [rip + base + disp8]
test byte  [rax + 0x12], 0x13
test word  [rbx + 0x13], 0x1234
test dword [rcx + 0x14], 0x12345678
test qword [rdx + 0x15], 0x12345679

; [rip + base + disp32]
test byte  [rax + 0x1234], 0x13
test word  [rbx + 0x1235], 0x1234
test dword [rcx + 0x1236], 0x12345678
test qword [rdx + 0x1237], 0x12345679

test byte  [rax + 0x12345678], 0x13
test word  [rbx + 0x12345679], 0x1234
test dword [rcx + 0x1234567a], 0x12345678
test qword [rdx + 0x1234567b], 0x12345679

; [rip + base + index]
test byte  [rax + rbx], 0x13
test word  [rbx + rcx], 0x1234
test dword [rcx + rsi], 0x12345678
test qword [rdx + rdi], 0x12345679

; [rip + base + scale * index]
test byte  [rax + 2 * rbx], 0x13
test word  [rbx + 4 * rcx], 0x1234
test dword [rcx + 8 * rsi], 0x12345678
test qword [rdx + 8 * rdi], 0x12345679

; [rip + base + index + disp8]
test byte  [rax + rbx + 0x12], 0x13
test word  [rbx + rcx + 0x13], 0x1234
test dword [rcx + rsi + 0x14], 0x12345678
test qword [rdx + rdi + 0x15], 0x12345679

; [rip + base + index + disp32]
test byte  [rax + rbx + 0x1234], 0x13
test word  [rbx + rcx + 0x1235], 0x1234
test dword [rcx + rsi + 0x1236], 0x12345678
test qword [rdx + rdi + 0x1237], 0x12345679

test byte  [rax + rbx + 0x12345678], 0x13
test word  [rbx + rcx + 0x12345679], 0x1234
test dword [rcx + rsi + 0x1234567a], 0x12345678
test qword [rdx + rdi + 0x1234567b], 0x12345679

; [rip + base + scale * index + disp8]
test byte  [rax + 2 * rbx + 0x12], 0x13
test word  [rbx + 4 * rcx + 0x13], 0x1234
test dword [rcx + 8 * rsi + 0x14], 0x12345678
test qword [rdx + 8 * rdi + 0x15], 0x12345679

; [rip + base + scale * index + disp32]
test byte  [rax + 2 * rbx + 0x1234], 0x13
test word  [rbx + 4 * rcx + 0x1235], 0x1234
test dword [rcx + 8 * rsi + 0x1236], 0x12345678
test qword [rdx + 8 * rdi + 0x1237], 0x12345679

test byte  [rax + 2 * rbx + 0x12345678], 0x13
test word  [rbx + 4 * rcx + 0x12345679], 0x1234
test dword [rcx + 8 * rsi + 0x1234567a], 0x12345678
test qword [rdx + 8 * rdi + 0x1234567b], 0x12345679

; [scale * index]
test byte  [2 * rbx], 0x13
test word  [4 * rcx], 0x1234
test dword [8 * rsi], 0x12345678
test qword [8 * rdi], 0x12345679

; [scale * index + disp8]
test byte  [2 * rbx + 0x12], 0x13
test word  [4 * rcx + 0x13], 0x1234
test dword [8 * rsi + 0x14], 0x12345678
test qword [8 * rdi + 0x15], 0x12345679

; [scale * index + disp32]
test byte  [2 * rbx + 0x1234], 0x13
test word  [4 * rcx + 0x1235], 0x1234
test dword [8 * rsi + 0x1236], 0x12345678
test qword [8 * rdi + 0x1237], 0x12345679

test byte  [2 * rbx + 0x12345678], 0x13
test word  [4 * rcx + 0x12345679], 0x1234
test dword [8 * rsi + 0x1234567a], 0x12345678
test qword [8 * rdi + 0x1234567b], 0x12345679

; Use rbp as base or index.
test byte [rbp], 0x12
test byte [rbp + 0x12], 0x13
test byte [rbp + 0x1234], 0x14
test byte [rbp + 0x12345678], 0x15

test byte [4 * rbp], 0x12
test byte [4 * rbp + 0x12], 0x13
test byte [4 * rbp + 0x1234], 0x14
test byte [4 * rbp + 0x12345678], 0x15

test byte [rbx + 4 * rbp], 0x12
test byte [rbx + 4 * rbp + 0x12], 0x13
test byte [rbx + 4 * rbp + 0x1234], 0x14
test byte [rbx + 4 * rbp + 0x12345678], 0x15

; Use rsp as base.
test byte [rsp], 0x12
test byte [rsp + 0x12], 0x13
test byte [rsp + 0x1234], 0x14
test byte [rsp + 0x12345678], 0x15

test byte [rsp + rax], 0x12
test byte [rsp + rbp], 0x13
test byte [rsp + 2*rbp], 0x14
test byte [rsp + 4*rbp], 0x15
test byte [rsp + 8*rbp], 0x16

; use each register as indirect.
test byte [rax], 0x12
test byte [rcx], 0x13
test byte [rdx], 0x14
test byte [rbx], 0x15
test byte [rsp], 0x16
test byte [rbp], 0x17
test byte [rsi], 0x18
test byte [rdi], 0x19

; use each register as indirect.
; rsp is forbidden as index
test byte [rax + 2*rax], 0x12
test byte [rcx + 2*rcx], 0x13
test byte [rdx + 2*rdx], 0x14
test byte [rbx + 2*rbx], 0x15
test byte [rbp + 2*rbp], 0x16
test byte [rsi + 2*rsi], 0x17
test byte [rdi + 2*rdi], 0x18

