use64
; ------------------------------------------------------------------------------
; opcode rel8
; ------------------------------------------------------------------------------
; ------------------------------------------------------------------------------
;                                 Forward jumps
; ------------------------------------------------------------------------------

    ; forward jump: rel8 (0)
    jl rel8_forward_0
rel8_forward_0:

    ; forward jump: rel8
    jl rel8_forward
    db 124 dup 2
rel8_forward:

; ------------------------------------------------------------------------------
;                                 Backwards jumps
; ------------------------------------------------------------------------------

    ; backward jump: rel8 (0)
rel8_backward_0:
    jl rel8_backward_0

    ; forward jump: rel8
rel8_backward:
    db 124 dup 5
    jl rel8_backward

; ------------------------------------------------------------------------------
;                                  Many jumps
; ------------------------------------------------------------------------------

rel8_backward_many:

    jl rel8_forward_many
    jl rel8_forward_many
    jl rel8_forward_many
    jl rel8_forward_many
    jl rel8_forward_many
    jl rel8_forward_many
    jl rel8_forward_many
    jl rel8_forward_many

    jl rel8_backward_many
    jl rel8_backward_many
    jl rel8_backward_many
    jl rel8_backward_many
    jl rel8_backward_many
    jl rel8_backward_many
    jl rel8_backward_many
    jl rel8_backward_many

rel8_forward_many:

; ------------------------------------------------------------------------------
; opcode rel32
; ------------------------------------------------------------------------------
; ------------------------------------------------------------------------------
;                                 Forward jumps
; ------------------------------------------------------------------------------

    ; forward jump: rel32 (+127)
    jl rel32_forward_min
    db 127 dup 1
rel32_forward_min:

    ; forward jump: rel32 (+32768)
    jl rel32_forward_1000
    db 32768 dup 2
rel32_forward_1000:

; ------------------------------------------------------------------------------
;                                 Backwards jumps
; ------------------------------------------------------------------------------

    ; backward jump: rel32 (-128)
rel32_backward_min:
    db 128 dup 3
    jl rel32_backward_min

    ; backward jump: rel32 (-32768)
rel32_backward_1000:
    db 32768 dup 4
    jl rel32_backward_1000

; ------------------------------------------------------------------------------
;                                   Many jumps
; ------------------------------------------------------------------------------

rel32_backward_many:
    db 16384 dup 5

    jl rel32_forward_many
    jl rel32_forward_many
    jl rel32_forward_many
    jl rel32_forward_many
    jl rel32_forward_many
    jl rel32_forward_many
    jl rel32_forward_many
    jl rel32_forward_many
    jl rel32_forward_many
    jl rel32_forward_many
    jl rel32_forward_many
    jl rel32_forward_many
    jl rel32_forward_many
    jl rel32_forward_many
    jl rel32_forward_many
    jl rel32_forward_many
    jl rel32_forward_many
    jl rel32_forward_many

    jl rel32_backward_many
    jl rel32_backward_many
    jl rel32_backward_many
    jl rel32_backward_many
    jl rel32_backward_many
    jl rel32_backward_many
    jl rel32_backward_many
    jl rel32_backward_many
    jl rel32_backward_many
    jl rel32_backward_many
    jl rel32_backward_many
    jl rel32_backward_many
    jl rel32_backward_many
    jl rel32_backward_many
    jl rel32_backward_many
    jl rel32_backward_many
    jl rel32_backward_many
    jl rel32_backward_many

    db 16384 dup 6

rel32_forward_many:

; ------------------------------------------------------------------------------
;                                     Other
; ------------------------------------------------------------------------------

    jl 0x12
    jl 0x1234
    jl 0x12345678

