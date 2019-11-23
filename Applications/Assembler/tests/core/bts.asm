use64
; ------------------------------------------------------------------------------
; opcode rd,rd
; ------------------------------------------------------------------------------
; r,r without 8-bit combinations:
; r16, r16
; r32, r32
; r64, r64

; 16-bit registers
bts ax, ax
bts ax, cx
bts ax, dx
bts ax, bx
bts ax, sp
bts ax, bp
bts ax, si
bts ax, di

bts ax, ax
bts cx, ax
bts dx, ax
bts bx, ax
bts sp, ax
bts bp, ax
bts si, ax
bts di, ax

bts ax, di
bts cx, si
bts dx, bp
bts bx, sp
bts sp, bx
bts bp, dx
bts si, cx
bts di, ax

; 32-bit registers
bts eax, eax
bts eax, ecx
bts eax, edx
bts eax, ebx
bts eax, esp
bts eax, ebp
bts eax, esi
bts eax, edi

bts eax, eax
bts ecx, eax
bts edx, eax
bts ebx, eax
bts esp, eax
bts ebp, eax
bts esi, eax
bts edi, eax

bts eax, edi
bts ecx, esi
bts edx, ebp
bts ebx, esp
bts esp, ebx
bts ebp, edx
bts esi, ecx
bts edi, eax

; 64-bit registers
bts rax, rax
bts rax, rcx
bts rax, rdx
bts rax, rbx
bts rax, rsp
bts rax, rbp
bts rax, rsi
bts rax, rdi

bts rax, rax
bts rcx, rax
bts rdx, rax
bts rbx, rax
bts rsp, rax
bts rbp, rax
bts rsi, rax
bts rdi, rax

bts rax, rdi
bts rcx, rsi
bts rdx, rbp
bts rbx, rsp
bts rsp, rbx
bts rbp, rdx
bts rsi, rcx
bts rdi, rax

; ------------------------------------------------------------------------------
; opcode md,rd
; ------------------------------------------------------------------------------
; m,r without 8-bit combinations:
; m16, r16
; m32, r32
; m64, r64

; [rip + disp32]
bts word  [rip + 0x13], cx
bts dword [rip + 0x14], edx
bts qword [rip + 0x15], rsi

bts word  [rip + 0x1235], cx
bts dword [rip + 0x1236], edx
bts qword [rip + 0x1237], rsi

bts word  [rip + 0x12345679], cx
bts dword [rip + 0x1234567a], edx
bts qword [rip + 0x1234567b], rsi

; [rip + base]
bts word  [rbx], cx
bts dword [rcx], edx
bts qword [rdx], rsi

; [rip + base + disp8]
bts word  [rbx + 0x13], cx
bts dword [rcx + 0x14], edx
bts qword [rdx + 0x15], rsi

; [rip + base + disp32]
bts word  [rbx + 0x1235], cx
bts dword [rcx + 0x1236], edx
bts qword [rdx + 0x1237], rsi

bts word  [rbx + 0x12345679], cx
bts dword [rcx + 0x1234567a], edx
bts qword [rdx + 0x1234567b], rsi

; [rip + base + index]
bts word  [rbx + rcx], cx
bts dword [rcx + rsi], edx
bts qword [rdx + rdi], rsi

; [rip + base + scale * index]
bts word  [rbx + 4 * rcx], cx
bts dword [rcx + 8 * rsi], edx
bts qword [rdx + 8 * rdi], rsi

; [rip + base + index + disp8]
bts word  [rbx + rcx + 0x13], cx
bts dword [rcx + rsi + 0x14], edx
bts qword [rdx + rdi + 0x15], rsi

; [rip + base + index + disp32]
bts word  [rbx + rcx + 0x1235], cx
bts dword [rcx + rsi + 0x1236], edx
bts qword [rdx + rdi + 0x1237], rsi

bts word  [rbx + rcx + 0x12345679], cx
bts dword [rcx + rsi + 0x1234567a], edx
bts qword [rdx + rdi + 0x1234567b], rsi

; [rip + base + scale * index + disp8]
bts word  [rbx + 4 * rcx + 0x13], cx
bts dword [rcx + 8 * rsi + 0x14], edx
bts qword [rdx + 8 * rdi + 0x15], rsi

; [rip + base + scale * index + disp32]
bts word  [rbx + 4 * rcx + 0x1235], cx
bts dword [rcx + 8 * rsi + 0x1236], edx
bts qword [rdx + 8 * rdi + 0x1237], rsi

bts word  [rbx + 4 * rcx + 0x12345679], cx
bts dword [rcx + 8 * rsi + 0x1234567a], edx
bts qword [rdx + 8 * rdi + 0x1234567b], rsi

; [scale * index]
bts word  [4 * rcx], cx
bts dword [8 * rsi], edx
bts qword [8 * rdi], rsi

; [scale * index + disp8]
bts word  [4 * rcx + 0x13], cx
bts dword [8 * rsi + 0x14], edx
bts qword [8 * rdi + 0x15], rsi

; [scale * index + disp32]
bts word  [4 * rcx + 0x1235], cx
bts dword [8 * rsi + 0x1236], edx
bts qword [8 * rdi + 0x1237], rsi

bts word  [4 * rcx + 0x12345679], cx
bts dword [8 * rsi + 0x1234567a], edx
bts qword [8 * rdi + 0x1234567b], rsi

; Use rbp as base or index.
bts word [rbp], ax
bts word [rbp + 0x12], ax
bts word [rbp + 0x1234], ax
bts word [rbp + 0x12345678], ax

bts dword [4 * rbp], eax
bts dword [4 * rbp + 0x12], eax
bts dword [4 * rbp + 0x1234], eax
bts dword [4 * rbp + 0x12345678], eax

bts qword [rbx + 4 * rbp], rax
bts qword [rbx + 4 * rbp + 0x12], rax
bts qword [rbx + 4 * rbp + 0x1234], rax
bts qword [rbx + 4 * rbp + 0x12345678], rax

; Use rsp as base.
bts word [rsp], ax
bts word [rsp + 0x12], ax
bts word [rsp + 0x1234], ax
bts word [rsp + 0x12345678], ax

bts dword [rsp + rax], eax
bts dword [rsp + rbp], eax
bts dword [rsp + 2*rbp], eax
bts dword [rsp + 4*rbp], eax
bts dword [rsp + 8*rbp], eax

; use each register as indirect.
bts dword [rax], eax
bts dword [rcx], eax
bts dword [rdx], eax
bts dword [rbx], eax
bts dword [rsp], eax
bts dword [rbp], eax
bts dword [rsi], eax
bts dword [rdi], eax

; use each register as indirect.
; rsp is forbidden as index
bts qword [rax + 2*rax], rax
bts qword [rcx + 2*rcx], rax
bts qword [rdx + 2*rdx], rax
bts qword [rbx + 2*rbx], rax
bts qword [rbp + 2*rbp], rax
bts qword [rsi + 2*rsi], rax
bts qword [rdi + 2*rdi], rax

