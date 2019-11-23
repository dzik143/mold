use64
; ------------------------------------------------------------------------------
; opcode rd,rd
; ------------------------------------------------------------------------------
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovz ax, ax
cmovz ax, cx
cmovz ax, dx
cmovz ax, bx
cmovz ax, sp
cmovz ax, bp
cmovz ax, si
cmovz ax, di

cmovz ax, ax
cmovz cx, ax
cmovz dx, ax
cmovz bx, ax
cmovz sp, ax
cmovz bp, ax
cmovz si, ax
cmovz di, ax

cmovz ax, di
cmovz cx, si
cmovz dx, bp
cmovz bx, sp
cmovz sp, bx
cmovz bp, dx
cmovz si, cx
cmovz di, ax

; 32-bit registers
cmovz eax, eax
cmovz eax, ecx
cmovz eax, edx
cmovz eax, ebx
cmovz eax, esp
cmovz eax, ebp
cmovz eax, esi
cmovz eax, edi

cmovz eax, eax
cmovz ecx, eax
cmovz edx, eax
cmovz ebx, eax
cmovz esp, eax
cmovz ebp, eax
cmovz esi, eax
cmovz edi, eax

cmovz eax, edi
cmovz ecx, esi
cmovz edx, ebp
cmovz ebx, esp
cmovz esp, ebx
cmovz ebp, edx
cmovz esi, ecx
cmovz edi, eax

; 64-bit registers
cmovz rax, rax
cmovz rax, rcx
cmovz rax, rdx
cmovz rax, rbx
cmovz rax, rsp
cmovz rax, rbp
cmovz rax, rsi
cmovz rax, rdi

cmovz rax, rax
cmovz rcx, rax
cmovz rdx, rax
cmovz rbx, rax
cmovz rsp, rax
cmovz rbp, rax
cmovz rsi, rax
cmovz rdi, rax

cmovz rax, rdi
cmovz rcx, rsi
cmovz rdx, rbp
cmovz rbx, rsp
cmovz rsp, rbx
cmovz rbp, rdx
cmovz rsi, rcx
cmovz rdi, rax

; ------------------------------------------------------------------------------
; opcode rd,md
; ------------------------------------------------------------------------------
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
cmovz cx,  word  [rip + 0x13]
cmovz edx, dword [rip + 0x14]
cmovz rsi, qword [rip + 0x15]

cmovz cx,  word  [rip + 0x1235]
cmovz edx, dword [rip + 0x1236]
cmovz rsi, qword [rip + 0x1237]

cmovz cx,  word  [rip + 0x12345679]
cmovz edx, dword [rip + 0x1234567a]
cmovz rsi, qword [rip + 0x1234567b]

; [rip + base]
cmovz cx,  word  [rbx]
cmovz edx, dword [rcx]
cmovz rsi, qword [rdx]

; [rip + base + disp8]
cmovz cx,  word  [rbx + 0x13]
cmovz edx, dword [rcx + 0x14]
cmovz rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmovz cx,  word  [rbx + 0x1235]
cmovz edx, dword [rcx + 0x1236]
cmovz rsi, qword [rdx + 0x1237]

cmovz cx,  word  [rbx + 0x12345679]
cmovz edx, dword [rcx + 0x1234567a]
cmovz rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmovz cx,  word  [rbx + rcx]
cmovz edx, dword [rcx + rsi]
cmovz rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmovz cx,  word  [rbx + 4 * rcx]
cmovz edx, dword [rcx + 8 * rsi]
cmovz rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmovz cx,  word  [rbx + rcx + 0x13]
cmovz edx, dword [rcx + rsi + 0x14]
cmovz rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmovz cx,  word  [rbx + rcx + 0x1235]
cmovz edx, dword [rcx + rsi + 0x1236]
cmovz rsi, qword [rdx + rdi + 0x1237]

cmovz cx,  word  [rbx + rcx + 0x12345679]
cmovz edx, dword [rcx + rsi + 0x1234567a]
cmovz rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmovz cx,  word  [rbx + 4 * rcx + 0x13]
cmovz edx, dword [rcx + 8 * rsi + 0x14]
cmovz rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmovz cx,  word  [rbx + 4 * rcx + 0x1235]
cmovz edx, dword [rcx + 8 * rsi + 0x1236]
cmovz rsi, qword [rdx + 8 * rdi + 0x1237]

cmovz cx,  word  [rbx + 4 * rcx + 0x12345679]
cmovz edx, dword [rcx + 8 * rsi + 0x1234567a]
cmovz rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmovz cx,  word  [4 * rcx]
cmovz edx, dword [8 * rsi]
cmovz rsi, qword [8 * rdi]

; [scale * index + disp8]
cmovz cx,  word  [4 * rcx + 0x13]
cmovz edx, dword [8 * rsi + 0x14]
cmovz rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmovz cx,  word  [4 * rcx + 0x1235]
cmovz edx, dword [8 * rsi + 0x1236]
cmovz rsi, qword [8 * rdi + 0x1237]

cmovz cx,  word  [4 * rcx + 0x12345679]
cmovz edx, dword [8 * rsi + 0x1234567a]
cmovz rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmovz ax, word [rbp]
cmovz ax, word [rbp + 0x12]
cmovz ax, word [rbp + 0x1234]
cmovz ax, word [rbp + 0x12345678]

cmovz eax, dword [4 * rbp]
cmovz eax, dword [4 * rbp + 0x12]
cmovz eax, dword [4 * rbp + 0x1234]
cmovz eax, dword [4 * rbp + 0x12345678]

cmovz rax, qword [rbx + 4 * rbp]
cmovz rax, qword [rbx + 4 * rbp + 0x12]
cmovz rax, qword [rbx + 4 * rbp + 0x1234]
cmovz rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmovz ax, word [rsp]
cmovz ax, word [rsp + 0x12]
cmovz ax, word [rsp + 0x1234]
cmovz ax, word [rsp + 0x12345678]

cmovz eax, dword [rsp + rax]
cmovz eax, dword [rsp + rbp]
cmovz eax, dword [rsp + 2*rbp]
cmovz eax, dword [rsp + 4*rbp]
cmovz eax, dword [rsp + 8*rbp]

; use each register as indirect.
cmovz ax, word [rax]
cmovz ax, word [rcx]
cmovz ax, word [rdx]
cmovz ax, word [rbx]
cmovz ax, word [rsp]
cmovz ax, word [rbp]
cmovz ax, word [rsi]
cmovz ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmovz eax, dword [rax + 2*rax]
cmovz eax, dword [rcx + 2*rcx]
cmovz eax, dword [rdx + 2*rdx]
cmovz eax, dword [rbx + 2*rbx]
cmovz eax, dword [rbp + 2*rbp]
cmovz eax, dword [rsi + 2*rsi]
cmovz eax, dword [rdi + 2*rdi]

