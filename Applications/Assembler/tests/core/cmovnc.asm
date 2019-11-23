use64
; ------------------------------------------------------------------------------
; opcode rd,rd
; ------------------------------------------------------------------------------
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovnc ax, ax
cmovnc ax, cx
cmovnc ax, dx
cmovnc ax, bx
cmovnc ax, sp
cmovnc ax, bp
cmovnc ax, si
cmovnc ax, di

cmovnc ax, ax
cmovnc cx, ax
cmovnc dx, ax
cmovnc bx, ax
cmovnc sp, ax
cmovnc bp, ax
cmovnc si, ax
cmovnc di, ax

cmovnc ax, di
cmovnc cx, si
cmovnc dx, bp
cmovnc bx, sp
cmovnc sp, bx
cmovnc bp, dx
cmovnc si, cx
cmovnc di, ax

; 32-bit registers
cmovnc eax, eax
cmovnc eax, ecx
cmovnc eax, edx
cmovnc eax, ebx
cmovnc eax, esp
cmovnc eax, ebp
cmovnc eax, esi
cmovnc eax, edi

cmovnc eax, eax
cmovnc ecx, eax
cmovnc edx, eax
cmovnc ebx, eax
cmovnc esp, eax
cmovnc ebp, eax
cmovnc esi, eax
cmovnc edi, eax

cmovnc eax, edi
cmovnc ecx, esi
cmovnc edx, ebp
cmovnc ebx, esp
cmovnc esp, ebx
cmovnc ebp, edx
cmovnc esi, ecx
cmovnc edi, eax

; 64-bit registers
cmovnc rax, rax
cmovnc rax, rcx
cmovnc rax, rdx
cmovnc rax, rbx
cmovnc rax, rsp
cmovnc rax, rbp
cmovnc rax, rsi
cmovnc rax, rdi

cmovnc rax, rax
cmovnc rcx, rax
cmovnc rdx, rax
cmovnc rbx, rax
cmovnc rsp, rax
cmovnc rbp, rax
cmovnc rsi, rax
cmovnc rdi, rax

cmovnc rax, rdi
cmovnc rcx, rsi
cmovnc rdx, rbp
cmovnc rbx, rsp
cmovnc rsp, rbx
cmovnc rbp, rdx
cmovnc rsi, rcx
cmovnc rdi, rax

; ------------------------------------------------------------------------------
; opcode rd,md
; ------------------------------------------------------------------------------
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
cmovnc cx,  word  [rip + 0x13]
cmovnc edx, dword [rip + 0x14]
cmovnc rsi, qword [rip + 0x15]

cmovnc cx,  word  [rip + 0x1235]
cmovnc edx, dword [rip + 0x1236]
cmovnc rsi, qword [rip + 0x1237]

cmovnc cx,  word  [rip + 0x12345679]
cmovnc edx, dword [rip + 0x1234567a]
cmovnc rsi, qword [rip + 0x1234567b]

; [rip + base]
cmovnc cx,  word  [rbx]
cmovnc edx, dword [rcx]
cmovnc rsi, qword [rdx]

; [rip + base + disp8]
cmovnc cx,  word  [rbx + 0x13]
cmovnc edx, dword [rcx + 0x14]
cmovnc rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmovnc cx,  word  [rbx + 0x1235]
cmovnc edx, dword [rcx + 0x1236]
cmovnc rsi, qword [rdx + 0x1237]

cmovnc cx,  word  [rbx + 0x12345679]
cmovnc edx, dword [rcx + 0x1234567a]
cmovnc rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmovnc cx,  word  [rbx + rcx]
cmovnc edx, dword [rcx + rsi]
cmovnc rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmovnc cx,  word  [rbx + 4 * rcx]
cmovnc edx, dword [rcx + 8 * rsi]
cmovnc rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmovnc cx,  word  [rbx + rcx + 0x13]
cmovnc edx, dword [rcx + rsi + 0x14]
cmovnc rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmovnc cx,  word  [rbx + rcx + 0x1235]
cmovnc edx, dword [rcx + rsi + 0x1236]
cmovnc rsi, qword [rdx + rdi + 0x1237]

cmovnc cx,  word  [rbx + rcx + 0x12345679]
cmovnc edx, dword [rcx + rsi + 0x1234567a]
cmovnc rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmovnc cx,  word  [rbx + 4 * rcx + 0x13]
cmovnc edx, dword [rcx + 8 * rsi + 0x14]
cmovnc rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmovnc cx,  word  [rbx + 4 * rcx + 0x1235]
cmovnc edx, dword [rcx + 8 * rsi + 0x1236]
cmovnc rsi, qword [rdx + 8 * rdi + 0x1237]

cmovnc cx,  word  [rbx + 4 * rcx + 0x12345679]
cmovnc edx, dword [rcx + 8 * rsi + 0x1234567a]
cmovnc rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmovnc cx,  word  [4 * rcx]
cmovnc edx, dword [8 * rsi]
cmovnc rsi, qword [8 * rdi]

; [scale * index + disp8]
cmovnc cx,  word  [4 * rcx + 0x13]
cmovnc edx, dword [8 * rsi + 0x14]
cmovnc rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmovnc cx,  word  [4 * rcx + 0x1235]
cmovnc edx, dword [8 * rsi + 0x1236]
cmovnc rsi, qword [8 * rdi + 0x1237]

cmovnc cx,  word  [4 * rcx + 0x12345679]
cmovnc edx, dword [8 * rsi + 0x1234567a]
cmovnc rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmovnc ax, word [rbp]
cmovnc ax, word [rbp + 0x12]
cmovnc ax, word [rbp + 0x1234]
cmovnc ax, word [rbp + 0x12345678]

cmovnc eax, dword [4 * rbp]
cmovnc eax, dword [4 * rbp + 0x12]
cmovnc eax, dword [4 * rbp + 0x1234]
cmovnc eax, dword [4 * rbp + 0x12345678]

cmovnc rax, qword [rbx + 4 * rbp]
cmovnc rax, qword [rbx + 4 * rbp + 0x12]
cmovnc rax, qword [rbx + 4 * rbp + 0x1234]
cmovnc rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmovnc ax, word [rsp]
cmovnc ax, word [rsp + 0x12]
cmovnc ax, word [rsp + 0x1234]
cmovnc ax, word [rsp + 0x12345678]

cmovnc eax, dword [rsp + rax]
cmovnc eax, dword [rsp + rbp]
cmovnc eax, dword [rsp + 2*rbp]
cmovnc eax, dword [rsp + 4*rbp]
cmovnc eax, dword [rsp + 8*rbp]

; use each register as indirect.
cmovnc ax, word [rax]
cmovnc ax, word [rcx]
cmovnc ax, word [rdx]
cmovnc ax, word [rbx]
cmovnc ax, word [rsp]
cmovnc ax, word [rbp]
cmovnc ax, word [rsi]
cmovnc ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmovnc eax, dword [rax + 2*rax]
cmovnc eax, dword [rcx + 2*rcx]
cmovnc eax, dword [rdx + 2*rdx]
cmovnc eax, dword [rbx + 2*rbx]
cmovnc eax, dword [rbp + 2*rbp]
cmovnc eax, dword [rsi + 2*rsi]
cmovnc eax, dword [rdi + 2*rdi]

