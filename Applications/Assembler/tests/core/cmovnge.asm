use64
; ------------------------------------------------------------------------------
; opcode rd,rd
; ------------------------------------------------------------------------------
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovnge ax, ax
cmovnge ax, cx
cmovnge ax, dx
cmovnge ax, bx
cmovnge ax, sp
cmovnge ax, bp
cmovnge ax, si
cmovnge ax, di

cmovnge ax, ax
cmovnge cx, ax
cmovnge dx, ax
cmovnge bx, ax
cmovnge sp, ax
cmovnge bp, ax
cmovnge si, ax
cmovnge di, ax

cmovnge ax, di
cmovnge cx, si
cmovnge dx, bp
cmovnge bx, sp
cmovnge sp, bx
cmovnge bp, dx
cmovnge si, cx
cmovnge di, ax

; 32-bit registers
cmovnge eax, eax
cmovnge eax, ecx
cmovnge eax, edx
cmovnge eax, ebx
cmovnge eax, esp
cmovnge eax, ebp
cmovnge eax, esi
cmovnge eax, edi

cmovnge eax, eax
cmovnge ecx, eax
cmovnge edx, eax
cmovnge ebx, eax
cmovnge esp, eax
cmovnge ebp, eax
cmovnge esi, eax
cmovnge edi, eax

cmovnge eax, edi
cmovnge ecx, esi
cmovnge edx, ebp
cmovnge ebx, esp
cmovnge esp, ebx
cmovnge ebp, edx
cmovnge esi, ecx
cmovnge edi, eax

; 64-bit registers
cmovnge rax, rax
cmovnge rax, rcx
cmovnge rax, rdx
cmovnge rax, rbx
cmovnge rax, rsp
cmovnge rax, rbp
cmovnge rax, rsi
cmovnge rax, rdi

cmovnge rax, rax
cmovnge rcx, rax
cmovnge rdx, rax
cmovnge rbx, rax
cmovnge rsp, rax
cmovnge rbp, rax
cmovnge rsi, rax
cmovnge rdi, rax

cmovnge rax, rdi
cmovnge rcx, rsi
cmovnge rdx, rbp
cmovnge rbx, rsp
cmovnge rsp, rbx
cmovnge rbp, rdx
cmovnge rsi, rcx
cmovnge rdi, rax

; ------------------------------------------------------------------------------
; opcode rd,md
; ------------------------------------------------------------------------------
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
cmovnge cx,  word  [rip + 0x13]
cmovnge edx, dword [rip + 0x14]
cmovnge rsi, qword [rip + 0x15]

cmovnge cx,  word  [rip + 0x1235]
cmovnge edx, dword [rip + 0x1236]
cmovnge rsi, qword [rip + 0x1237]

cmovnge cx,  word  [rip + 0x12345679]
cmovnge edx, dword [rip + 0x1234567a]
cmovnge rsi, qword [rip + 0x1234567b]

; [rip + base]
cmovnge cx,  word  [rbx]
cmovnge edx, dword [rcx]
cmovnge rsi, qword [rdx]

; [rip + base + disp8]
cmovnge cx,  word  [rbx + 0x13]
cmovnge edx, dword [rcx + 0x14]
cmovnge rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmovnge cx,  word  [rbx + 0x1235]
cmovnge edx, dword [rcx + 0x1236]
cmovnge rsi, qword [rdx + 0x1237]

cmovnge cx,  word  [rbx + 0x12345679]
cmovnge edx, dword [rcx + 0x1234567a]
cmovnge rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmovnge cx,  word  [rbx + rcx]
cmovnge edx, dword [rcx + rsi]
cmovnge rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmovnge cx,  word  [rbx + 4 * rcx]
cmovnge edx, dword [rcx + 8 * rsi]
cmovnge rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmovnge cx,  word  [rbx + rcx + 0x13]
cmovnge edx, dword [rcx + rsi + 0x14]
cmovnge rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmovnge cx,  word  [rbx + rcx + 0x1235]
cmovnge edx, dword [rcx + rsi + 0x1236]
cmovnge rsi, qword [rdx + rdi + 0x1237]

cmovnge cx,  word  [rbx + rcx + 0x12345679]
cmovnge edx, dword [rcx + rsi + 0x1234567a]
cmovnge rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmovnge cx,  word  [rbx + 4 * rcx + 0x13]
cmovnge edx, dword [rcx + 8 * rsi + 0x14]
cmovnge rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmovnge cx,  word  [rbx + 4 * rcx + 0x1235]
cmovnge edx, dword [rcx + 8 * rsi + 0x1236]
cmovnge rsi, qword [rdx + 8 * rdi + 0x1237]

cmovnge cx,  word  [rbx + 4 * rcx + 0x12345679]
cmovnge edx, dword [rcx + 8 * rsi + 0x1234567a]
cmovnge rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmovnge cx,  word  [4 * rcx]
cmovnge edx, dword [8 * rsi]
cmovnge rsi, qword [8 * rdi]

; [scale * index + disp8]
cmovnge cx,  word  [4 * rcx + 0x13]
cmovnge edx, dword [8 * rsi + 0x14]
cmovnge rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmovnge cx,  word  [4 * rcx + 0x1235]
cmovnge edx, dword [8 * rsi + 0x1236]
cmovnge rsi, qword [8 * rdi + 0x1237]

cmovnge cx,  word  [4 * rcx + 0x12345679]
cmovnge edx, dword [8 * rsi + 0x1234567a]
cmovnge rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmovnge ax, word [rbp]
cmovnge ax, word [rbp + 0x12]
cmovnge ax, word [rbp + 0x1234]
cmovnge ax, word [rbp + 0x12345678]

cmovnge eax, dword [4 * rbp]
cmovnge eax, dword [4 * rbp + 0x12]
cmovnge eax, dword [4 * rbp + 0x1234]
cmovnge eax, dword [4 * rbp + 0x12345678]

cmovnge rax, qword [rbx + 4 * rbp]
cmovnge rax, qword [rbx + 4 * rbp + 0x12]
cmovnge rax, qword [rbx + 4 * rbp + 0x1234]
cmovnge rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmovnge ax, word [rsp]
cmovnge ax, word [rsp + 0x12]
cmovnge ax, word [rsp + 0x1234]
cmovnge ax, word [rsp + 0x12345678]

cmovnge eax, dword [rsp + rax]
cmovnge eax, dword [rsp + rbp]
cmovnge eax, dword [rsp + 2*rbp]
cmovnge eax, dword [rsp + 4*rbp]
cmovnge eax, dword [rsp + 8*rbp]

; use each register as indirect.
cmovnge ax, word [rax]
cmovnge ax, word [rcx]
cmovnge ax, word [rdx]
cmovnge ax, word [rbx]
cmovnge ax, word [rsp]
cmovnge ax, word [rbp]
cmovnge ax, word [rsi]
cmovnge ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmovnge eax, dword [rax + 2*rax]
cmovnge eax, dword [rcx + 2*rcx]
cmovnge eax, dword [rdx + 2*rdx]
cmovnge eax, dword [rbx + 2*rbx]
cmovnge eax, dword [rbp + 2*rbp]
cmovnge eax, dword [rsi + 2*rsi]
cmovnge eax, dword [rdi + 2*rdi]

