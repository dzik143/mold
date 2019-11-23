use64
; ------------------------------------------------------------------------------
; opcode rd,rd
; ------------------------------------------------------------------------------
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovle ax, ax
cmovle ax, cx
cmovle ax, dx
cmovle ax, bx
cmovle ax, sp
cmovle ax, bp
cmovle ax, si
cmovle ax, di

cmovle ax, ax
cmovle cx, ax
cmovle dx, ax
cmovle bx, ax
cmovle sp, ax
cmovle bp, ax
cmovle si, ax
cmovle di, ax

cmovle ax, di
cmovle cx, si
cmovle dx, bp
cmovle bx, sp
cmovle sp, bx
cmovle bp, dx
cmovle si, cx
cmovle di, ax

; 32-bit registers
cmovle eax, eax
cmovle eax, ecx
cmovle eax, edx
cmovle eax, ebx
cmovle eax, esp
cmovle eax, ebp
cmovle eax, esi
cmovle eax, edi

cmovle eax, eax
cmovle ecx, eax
cmovle edx, eax
cmovle ebx, eax
cmovle esp, eax
cmovle ebp, eax
cmovle esi, eax
cmovle edi, eax

cmovle eax, edi
cmovle ecx, esi
cmovle edx, ebp
cmovle ebx, esp
cmovle esp, ebx
cmovle ebp, edx
cmovle esi, ecx
cmovle edi, eax

; 64-bit registers
cmovle rax, rax
cmovle rax, rcx
cmovle rax, rdx
cmovle rax, rbx
cmovle rax, rsp
cmovle rax, rbp
cmovle rax, rsi
cmovle rax, rdi

cmovle rax, rax
cmovle rcx, rax
cmovle rdx, rax
cmovle rbx, rax
cmovle rsp, rax
cmovle rbp, rax
cmovle rsi, rax
cmovle rdi, rax

cmovle rax, rdi
cmovle rcx, rsi
cmovle rdx, rbp
cmovle rbx, rsp
cmovle rsp, rbx
cmovle rbp, rdx
cmovle rsi, rcx
cmovle rdi, rax

; ------------------------------------------------------------------------------
; opcode rd,md
; ------------------------------------------------------------------------------
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
cmovle cx,  word  [rip + 0x13]
cmovle edx, dword [rip + 0x14]
cmovle rsi, qword [rip + 0x15]

cmovle cx,  word  [rip + 0x1235]
cmovle edx, dword [rip + 0x1236]
cmovle rsi, qword [rip + 0x1237]

cmovle cx,  word  [rip + 0x12345679]
cmovle edx, dword [rip + 0x1234567a]
cmovle rsi, qword [rip + 0x1234567b]

; [rip + base]
cmovle cx,  word  [rbx]
cmovle edx, dword [rcx]
cmovle rsi, qword [rdx]

; [rip + base + disp8]
cmovle cx,  word  [rbx + 0x13]
cmovle edx, dword [rcx + 0x14]
cmovle rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmovle cx,  word  [rbx + 0x1235]
cmovle edx, dword [rcx + 0x1236]
cmovle rsi, qword [rdx + 0x1237]

cmovle cx,  word  [rbx + 0x12345679]
cmovle edx, dword [rcx + 0x1234567a]
cmovle rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmovle cx,  word  [rbx + rcx]
cmovle edx, dword [rcx + rsi]
cmovle rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmovle cx,  word  [rbx + 4 * rcx]
cmovle edx, dword [rcx + 8 * rsi]
cmovle rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmovle cx,  word  [rbx + rcx + 0x13]
cmovle edx, dword [rcx + rsi + 0x14]
cmovle rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmovle cx,  word  [rbx + rcx + 0x1235]
cmovle edx, dword [rcx + rsi + 0x1236]
cmovle rsi, qword [rdx + rdi + 0x1237]

cmovle cx,  word  [rbx + rcx + 0x12345679]
cmovle edx, dword [rcx + rsi + 0x1234567a]
cmovle rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmovle cx,  word  [rbx + 4 * rcx + 0x13]
cmovle edx, dword [rcx + 8 * rsi + 0x14]
cmovle rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmovle cx,  word  [rbx + 4 * rcx + 0x1235]
cmovle edx, dword [rcx + 8 * rsi + 0x1236]
cmovle rsi, qword [rdx + 8 * rdi + 0x1237]

cmovle cx,  word  [rbx + 4 * rcx + 0x12345679]
cmovle edx, dword [rcx + 8 * rsi + 0x1234567a]
cmovle rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmovle cx,  word  [4 * rcx]
cmovle edx, dword [8 * rsi]
cmovle rsi, qword [8 * rdi]

; [scale * index + disp8]
cmovle cx,  word  [4 * rcx + 0x13]
cmovle edx, dword [8 * rsi + 0x14]
cmovle rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmovle cx,  word  [4 * rcx + 0x1235]
cmovle edx, dword [8 * rsi + 0x1236]
cmovle rsi, qword [8 * rdi + 0x1237]

cmovle cx,  word  [4 * rcx + 0x12345679]
cmovle edx, dword [8 * rsi + 0x1234567a]
cmovle rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmovle ax, word [rbp]
cmovle ax, word [rbp + 0x12]
cmovle ax, word [rbp + 0x1234]
cmovle ax, word [rbp + 0x12345678]

cmovle eax, dword [4 * rbp]
cmovle eax, dword [4 * rbp + 0x12]
cmovle eax, dword [4 * rbp + 0x1234]
cmovle eax, dword [4 * rbp + 0x12345678]

cmovle rax, qword [rbx + 4 * rbp]
cmovle rax, qword [rbx + 4 * rbp + 0x12]
cmovle rax, qword [rbx + 4 * rbp + 0x1234]
cmovle rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmovle ax, word [rsp]
cmovle ax, word [rsp + 0x12]
cmovle ax, word [rsp + 0x1234]
cmovle ax, word [rsp + 0x12345678]

cmovle eax, dword [rsp + rax]
cmovle eax, dword [rsp + rbp]
cmovle eax, dword [rsp + 2*rbp]
cmovle eax, dword [rsp + 4*rbp]
cmovle eax, dword [rsp + 8*rbp]

; use each register as indirect.
cmovle ax, word [rax]
cmovle ax, word [rcx]
cmovle ax, word [rdx]
cmovle ax, word [rbx]
cmovle ax, word [rsp]
cmovle ax, word [rbp]
cmovle ax, word [rsi]
cmovle ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmovle eax, dword [rax + 2*rax]
cmovle eax, dword [rcx + 2*rcx]
cmovle eax, dword [rdx + 2*rdx]
cmovle eax, dword [rbx + 2*rbx]
cmovle eax, dword [rbp + 2*rbp]
cmovle eax, dword [rsi + 2*rsi]
cmovle eax, dword [rdi + 2*rdi]

