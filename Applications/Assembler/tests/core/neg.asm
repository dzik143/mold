use64
; ------------------------------------------------------------------------------
; opcode r
; ------------------------------------------------------------------------------
; neg r8
neg al
neg cl
neg dl
neg bl
neg ah
neg ch
neg dh
neg bh

; neg r16
neg ax
neg cx
neg dx
neg bx
neg sp
neg bp
neg si
neg di

; neg r32
neg eax
neg ecx
neg edx
neg ebx
neg esp
neg ebp
neg esi
neg edi

; neg r64
neg rax
neg rcx
neg rdx
neg rbx
neg rsp
neg rbp
neg rsi
neg rdi

; ------------------------------------------------------------------------------
; opcode m
; ------------------------------------------------------------------------------
; [rip + disp32]
neg byte  [rip + 0x12]
neg word  [rip + 0x13]
neg dword [rip + 0x14]
neg qword [rip + 0x15]

neg byte  [rip + 0x1234]
neg word  [rip + 0x1235]
neg dword [rip + 0x1236]
neg qword [rip + 0x1237]

neg byte  [rip + 0x12345678]
neg word  [rip + 0x12345679]
neg dword [rip + 0x1234567a]
neg qword [rip + 0x1234567b]

; [rip + base]
neg byte  [rax]
neg word  [rbx]
neg dword [rcx]
neg qword [rdx]

; [rip + base + disp8]
neg byte  [rax + 0x12]
neg word  [rbx + 0x13]
neg dword [rcx + 0x14]
neg qword [rdx + 0x15]

; [rip + base + disp32]
neg byte  [rax + 0x1234]
neg word  [rbx + 0x1235]
neg dword [rcx + 0x1236]
neg qword [rdx + 0x1237]

neg byte  [rax + 0x12345678]
neg word  [rbx + 0x12345679]
neg dword [rcx + 0x1234567a]
neg qword [rdx + 0x1234567b]

; [rip + base + index]
neg byte  [rax + rbx]
neg word  [rbx + rcx]
neg dword [rcx + rsi]
neg qword [rdx + rdi]

; [rip + base + scale * index]
neg byte  [rax + 2 * rbx]
neg word  [rbx + 4 * rcx]
neg dword [rcx + 8 * rsi]
neg qword [rdx + 8 * rdi]

; [rip + base + index + disp8]
neg byte  [rax + rbx + 0x12]
neg word  [rbx + rcx + 0x13]
neg dword [rcx + rsi + 0x14]
neg qword [rdx + rdi + 0x15]

; [rip + base + index + disp32]
neg byte  [rax + rbx + 0x1234]
neg word  [rbx + rcx + 0x1235]
neg dword [rcx + rsi + 0x1236]
neg qword [rdx + rdi + 0x1237]

neg byte  [rax + rbx + 0x12345678]
neg word  [rbx + rcx + 0x12345679]
neg dword [rcx + rsi + 0x1234567a]
neg qword [rdx + rdi + 0x1234567b]

; [rip + base + scale * index + disp8]
neg byte  [rax + 2 * rbx + 0x12]
neg word  [rbx + 4 * rcx + 0x13]
neg dword [rcx + 8 * rsi + 0x14]
neg qword [rdx + 8 * rdi + 0x15]

; [rip + base + scale * index + disp32]
neg byte  [rax + 2 * rbx + 0x1234]
neg word  [rbx + 4 * rcx + 0x1235]
neg dword [rcx + 8 * rsi + 0x1236]
neg qword [rdx + 8 * rdi + 0x1237]

neg byte  [rax + 2 * rbx + 0x12345678]
neg word  [rbx + 4 * rcx + 0x12345679]
neg dword [rcx + 8 * rsi + 0x1234567a]
neg qword [rdx + 8 * rdi + 0x1234567b]

; [scale * index]
neg byte  [2 * rbx]
neg word  [4 * rcx]
neg dword [8 * rsi]
neg qword [8 * rdi]

; [scale * index + disp8]
neg byte  [2 * rbx + 0x12]
neg word  [4 * rcx + 0x13]
neg dword [8 * rsi + 0x14]
neg qword [8 * rdi + 0x15]

; [scale * index + disp32]
neg byte  [2 * rbx + 0x1234]
neg word  [4 * rcx + 0x1235]
neg dword [8 * rsi + 0x1236]
neg qword [8 * rdi + 0x1237]

neg byte  [2 * rbx + 0x12345678]
neg word  [4 * rcx + 0x12345679]
neg dword [8 * rsi + 0x1234567a]
neg qword [8 * rdi + 0x1234567b]

; Use rbp as base or index.
neg byte [rbp]
neg byte [rbp + 0x12]
neg byte [rbp + 0x1234]
neg byte [rbp + 0x12345678]

neg byte [4 * rbp]
neg byte [4 * rbp + 0x12]
neg byte [4 * rbp + 0x1234]
neg byte [4 * rbp + 0x12345678]

neg byte [rbx + 4 * rbp]
neg byte [rbx + 4 * rbp + 0x12]
neg byte [rbx + 4 * rbp + 0x1234]
neg byte [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
neg byte [rsp]
neg byte [rsp + 0x12]
neg byte [rsp + 0x1234]
neg byte [rsp + 0x12345678]

neg byte [rsp + rax]
neg byte [rsp + rbp]
neg byte [rsp + 2*rbp]
neg byte [rsp + 4*rbp]
neg byte [rsp + 8*rbp]

; use each register as indirect.
neg byte [rax]
neg byte [rcx]
neg byte [rdx]
neg byte [rbx]
neg byte [rsp]
neg byte [rbp]
neg byte [rsi]
neg byte [rdi]

; use each register as indirect.
; rsp is forbidden as index
neg byte [rax + 2*rax]
neg byte [rcx + 2*rcx]
neg byte [rdx + 2*rdx]
neg byte [rbx + 2*rbx]
neg byte [rbp + 2*rbp]
neg byte [rsi + 2*rsi]
neg byte [rdi + 2*rdi]

