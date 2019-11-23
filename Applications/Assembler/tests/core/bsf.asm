use64
; ------------------------------------------------------------------------------
; opcode rd,rd
; ------------------------------------------------------------------------------
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
bsf ax, ax
bsf ax, cx
bsf ax, dx
bsf ax, bx
bsf ax, sp
bsf ax, bp
bsf ax, si
bsf ax, di

bsf ax, ax
bsf cx, ax
bsf dx, ax
bsf bx, ax
bsf sp, ax
bsf bp, ax
bsf si, ax
bsf di, ax

bsf ax, di
bsf cx, si
bsf dx, bp
bsf bx, sp
bsf sp, bx
bsf bp, dx
bsf si, cx
bsf di, ax

; 32-bit registers
bsf eax, eax
bsf eax, ecx
bsf eax, edx
bsf eax, ebx
bsf eax, esp
bsf eax, ebp
bsf eax, esi
bsf eax, edi

bsf eax, eax
bsf ecx, eax
bsf edx, eax
bsf ebx, eax
bsf esp, eax
bsf ebp, eax
bsf esi, eax
bsf edi, eax

bsf eax, edi
bsf ecx, esi
bsf edx, ebp
bsf ebx, esp
bsf esp, ebx
bsf ebp, edx
bsf esi, ecx
bsf edi, eax

; 64-bit registers
bsf rax, rax
bsf rax, rcx
bsf rax, rdx
bsf rax, rbx
bsf rax, rsp
bsf rax, rbp
bsf rax, rsi
bsf rax, rdi

bsf rax, rax
bsf rcx, rax
bsf rdx, rax
bsf rbx, rax
bsf rsp, rax
bsf rbp, rax
bsf rsi, rax
bsf rdi, rax

bsf rax, rdi
bsf rcx, rsi
bsf rdx, rbp
bsf rbx, rsp
bsf rsp, rbx
bsf rbp, rdx
bsf rsi, rcx
bsf rdi, rax

; ------------------------------------------------------------------------------
; opcode rd,md
; ------------------------------------------------------------------------------
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
bsf cx,  word  [rip + 0x13]
bsf edx, dword [rip + 0x14]
bsf rsi, qword [rip + 0x15]

bsf cx,  word  [rip + 0x1235]
bsf edx, dword [rip + 0x1236]
bsf rsi, qword [rip + 0x1237]

bsf cx,  word  [rip + 0x12345679]
bsf edx, dword [rip + 0x1234567a]
bsf rsi, qword [rip + 0x1234567b]

; [rip + base]
bsf cx,  word  [rbx]
bsf edx, dword [rcx]
bsf rsi, qword [rdx]

; [rip + base + disp8]
bsf cx,  word  [rbx + 0x13]
bsf edx, dword [rcx + 0x14]
bsf rsi, qword [rdx + 0x15]

; [rip + base + disp32]
bsf cx,  word  [rbx + 0x1235]
bsf edx, dword [rcx + 0x1236]
bsf rsi, qword [rdx + 0x1237]

bsf cx,  word  [rbx + 0x12345679]
bsf edx, dword [rcx + 0x1234567a]
bsf rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
bsf cx,  word  [rbx + rcx]
bsf edx, dword [rcx + rsi]
bsf rsi, qword [rdx + rdi]

; [rip + base + scale * index]
bsf cx,  word  [rbx + 4 * rcx]
bsf edx, dword [rcx + 8 * rsi]
bsf rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
bsf cx,  word  [rbx + rcx + 0x13]
bsf edx, dword [rcx + rsi + 0x14]
bsf rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
bsf cx,  word  [rbx + rcx + 0x1235]
bsf edx, dword [rcx + rsi + 0x1236]
bsf rsi, qword [rdx + rdi + 0x1237]

bsf cx,  word  [rbx + rcx + 0x12345679]
bsf edx, dword [rcx + rsi + 0x1234567a]
bsf rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
bsf cx,  word  [rbx + 4 * rcx + 0x13]
bsf edx, dword [rcx + 8 * rsi + 0x14]
bsf rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
bsf cx,  word  [rbx + 4 * rcx + 0x1235]
bsf edx, dword [rcx + 8 * rsi + 0x1236]
bsf rsi, qword [rdx + 8 * rdi + 0x1237]

bsf cx,  word  [rbx + 4 * rcx + 0x12345679]
bsf edx, dword [rcx + 8 * rsi + 0x1234567a]
bsf rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
bsf cx,  word  [4 * rcx]
bsf edx, dword [8 * rsi]
bsf rsi, qword [8 * rdi]

; [scale * index + disp8]
bsf cx,  word  [4 * rcx + 0x13]
bsf edx, dword [8 * rsi + 0x14]
bsf rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
bsf cx,  word  [4 * rcx + 0x1235]
bsf edx, dword [8 * rsi + 0x1236]
bsf rsi, qword [8 * rdi + 0x1237]

bsf cx,  word  [4 * rcx + 0x12345679]
bsf edx, dword [8 * rsi + 0x1234567a]
bsf rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
bsf ax, word [rbp]
bsf ax, word [rbp + 0x12]
bsf ax, word [rbp + 0x1234]
bsf ax, word [rbp + 0x12345678]

bsf eax, dword [4 * rbp]
bsf eax, dword [4 * rbp + 0x12]
bsf eax, dword [4 * rbp + 0x1234]
bsf eax, dword [4 * rbp + 0x12345678]

bsf rax, qword [rbx + 4 * rbp]
bsf rax, qword [rbx + 4 * rbp + 0x12]
bsf rax, qword [rbx + 4 * rbp + 0x1234]
bsf rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
bsf ax, word [rsp]
bsf ax, word [rsp + 0x12]
bsf ax, word [rsp + 0x1234]
bsf ax, word [rsp + 0x12345678]

bsf eax, dword [rsp + rax]
bsf eax, dword [rsp + rbp]
bsf eax, dword [rsp + 2*rbp]
bsf eax, dword [rsp + 4*rbp]
bsf eax, dword [rsp + 8*rbp]

; use each register as indirect.
bsf ax, word [rax]
bsf ax, word [rcx]
bsf ax, word [rdx]
bsf ax, word [rbx]
bsf ax, word [rsp]
bsf ax, word [rbp]
bsf ax, word [rsi]
bsf ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
bsf eax, dword [rax + 2*rax]
bsf eax, dword [rcx + 2*rcx]
bsf eax, dword [rdx + 2*rdx]
bsf eax, dword [rbx + 2*rbx]
bsf eax, dword [rbp + 2*rbp]
bsf eax, dword [rsi + 2*rsi]
bsf eax, dword [rdi + 2*rdi]

