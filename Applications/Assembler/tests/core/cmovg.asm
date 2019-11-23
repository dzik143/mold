use64
; ------------------------------------------------------------------------------
; opcode rd,rd
; ------------------------------------------------------------------------------
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovg ax, ax
cmovg ax, cx
cmovg ax, dx
cmovg ax, bx
cmovg ax, sp
cmovg ax, bp
cmovg ax, si
cmovg ax, di

cmovg ax, ax
cmovg cx, ax
cmovg dx, ax
cmovg bx, ax
cmovg sp, ax
cmovg bp, ax
cmovg si, ax
cmovg di, ax

cmovg ax, di
cmovg cx, si
cmovg dx, bp
cmovg bx, sp
cmovg sp, bx
cmovg bp, dx
cmovg si, cx
cmovg di, ax

; 32-bit registers
cmovg eax, eax
cmovg eax, ecx
cmovg eax, edx
cmovg eax, ebx
cmovg eax, esp
cmovg eax, ebp
cmovg eax, esi
cmovg eax, edi

cmovg eax, eax
cmovg ecx, eax
cmovg edx, eax
cmovg ebx, eax
cmovg esp, eax
cmovg ebp, eax
cmovg esi, eax
cmovg edi, eax

cmovg eax, edi
cmovg ecx, esi
cmovg edx, ebp
cmovg ebx, esp
cmovg esp, ebx
cmovg ebp, edx
cmovg esi, ecx
cmovg edi, eax

; 64-bit registers
cmovg rax, rax
cmovg rax, rcx
cmovg rax, rdx
cmovg rax, rbx
cmovg rax, rsp
cmovg rax, rbp
cmovg rax, rsi
cmovg rax, rdi

cmovg rax, rax
cmovg rcx, rax
cmovg rdx, rax
cmovg rbx, rax
cmovg rsp, rax
cmovg rbp, rax
cmovg rsi, rax
cmovg rdi, rax

cmovg rax, rdi
cmovg rcx, rsi
cmovg rdx, rbp
cmovg rbx, rsp
cmovg rsp, rbx
cmovg rbp, rdx
cmovg rsi, rcx
cmovg rdi, rax

; ------------------------------------------------------------------------------
; opcode rd,md
; ------------------------------------------------------------------------------
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
cmovg cx,  word  [rip + 0x13]
cmovg edx, dword [rip + 0x14]
cmovg rsi, qword [rip + 0x15]

cmovg cx,  word  [rip + 0x1235]
cmovg edx, dword [rip + 0x1236]
cmovg rsi, qword [rip + 0x1237]

cmovg cx,  word  [rip + 0x12345679]
cmovg edx, dword [rip + 0x1234567a]
cmovg rsi, qword [rip + 0x1234567b]

; [rip + base]
cmovg cx,  word  [rbx]
cmovg edx, dword [rcx]
cmovg rsi, qword [rdx]

; [rip + base + disp8]
cmovg cx,  word  [rbx + 0x13]
cmovg edx, dword [rcx + 0x14]
cmovg rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmovg cx,  word  [rbx + 0x1235]
cmovg edx, dword [rcx + 0x1236]
cmovg rsi, qword [rdx + 0x1237]

cmovg cx,  word  [rbx + 0x12345679]
cmovg edx, dword [rcx + 0x1234567a]
cmovg rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmovg cx,  word  [rbx + rcx]
cmovg edx, dword [rcx + rsi]
cmovg rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmovg cx,  word  [rbx + 4 * rcx]
cmovg edx, dword [rcx + 8 * rsi]
cmovg rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmovg cx,  word  [rbx + rcx + 0x13]
cmovg edx, dword [rcx + rsi + 0x14]
cmovg rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmovg cx,  word  [rbx + rcx + 0x1235]
cmovg edx, dword [rcx + rsi + 0x1236]
cmovg rsi, qword [rdx + rdi + 0x1237]

cmovg cx,  word  [rbx + rcx + 0x12345679]
cmovg edx, dword [rcx + rsi + 0x1234567a]
cmovg rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmovg cx,  word  [rbx + 4 * rcx + 0x13]
cmovg edx, dword [rcx + 8 * rsi + 0x14]
cmovg rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmovg cx,  word  [rbx + 4 * rcx + 0x1235]
cmovg edx, dword [rcx + 8 * rsi + 0x1236]
cmovg rsi, qword [rdx + 8 * rdi + 0x1237]

cmovg cx,  word  [rbx + 4 * rcx + 0x12345679]
cmovg edx, dword [rcx + 8 * rsi + 0x1234567a]
cmovg rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmovg cx,  word  [4 * rcx]
cmovg edx, dword [8 * rsi]
cmovg rsi, qword [8 * rdi]

; [scale * index + disp8]
cmovg cx,  word  [4 * rcx + 0x13]
cmovg edx, dword [8 * rsi + 0x14]
cmovg rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmovg cx,  word  [4 * rcx + 0x1235]
cmovg edx, dword [8 * rsi + 0x1236]
cmovg rsi, qword [8 * rdi + 0x1237]

cmovg cx,  word  [4 * rcx + 0x12345679]
cmovg edx, dword [8 * rsi + 0x1234567a]
cmovg rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmovg ax, word [rbp]
cmovg ax, word [rbp + 0x12]
cmovg ax, word [rbp + 0x1234]
cmovg ax, word [rbp + 0x12345678]

cmovg eax, dword [4 * rbp]
cmovg eax, dword [4 * rbp + 0x12]
cmovg eax, dword [4 * rbp + 0x1234]
cmovg eax, dword [4 * rbp + 0x12345678]

cmovg rax, qword [rbx + 4 * rbp]
cmovg rax, qword [rbx + 4 * rbp + 0x12]
cmovg rax, qword [rbx + 4 * rbp + 0x1234]
cmovg rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmovg ax, word [rsp]
cmovg ax, word [rsp + 0x12]
cmovg ax, word [rsp + 0x1234]
cmovg ax, word [rsp + 0x12345678]

cmovg eax, dword [rsp + rax]
cmovg eax, dword [rsp + rbp]
cmovg eax, dword [rsp + 2*rbp]
cmovg eax, dword [rsp + 4*rbp]
cmovg eax, dword [rsp + 8*rbp]

; use each register as indirect.
cmovg ax, word [rax]
cmovg ax, word [rcx]
cmovg ax, word [rdx]
cmovg ax, word [rbx]
cmovg ax, word [rsp]
cmovg ax, word [rbp]
cmovg ax, word [rsi]
cmovg ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmovg eax, dword [rax + 2*rax]
cmovg eax, dword [rcx + 2*rcx]
cmovg eax, dword [rdx + 2*rdx]
cmovg eax, dword [rbx + 2*rbx]
cmovg eax, dword [rbp + 2*rbp]
cmovg eax, dword [rsi + 2*rsi]
cmovg eax, dword [rdi + 2*rdi]

