use64
; ------------------------------------------------------------------------------
; opcode rd,rd
; ------------------------------------------------------------------------------
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovc ax, ax
cmovc ax, cx
cmovc ax, dx
cmovc ax, bx
cmovc ax, sp
cmovc ax, bp
cmovc ax, si
cmovc ax, di

cmovc ax, ax
cmovc cx, ax
cmovc dx, ax
cmovc bx, ax
cmovc sp, ax
cmovc bp, ax
cmovc si, ax
cmovc di, ax

cmovc ax, di
cmovc cx, si
cmovc dx, bp
cmovc bx, sp
cmovc sp, bx
cmovc bp, dx
cmovc si, cx
cmovc di, ax

; 32-bit registers
cmovc eax, eax
cmovc eax, ecx
cmovc eax, edx
cmovc eax, ebx
cmovc eax, esp
cmovc eax, ebp
cmovc eax, esi
cmovc eax, edi

cmovc eax, eax
cmovc ecx, eax
cmovc edx, eax
cmovc ebx, eax
cmovc esp, eax
cmovc ebp, eax
cmovc esi, eax
cmovc edi, eax

cmovc eax, edi
cmovc ecx, esi
cmovc edx, ebp
cmovc ebx, esp
cmovc esp, ebx
cmovc ebp, edx
cmovc esi, ecx
cmovc edi, eax

; 64-bit registers
cmovc rax, rax
cmovc rax, rcx
cmovc rax, rdx
cmovc rax, rbx
cmovc rax, rsp
cmovc rax, rbp
cmovc rax, rsi
cmovc rax, rdi

cmovc rax, rax
cmovc rcx, rax
cmovc rdx, rax
cmovc rbx, rax
cmovc rsp, rax
cmovc rbp, rax
cmovc rsi, rax
cmovc rdi, rax

cmovc rax, rdi
cmovc rcx, rsi
cmovc rdx, rbp
cmovc rbx, rsp
cmovc rsp, rbx
cmovc rbp, rdx
cmovc rsi, rcx
cmovc rdi, rax

; ------------------------------------------------------------------------------
; opcode rd,md
; ------------------------------------------------------------------------------
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
cmovc cx,  word  [rip + 0x13]
cmovc edx, dword [rip + 0x14]
cmovc rsi, qword [rip + 0x15]

cmovc cx,  word  [rip + 0x1235]
cmovc edx, dword [rip + 0x1236]
cmovc rsi, qword [rip + 0x1237]

cmovc cx,  word  [rip + 0x12345679]
cmovc edx, dword [rip + 0x1234567a]
cmovc rsi, qword [rip + 0x1234567b]

; [rip + base]
cmovc cx,  word  [rbx]
cmovc edx, dword [rcx]
cmovc rsi, qword [rdx]

; [rip + base + disp8]
cmovc cx,  word  [rbx + 0x13]
cmovc edx, dword [rcx + 0x14]
cmovc rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmovc cx,  word  [rbx + 0x1235]
cmovc edx, dword [rcx + 0x1236]
cmovc rsi, qword [rdx + 0x1237]

cmovc cx,  word  [rbx + 0x12345679]
cmovc edx, dword [rcx + 0x1234567a]
cmovc rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmovc cx,  word  [rbx + rcx]
cmovc edx, dword [rcx + rsi]
cmovc rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmovc cx,  word  [rbx + 4 * rcx]
cmovc edx, dword [rcx + 8 * rsi]
cmovc rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmovc cx,  word  [rbx + rcx + 0x13]
cmovc edx, dword [rcx + rsi + 0x14]
cmovc rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmovc cx,  word  [rbx + rcx + 0x1235]
cmovc edx, dword [rcx + rsi + 0x1236]
cmovc rsi, qword [rdx + rdi + 0x1237]

cmovc cx,  word  [rbx + rcx + 0x12345679]
cmovc edx, dword [rcx + rsi + 0x1234567a]
cmovc rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmovc cx,  word  [rbx + 4 * rcx + 0x13]
cmovc edx, dword [rcx + 8 * rsi + 0x14]
cmovc rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmovc cx,  word  [rbx + 4 * rcx + 0x1235]
cmovc edx, dword [rcx + 8 * rsi + 0x1236]
cmovc rsi, qword [rdx + 8 * rdi + 0x1237]

cmovc cx,  word  [rbx + 4 * rcx + 0x12345679]
cmovc edx, dword [rcx + 8 * rsi + 0x1234567a]
cmovc rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmovc cx,  word  [4 * rcx]
cmovc edx, dword [8 * rsi]
cmovc rsi, qword [8 * rdi]

; [scale * index + disp8]
cmovc cx,  word  [4 * rcx + 0x13]
cmovc edx, dword [8 * rsi + 0x14]
cmovc rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmovc cx,  word  [4 * rcx + 0x1235]
cmovc edx, dword [8 * rsi + 0x1236]
cmovc rsi, qword [8 * rdi + 0x1237]

cmovc cx,  word  [4 * rcx + 0x12345679]
cmovc edx, dword [8 * rsi + 0x1234567a]
cmovc rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmovc ax, word [rbp]
cmovc ax, word [rbp + 0x12]
cmovc ax, word [rbp + 0x1234]
cmovc ax, word [rbp + 0x12345678]

cmovc eax, dword [4 * rbp]
cmovc eax, dword [4 * rbp + 0x12]
cmovc eax, dword [4 * rbp + 0x1234]
cmovc eax, dword [4 * rbp + 0x12345678]

cmovc rax, qword [rbx + 4 * rbp]
cmovc rax, qword [rbx + 4 * rbp + 0x12]
cmovc rax, qword [rbx + 4 * rbp + 0x1234]
cmovc rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmovc ax, word [rsp]
cmovc ax, word [rsp + 0x12]
cmovc ax, word [rsp + 0x1234]
cmovc ax, word [rsp + 0x12345678]

cmovc eax, dword [rsp + rax]
cmovc eax, dword [rsp + rbp]
cmovc eax, dword [rsp + 2*rbp]
cmovc eax, dword [rsp + 4*rbp]
cmovc eax, dword [rsp + 8*rbp]

; use each register as indirect.
cmovc ax, word [rax]
cmovc ax, word [rcx]
cmovc ax, word [rdx]
cmovc ax, word [rbx]
cmovc ax, word [rsp]
cmovc ax, word [rbp]
cmovc ax, word [rsi]
cmovc ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmovc eax, dword [rax + 2*rax]
cmovc eax, dword [rcx + 2*rcx]
cmovc eax, dword [rdx + 2*rdx]
cmovc eax, dword [rbx + 2*rbx]
cmovc eax, dword [rbp + 2*rbp]
cmovc eax, dword [rsi + 2*rsi]
cmovc eax, dword [rdi + 2*rdi]

