use64
; ------------------------------------------------------------------------------
; opcode rel16
; ------------------------------------------------------------------------------
; ------------------------------------------------------------------------------
;                                 Forward jumps
; ------------------------------------------------------------------------------

    ; forward jump: rel16
    call rel16_forward
    db 127 dup 1
rel16_forward:

; ------------------------------------------------------------------------------
;                                 Backwards jumps
; ------------------------------------------------------------------------------

    ; forward jump: rel16
rel16_backward:
    db 128 dup 2
    call rel16_backward

; ------------------------------------------------------------------------------
;                                  Many jumps
; ------------------------------------------------------------------------------

rel16_backward_many:
    db 97 dup 5

    call rel16_forward_many
    call rel16_forward_many
    call rel16_forward_many
    call rel16_forward_many
    call rel16_forward_many
    call rel16_forward_many
    call rel16_forward_many
    call rel16_forward_many

    call rel16_backward_many
    call rel16_backward_many
    call rel16_backward_many
    call rel16_backward_many
    call rel16_backward_many
    call rel16_backward_many
    call rel16_backward_many
    call rel16_backward_many

rel16_forward_many:
    call 0x12
    call 0x1234
    call 32767

; ------------------------------------------------------------------------------
; opcode rel32
; ------------------------------------------------------------------------------
; ------------------------------------------------------------------------------
;                                 Forward jumps
; ------------------------------------------------------------------------------

    ; forward jump: rel32 (+127)
    call rel32_forward_min
    db 127 dup 1
rel32_forward_min:

    ; forward jump: rel32 (+32768)
    call rel32_forward_1000
    db 32768 dup 2
rel32_forward_1000:

; ------------------------------------------------------------------------------
;                                 Backwards jumps
; ------------------------------------------------------------------------------

    ; backward jump: rel32 (-128)
rel32_backward_min:
    db 128 dup 3
    call rel32_backward_min

    ; backward jump: rel32 (-32768)
rel32_backward_1000:
    db 32768 dup 4
    call rel32_backward_1000

; ------------------------------------------------------------------------------
;                                   Many jumps
; ------------------------------------------------------------------------------

rel32_backward_many:
    db 16384 dup 5

    call rel32_forward_many
    call rel32_forward_many
    call rel32_forward_many
    call rel32_forward_many
    call rel32_forward_many
    call rel32_forward_many
    call rel32_forward_many
    call rel32_forward_many
    call rel32_forward_many
    call rel32_forward_many
    call rel32_forward_many
    call rel32_forward_many
    call rel32_forward_many
    call rel32_forward_many
    call rel32_forward_many
    call rel32_forward_many
    call rel32_forward_many
    call rel32_forward_many

    call rel32_backward_many
    call rel32_backward_many
    call rel32_backward_many
    call rel32_backward_many
    call rel32_backward_many
    call rel32_backward_many
    call rel32_backward_many
    call rel32_backward_many
    call rel32_backward_many
    call rel32_backward_many
    call rel32_backward_many
    call rel32_backward_many
    call rel32_backward_many
    call rel32_backward_many
    call rel32_backward_many
    call rel32_backward_many
    call rel32_backward_many
    call rel32_backward_many

    db 16384 dup 6

rel32_forward_many:

; ------------------------------------------------------------------------------
;                                     Other
; ------------------------------------------------------------------------------

    call 0x12
    call 0x1234
    call 0x12345678

; ------------------------------------------------------------------------------
; opcode r16
; ------------------------------------------------------------------------------
call ax
call cx
call dx
call bx
call sp
call bp
call si
call di

; ------------------------------------------------------------------------------
; opcode r64
; ------------------------------------------------------------------------------
call rax
call rcx
call rdx
call rbx
call rsp
call rbp
call rsi
call rdi

; ------------------------------------------------------------------------------
; opcode m16
; ------------------------------------------------------------------------------
call word [rip + 0x13]
call word [rip + 0x1235]
call word [rip + 0x12345679]
call word [rbx]
call word [rcx + 0x14]
call word [rdx + 0x15]
call word [rbx + 0x1235]
call word [rbx + 0x12345679]
call word [rbx + rcx]
call word [rbx + 4 * rcx]
call word [rbx + rcx + 0x13]
call word [rbx + rcx + 0x1235]
call word [rbx + rcx + 0x12345679]
call word [rbx + 4 * rcx + 0x13]
call word [rbx + 4 * rcx + 0x1235]
call word [rbx + 8 * rcx + 0x12345679]
call word [4 * rcx]
call word [4 * rcx + 0x13]
call word [4 * rcx + 0x1235]
call word [4 * rcx + 0x12345679]
call word [rbp]
call word [rbp + 0x12]
call word [rbp + 0x1234]
call word [rbp + 0x12345678]
call word [4 * rbp]
call word [4 * rbp + 0x12]
call word [4 * rbp + 0x1234]
call word [4 * rbp + 0x12345678]
call word [rbx + 4 * rbp]
call word [rbx + 4 * rbp + 0x12]
call word [rbx + 4 * rbp + 0x1234]
call word [rbx + 4 * rbp + 0x12345678]
call word [rsp]
call word [rsp + 0x12]
call word [rsp + 0x1234]
call word [rsp + 0x12345678]
call word [rsp + rax]
call word [rsp + rbp]
call word [rsp + 2*rbp]
call word [rsp + 4*rbp]
call word [rsp + 8*rbp]
call word [rax]
call word [rcx]
call word [rdx]
call word [rbx]
call word [rsp]
call word [rbp]
call word [rsi]
call word [rdi]
call word [rax + 2*rax]
call word [rcx + 2*rcx]
call word [rdx + 2*rdx]
call word [rbx + 2*rbx]
call word [rbp + 2*rbp]
call word [rsi + 2*rsi]
call word [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode m64
; ------------------------------------------------------------------------------
call qword [rip + 0x13]
call qword [rip + 0x1235]
call qword [rip + 0x12345679]
call qword [rbx]
call qword [rcx + 0x14]
call qword [rdx + 0x15]
call qword [rbx + 0x1235]
call qword [rbx + 0x12345679]
call qword [rbx + rcx]
call qword [rbx + 4 * rcx]
call qword [rbx + rcx + 0x13]
call qword [rbx + rcx + 0x1235]
call qword [rbx + rcx + 0x12345679]
call qword [rbx + 4 * rcx + 0x13]
call qword [rbx + 4 * rcx + 0x1235]
call qword [rbx + 8 * rcx + 0x12345679]
call qword [4 * rcx]
call qword [4 * rcx + 0x13]
call qword [4 * rcx + 0x1235]
call qword [4 * rcx + 0x12345679]
call qword [rbp]
call qword [rbp + 0x12]
call qword [rbp + 0x1234]
call qword [rbp + 0x12345678]
call qword [4 * rbp]
call qword [4 * rbp + 0x12]
call qword [4 * rbp + 0x1234]
call qword [4 * rbp + 0x12345678]
call qword [rbx + 4 * rbp]
call qword [rbx + 4 * rbp + 0x12]
call qword [rbx + 4 * rbp + 0x1234]
call qword [rbx + 4 * rbp + 0x12345678]
call qword [rsp]
call qword [rsp + 0x12]
call qword [rsp + 0x1234]
call qword [rsp + 0x12345678]
call qword [rsp + rax]
call qword [rsp + rbp]
call qword [rsp + 2*rbp]
call qword [rsp + 4*rbp]
call qword [rsp + 8*rbp]
call qword [rax]
call qword [rcx]
call qword [rdx]
call qword [rbx]
call qword [rsp]
call qword [rbp]
call qword [rsi]
call qword [rdi]
call qword [rax + 2*rax]
call qword [rcx + 2*rcx]
call qword [rdx + 2*rdx]
call qword [rbx + 2*rbx]
call qword [rbp + 2*rbp]
call qword [rsi + 2*rsi]
call qword [rdi + 2*rdi]

