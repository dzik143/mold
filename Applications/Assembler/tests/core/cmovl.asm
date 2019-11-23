use64
; ------------------------------------------------------------------------------
; opcode rd,rd
; ------------------------------------------------------------------------------
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovl ax, ax
cmovl ax, cx
cmovl ax, dx
cmovl ax, bx
cmovl ax, sp
cmovl ax, bp
cmovl ax, si
cmovl ax, di

cmovl ax, ax
cmovl cx, ax
cmovl dx, ax
cmovl bx, ax
cmovl sp, ax
cmovl bp, ax
cmovl si, ax
cmovl di, ax

cmovl ax, di
cmovl cx, si
cmovl dx, bp
cmovl bx, sp
cmovl sp, bx
cmovl bp, dx
cmovl si, cx
cmovl di, ax

; 32-bit registers
cmovl eax, eax
cmovl eax, ecx
cmovl eax, edx
cmovl eax, ebx
cmovl eax, esp
cmovl eax, ebp
cmovl eax, esi
cmovl eax, edi

cmovl eax, eax
cmovl ecx, eax
cmovl edx, eax
cmovl ebx, eax
cmovl esp, eax
cmovl ebp, eax
cmovl esi, eax
cmovl edi, eax

cmovl eax, edi
cmovl ecx, esi
cmovl edx, ebp
cmovl ebx, esp
cmovl esp, ebx
cmovl ebp, edx
cmovl esi, ecx
cmovl edi, eax

; 64-bit registers
cmovl rax, rax
cmovl rax, rcx
cmovl rax, rdx
cmovl rax, rbx
cmovl rax, rsp
cmovl rax, rbp
cmovl rax, rsi
cmovl rax, rdi

cmovl rax, rax
cmovl rcx, rax
cmovl rdx, rax
cmovl rbx, rax
cmovl rsp, rax
cmovl rbp, rax
cmovl rsi, rax
cmovl rdi, rax

cmovl rax, rdi
cmovl rcx, rsi
cmovl rdx, rbp
cmovl rbx, rsp
cmovl rsp, rbx
cmovl rbp, rdx
cmovl rsi, rcx
cmovl rdi, rax

; ------------------------------------------------------------------------------
; opcode rd,md
; ------------------------------------------------------------------------------
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
cmovl cx,  word  [rip + 0x13]
cmovl edx, dword [rip + 0x14]
cmovl rsi, qword [rip + 0x15]

cmovl cx,  word  [rip + 0x1235]
cmovl edx, dword [rip + 0x1236]
cmovl rsi, qword [rip + 0x1237]

cmovl cx,  word  [rip + 0x12345679]
cmovl edx, dword [rip + 0x1234567a]
cmovl rsi, qword [rip + 0x1234567b]

; [rip + base]
cmovl cx,  word  [rbx]
cmovl edx, dword [rcx]
cmovl rsi, qword [rdx]

; [rip + base + disp8]
cmovl cx,  word  [rbx + 0x13]
cmovl edx, dword [rcx + 0x14]
cmovl rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmovl cx,  word  [rbx + 0x1235]
cmovl edx, dword [rcx + 0x1236]
cmovl rsi, qword [rdx + 0x1237]

cmovl cx,  word  [rbx + 0x12345679]
cmovl edx, dword [rcx + 0x1234567a]
cmovl rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmovl cx,  word  [rbx + rcx]
cmovl edx, dword [rcx + rsi]
cmovl rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmovl cx,  word  [rbx + 4 * rcx]
cmovl edx, dword [rcx + 8 * rsi]
cmovl rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmovl cx,  word  [rbx + rcx + 0x13]
cmovl edx, dword [rcx + rsi + 0x14]
cmovl rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmovl cx,  word  [rbx + rcx + 0x1235]
cmovl edx, dword [rcx + rsi + 0x1236]
cmovl rsi, qword [rdx + rdi + 0x1237]

cmovl cx,  word  [rbx + rcx + 0x12345679]
cmovl edx, dword [rcx + rsi + 0x1234567a]
cmovl rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmovl cx,  word  [rbx + 4 * rcx + 0x13]
cmovl edx, dword [rcx + 8 * rsi + 0x14]
cmovl rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmovl cx,  word  [rbx + 4 * rcx + 0x1235]
cmovl edx, dword [rcx + 8 * rsi + 0x1236]
cmovl rsi, qword [rdx + 8 * rdi + 0x1237]

cmovl cx,  word  [rbx + 4 * rcx + 0x12345679]
cmovl edx, dword [rcx + 8 * rsi + 0x1234567a]
cmovl rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmovl cx,  word  [4 * rcx]
cmovl edx, dword [8 * rsi]
cmovl rsi, qword [8 * rdi]

; [scale * index + disp8]
cmovl cx,  word  [4 * rcx + 0x13]
cmovl edx, dword [8 * rsi + 0x14]
cmovl rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmovl cx,  word  [4 * rcx + 0x1235]
cmovl edx, dword [8 * rsi + 0x1236]
cmovl rsi, qword [8 * rdi + 0x1237]

cmovl cx,  word  [4 * rcx + 0x12345679]
cmovl edx, dword [8 * rsi + 0x1234567a]
cmovl rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmovl ax, word [rbp]
cmovl ax, word [rbp + 0x12]
cmovl ax, word [rbp + 0x1234]
cmovl ax, word [rbp + 0x12345678]

cmovl eax, dword [4 * rbp]
cmovl eax, dword [4 * rbp + 0x12]
cmovl eax, dword [4 * rbp + 0x1234]
cmovl eax, dword [4 * rbp + 0x12345678]

cmovl rax, qword [rbx + 4 * rbp]
cmovl rax, qword [rbx + 4 * rbp + 0x12]
cmovl rax, qword [rbx + 4 * rbp + 0x1234]
cmovl rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmovl ax, word [rsp]
cmovl ax, word [rsp + 0x12]
cmovl ax, word [rsp + 0x1234]
cmovl ax, word [rsp + 0x12345678]

cmovl eax, dword [rsp + rax]
cmovl eax, dword [rsp + rbp]
cmovl eax, dword [rsp + 2*rbp]
cmovl eax, dword [rsp + 4*rbp]
cmovl eax, dword [rsp + 8*rbp]

; use each register as indirect.
cmovl ax, word [rax]
cmovl ax, word [rcx]
cmovl ax, word [rdx]
cmovl ax, word [rbx]
cmovl ax, word [rsp]
cmovl ax, word [rbp]
cmovl ax, word [rsi]
cmovl ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmovl eax, dword [rax + 2*rax]
cmovl eax, dword [rcx + 2*rcx]
cmovl eax, dword [rdx + 2*rdx]
cmovl eax, dword [rbx + 2*rbx]
cmovl eax, dword [rbp + 2*rbp]
cmovl eax, dword [rsi + 2*rsi]
cmovl eax, dword [rdi + 2*rdi]

