; ------------------------------------------------------------------------------
;                                 Forward jumps
; ------------------------------------------------------------------------------

    ; forward jump: rel32 (+127)
    ${mnemonic} rel32_forward_min
    db 127 dup 1
rel32_forward_min:

    ; forward jump: rel32 (+32768)
    ${mnemonic} rel32_forward_1000
    db 32768 dup 2
rel32_forward_1000:

; ------------------------------------------------------------------------------
;                                 Backwards jumps
; ------------------------------------------------------------------------------

    ; backward jump: rel32 (-128)
rel32_backward_min:
    db 128 dup 3
    ${mnemonic} rel32_backward_min

    ; backward jump: rel32 (-32768)
rel32_backward_1000:
    db 32768 dup 4
    ${mnemonic} rel32_backward_1000

; ------------------------------------------------------------------------------
;                                   Many jumps
; ------------------------------------------------------------------------------

rel32_backward_many:
    db 16384 dup 5

    ${mnemonic} rel32_forward_many
    ${mnemonic} rel32_forward_many
    ${mnemonic} rel32_forward_many
    ${mnemonic} rel32_forward_many
    ${mnemonic} rel32_forward_many
    ${mnemonic} rel32_forward_many
    ${mnemonic} rel32_forward_many
    ${mnemonic} rel32_forward_many
    ${mnemonic} rel32_forward_many
    ${mnemonic} rel32_forward_many
    ${mnemonic} rel32_forward_many
    ${mnemonic} rel32_forward_many
    ${mnemonic} rel32_forward_many
    ${mnemonic} rel32_forward_many
    ${mnemonic} rel32_forward_many
    ${mnemonic} rel32_forward_many
    ${mnemonic} rel32_forward_many
    ${mnemonic} rel32_forward_many

    ${mnemonic} rel32_backward_many
    ${mnemonic} rel32_backward_many
    ${mnemonic} rel32_backward_many
    ${mnemonic} rel32_backward_many
    ${mnemonic} rel32_backward_many
    ${mnemonic} rel32_backward_many
    ${mnemonic} rel32_backward_many
    ${mnemonic} rel32_backward_many
    ${mnemonic} rel32_backward_many
    ${mnemonic} rel32_backward_many
    ${mnemonic} rel32_backward_many
    ${mnemonic} rel32_backward_many
    ${mnemonic} rel32_backward_many
    ${mnemonic} rel32_backward_many
    ${mnemonic} rel32_backward_many
    ${mnemonic} rel32_backward_many
    ${mnemonic} rel32_backward_many
    ${mnemonic} rel32_backward_many

    db 16384 dup 6

rel32_forward_many:

; ------------------------------------------------------------------------------
;                                     Other
; ------------------------------------------------------------------------------

    ${mnemonic} 0x12
    ${mnemonic} 0x1234
    ${mnemonic} 0x12345678
