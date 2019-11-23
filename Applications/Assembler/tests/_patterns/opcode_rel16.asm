; ------------------------------------------------------------------------------
;                                 Forward jumps
; ------------------------------------------------------------------------------

    ; forward jump: rel16
    ${mnemonic} rel16_forward
    db 127 dup 1
rel16_forward:

; ------------------------------------------------------------------------------
;                                 Backwards jumps
; ------------------------------------------------------------------------------

    ; forward jump: rel16
rel16_backward:
    db 128 dup 2
    ${mnemonic} rel16_backward

; ------------------------------------------------------------------------------
;                                  Many jumps
; ------------------------------------------------------------------------------

rel16_backward_many:
    db 97 dup 5

    ${mnemonic} rel16_forward_many
    ${mnemonic} rel16_forward_many
    ${mnemonic} rel16_forward_many
    ${mnemonic} rel16_forward_many
    ${mnemonic} rel16_forward_many
    ${mnemonic} rel16_forward_many
    ${mnemonic} rel16_forward_many
    ${mnemonic} rel16_forward_many

    ${mnemonic} rel16_backward_many
    ${mnemonic} rel16_backward_many
    ${mnemonic} rel16_backward_many
    ${mnemonic} rel16_backward_many
    ${mnemonic} rel16_backward_many
    ${mnemonic} rel16_backward_many
    ${mnemonic} rel16_backward_many
    ${mnemonic} rel16_backward_many

rel16_forward_many:
    ${mnemonic} 0x12
    ${mnemonic} 0x1234
    ${mnemonic} 32767
