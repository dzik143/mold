use64
; ------------------------------------------------------------------------------
; opcode rd,rd
; ------------------------------------------------------------------------------
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmove ax, ax
cmove ax, cx
cmove ax, dx
cmove ax, bx
cmove ax, sp
cmove ax, bp
cmove ax, si
cmove ax, di

cmove ax, ax
cmove cx, ax
cmove dx, ax
cmove bx, ax
cmove sp, ax
cmove bp, ax
cmove si, ax
cmove di, ax

cmove ax, di
cmove cx, si
cmove dx, bp
cmove bx, sp
cmove sp, bx
cmove bp, dx
cmove si, cx
cmove di, ax

; 32-bit registers
cmove eax, eax
cmove eax, ecx
cmove eax, edx
cmove eax, ebx
cmove eax, esp
cmove eax, ebp
cmove eax, esi
cmove eax, edi

cmove eax, eax
cmove ecx, eax
cmove edx, eax
cmove ebx, eax
cmove esp, eax
cmove ebp, eax
cmove esi, eax
cmove edi, eax

cmove eax, edi
cmove ecx, esi
cmove edx, ebp
cmove ebx, esp
cmove esp, ebx
cmove ebp, edx
cmove esi, ecx
cmove edi, eax

; 64-bit registers
cmove rax, rax
cmove rax, rcx
cmove rax, rdx
cmove rax, rbx
cmove rax, rsp
cmove rax, rbp
cmove rax, rsi
cmove rax, rdi

cmove rax, rax
cmove rcx, rax
cmove rdx, rax
cmove rbx, rax
cmove rsp, rax
cmove rbp, rax
cmove rsi, rax
cmove rdi, rax

cmove rax, rdi
cmove rcx, rsi
cmove rdx, rbp
cmove rbx, rsp
cmove rsp, rbx
cmove rbp, rdx
cmove rsi, rcx
cmove rdi, rax

; ------------------------------------------------------------------------------
; opcode rd,md
; ------------------------------------------------------------------------------
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
cmove cx,  word  [rip + 0x13]
cmove edx, dword [rip + 0x14]
cmove rsi, qword [rip + 0x15]

cmove cx,  word  [rip + 0x1235]
cmove edx, dword [rip + 0x1236]
cmove rsi, qword [rip + 0x1237]

cmove cx,  word  [rip + 0x12345679]
cmove edx, dword [rip + 0x1234567a]
cmove rsi, qword [rip + 0x1234567b]

; [rip + base]
cmove cx,  word  [rbx]
cmove edx, dword [rcx]
cmove rsi, qword [rdx]

; [rip + base + disp8]
cmove cx,  word  [rbx + 0x13]
cmove edx, dword [rcx + 0x14]
cmove rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmove cx,  word  [rbx + 0x1235]
cmove edx, dword [rcx + 0x1236]
cmove rsi, qword [rdx + 0x1237]

cmove cx,  word  [rbx + 0x12345679]
cmove edx, dword [rcx + 0x1234567a]
cmove rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmove cx,  word  [rbx + rcx]
cmove edx, dword [rcx + rsi]
cmove rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmove cx,  word  [rbx + 4 * rcx]
cmove edx, dword [rcx + 8 * rsi]
cmove rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmove cx,  word  [rbx + rcx + 0x13]
cmove edx, dword [rcx + rsi + 0x14]
cmove rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmove cx,  word  [rbx + rcx + 0x1235]
cmove edx, dword [rcx + rsi + 0x1236]
cmove rsi, qword [rdx + rdi + 0x1237]

cmove cx,  word  [rbx + rcx + 0x12345679]
cmove edx, dword [rcx + rsi + 0x1234567a]
cmove rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmove cx,  word  [rbx + 4 * rcx + 0x13]
cmove edx, dword [rcx + 8 * rsi + 0x14]
cmove rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmove cx,  word  [rbx + 4 * rcx + 0x1235]
cmove edx, dword [rcx + 8 * rsi + 0x1236]
cmove rsi, qword [rdx + 8 * rdi + 0x1237]

cmove cx,  word  [rbx + 4 * rcx + 0x12345679]
cmove edx, dword [rcx + 8 * rsi + 0x1234567a]
cmove rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmove cx,  word  [4 * rcx]
cmove edx, dword [8 * rsi]
cmove rsi, qword [8 * rdi]

; [scale * index + disp8]
cmove cx,  word  [4 * rcx + 0x13]
cmove edx, dword [8 * rsi + 0x14]
cmove rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmove cx,  word  [4 * rcx + 0x1235]
cmove edx, dword [8 * rsi + 0x1236]
cmove rsi, qword [8 * rdi + 0x1237]

cmove cx,  word  [4 * rcx + 0x12345679]
cmove edx, dword [8 * rsi + 0x1234567a]
cmove rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmove ax, word [rbp]
cmove ax, word [rbp + 0x12]
cmove ax, word [rbp + 0x1234]
cmove ax, word [rbp + 0x12345678]

cmove eax, dword [4 * rbp]
cmove eax, dword [4 * rbp + 0x12]
cmove eax, dword [4 * rbp + 0x1234]
cmove eax, dword [4 * rbp + 0x12345678]

cmove rax, qword [rbx + 4 * rbp]
cmove rax, qword [rbx + 4 * rbp + 0x12]
cmove rax, qword [rbx + 4 * rbp + 0x1234]
cmove rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmove ax, word [rsp]
cmove ax, word [rsp + 0x12]
cmove ax, word [rsp + 0x1234]
cmove ax, word [rsp + 0x12345678]

cmove eax, dword [rsp + rax]
cmove eax, dword [rsp + rbp]
cmove eax, dword [rsp + 2*rbp]
cmove eax, dword [rsp + 4*rbp]
cmove eax, dword [rsp + 8*rbp]

; use each register as indirect.
cmove ax, word [rax]
cmove ax, word [rcx]
cmove ax, word [rdx]
cmove ax, word [rbx]
cmove ax, word [rsp]
cmove ax, word [rbp]
cmove ax, word [rsi]
cmove ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmove eax, dword [rax + 2*rax]
cmove eax, dword [rcx + 2*rcx]
cmove eax, dword [rdx + 2*rdx]
cmove eax, dword [rbx + 2*rbx]
cmove eax, dword [rbp + 2*rbp]
cmove eax, dword [rsi + 2*rsi]
cmove eax, dword [rdi + 2*rdi]

