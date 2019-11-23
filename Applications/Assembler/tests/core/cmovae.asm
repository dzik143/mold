use64
; ------------------------------------------------------------------------------
; opcode rd,rd
; ------------------------------------------------------------------------------
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovae ax, ax
cmovae ax, cx
cmovae ax, dx
cmovae ax, bx
cmovae ax, sp
cmovae ax, bp
cmovae ax, si
cmovae ax, di

cmovae ax, ax
cmovae cx, ax
cmovae dx, ax
cmovae bx, ax
cmovae sp, ax
cmovae bp, ax
cmovae si, ax
cmovae di, ax

cmovae ax, di
cmovae cx, si
cmovae dx, bp
cmovae bx, sp
cmovae sp, bx
cmovae bp, dx
cmovae si, cx
cmovae di, ax

; 32-bit registers
cmovae eax, eax
cmovae eax, ecx
cmovae eax, edx
cmovae eax, ebx
cmovae eax, esp
cmovae eax, ebp
cmovae eax, esi
cmovae eax, edi

cmovae eax, eax
cmovae ecx, eax
cmovae edx, eax
cmovae ebx, eax
cmovae esp, eax
cmovae ebp, eax
cmovae esi, eax
cmovae edi, eax

cmovae eax, edi
cmovae ecx, esi
cmovae edx, ebp
cmovae ebx, esp
cmovae esp, ebx
cmovae ebp, edx
cmovae esi, ecx
cmovae edi, eax

; 64-bit registers
cmovae rax, rax
cmovae rax, rcx
cmovae rax, rdx
cmovae rax, rbx
cmovae rax, rsp
cmovae rax, rbp
cmovae rax, rsi
cmovae rax, rdi

cmovae rax, rax
cmovae rcx, rax
cmovae rdx, rax
cmovae rbx, rax
cmovae rsp, rax
cmovae rbp, rax
cmovae rsi, rax
cmovae rdi, rax

cmovae rax, rdi
cmovae rcx, rsi
cmovae rdx, rbp
cmovae rbx, rsp
cmovae rsp, rbx
cmovae rbp, rdx
cmovae rsi, rcx
cmovae rdi, rax

; ------------------------------------------------------------------------------
; opcode rd,md
; ------------------------------------------------------------------------------
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
cmovae cx,  word  [rip + 0x13]
cmovae edx, dword [rip + 0x14]
cmovae rsi, qword [rip + 0x15]

cmovae cx,  word  [rip + 0x1235]
cmovae edx, dword [rip + 0x1236]
cmovae rsi, qword [rip + 0x1237]

cmovae cx,  word  [rip + 0x12345679]
cmovae edx, dword [rip + 0x1234567a]
cmovae rsi, qword [rip + 0x1234567b]

; [rip + base]
cmovae cx,  word  [rbx]
cmovae edx, dword [rcx]
cmovae rsi, qword [rdx]

; [rip + base + disp8]
cmovae cx,  word  [rbx + 0x13]
cmovae edx, dword [rcx + 0x14]
cmovae rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmovae cx,  word  [rbx + 0x1235]
cmovae edx, dword [rcx + 0x1236]
cmovae rsi, qword [rdx + 0x1237]

cmovae cx,  word  [rbx + 0x12345679]
cmovae edx, dword [rcx + 0x1234567a]
cmovae rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmovae cx,  word  [rbx + rcx]
cmovae edx, dword [rcx + rsi]
cmovae rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmovae cx,  word  [rbx + 4 * rcx]
cmovae edx, dword [rcx + 8 * rsi]
cmovae rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmovae cx,  word  [rbx + rcx + 0x13]
cmovae edx, dword [rcx + rsi + 0x14]
cmovae rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmovae cx,  word  [rbx + rcx + 0x1235]
cmovae edx, dword [rcx + rsi + 0x1236]
cmovae rsi, qword [rdx + rdi + 0x1237]

cmovae cx,  word  [rbx + rcx + 0x12345679]
cmovae edx, dword [rcx + rsi + 0x1234567a]
cmovae rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmovae cx,  word  [rbx + 4 * rcx + 0x13]
cmovae edx, dword [rcx + 8 * rsi + 0x14]
cmovae rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmovae cx,  word  [rbx + 4 * rcx + 0x1235]
cmovae edx, dword [rcx + 8 * rsi + 0x1236]
cmovae rsi, qword [rdx + 8 * rdi + 0x1237]

cmovae cx,  word  [rbx + 4 * rcx + 0x12345679]
cmovae edx, dword [rcx + 8 * rsi + 0x1234567a]
cmovae rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmovae cx,  word  [4 * rcx]
cmovae edx, dword [8 * rsi]
cmovae rsi, qword [8 * rdi]

; [scale * index + disp8]
cmovae cx,  word  [4 * rcx + 0x13]
cmovae edx, dword [8 * rsi + 0x14]
cmovae rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmovae cx,  word  [4 * rcx + 0x1235]
cmovae edx, dword [8 * rsi + 0x1236]
cmovae rsi, qword [8 * rdi + 0x1237]

cmovae cx,  word  [4 * rcx + 0x12345679]
cmovae edx, dword [8 * rsi + 0x1234567a]
cmovae rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmovae ax, word [rbp]
cmovae ax, word [rbp + 0x12]
cmovae ax, word [rbp + 0x1234]
cmovae ax, word [rbp + 0x12345678]

cmovae eax, dword [4 * rbp]
cmovae eax, dword [4 * rbp + 0x12]
cmovae eax, dword [4 * rbp + 0x1234]
cmovae eax, dword [4 * rbp + 0x12345678]

cmovae rax, qword [rbx + 4 * rbp]
cmovae rax, qword [rbx + 4 * rbp + 0x12]
cmovae rax, qword [rbx + 4 * rbp + 0x1234]
cmovae rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmovae ax, word [rsp]
cmovae ax, word [rsp + 0x12]
cmovae ax, word [rsp + 0x1234]
cmovae ax, word [rsp + 0x12345678]

cmovae eax, dword [rsp + rax]
cmovae eax, dword [rsp + rbp]
cmovae eax, dword [rsp + 2*rbp]
cmovae eax, dword [rsp + 4*rbp]
cmovae eax, dword [rsp + 8*rbp]

; use each register as indirect.
cmovae ax, word [rax]
cmovae ax, word [rcx]
cmovae ax, word [rdx]
cmovae ax, word [rbx]
cmovae ax, word [rsp]
cmovae ax, word [rbp]
cmovae ax, word [rsi]
cmovae ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmovae eax, dword [rax + 2*rax]
cmovae eax, dword [rcx + 2*rcx]
cmovae eax, dword [rdx + 2*rdx]
cmovae eax, dword [rbx + 2*rbx]
cmovae eax, dword [rbp + 2*rbp]
cmovae eax, dword [rsi + 2*rsi]
cmovae eax, dword [rdi + 2*rdi]

