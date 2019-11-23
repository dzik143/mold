use64
; ------------------------------------------------------------------------------
; opcode rel8
; ------------------------------------------------------------------------------
; ------------------------------------------------------------------------------
;                                 Forward jumps
; ------------------------------------------------------------------------------

    ; forward jump: rel8 (0)
    jmp rel8_forward_0
rel8_forward_0:

    ; forward jump: rel8
    jmp rel8_forward
    db 124 dup 2
rel8_forward:

; ------------------------------------------------------------------------------
;                                 Backwards jumps
; ------------------------------------------------------------------------------

    ; backward jump: rel8 (0)
rel8_backward_0:
    jmp rel8_backward_0

    ; forward jump: rel8
rel8_backward:
    db 124 dup 5
    jmp rel8_backward

; ------------------------------------------------------------------------------
;                                  Many jumps
; ------------------------------------------------------------------------------

rel8_backward_many:

    jmp rel8_forward_many
    jmp rel8_forward_many
    jmp rel8_forward_many
    jmp rel8_forward_many
    jmp rel8_forward_many
    jmp rel8_forward_many
    jmp rel8_forward_many
    jmp rel8_forward_many

    jmp rel8_backward_many
    jmp rel8_backward_many
    jmp rel8_backward_many
    jmp rel8_backward_many
    jmp rel8_backward_many
    jmp rel8_backward_many
    jmp rel8_backward_many
    jmp rel8_backward_many

rel8_forward_many:

; ------------------------------------------------------------------------------
; opcode rel16
; ------------------------------------------------------------------------------
; ------------------------------------------------------------------------------
;                                 Forward jumps
; ------------------------------------------------------------------------------

    ; forward jump: rel16
    jmp rel16_forward
    db 127 dup 1
rel16_forward:

; ------------------------------------------------------------------------------
;                                 Backwards jumps
; ------------------------------------------------------------------------------

    ; forward jump: rel16
rel16_backward:
    db 128 dup 2
    jmp rel16_backward

; ------------------------------------------------------------------------------
;                                  Many jumps
; ------------------------------------------------------------------------------

rel16_backward_many:
    db 97 dup 5

    jmp rel16_forward_many
    jmp rel16_forward_many
    jmp rel16_forward_many
    jmp rel16_forward_many
    jmp rel16_forward_many
    jmp rel16_forward_many
    jmp rel16_forward_many
    jmp rel16_forward_many

    jmp rel16_backward_many
    jmp rel16_backward_many
    jmp rel16_backward_many
    jmp rel16_backward_many
    jmp rel16_backward_many
    jmp rel16_backward_many
    jmp rel16_backward_many
    jmp rel16_backward_many

rel16_forward_many:
    jmp 0x12
    jmp 0x1234
    jmp 32767

; ------------------------------------------------------------------------------
; opcode rel32
; ------------------------------------------------------------------------------
; ------------------------------------------------------------------------------
;                                 Forward jumps
; ------------------------------------------------------------------------------

    ; forward jump: rel32 (+127)
    jmp rel32_forward_min
    db 127 dup 1
rel32_forward_min:

    ; forward jump: rel32 (+32768)
    jmp rel32_forward_1000
    db 32768 dup 2
rel32_forward_1000:

; ------------------------------------------------------------------------------
;                                 Backwards jumps
; ------------------------------------------------------------------------------

    ; backward jump: rel32 (-128)
rel32_backward_min:
    db 128 dup 3
    jmp rel32_backward_min

    ; backward jump: rel32 (-32768)
rel32_backward_1000:
    db 32768 dup 4
    jmp rel32_backward_1000

; ------------------------------------------------------------------------------
;                                   Many jumps
; ------------------------------------------------------------------------------

rel32_backward_many:
    db 16384 dup 5

    jmp rel32_forward_many
    jmp rel32_forward_many
    jmp rel32_forward_many
    jmp rel32_forward_many
    jmp rel32_forward_many
    jmp rel32_forward_many
    jmp rel32_forward_many
    jmp rel32_forward_many
    jmp rel32_forward_many
    jmp rel32_forward_many
    jmp rel32_forward_many
    jmp rel32_forward_many
    jmp rel32_forward_many
    jmp rel32_forward_many
    jmp rel32_forward_many
    jmp rel32_forward_many
    jmp rel32_forward_many
    jmp rel32_forward_many

    jmp rel32_backward_many
    jmp rel32_backward_many
    jmp rel32_backward_many
    jmp rel32_backward_many
    jmp rel32_backward_many
    jmp rel32_backward_many
    jmp rel32_backward_many
    jmp rel32_backward_many
    jmp rel32_backward_many
    jmp rel32_backward_many
    jmp rel32_backward_many
    jmp rel32_backward_many
    jmp rel32_backward_many
    jmp rel32_backward_many
    jmp rel32_backward_many
    jmp rel32_backward_many
    jmp rel32_backward_many
    jmp rel32_backward_many

    db 16384 dup 6

rel32_forward_many:

; ------------------------------------------------------------------------------
;                                     Other
; ------------------------------------------------------------------------------

    jmp 0x12
    jmp 0x1234
    jmp 0x12345678

; ------------------------------------------------------------------------------
; opcode r16
; ------------------------------------------------------------------------------
jmp ax
jmp cx
jmp dx
jmp bx
jmp sp
jmp bp
jmp si
jmp di

; ------------------------------------------------------------------------------
; opcode r64
; ------------------------------------------------------------------------------
jmp rax
jmp rcx
jmp rdx
jmp rbx
jmp rsp
jmp rbp
jmp rsi
jmp rdi

; ------------------------------------------------------------------------------
; opcode m16
; ------------------------------------------------------------------------------
jmp word [rip + 0x13]
jmp word [rip + 0x1235]
jmp word [rip + 0x12345679]
jmp word [rbx]
jmp word [rcx + 0x14]
jmp word [rdx + 0x15]
jmp word [rbx + 0x1235]
jmp word [rbx + 0x12345679]
jmp word [rbx + rcx]
jmp word [rbx + 4 * rcx]
jmp word [rbx + rcx + 0x13]
jmp word [rbx + rcx + 0x1235]
jmp word [rbx + rcx + 0x12345679]
jmp word [rbx + 4 * rcx + 0x13]
jmp word [rbx + 4 * rcx + 0x1235]
jmp word [rbx + 8 * rcx + 0x12345679]
jmp word [4 * rcx]
jmp word [4 * rcx + 0x13]
jmp word [4 * rcx + 0x1235]
jmp word [4 * rcx + 0x12345679]
jmp word [rbp]
jmp word [rbp + 0x12]
jmp word [rbp + 0x1234]
jmp word [rbp + 0x12345678]
jmp word [4 * rbp]
jmp word [4 * rbp + 0x12]
jmp word [4 * rbp + 0x1234]
jmp word [4 * rbp + 0x12345678]
jmp word [rbx + 4 * rbp]
jmp word [rbx + 4 * rbp + 0x12]
jmp word [rbx + 4 * rbp + 0x1234]
jmp word [rbx + 4 * rbp + 0x12345678]
jmp word [rsp]
jmp word [rsp + 0x12]
jmp word [rsp + 0x1234]
jmp word [rsp + 0x12345678]
jmp word [rsp + rax]
jmp word [rsp + rbp]
jmp word [rsp + 2*rbp]
jmp word [rsp + 4*rbp]
jmp word [rsp + 8*rbp]
jmp word [rax]
jmp word [rcx]
jmp word [rdx]
jmp word [rbx]
jmp word [rsp]
jmp word [rbp]
jmp word [rsi]
jmp word [rdi]
jmp word [rax + 2*rax]
jmp word [rcx + 2*rcx]
jmp word [rdx + 2*rdx]
jmp word [rbx + 2*rbx]
jmp word [rbp + 2*rbp]
jmp word [rsi + 2*rsi]
jmp word [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode m64
; ------------------------------------------------------------------------------
jmp qword [rip + 0x13]
jmp qword [rip + 0x1235]
jmp qword [rip + 0x12345679]
jmp qword [rbx]
jmp qword [rcx + 0x14]
jmp qword [rdx + 0x15]
jmp qword [rbx + 0x1235]
jmp qword [rbx + 0x12345679]
jmp qword [rbx + rcx]
jmp qword [rbx + 4 * rcx]
jmp qword [rbx + rcx + 0x13]
jmp qword [rbx + rcx + 0x1235]
jmp qword [rbx + rcx + 0x12345679]
jmp qword [rbx + 4 * rcx + 0x13]
jmp qword [rbx + 4 * rcx + 0x1235]
jmp qword [rbx + 8 * rcx + 0x12345679]
jmp qword [4 * rcx]
jmp qword [4 * rcx + 0x13]
jmp qword [4 * rcx + 0x1235]
jmp qword [4 * rcx + 0x12345679]
jmp qword [rbp]
jmp qword [rbp + 0x12]
jmp qword [rbp + 0x1234]
jmp qword [rbp + 0x12345678]
jmp qword [4 * rbp]
jmp qword [4 * rbp + 0x12]
jmp qword [4 * rbp + 0x1234]
jmp qword [4 * rbp + 0x12345678]
jmp qword [rbx + 4 * rbp]
jmp qword [rbx + 4 * rbp + 0x12]
jmp qword [rbx + 4 * rbp + 0x1234]
jmp qword [rbx + 4 * rbp + 0x12345678]
jmp qword [rsp]
jmp qword [rsp + 0x12]
jmp qword [rsp + 0x1234]
jmp qword [rsp + 0x12345678]
jmp qword [rsp + rax]
jmp qword [rsp + rbp]
jmp qword [rsp + 2*rbp]
jmp qword [rsp + 4*rbp]
jmp qword [rsp + 8*rbp]
jmp qword [rax]
jmp qword [rcx]
jmp qword [rdx]
jmp qword [rbx]
jmp qword [rsp]
jmp qword [rbp]
jmp qword [rsi]
jmp qword [rdi]
jmp qword [rax + 2*rax]
jmp qword [rcx + 2*rcx]
jmp qword [rdx + 2*rdx]
jmp qword [rbx + 2*rbx]
jmp qword [rbp + 2*rbp]
jmp qword [rsi + 2*rsi]
jmp qword [rdi + 2*rdi]

