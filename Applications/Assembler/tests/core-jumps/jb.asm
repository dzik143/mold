use64
; ------------------------------------------------------------------------------
; opcode rel8
; ------------------------------------------------------------------------------
; ------------------------------------------------------------------------------
;                                 Forward jumps
; ------------------------------------------------------------------------------

    ; forward jump: rel8 (0)
    jb rel8_forward_0
rel8_forward_0:

    ; forward jump: rel8
    jb rel8_forward
    db 124 dup 2
rel8_forward:

; ------------------------------------------------------------------------------
;                                 Backwards jumps
; ------------------------------------------------------------------------------

    ; backward jump: rel8 (0)
rel8_backward_0:
    jb rel8_backward_0

    ; forward jump: rel8
rel8_backward:
    db 124 dup 5
    jb rel8_backward

; ------------------------------------------------------------------------------
;                                  Many jumps
; ------------------------------------------------------------------------------

rel8_backward_many:

    jb rel8_forward_many
    jb rel8_forward_many
    jb rel8_forward_many
    jb rel8_forward_many
    jb rel8_forward_many
    jb rel8_forward_many
    jb rel8_forward_many
    jb rel8_forward_many

    jb rel8_backward_many
    jb rel8_backward_many
    jb rel8_backward_many
    jb rel8_backward_many
    jb rel8_backward_many
    jb rel8_backward_many
    jb rel8_backward_many
    jb rel8_backward_many

rel8_forward_many:

; ------------------------------------------------------------------------------
; opcode rel32
; ------------------------------------------------------------------------------
; ------------------------------------------------------------------------------
;                                 Forward jumps
; ------------------------------------------------------------------------------

    ; forward jump: rel32 (+127)
    jb rel32_forward_min
    db 127 dup 1
rel32_forward_min:

    ; forward jump: rel32 (+32768)
    jb rel32_forward_1000
    db 32768 dup 2
rel32_forward_1000:

; ------------------------------------------------------------------------------
;                                 Backwards jumps
; ------------------------------------------------------------------------------

    ; backward jump: rel32 (-128)
rel32_backward_min:
    db 128 dup 3
    jb rel32_backward_min

    ; backward jump: rel32 (-32768)
rel32_backward_1000:
    db 32768 dup 4
    jb rel32_backward_1000

; ------------------------------------------------------------------------------
;                                   Many jumps
; ------------------------------------------------------------------------------

rel32_backward_many:
    db 16384 dup 5

    jb rel32_forward_many
    jb rel32_forward_many
    jb rel32_forward_many
    jb rel32_forward_many
    jb rel32_forward_many
    jb rel32_forward_many
    jb rel32_forward_many
    jb rel32_forward_many
    jb rel32_forward_many
    jb rel32_forward_many
    jb rel32_forward_many
    jb rel32_forward_many
    jb rel32_forward_many
    jb rel32_forward_many
    jb rel32_forward_many
    jb rel32_forward_many
    jb rel32_forward_many
    jb rel32_forward_many

    jb rel32_backward_many
    jb rel32_backward_many
    jb rel32_backward_many
    jb rel32_backward_many
    jb rel32_backward_many
    jb rel32_backward_many
    jb rel32_backward_many
    jb rel32_backward_many
    jb rel32_backward_many
    jb rel32_backward_many
    jb rel32_backward_many
    jb rel32_backward_many
    jb rel32_backward_many
    jb rel32_backward_many
    jb rel32_backward_many
    jb rel32_backward_many
    jb rel32_backward_many
    jb rel32_backward_many

    db 16384 dup 6

rel32_forward_many:

; ------------------------------------------------------------------------------
;                                     Other
; ------------------------------------------------------------------------------

    jb 0x12
    jb 0x1234
    jb 0x12345678

