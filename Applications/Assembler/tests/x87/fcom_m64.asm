use64

; [rip + disp32]
fcom qword [rip + 0x13]
fcom qword [rip + 0x1235]
fcom qword [rip + 0x12345679]

; [rip + base]
fcom qword  [rbx]

; [rip + base + disp8]
fcom qword [rcx + 0x14]
fcom qword [rdx + 0x15]

; [rip + base + disp32]
fcom qword [rbx + 0x1235]
fcom qword [rbx + 0x12345679]

; [rip + base + index]
fcom qword [rbx + rcx]

; [rip + base + scale * index]
fcom qword [rbx + 4 * rcx]

; [rip + base + index + disp8]
fcom qword [rbx + rcx + 0x13]

; [rip + base + index + disp32]
fcom qword [rbx + rcx + 0x1235]
fcom qword [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
fcom qword [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
fcom qword [rbx + 4 * rcx + 0x1235]
fcom qword [rbx + 8 * rcx + 0x12345679]

; [scale * index]
fcom qword [4 * rcx]

; [scale * index + disp8]
fcom qword [4 * rcx + 0x13]

; [scale * index + disp32]
fcom qword [4 * rcx + 0x1235]
fcom qword [4 * rcx + 0x12345679]

; Use rbp as base or index.
fcom qword [rbp]
fcom qword [rbp + 0x12]
fcom qword [rbp + 0x1234]
fcom qword [rbp + 0x12345678]

fcom qword [4 * rbp]
fcom qword [4 * rbp + 0x12]
fcom qword [4 * rbp + 0x1234]
fcom qword [4 * rbp + 0x12345678]

fcom qword [rbx + 4 * rbp]
fcom qword [rbx + 4 * rbp + 0x12]
fcom qword [rbx + 4 * rbp + 0x1234]
fcom qword [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
fcom qword [rsp]
fcom qword [rsp + 0x12]
fcom qword [rsp + 0x1234]
fcom qword [rsp + 0x12345678]

fcom qword [rsp + rax]
fcom qword [rsp + rbp]
fcom qword [rsp + 2*rbp]
fcom qword [rsp + 4*rbp]
fcom qword [rsp + 8*rbp]

; use each register as indirect.
fcom qword [rax]
fcom qword [rcx]
fcom qword [rdx]
fcom qword [rbx]
fcom qword [rsp]
fcom qword [rbp]
fcom qword [rsi]
fcom qword [rdi]

; use each register as indirect.
; rsp is forbidden as index
fcom qword [rax + 2*rax]
fcom qword [rcx + 2*rcx]
fcom qword [rdx + 2*rdx]
fcom qword [rbx + 2*rbx]
fcom qword [rbp + 2*rbp]
fcom qword [rsi + 2*rsi]
fcom qword [rdi + 2*rdi]
