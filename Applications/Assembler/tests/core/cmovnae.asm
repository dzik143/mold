use64
; ------------------------------------------------------------------------------
; opcode rd,rd
; ------------------------------------------------------------------------------
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
cmovnae ax, ax
cmovnae ax, cx
cmovnae ax, dx
cmovnae ax, bx
cmovnae ax, sp
cmovnae ax, bp
cmovnae ax, si
cmovnae ax, di

cmovnae ax, ax
cmovnae cx, ax
cmovnae dx, ax
cmovnae bx, ax
cmovnae sp, ax
cmovnae bp, ax
cmovnae si, ax
cmovnae di, ax

cmovnae ax, di
cmovnae cx, si
cmovnae dx, bp
cmovnae bx, sp
cmovnae sp, bx
cmovnae bp, dx
cmovnae si, cx
cmovnae di, ax

; 32-bit registers
cmovnae eax, eax
cmovnae eax, ecx
cmovnae eax, edx
cmovnae eax, ebx
cmovnae eax, esp
cmovnae eax, ebp
cmovnae eax, esi
cmovnae eax, edi

cmovnae eax, eax
cmovnae ecx, eax
cmovnae edx, eax
cmovnae ebx, eax
cmovnae esp, eax
cmovnae ebp, eax
cmovnae esi, eax
cmovnae edi, eax

cmovnae eax, edi
cmovnae ecx, esi
cmovnae edx, ebp
cmovnae ebx, esp
cmovnae esp, ebx
cmovnae ebp, edx
cmovnae esi, ecx
cmovnae edi, eax

; 64-bit registers
cmovnae rax, rax
cmovnae rax, rcx
cmovnae rax, rdx
cmovnae rax, rbx
cmovnae rax, rsp
cmovnae rax, rbp
cmovnae rax, rsi
cmovnae rax, rdi

cmovnae rax, rax
cmovnae rcx, rax
cmovnae rdx, rax
cmovnae rbx, rax
cmovnae rsp, rax
cmovnae rbp, rax
cmovnae rsi, rax
cmovnae rdi, rax

cmovnae rax, rdi
cmovnae rcx, rsi
cmovnae rdx, rbp
cmovnae rbx, rsp
cmovnae rsp, rbx
cmovnae rbp, rdx
cmovnae rsi, rcx
cmovnae rdi, rax

; ------------------------------------------------------------------------------
; opcode rd,md
; ------------------------------------------------------------------------------
; r,m without 8-bit combinations:
; r16, m16
; r32, m32
; r64, m64

; [rip + disp32]
cmovnae cx,  word  [rip + 0x13]
cmovnae edx, dword [rip + 0x14]
cmovnae rsi, qword [rip + 0x15]

cmovnae cx,  word  [rip + 0x1235]
cmovnae edx, dword [rip + 0x1236]
cmovnae rsi, qword [rip + 0x1237]

cmovnae cx,  word  [rip + 0x12345679]
cmovnae edx, dword [rip + 0x1234567a]
cmovnae rsi, qword [rip + 0x1234567b]

; [rip + base]
cmovnae cx,  word  [rbx]
cmovnae edx, dword [rcx]
cmovnae rsi, qword [rdx]

; [rip + base + disp8]
cmovnae cx,  word  [rbx + 0x13]
cmovnae edx, dword [rcx + 0x14]
cmovnae rsi, qword [rdx + 0x15]

; [rip + base + disp32]
cmovnae cx,  word  [rbx + 0x1235]
cmovnae edx, dword [rcx + 0x1236]
cmovnae rsi, qword [rdx + 0x1237]

cmovnae cx,  word  [rbx + 0x12345679]
cmovnae edx, dword [rcx + 0x1234567a]
cmovnae rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
cmovnae cx,  word  [rbx + rcx]
cmovnae edx, dword [rcx + rsi]
cmovnae rsi, qword [rdx + rdi]

; [rip + base + scale * index]
cmovnae cx,  word  [rbx + 4 * rcx]
cmovnae edx, dword [rcx + 8 * rsi]
cmovnae rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
cmovnae cx,  word  [rbx + rcx + 0x13]
cmovnae edx, dword [rcx + rsi + 0x14]
cmovnae rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
cmovnae cx,  word  [rbx + rcx + 0x1235]
cmovnae edx, dword [rcx + rsi + 0x1236]
cmovnae rsi, qword [rdx + rdi + 0x1237]

cmovnae cx,  word  [rbx + rcx + 0x12345679]
cmovnae edx, dword [rcx + rsi + 0x1234567a]
cmovnae rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
cmovnae cx,  word  [rbx + 4 * rcx + 0x13]
cmovnae edx, dword [rcx + 8 * rsi + 0x14]
cmovnae rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
cmovnae cx,  word  [rbx + 4 * rcx + 0x1235]
cmovnae edx, dword [rcx + 8 * rsi + 0x1236]
cmovnae rsi, qword [rdx + 8 * rdi + 0x1237]

cmovnae cx,  word  [rbx + 4 * rcx + 0x12345679]
cmovnae edx, dword [rcx + 8 * rsi + 0x1234567a]
cmovnae rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
cmovnae cx,  word  [4 * rcx]
cmovnae edx, dword [8 * rsi]
cmovnae rsi, qword [8 * rdi]

; [scale * index + disp8]
cmovnae cx,  word  [4 * rcx + 0x13]
cmovnae edx, dword [8 * rsi + 0x14]
cmovnae rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
cmovnae cx,  word  [4 * rcx + 0x1235]
cmovnae edx, dword [8 * rsi + 0x1236]
cmovnae rsi, qword [8 * rdi + 0x1237]

cmovnae cx,  word  [4 * rcx + 0x12345679]
cmovnae edx, dword [8 * rsi + 0x1234567a]
cmovnae rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
cmovnae ax, word [rbp]
cmovnae ax, word [rbp + 0x12]
cmovnae ax, word [rbp + 0x1234]
cmovnae ax, word [rbp + 0x12345678]

cmovnae eax, dword [4 * rbp]
cmovnae eax, dword [4 * rbp + 0x12]
cmovnae eax, dword [4 * rbp + 0x1234]
cmovnae eax, dword [4 * rbp + 0x12345678]

cmovnae rax, qword [rbx + 4 * rbp]
cmovnae rax, qword [rbx + 4 * rbp + 0x12]
cmovnae rax, qword [rbx + 4 * rbp + 0x1234]
cmovnae rax, qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
cmovnae ax, word [rsp]
cmovnae ax, word [rsp + 0x12]
cmovnae ax, word [rsp + 0x1234]
cmovnae ax, word [rsp + 0x12345678]

cmovnae eax, dword [rsp + rax]
cmovnae eax, dword [rsp + rbp]
cmovnae eax, dword [rsp + 2*rbp]
cmovnae eax, dword [rsp + 4*rbp]
cmovnae eax, dword [rsp + 8*rbp]

; use each register as indirect.
cmovnae ax, word [rax]
cmovnae ax, word [rcx]
cmovnae ax, word [rdx]
cmovnae ax, word [rbx]
cmovnae ax, word [rsp]
cmovnae ax, word [rbp]
cmovnae ax, word [rsi]
cmovnae ax, word [rdi]

; use each register as indirect.
; rsp is forbidden as index
cmovnae eax, dword [rax + 2*rax]
cmovnae eax, dword [rcx + 2*rcx]
cmovnae eax, dword [rdx + 2*rdx]
cmovnae eax, dword [rbx + 2*rbx]
cmovnae eax, dword [rbp + 2*rbp]
cmovnae eax, dword [rsi + 2*rsi]
cmovnae eax, dword [rdi + 2*rdi]

