use64
; ------------------------------------------------------------------------------
; opcode r,r
; ------------------------------------------------------------------------------
; 8-bit registers
xadd al, al
xadd al, cl
xadd al, dl
xadd al, bl
xadd al, ah
xadd al, ch
xadd al, dh
xadd al, bh

xadd al, al
xadd cl, al
xadd dl, al
xadd bl, al
xadd ah, al
xadd ch, al
xadd dh, al
xadd bh, al

xadd al, bh
xadd cl, dh
xadd dl, ch
xadd bl, ah
xadd ah, bl
xadd ch, dl
xadd dh, cl
xadd bh, al

; 16-bit registers
xadd ax, ax
xadd ax, cx
xadd ax, dx
xadd ax, bx
xadd ax, sp
xadd ax, bp
xadd ax, si
xadd ax, di

xadd ax, ax
xadd cx, ax
xadd dx, ax
xadd bx, ax
xadd sp, ax
xadd bp, ax
xadd si, ax
xadd di, ax

xadd ax, di
xadd cx, si
xadd dx, bp
xadd bx, sp
xadd sp, bx
xadd bp, dx
xadd si, cx
xadd di, ax

; 32-bit registers
xadd eax, eax
xadd eax, ecx
xadd eax, edx
xadd eax, ebx
xadd eax, esp
xadd eax, ebp
xadd eax, esi
xadd eax, edi

xadd eax, eax
xadd ecx, eax
xadd edx, eax
xadd ebx, eax
xadd esp, eax
xadd ebp, eax
xadd esi, eax
xadd edi, eax

xadd eax, edi
xadd ecx, esi
xadd edx, ebp
xadd ebx, esp
xadd esp, ebx
xadd ebp, edx
xadd esi, ecx
xadd edi, eax

; 64-bit registers
xadd rax, rax
xadd rax, rcx
xadd rax, rdx
xadd rax, rbx
xadd rax, rsp
xadd rax, rbp
xadd rax, rsi
xadd rax, rdi

xadd rax, rax
xadd rcx, rax
xadd rdx, rax
xadd rbx, rax
xadd rsp, rax
xadd rbp, rax
xadd rsi, rax
xadd rdi, rax

xadd rax, rdi
xadd rcx, rsi
xadd rdx, rbp
xadd rbx, rsp
xadd rsp, rbx
xadd rbp, rdx
xadd rsi, rcx
xadd rdi, rax

; ------------------------------------------------------------------------------
; opcode m,r
; ------------------------------------------------------------------------------
; [rip + disp32]
xadd byte  [rip + 0x12], bl
xadd word  [rip + 0x13], cx
xadd dword [rip + 0x14], edx
xadd qword [rip + 0x15], rsi

xadd byte  [rip + 0x1234], bl
xadd word  [rip + 0x1235], cx
xadd dword [rip + 0x1236], edx
xadd qword [rip + 0x1237], rsi

xadd byte  [rip + 0x12345678], bl
xadd word  [rip + 0x12345679], cx
xadd dword [rip + 0x1234567a], edx
xadd qword [rip + 0x1234567b], rsi

; [rip + base]
xadd byte  [rax], bl
xadd word  [rbx], cx
xadd dword [rcx], edx
xadd qword [rdx], rsi

; [rip + base + disp8]
xadd byte  [rax + 0x12], bl
xadd word  [rbx + 0x13], cx
xadd dword [rcx + 0x14], edx
xadd qword [rdx + 0x15], rsi

; [rip + base + disp32]
xadd byte  [rax + 0x1234], bl
xadd word  [rbx + 0x1235], cx
xadd dword [rcx + 0x1236], edx
xadd qword [rdx + 0x1237], rsi

xadd byte  [rax + 0x12345678], bl
xadd word  [rbx + 0x12345679], cx
xadd dword [rcx + 0x1234567a], edx
xadd qword [rdx + 0x1234567b], rsi

; [rip + base + index]
xadd byte  [rax + rbx], bl
xadd word  [rbx + rcx], cx
xadd dword [rcx + rsi], edx
xadd qword [rdx + rdi], rsi

; [rip + base + scale * index]
xadd byte  [rax + 2 * rbx], bl
xadd word  [rbx + 4 * rcx], cx
xadd dword [rcx + 8 * rsi], edx
xadd qword [rdx + 8 * rdi], rsi

; [rip + base + index + disp8]
xadd byte  [rax + rbx + 0x12], bl
xadd word  [rbx + rcx + 0x13], cx
xadd dword [rcx + rsi + 0x14], edx
xadd qword [rdx + rdi + 0x15], rsi

; [rip + base + index + disp32]
xadd byte  [rax + rbx + 0x1234], bl
xadd word  [rbx + rcx + 0x1235], cx
xadd dword [rcx + rsi + 0x1236], edx
xadd qword [rdx + rdi + 0x1237], rsi

xadd byte  [rax + rbx + 0x12345678], bl
xadd word  [rbx + rcx + 0x12345679], cx
xadd dword [rcx + rsi + 0x1234567a], edx
xadd qword [rdx + rdi + 0x1234567b], rsi

; [rip + base + scale * index + disp8]
xadd byte  [rax + 2 * rbx + 0x12], bl
xadd word  [rbx + 4 * rcx + 0x13], cx
xadd dword [rcx + 8 * rsi + 0x14], edx
xadd qword [rdx + 8 * rdi + 0x15], rsi

; [rip + base + scale * index + disp32]
xadd byte  [rax + 2 * rbx + 0x1234], bl
xadd word  [rbx + 4 * rcx + 0x1235], cx
xadd dword [rcx + 8 * rsi + 0x1236], edx
xadd qword [rdx + 8 * rdi + 0x1237], rsi

xadd byte  [rax + 2 * rbx + 0x12345678], bl
xadd word  [rbx + 4 * rcx + 0x12345679], cx
xadd dword [rcx + 8 * rsi + 0x1234567a], edx
xadd qword [rdx + 8 * rdi + 0x1234567b], rsi

; [scale * index]
xadd byte  [2 * rbx], bl
xadd word  [4 * rcx], cx
xadd dword [8 * rsi], edx
xadd qword [8 * rdi], rsi

; [scale * index + disp8]
xadd byte  [2 * rbx + 0x12], bl
xadd word  [4 * rcx + 0x13], cx
xadd dword [8 * rsi + 0x14], edx
xadd qword [8 * rdi + 0x15], rsi

; [scale * index + disp32]
xadd byte  [2 * rbx + 0x1234], bl
xadd word  [4 * rcx + 0x1235], cx
xadd dword [8 * rsi + 0x1236], edx
xadd qword [8 * rdi + 0x1237], rsi

xadd byte  [2 * rbx + 0x12345678], bl
xadd word  [4 * rcx + 0x12345679], cx
xadd dword [8 * rsi + 0x1234567a], edx
xadd qword [8 * rdi + 0x1234567b], rsi

; Use rbp as base or index.
xadd byte [rbp], al
xadd byte [rbp + 0x12], al
xadd byte [rbp + 0x1234], al
xadd byte [rbp + 0x12345678], al

xadd byte [4 * rbp], al
xadd byte [4 * rbp + 0x12], al
xadd byte [4 * rbp + 0x1234], al
xadd byte [4 * rbp + 0x12345678], al

xadd byte [rbx + 4 * rbp], al
xadd byte [rbx + 4 * rbp + 0x12], al
xadd byte [rbx + 4 * rbp + 0x1234], al
xadd byte [rbx + 4 * rbp + 0x12345678], al

; Use rsp as base.
xadd byte [rsp], al
xadd byte [rsp + 0x12], al
xadd byte [rsp + 0x1234], al
xadd byte [rsp + 0x12345678], al

xadd byte [rsp + rax], al
xadd byte [rsp + rbp], al
xadd byte [rsp + 2*rbp], al
xadd byte [rsp + 4*rbp], al
xadd byte [rsp + 8*rbp], al

; use each register as indirect.
xadd byte [rax], al
xadd byte [rcx], al
xadd byte [rdx], al
xadd byte [rbx], al
xadd byte [rsp], al
xadd byte [rbp], al
xadd byte [rsi], al
xadd byte [rdi], al

; use each register as indirect.
; rsp is forbidden as index
xadd byte [rax + 2*rax], al
xadd byte [rcx + 2*rcx], al
xadd byte [rdx + 2*rdx], al
xadd byte [rbx + 2*rbx], al
xadd byte [rbp + 2*rbp], al
xadd byte [rsi + 2*rsi], al
xadd byte [rdi + 2*rdi], al

