; [rip + disp32]
byte [rip + 0x13]
byte [rip + 0x1235]
byte [rip + 0x12345679]

; [rip + base]
byte  [rbx]

; [rip + base + disp8]
byte [rcx + 0x14]
byte [rdx + 0x15]

; [rip + base + disp32]
byte [rbx + 0x1235]
byte [rbx + 0x12345679]

; [rip + base + index]
byte [rbx + rcx]

; [rip + base + scale * index]
byte [rbx + 4 * rcx]

; [rip + base + index + disp8]
byte [rbx + rcx + 0x13]

; [rip + base + index + disp32]
byte [rbx + rcx + 0x1235]
byte [rbx + rcx + 0x12345679]

; [rip + base + scale * index + disp8]
byte [rbx + 4 * rcx + 0x13]

; [rip + base + scale * index + disp32]
byte [rbx + 4 * rcx + 0x1235]
byte [rbx + 8 * rcx + 0x12345679]

; [scale * index]
byte [4 * rcx]

; [scale * index + disp8]
byte [4 * rcx + 0x13]

; [scale * index + disp32]
byte [4 * rcx + 0x1235]
byte [4 * rcx + 0x12345679]

; Use rbp as base or index.
byte [rbp]
byte [rbp + 0x12]
byte [rbp + 0x1234]
byte [rbp + 0x12345678]

byte [4 * rbp]
byte [4 * rbp + 0x12]
byte [4 * rbp + 0x1234]
byte [4 * rbp + 0x12345678]

byte [rbx + 4 * rbp]
byte [rbx + 4 * rbp + 0x12]
byte [rbx + 4 * rbp + 0x1234]
byte [rbx + 4 * rbp + 0x12345678]

; Use rsp as base.
byte [rsp]
byte [rsp + 0x12]
byte [rsp + 0x1234]
byte [rsp + 0x12345678]

byte [rsp + rax]
byte [rsp + rbp]
byte [rsp + 2*rbp]
byte [rsp + 4*rbp]
byte [rsp + 8*rbp]

; use each register as indirect.
byte [rax]
byte [rcx]
byte [rdx]
byte [rbx]
byte [rsp]
byte [rbp]
byte [rsi]
byte [rdi]

; use each register as indirect.
; rsp is forbidden as index
byte [rax + 2*rax]
byte [rcx + 2*rcx]
byte [rdx + 2*rdx]
byte [rbx + 2*rbx]
byte [rbp + 2*rbp]
byte [rsi + 2*rsi]
byte [rdi + 2*rdi]
