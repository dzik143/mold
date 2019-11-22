use64

; ------------------------------------------------------------------------------
;                                 Forward jumps
; ------------------------------------------------------------------------------

    ; forward jump: rel32 (+127)
    jnz rel32_forward_min
    db 127 dup 3
rel32_forward_min:

    ; forward jump: rel32 (+1000)
    jnz rel32_forward_1000
    db 1000 dup 4
rel32_forward_1000:

; ------------------------------------------------------------------------------
;                                 Backwards jumps
; ------------------------------------------------------------------------------

    ; backward jump: rel32 (-128)
rel32_backward_min:
    db 128 dup 6
    jnz rel32_backward_min

    ; backward jump: rel32 (-1000)
rel32_backward_1000:
    db 1000 dup 2
    jnz rel32_backward_1000

; ------------------------------------------------------------------------------
;                                   Many jumps
; ------------------------------------------------------------------------------

rel32_backward_many:
    db 97 dup 0

    jnz rel32_forward_many
    jnz rel32_forward_many
    jnz rel32_forward_many
    jnz rel32_forward_many
    jnz rel32_forward_many
    jnz rel32_forward_many
    jnz rel32_forward_many
    jnz rel32_forward_many
    jnz rel32_forward_many
    jnz rel32_forward_many
    jnz rel32_forward_many
    jnz rel32_forward_many
    jnz rel32_forward_many
    jnz rel32_forward_many
    jnz rel32_forward_many
    jnz rel32_forward_many
    jnz rel32_forward_many
    jnz rel32_forward_many

    jnz rel32_backward_many
    jnz rel32_backward_many
    jnz rel32_backward_many
    jnz rel32_backward_many
    jnz rel32_backward_many
    jnz rel32_backward_many
    jnz rel32_backward_many
    jnz rel32_backward_many
    jnz rel32_backward_many
    jnz rel32_backward_many
    jnz rel32_backward_many
    jnz rel32_backward_many
    jnz rel32_backward_many
    jnz rel32_backward_many
    jnz rel32_backward_many
    jnz rel32_backward_many
    jnz rel32_backward_many
    jnz rel32_backward_many

    db 97 dup 0
    
rel32_forward_many:

; ------------------------------------------------------------------------------
;                                     Other
; ------------------------------------------------------------------------------

    jnz 0x12
    jnz 0x1234
    jnz 0x12345678
