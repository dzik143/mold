use64
; ------------------------------------------------------------------------------
; opcode rel8
; ------------------------------------------------------------------------------
; ------------------------------------------------------------------------------
;                                 Forward jumps
; ------------------------------------------------------------------------------

    ; forward jump: rel8 (0)
    jno rel8_forward_0
rel8_forward_0:

    ; forward jump: rel8
    jno rel8_forward
    db 124 dup 2
rel8_forward:

; ------------------------------------------------------------------------------
;                                 Backwards jumps
; ------------------------------------------------------------------------------

    ; backward jump: rel8 (0)
rel8_backward_0:
    jno rel8_backward_0

    ; forward jump: rel8
rel8_backward:
    db 124 dup 5
    jno rel8_backward

; ------------------------------------------------------------------------------
;                                  Many jumps
; ------------------------------------------------------------------------------

rel8_backward_many:

    jno rel8_forward_many
    jno rel8_forward_many
    jno rel8_forward_many
    jno rel8_forward_many
    jno rel8_forward_many
    jno rel8_forward_many
    jno rel8_forward_many
    jno rel8_forward_many

    jno rel8_backward_many
    jno rel8_backward_many
    jno rel8_backward_many
    jno rel8_backward_many
    jno rel8_backward_many
    jno rel8_backward_many
    jno rel8_backward_many
    jno rel8_backward_many

rel8_forward_many:

; ------------------------------------------------------------------------------
; opcode rel32
; ------------------------------------------------------------------------------
; ------------------------------------------------------------------------------
;                                 Forward jumps
; ------------------------------------------------------------------------------

    ; forward jump: rel32 (+127)
    jno rel32_forward_min
    db 127 dup 1
rel32_forward_min:

    ; forward jump: rel32 (+32768)
    jno rel32_forward_1000
    db 32768 dup 2
rel32_forward_1000:

; ------------------------------------------------------------------------------
;                                 Backwards jumps
; ------------------------------------------------------------------------------

    ; backward jump: rel32 (-128)
rel32_backward_min:
    db 128 dup 3
    jno rel32_backward_min

    ; backward jump: rel32 (-32768)
rel32_backward_1000:
    db 32768 dup 4
    jno rel32_backward_1000

; ------------------------------------------------------------------------------
;                                   Many jumps
; ------------------------------------------------------------------------------

rel32_backward_many:
    db 16384 dup 5

    jno rel32_forward_many
    jno rel32_forward_many
    jno rel32_forward_many
    jno rel32_forward_many
    jno rel32_forward_many
    jno rel32_forward_many
    jno rel32_forward_many
    jno rel32_forward_many
    jno rel32_forward_many
    jno rel32_forward_many
    jno rel32_forward_many
    jno rel32_forward_many
    jno rel32_forward_many
    jno rel32_forward_many
    jno rel32_forward_many
    jno rel32_forward_many
    jno rel32_forward_many
    jno rel32_forward_many

    jno rel32_backward_many
    jno rel32_backward_many
    jno rel32_backward_many
    jno rel32_backward_many
    jno rel32_backward_many
    jno rel32_backward_many
    jno rel32_backward_many
    jno rel32_backward_many
    jno rel32_backward_many
    jno rel32_backward_many
    jno rel32_backward_many
    jno rel32_backward_many
    jno rel32_backward_many
    jno rel32_backward_many
    jno rel32_backward_many
    jno rel32_backward_many
    jno rel32_backward_many
    jno rel32_backward_many

    db 16384 dup 6

rel32_forward_many:

; ------------------------------------------------------------------------------
;                                     Other
; ------------------------------------------------------------------------------

    jno 0x12
    jno 0x1234
    jno 0x12345678

