use64

; 8-bit registers
sub al, al
sub al, cl
sub al, dl
sub al, bl
sub al, ah
sub al, ch
sub al, dh
sub al, bh

sub al, al
sub cl, al
sub dl, al
sub bl, al
sub ah, al
sub ch, al
sub dh, al
sub bh, al

sub al, bh
sub cl, dh
sub dl, ch
sub bl, ah
sub ah, bl
sub ch, dl
sub dh, cl
sub bh, al

; 16-bit registers
sub ax, ax
sub ax, cx
sub ax, dx
sub ax, bx
sub ax, sp
sub ax, bp
sub ax, si
sub ax, di

sub ax, ax
sub cx, ax
sub dx, ax
sub bx, ax
sub sp, ax
sub bp, ax
sub si, ax
sub di, ax

sub ax, di
sub cx, si
sub dx, bp
sub bx, sp
sub sp, bx
sub bp, dx
sub si, cx
sub di, ax

; 32-bit registers
sub eax, eax
sub eax, ecx
sub eax, edx
sub eax, ebx
sub eax, esp
sub eax, ebp
sub eax, esi
sub eax, edi

sub eax, eax
sub ecx, eax
sub edx, eax
sub ebx, eax
sub esp, eax
sub ebp, eax
sub esi, eax
sub edi, eax

sub eax, edi
sub ecx, esi
sub edx, ebp
sub ebx, esp
sub esp, ebx
sub ebp, edx
sub esi, ecx
sub edi, eax

; 64-bit registers
sub rax, rax
sub rax, rcx
sub rax, rdx
sub rax, rbx
sub rax, rsp
sub rax, rbp
sub rax, rsi
sub rax, rdi

sub rax, rax
sub rcx, rax
sub rdx, rax
sub rbx, rax
sub rsp, rax
sub rbp, rax
sub rsi, rax
sub rdi, rax

sub rax, rdi
sub rcx, rsi
sub rdx, rbp
sub rbx, rsp
sub rsp, rbx
sub rbp, rdx
sub rsi, rcx
sub rdi, rax
