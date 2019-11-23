use64
; ------------------------------------------------------------------------------
; opcode rd,rd
; ------------------------------------------------------------------------------
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovno ax, ax
cmovno ax, cx
cmovno ax, dx
cmovno ax, bx
cmovno ax, sp
cmovno ax, bp
cmovno ax, si
cmovno ax, di

cmovno ax, ax
cmovno cx, ax
cmovno dx, ax
cmovno bx, ax
cmovno sp, ax
cmovno bp, ax
cmovno si, ax
cmovno di, ax

cmovno ax, di
cmovno cx, si
cmovno dx, bp
cmovno bx, sp
cmovno sp, bx
cmovno bp, dx
cmovno si, cx
cmovno di, ax

; 32-bit registers
cmovno eax, eax
cmovno eax, ecx
cmovno eax, edx
cmovno eax, ebx
cmovno eax, esp
cmovno eax, ebp
cmovno eax, esi
cmovno eax, edi

cmovno eax, eax
cmovno ecx, eax
cmovno edx, eax
cmovno ebx, eax
cmovno esp, eax
cmovno ebp, eax
cmovno esi, eax
cmovno edi, eax

cmovno eax, edi
cmovno ecx, esi
cmovno edx, ebp
cmovno ebx, esp
cmovno esp, ebx
cmovno ebp, edx
cmovno esi, ecx
cmovno edi, eax

; 64-bit registers
cmovno rax, rax
cmovno rax, rcx
cmovno rax, rdx
cmovno rax, rbx
cmovno rax, rsp
cmovno rax, rbp
cmovno rax, rsi
cmovno rax, rdi

cmovno rax, rax
cmovno rcx, rax
cmovno rdx, rax
cmovno rbx, rax
cmovno rsp, rax
cmovno rbp, rax
cmovno rsi, rax
cmovno rdi, rax

cmovno rax, rdi
cmovno rcx, rsi
cmovno rdx, rbp
cmovno rbx, rsp
cmovno rsp, rbx
cmovno rbp, rdx
cmovno rsi, rcx
cmovno rdi, rax

; ------------------------------------------------------------------------------
; opcode rd,md
; ------------------------------------------------------------------------------
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
cmovno cx,  word  [rip + 0x13]
cmovno edx, dword [rip + 0x14]
cmovno rsi, qword [rip + 0x15]

cmovno cx,  word  [rip + 0x1235]
cmovno edx, dword [rip + 0x1236]
cmovno rsi, qword [rip + 0x1237]

cmovno cx,  word  [rip + 0x12345679]
cmovno edx, dword [rip + 0x1234567a]
cmovno rsi, qword [rip + 0x1234567b]

; [rip + base]
cmovno cx,  word  [rbx]
cmovno edx, dword [rcx]
cmovno rsi, qword [rdx]

; [rip + base + disp8]
cmovno cx,  word  [rbx + 0x13]
cmovno edx, dword [rcx + 0x14]
cmovno rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmovno cx,  word  [rbx + 0x1235]
cmovno edx, dword [rcx + 0x1236]
cmovno rsi, qword [rdx + 0x1237]

cmovno cx,  word  [rbx + 0x12345679]
cmovno edx, dword [rcx + 0x1234567a]
cmovno rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmovno cx,  word  [rbx + rcx]
cmovno edx, dword [rcx + rsi]
cmovno rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmovno cx,  word  [rbx + 4 * rcx]
cmovno edx, dword [rcx + 8 * rsi]
cmovno rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmovno cx,  word  [rbx + rcx + 0x13]
cmovno edx, dword [rcx + rsi + 0x14]
cmovno rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmovno cx,  word  [rbx + rcx + 0x1235]
cmovno edx, dword [rcx + rsi + 0x1236]
cmovno rsi, qword [rdx + rdi + 0x1237]

cmovno cx,  word  [rbx + rcx + 0x12345679]
cmovno edx, dword [rcx + rsi + 0x1234567a]
cmovno rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmovno cx,  word  [rbx + 4 * rcx + 0x13]
cmovno edx, dword [rcx + 8 * rsi + 0x14]
cmovno rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmovno cx,  word  [rbx + 4 * rcx + 0x1235]
cmovno edx, dword [rcx + 8 * rsi + 0x1236]
cmovno rsi, qword [rdx + 8 * rdi + 0x1237]

cmovno cx,  word  [rbx + 4 * rcx + 0x12345679]
cmovno edx, dword [rcx + 8 * rsi + 0x1234567a]
cmovno rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmovno cx,  word  [4 * rcx]
cmovno edx, dword [8 * rsi]
cmovno rsi, qword [8 * rdi]

; [scale * index + disp8]
cmovno cx,  word  [4 * rcx + 0x13]
cmovno edx, dword [8 * rsi + 0x14]
cmovno rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmovno cx,  word  [4 * rcx + 0x1235]
cmovno edx, dword [8 * rsi + 0x1236]
cmovno rsi, qword [8 * rdi + 0x1237]

cmovno cx,  word  [4 * rcx + 0x12345679]
cmovno edx, dword [8 * rsi + 0x1234567a]
cmovno rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmovno ax, word [rbp]
cmovno ax, word [rbp + 0x12]
cmovno ax, word [rbp + 0x1234]
cmovno ax, word [rbp + 0x12345678]

cmovno eax, dword [4 * rbp]
cmovno eax, dword [4 * rbp + 0x12]
cmovno eax, dword [4 * rbp + 0x1234]
cmovno eax, dword [4 * rbp + 0x12345678]

cmovno rax, qword [rbx + 4 * rbp]
cmovno rax, qword [rbx + 4 * rbp + 0x12]
cmovno rax, qword [rbx + 4 * rbp + 0x1234]
cmovno rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmovno ax, word [rsp]
cmovno ax, word [rsp + 0x12]
cmovno ax, word [rsp + 0x1234]
cmovno ax, word [rsp + 0x12345678]

cmovno eax, dword [rsp + rax]
cmovno eax, dword [rsp + rbp]
cmovno eax, dword [rsp + 2*rbp]
cmovno eax, dword [rsp + 4*rbp]
cmovno eax, dword [rsp + 8*rbp]

; use each register as indirect.
cmovno ax, word [rax]
cmovno ax, word [rcx]
cmovno ax, word [rdx]
cmovno ax, word [rbx]
cmovno ax, word [rsp]
cmovno ax, word [rbp]
cmovno ax, word [rsi]
cmovno ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmovno eax, dword [rax + 2*rax]
cmovno eax, dword [rcx + 2*rcx]
cmovno eax, dword [rdx + 2*rdx]
cmovno eax, dword [rbx + 2*rbx]
cmovno eax, dword [rbp + 2*rbp]
cmovno eax, dword [rsi + 2*rsi]
cmovno eax, dword [rdi + 2*rdi]

