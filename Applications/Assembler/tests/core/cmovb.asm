use64
; ------------------------------------------------------------------------------
; opcode rd,rd
; ------------------------------------------------------------------------------
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovb ax, ax
cmovb ax, cx
cmovb ax, dx
cmovb ax, bx
cmovb ax, sp
cmovb ax, bp
cmovb ax, si
cmovb ax, di

cmovb ax, ax
cmovb cx, ax
cmovb dx, ax
cmovb bx, ax
cmovb sp, ax
cmovb bp, ax
cmovb si, ax
cmovb di, ax

cmovb ax, di
cmovb cx, si
cmovb dx, bp
cmovb bx, sp
cmovb sp, bx
cmovb bp, dx
cmovb si, cx
cmovb di, ax

; 32-bit registers
cmovb eax, eax
cmovb eax, ecx
cmovb eax, edx
cmovb eax, ebx
cmovb eax, esp
cmovb eax, ebp
cmovb eax, esi
cmovb eax, edi

cmovb eax, eax
cmovb ecx, eax
cmovb edx, eax
cmovb ebx, eax
cmovb esp, eax
cmovb ebp, eax
cmovb esi, eax
cmovb edi, eax

cmovb eax, edi
cmovb ecx, esi
cmovb edx, ebp
cmovb ebx, esp
cmovb esp, ebx
cmovb ebp, edx
cmovb esi, ecx
cmovb edi, eax

; 64-bit registers
cmovb rax, rax
cmovb rax, rcx
cmovb rax, rdx
cmovb rax, rbx
cmovb rax, rsp
cmovb rax, rbp
cmovb rax, rsi
cmovb rax, rdi

cmovb rax, rax
cmovb rcx, rax
cmovb rdx, rax
cmovb rbx, rax
cmovb rsp, rax
cmovb rbp, rax
cmovb rsi, rax
cmovb rdi, rax

cmovb rax, rdi
cmovb rcx, rsi
cmovb rdx, rbp
cmovb rbx, rsp
cmovb rsp, rbx
cmovb rbp, rdx
cmovb rsi, rcx
cmovb rdi, rax

; ------------------------------------------------------------------------------
; opcode rd,md
; ------------------------------------------------------------------------------
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
cmovb cx,  word  [rip + 0x13]
cmovb edx, dword [rip + 0x14]
cmovb rsi, qword [rip + 0x15]

cmovb cx,  word  [rip + 0x1235]
cmovb edx, dword [rip + 0x1236]
cmovb rsi, qword [rip + 0x1237]

cmovb cx,  word  [rip + 0x12345679]
cmovb edx, dword [rip + 0x1234567a]
cmovb rsi, qword [rip + 0x1234567b]

; [rip + base]
cmovb cx,  word  [rbx]
cmovb edx, dword [rcx]
cmovb rsi, qword [rdx]

; [rip + base + disp8]
cmovb cx,  word  [rbx + 0x13]
cmovb edx, dword [rcx + 0x14]
cmovb rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmovb cx,  word  [rbx + 0x1235]
cmovb edx, dword [rcx + 0x1236]
cmovb rsi, qword [rdx + 0x1237]

cmovb cx,  word  [rbx + 0x12345679]
cmovb edx, dword [rcx + 0x1234567a]
cmovb rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmovb cx,  word  [rbx + rcx]
cmovb edx, dword [rcx + rsi]
cmovb rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmovb cx,  word  [rbx + 4 * rcx]
cmovb edx, dword [rcx + 8 * rsi]
cmovb rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmovb cx,  word  [rbx + rcx + 0x13]
cmovb edx, dword [rcx + rsi + 0x14]
cmovb rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmovb cx,  word  [rbx + rcx + 0x1235]
cmovb edx, dword [rcx + rsi + 0x1236]
cmovb rsi, qword [rdx + rdi + 0x1237]

cmovb cx,  word  [rbx + rcx + 0x12345679]
cmovb edx, dword [rcx + rsi + 0x1234567a]
cmovb rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmovb cx,  word  [rbx + 4 * rcx + 0x13]
cmovb edx, dword [rcx + 8 * rsi + 0x14]
cmovb rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmovb cx,  word  [rbx + 4 * rcx + 0x1235]
cmovb edx, dword [rcx + 8 * rsi + 0x1236]
cmovb rsi, qword [rdx + 8 * rdi + 0x1237]

cmovb cx,  word  [rbx + 4 * rcx + 0x12345679]
cmovb edx, dword [rcx + 8 * rsi + 0x1234567a]
cmovb rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmovb cx,  word  [4 * rcx]
cmovb edx, dword [8 * rsi]
cmovb rsi, qword [8 * rdi]

; [scale * index + disp8]
cmovb cx,  word  [4 * rcx + 0x13]
cmovb edx, dword [8 * rsi + 0x14]
cmovb rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmovb cx,  word  [4 * rcx + 0x1235]
cmovb edx, dword [8 * rsi + 0x1236]
cmovb rsi, qword [8 * rdi + 0x1237]

cmovb cx,  word  [4 * rcx + 0x12345679]
cmovb edx, dword [8 * rsi + 0x1234567a]
cmovb rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmovb ax, word [rbp]
cmovb ax, word [rbp + 0x12]
cmovb ax, word [rbp + 0x1234]
cmovb ax, word [rbp + 0x12345678]

cmovb eax, dword [4 * rbp]
cmovb eax, dword [4 * rbp + 0x12]
cmovb eax, dword [4 * rbp + 0x1234]
cmovb eax, dword [4 * rbp + 0x12345678]

cmovb rax, qword [rbx + 4 * rbp]
cmovb rax, qword [rbx + 4 * rbp + 0x12]
cmovb rax, qword [rbx + 4 * rbp + 0x1234]
cmovb rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmovb ax, word [rsp]
cmovb ax, word [rsp + 0x12]
cmovb ax, word [rsp + 0x1234]
cmovb ax, word [rsp + 0x12345678]

cmovb eax, dword [rsp + rax]
cmovb eax, dword [rsp + rbp]
cmovb eax, dword [rsp + 2*rbp]
cmovb eax, dword [rsp + 4*rbp]
cmovb eax, dword [rsp + 8*rbp]

; use each register as indirect.
cmovb ax, word [rax]
cmovb ax, word [rcx]
cmovb ax, word [rdx]
cmovb ax, word [rbx]
cmovb ax, word [rsp]
cmovb ax, word [rbp]
cmovb ax, word [rsi]
cmovb ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmovb eax, dword [rax + 2*rax]
cmovb eax, dword [rcx + 2*rcx]
cmovb eax, dword [rdx + 2*rdx]
cmovb eax, dword [rbx + 2*rbx]
cmovb eax, dword [rbp + 2*rbp]
cmovb eax, dword [rsi + 2*rsi]
cmovb eax, dword [rdi + 2*rdi]

