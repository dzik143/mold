; ------------------------------------------------------------------------------
;                                 Forward jumps
; ------------------------------------------------------------------------------

    ; forward jump: rel8 (0)
    ${mnemonic} rel8_forward_0
rel8_forward_0:

    ; forward jump: rel8
    ${mnemonic} rel8_forward
    db 124 dup 2
rel8_forward:

; ------------------------------------------------------------------------------
;                                 Backwards jumps
; ------------------------------------------------------------------------------

    ; backward jump: rel8 (0)
rel8_backward_0:
    ${mnemonic} rel8_backward_0

    ; forward jump: rel8
rel8_backward:
    db 124 dup 5
    ${mnemonic} rel8_backward

; ------------------------------------------------------------------------------
;                                  Many jumps
; ------------------------------------------------------------------------------

rel8_backward_many:

    ${mnemonic} rel8_forward_many
    ${mnemonic} rel8_forward_many
    ${mnemonic} rel8_forward_many
    ${mnemonic} rel8_forward_many
    ${mnemonic} rel8_forward_many
    ${mnemonic} rel8_forward_many
    ${mnemonic} rel8_forward_many
    ${mnemonic} rel8_forward_many

    ${mnemonic} rel8_backward_many
    ${mnemonic} rel8_backward_many
    ${mnemonic} rel8_backward_many
    ${mnemonic} rel8_backward_many
    ${mnemonic} rel8_backward_many
    ${mnemonic} rel8_backward_many
    ${mnemonic} rel8_backward_many
    ${mnemonic} rel8_backward_many

rel8_forward_many:
