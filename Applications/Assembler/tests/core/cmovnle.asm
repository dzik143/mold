use64
; ------------------------------------------------------------------------------
; opcode rd,rd
; ------------------------------------------------------------------------------
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovnle ax, ax
cmovnle ax, cx
cmovnle ax, dx
cmovnle ax, bx
cmovnle ax, sp
cmovnle ax, bp
cmovnle ax, si
cmovnle ax, di

cmovnle ax, ax
cmovnle cx, ax
cmovnle dx, ax
cmovnle bx, ax
cmovnle sp, ax
cmovnle bp, ax
cmovnle si, ax
cmovnle di, ax

cmovnle ax, di
cmovnle cx, si
cmovnle dx, bp
cmovnle bx, sp
cmovnle sp, bx
cmovnle bp, dx
cmovnle si, cx
cmovnle di, ax

; 32-bit registers
cmovnle eax, eax
cmovnle eax, ecx
cmovnle eax, edx
cmovnle eax, ebx
cmovnle eax, esp
cmovnle eax, ebp
cmovnle eax, esi
cmovnle eax, edi

cmovnle eax, eax
cmovnle ecx, eax
cmovnle edx, eax
cmovnle ebx, eax
cmovnle esp, eax
cmovnle ebp, eax
cmovnle esi, eax
cmovnle edi, eax

cmovnle eax, edi
cmovnle ecx, esi
cmovnle edx, ebp
cmovnle ebx, esp
cmovnle esp, ebx
cmovnle ebp, edx
cmovnle esi, ecx
cmovnle edi, eax

; 64-bit registers
cmovnle rax, rax
cmovnle rax, rcx
cmovnle rax, rdx
cmovnle rax, rbx
cmovnle rax, rsp
cmovnle rax, rbp
cmovnle rax, rsi
cmovnle rax, rdi

cmovnle rax, rax
cmovnle rcx, rax
cmovnle rdx, rax
cmovnle rbx, rax
cmovnle rsp, rax
cmovnle rbp, rax
cmovnle rsi, rax
cmovnle rdi, rax

cmovnle rax, rdi
cmovnle rcx, rsi
cmovnle rdx, rbp
cmovnle rbx, rsp
cmovnle rsp, rbx
cmovnle rbp, rdx
cmovnle rsi, rcx
cmovnle rdi, rax

; ------------------------------------------------------------------------------
; opcode rd,md
; ------------------------------------------------------------------------------
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
cmovnle cx,  word  [rip + 0x13]
cmovnle edx, dword [rip + 0x14]
cmovnle rsi, qword [rip + 0x15]

cmovnle cx,  word  [rip + 0x1235]
cmovnle edx, dword [rip + 0x1236]
cmovnle rsi, qword [rip + 0x1237]

cmovnle cx,  word  [rip + 0x12345679]
cmovnle edx, dword [rip + 0x1234567a]
cmovnle rsi, qword [rip + 0x1234567b]

; [rip + base]
cmovnle cx,  word  [rbx]
cmovnle edx, dword [rcx]
cmovnle rsi, qword [rdx]

; [rip + base + disp8]
cmovnle cx,  word  [rbx + 0x13]
cmovnle edx, dword [rcx + 0x14]
cmovnle rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmovnle cx,  word  [rbx + 0x1235]
cmovnle edx, dword [rcx + 0x1236]
cmovnle rsi, qword [rdx + 0x1237]

cmovnle cx,  word  [rbx + 0x12345679]
cmovnle edx, dword [rcx + 0x1234567a]
cmovnle rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmovnle cx,  word  [rbx + rcx]
cmovnle edx, dword [rcx + rsi]
cmovnle rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmovnle cx,  word  [rbx + 4 * rcx]
cmovnle edx, dword [rcx + 8 * rsi]
cmovnle rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmovnle cx,  word  [rbx + rcx + 0x13]
cmovnle edx, dword [rcx + rsi + 0x14]
cmovnle rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmovnle cx,  word  [rbx + rcx + 0x1235]
cmovnle edx, dword [rcx + rsi + 0x1236]
cmovnle rsi, qword [rdx + rdi + 0x1237]

cmovnle cx,  word  [rbx + rcx + 0x12345679]
cmovnle edx, dword [rcx + rsi + 0x1234567a]
cmovnle rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmovnle cx,  word  [rbx + 4 * rcx + 0x13]
cmovnle edx, dword [rcx + 8 * rsi + 0x14]
cmovnle rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmovnle cx,  word  [rbx + 4 * rcx + 0x1235]
cmovnle edx, dword [rcx + 8 * rsi + 0x1236]
cmovnle rsi, qword [rdx + 8 * rdi + 0x1237]

cmovnle cx,  word  [rbx + 4 * rcx + 0x12345679]
cmovnle edx, dword [rcx + 8 * rsi + 0x1234567a]
cmovnle rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmovnle cx,  word  [4 * rcx]
cmovnle edx, dword [8 * rsi]
cmovnle rsi, qword [8 * rdi]

; [scale * index + disp8]
cmovnle cx,  word  [4 * rcx + 0x13]
cmovnle edx, dword [8 * rsi + 0x14]
cmovnle rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmovnle cx,  word  [4 * rcx + 0x1235]
cmovnle edx, dword [8 * rsi + 0x1236]
cmovnle rsi, qword [8 * rdi + 0x1237]

cmovnle cx,  word  [4 * rcx + 0x12345679]
cmovnle edx, dword [8 * rsi + 0x1234567a]
cmovnle rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmovnle ax, word [rbp]
cmovnle ax, word [rbp + 0x12]
cmovnle ax, word [rbp + 0x1234]
cmovnle ax, word [rbp + 0x12345678]

cmovnle eax, dword [4 * rbp]
cmovnle eax, dword [4 * rbp + 0x12]
cmovnle eax, dword [4 * rbp + 0x1234]
cmovnle eax, dword [4 * rbp + 0x12345678]

cmovnle rax, qword [rbx + 4 * rbp]
cmovnle rax, qword [rbx + 4 * rbp + 0x12]
cmovnle rax, qword [rbx + 4 * rbp + 0x1234]
cmovnle rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmovnle ax, word [rsp]
cmovnle ax, word [rsp + 0x12]
cmovnle ax, word [rsp + 0x1234]
cmovnle ax, word [rsp + 0x12345678]

cmovnle eax, dword [rsp + rax]
cmovnle eax, dword [rsp + rbp]
cmovnle eax, dword [rsp + 2*rbp]
cmovnle eax, dword [rsp + 4*rbp]
cmovnle eax, dword [rsp + 8*rbp]

; use each register as indirect.
cmovnle ax, word [rax]
cmovnle ax, word [rcx]
cmovnle ax, word [rdx]
cmovnle ax, word [rbx]
cmovnle ax, word [rsp]
cmovnle ax, word [rbp]
cmovnle ax, word [rsi]
cmovnle ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmovnle eax, dword [rax + 2*rax]
cmovnle eax, dword [rcx + 2*rcx]
cmovnle eax, dword [rdx + 2*rdx]
cmovnle eax, dword [rbx + 2*rbx]
cmovnle eax, dword [rbp + 2*rbp]
cmovnle eax, dword [rsi + 2*rsi]
cmovnle eax, dword [rdi + 2*rdi]

