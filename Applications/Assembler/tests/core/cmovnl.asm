use64
; ------------------------------------------------------------------------------
; opcode rd,rd
; ------------------------------------------------------------------------------
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovnl ax, ax
cmovnl ax, cx
cmovnl ax, dx
cmovnl ax, bx
cmovnl ax, sp
cmovnl ax, bp
cmovnl ax, si
cmovnl ax, di

cmovnl ax, ax
cmovnl cx, ax
cmovnl dx, ax
cmovnl bx, ax
cmovnl sp, ax
cmovnl bp, ax
cmovnl si, ax
cmovnl di, ax

cmovnl ax, di
cmovnl cx, si
cmovnl dx, bp
cmovnl bx, sp
cmovnl sp, bx
cmovnl bp, dx
cmovnl si, cx
cmovnl di, ax

; 32-bit registers
cmovnl eax, eax
cmovnl eax, ecx
cmovnl eax, edx
cmovnl eax, ebx
cmovnl eax, esp
cmovnl eax, ebp
cmovnl eax, esi
cmovnl eax, edi

cmovnl eax, eax
cmovnl ecx, eax
cmovnl edx, eax
cmovnl ebx, eax
cmovnl esp, eax
cmovnl ebp, eax
cmovnl esi, eax
cmovnl edi, eax

cmovnl eax, edi
cmovnl ecx, esi
cmovnl edx, ebp
cmovnl ebx, esp
cmovnl esp, ebx
cmovnl ebp, edx
cmovnl esi, ecx
cmovnl edi, eax

; 64-bit registers
cmovnl rax, rax
cmovnl rax, rcx
cmovnl rax, rdx
cmovnl rax, rbx
cmovnl rax, rsp
cmovnl rax, rbp
cmovnl rax, rsi
cmovnl rax, rdi

cmovnl rax, rax
cmovnl rcx, rax
cmovnl rdx, rax
cmovnl rbx, rax
cmovnl rsp, rax
cmovnl rbp, rax
cmovnl rsi, rax
cmovnl rdi, rax

cmovnl rax, rdi
cmovnl rcx, rsi
cmovnl rdx, rbp
cmovnl rbx, rsp
cmovnl rsp, rbx
cmovnl rbp, rdx
cmovnl rsi, rcx
cmovnl rdi, rax

; ------------------------------------------------------------------------------
; opcode rd,md
; ------------------------------------------------------------------------------
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
cmovnl cx,  word  [rip + 0x13]
cmovnl edx, dword [rip + 0x14]
cmovnl rsi, qword [rip + 0x15]

cmovnl cx,  word  [rip + 0x1235]
cmovnl edx, dword [rip + 0x1236]
cmovnl rsi, qword [rip + 0x1237]

cmovnl cx,  word  [rip + 0x12345679]
cmovnl edx, dword [rip + 0x1234567a]
cmovnl rsi, qword [rip + 0x1234567b]

; [rip + base]
cmovnl cx,  word  [rbx]
cmovnl edx, dword [rcx]
cmovnl rsi, qword [rdx]

; [rip + base + disp8]
cmovnl cx,  word  [rbx + 0x13]
cmovnl edx, dword [rcx + 0x14]
cmovnl rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmovnl cx,  word  [rbx + 0x1235]
cmovnl edx, dword [rcx + 0x1236]
cmovnl rsi, qword [rdx + 0x1237]

cmovnl cx,  word  [rbx + 0x12345679]
cmovnl edx, dword [rcx + 0x1234567a]
cmovnl rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmovnl cx,  word  [rbx + rcx]
cmovnl edx, dword [rcx + rsi]
cmovnl rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmovnl cx,  word  [rbx + 4 * rcx]
cmovnl edx, dword [rcx + 8 * rsi]
cmovnl rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmovnl cx,  word  [rbx + rcx + 0x13]
cmovnl edx, dword [rcx + rsi + 0x14]
cmovnl rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmovnl cx,  word  [rbx + rcx + 0x1235]
cmovnl edx, dword [rcx + rsi + 0x1236]
cmovnl rsi, qword [rdx + rdi + 0x1237]

cmovnl cx,  word  [rbx + rcx + 0x12345679]
cmovnl edx, dword [rcx + rsi + 0x1234567a]
cmovnl rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmovnl cx,  word  [rbx + 4 * rcx + 0x13]
cmovnl edx, dword [rcx + 8 * rsi + 0x14]
cmovnl rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmovnl cx,  word  [rbx + 4 * rcx + 0x1235]
cmovnl edx, dword [rcx + 8 * rsi + 0x1236]
cmovnl rsi, qword [rdx + 8 * rdi + 0x1237]

cmovnl cx,  word  [rbx + 4 * rcx + 0x12345679]
cmovnl edx, dword [rcx + 8 * rsi + 0x1234567a]
cmovnl rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmovnl cx,  word  [4 * rcx]
cmovnl edx, dword [8 * rsi]
cmovnl rsi, qword [8 * rdi]

; [scale * index + disp8]
cmovnl cx,  word  [4 * rcx + 0x13]
cmovnl edx, dword [8 * rsi + 0x14]
cmovnl rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmovnl cx,  word  [4 * rcx + 0x1235]
cmovnl edx, dword [8 * rsi + 0x1236]
cmovnl rsi, qword [8 * rdi + 0x1237]

cmovnl cx,  word  [4 * rcx + 0x12345679]
cmovnl edx, dword [8 * rsi + 0x1234567a]
cmovnl rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmovnl ax, word [rbp]
cmovnl ax, word [rbp + 0x12]
cmovnl ax, word [rbp + 0x1234]
cmovnl ax, word [rbp + 0x12345678]

cmovnl eax, dword [4 * rbp]
cmovnl eax, dword [4 * rbp + 0x12]
cmovnl eax, dword [4 * rbp + 0x1234]
cmovnl eax, dword [4 * rbp + 0x12345678]

cmovnl rax, qword [rbx + 4 * rbp]
cmovnl rax, qword [rbx + 4 * rbp + 0x12]
cmovnl rax, qword [rbx + 4 * rbp + 0x1234]
cmovnl rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmovnl ax, word [rsp]
cmovnl ax, word [rsp + 0x12]
cmovnl ax, word [rsp + 0x1234]
cmovnl ax, word [rsp + 0x12345678]

cmovnl eax, dword [rsp + rax]
cmovnl eax, dword [rsp + rbp]
cmovnl eax, dword [rsp + 2*rbp]
cmovnl eax, dword [rsp + 4*rbp]
cmovnl eax, dword [rsp + 8*rbp]

; use each register as indirect.
cmovnl ax, word [rax]
cmovnl ax, word [rcx]
cmovnl ax, word [rdx]
cmovnl ax, word [rbx]
cmovnl ax, word [rsp]
cmovnl ax, word [rbp]
cmovnl ax, word [rsi]
cmovnl ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmovnl eax, dword [rax + 2*rax]
cmovnl eax, dword [rcx + 2*rcx]
cmovnl eax, dword [rdx + 2*rdx]
cmovnl eax, dword [rbx + 2*rbx]
cmovnl eax, dword [rbp + 2*rbp]
cmovnl eax, dword [rsi + 2*rsi]
cmovnl eax, dword [rdi + 2*rdi]

