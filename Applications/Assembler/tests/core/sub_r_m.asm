use64

; [rip + disp32]
sub bl,  byte  [rip + 0x12]
sub cx,  word  [rip + 0x13]
sub edx, dword [rip + 0x14]
sub rsi, qword [rip + 0x15]

sub bl,  byte  [rip + 0x1234]
sub cx,  word  [rip + 0x1235]
sub edx, dword [rip + 0x1236]
sub rsi, qword [rip + 0x1237]

sub bl,  byte  [rip + 0x12345678]
sub cx,  word  [rip + 0x12345679]
sub edx, dword [rip + 0x1234567a]
sub rsi, qword [rip + 0x1234567b]

; [rip + base]
sub bl,  byte  [rax]
sub cx,  word  [rbx]
sub edx, dword [rcx]
sub rsi, qword [rdx]

; [rip + base + disp8]
sub bl,  byte  [rax + 0x12]
sub cx,  word  [rbx + 0x13]
sub edx, dword [rcx + 0x14]
sub rsi, qword [rdx + 0x15]

; [rip + base + disp32]
sub bl,  byte  [rax + 0x1234]
sub cx,  word  [rbx + 0x1235]
sub edx, dword [rcx + 0x1236]
sub rsi, qword [rdx + 0x1237]

sub bl,  byte  [rax + 0x12345678]
sub cx,  word  [rbx + 0x12345679]
sub edx, dword [rcx + 0x1234567a]
sub rsi, qword [rdx + 0x1234567b]

; [rip + base + index]
sub bl,  byte  [rax + rbx]
sub cx,  word  [rbx + rcx]
sub edx, dword [rcx + rsi]
sub rsi, qword [rdx + rdi]

; [rip + base + scale * index]
sub bl,  byte  [rax + 2 * rbx]
sub cx,  word  [rbx + 4 * rcx]
sub edx, dword [rcx + 8 * rsi]
sub rsi, qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
sub bl,  byte  [rax + rbx + 0x12]
sub cx,  word  [rbx + rcx + 0x13]
sub edx, dword [rcx + rsi + 0x14]
sub rsi, qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
sub bl,  byte  [rax + rbx + 0x1234]
sub cx,  word  [rbx + rcx + 0x1235]
sub edx, dword [rcx + rsi + 0x1236]
sub rsi, qword [rdx + rdi + 0x1237]

sub bl,  byte  [rax + rbx + 0x12345678]
sub cx,  word  [rbx + rcx + 0x12345679]
sub edx, dword [rcx + rsi + 0x1234567a]
sub rsi, qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
sub bl,  byte  [rax + 2 * rbx + 0x12]
sub cx,  word  [rbx + 4 * rcx + 0x13]
sub edx, dword [rcx + 8 * rsi + 0x14]
sub rsi, qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
sub bl,  byte  [rax + 2 * rbx + 0x1234]
sub cx,  word  [rbx + 4 * rcx + 0x1235]
sub edx, dword [rcx + 8 * rsi + 0x1236]
sub rsi, qword [rdx + 8 * rdi + 0x1237]

sub bl,  byte  [rax + 2 * rbx + 0x12345678]
sub cx,  word  [rbx + 4 * rcx + 0x12345679]
sub edx, dword [rcx + 8 * rsi + 0x1234567a]
sub rsi, qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
sub bl,  byte  [2 * rbx]
sub cx,  word  [4 * rcx]
sub edx, dword [8 * rsi]
sub rsi, qword [8 * rdi]

; [scale * index + disp8]
sub bl,  byte  [2 * rbx + 0x12]
sub cx,  word  [4 * rcx + 0x13]
sub edx, dword [8 * rsi + 0x14]
sub rsi, qword [8 * rdi + 0x15]

; [scale * index + disp32]
sub bl,  byte  [2 * rbx + 0x1234]
sub cx,  word  [4 * rcx + 0x1235]
sub edx, dword [8 * rsi + 0x1236]
sub rsi, qword [8 * rdi + 0x1237]

sub bl,  byte  [2 * rbx + 0x12345678]
sub cx,  word  [4 * rcx + 0x12345679]
sub edx, dword [8 * rsi + 0x1234567a]
sub rsi, qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
sub al, byte [rbp]
sub al, byte [rbp + 0x12]
sub al, byte [rbp + 0x1234]
sub al, byte [rbp + 0x12345678]

sub al, byte [4 * rbp]
sub al, byte [4 * rbp + 0x12]
sub al, byte [4 * rbp + 0x1234]
sub al, byte [4 * rbp + 0x12345678]

sub al, byte [rbx + 4 * rbp]
sub al, byte [rbx + 4 * rbp + 0x12]
sub al, byte [rbx + 4 * rbp + 0x1234]
sub al, byte [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
sub al, byte [rsp]
sub al, byte [rsp + 0x12]
sub al, byte [rsp + 0x1234]
sub al, byte [rsp + 0x12345678]

sub al, byte [rsp + rax]
sub al, byte [rsp + rbp]
sub al, byte [rsp + 2*rbp]
sub al, byte [rsp + 4*rbp]
sub al, byte [rsp + 8*rbp]

; use each register as indirect.
sub al, byte [rax]
sub al, byte [rcx]
sub al, byte [rdx]
sub al, byte [rbx]
sub al, byte [rsp]
sub al, byte [rbp]
sub al, byte [rsi]
sub al, byte [rdi]

; use each register as indirect.
; rsp is forbidden as index
sub al, byte [rax + 2*rax]
sub al, byte [rcx + 2*rcx]
sub al, byte [rdx + 2*rdx]
sub al, byte [rbx + 2*rbx]
sub al, byte [rbp + 2*rbp]
sub al, byte [rsi + 2*rsi]
sub al, byte [rdi + 2*rdi]
