use64

; ------------------------------------------------------------------------------
;                                 Forward jumps
; ------------------------------------------------------------------------------

    ; forward jump: rel32 (+127)
    jbe rel32_forward_min
    db 127 dup 3
rel32_forward_min:

    ; forward jump: rel32 (+1000)
    jbe rel32_forward_1000
    db 1000 dup 4
rel32_forward_1000:

; ------------------------------------------------------------------------------
;                                 Backwards jumps
; ------------------------------------------------------------------------------

    ; backward jump: rel32 (-128)
rel32_backward_min:
    db 128 dup 6
    jbe rel32_backward_min

    ; backward jump: rel32 (-1000)
rel32_backward_1000:
    db 1000 dup 2
    jbe rel32_backward_1000

; ------------------------------------------------------------------------------
;                                   Many jumps
; ------------------------------------------------------------------------------

rel32_backward_many:
    db 97 dup 0

    jbe rel32_forward_many
    jbe rel32_forward_many
    jbe rel32_forward_many
    jbe rel32_forward_many
    jbe rel32_forward_many
    jbe rel32_forward_many
    jbe rel32_forward_many
    jbe rel32_forward_many
    jbe rel32_forward_many
    jbe rel32_forward_many
    jbe rel32_forward_many
    jbe rel32_forward_many
    jbe rel32_forward_many
    jbe rel32_forward_many
    jbe rel32_forward_many
    jbe rel32_forward_many
    jbe rel32_forward_many
    jbe rel32_forward_many

    jbe rel32_backward_many
    jbe rel32_backward_many
    jbe rel32_backward_many
    jbe rel32_backward_many
    jbe rel32_backward_many
    jbe rel32_backward_many
    jbe rel32_backward_many
    jbe rel32_backward_many
    jbe rel32_backward_many
    jbe rel32_backward_many
    jbe rel32_backward_many
    jbe rel32_backward_many
    jbe rel32_backward_many
    jbe rel32_backward_many
    jbe rel32_backward_many
    jbe rel32_backward_many
    jbe rel32_backward_many
    jbe rel32_backward_many

    db 97 dup 0
    
rel32_forward_many:

; ------------------------------------------------------------------------------
;                                     Other
; ------------------------------------------------------------------------------

    jbe 0x12
    jbe 0x1234
    jbe 0x12345678
