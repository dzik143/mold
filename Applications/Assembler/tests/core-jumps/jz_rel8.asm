use64

; ------------------------------------------------------------------------------
;                                 Forward jumps
; ------------------------------------------------------------------------------

    ; forward jump: rel8 (0)
    jz rel8_forward_0
rel8_forward_0:

    ; forward jump: rel8
    jz rel8_forward
    db 124 dup 2
rel8_forward:

; ------------------------------------------------------------------------------
;                                 Backwards jumps
; ------------------------------------------------------------------------------

    ; backward jump: rel8 (0)
rel8_backward_0:
    jz rel8_backward_0

    ; forward jump: rel8
rel8_backward:
    db 124 dup 5
    jz rel8_backward

; ------------------------------------------------------------------------------
;                                  Many jumps
; ------------------------------------------------------------------------------

rel8_backward_many:

    jz rel8_forward_many
    jz rel8_forward_many
    jz rel8_forward_many
    jz rel8_forward_many
    jz rel8_forward_many
    jz rel8_forward_many
    jz rel8_forward_many
    jz rel8_forward_many

    jz rel8_backward_many
    jz rel8_backward_many
    jz rel8_backward_many
    jz rel8_backward_many
    jz rel8_backward_many
    jz rel8_backward_many
    jz rel8_backward_many
    jz rel8_backward_many

rel8_forward_many:
