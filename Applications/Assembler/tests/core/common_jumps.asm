use64

; ------------------------------------------------------------------------------
;                                 Forward jumps
; ------------------------------------------------------------------------------

    ; forward jump: rel8 (0)
    jmp rel8_forward_0
rel8_forward_0:

    ; forward jump: rel8 (+126)
    jmp rel8_forward_max
    db 126 dup 2
rel8_forward_max:

    ; forward jump: rel32 (+127)
    jmp rel32_forward_min
    db 127 dup 3
rel32_forward_min:

    ; forward jump: rel32 (+1000)
    jmp rel32_forward_1000
    db 1000 dup 4
rel32_forward_1000:

; ------------------------------------------------------------------------------
;                                 Backwards jumps
; ------------------------------------------------------------------------------

    ; backward jump: rel8 (0)
rel8_backward_0:
    jmp rel8_backward_0

    ; forward jump: rel8 (-127)
rel8_backward_max:
    db 127 dup 5
    jmp rel8_backward_max

    ; backward jump: rel32 (-128)
rel32_backward_min:
    db 128 dup 6
    jmp rel32_backward_min

    ; backward jump: rel32 (-1000)
rel32_backward_1000:
    db 1000 dup 2
    jmp rel32_backward_1000

; ------------------------------------------------------------------------------
;                          Conditional jumps (rel8)
; ------------------------------------------------------------------------------

jxx_backward_rel8:

    jo  jxx_forward_rel8
    jno jxx_forward_rel8
    jb  jxx_forward_rel8
    jae jxx_forward_rel8
    jz  jxx_forward_rel8
    je  jxx_forward_rel8
    jnz jxx_forward_rel8
    jne jxx_forward_rel8
    jbe jxx_forward_rel8
    ja  jxx_forward_rel8
    js  jxx_forward_rel8
    jns jxx_forward_rel8
    jp  jxx_forward_rel8
    jnp jxx_forward_rel8
    jl  jxx_forward_rel8
    jge jxx_forward_rel8
    jle jxx_forward_rel8
    jg  jxx_forward_rel8

    jo  jxx_backward_rel8
    jno jxx_backward_rel8
    jb  jxx_backward_rel8
    jae jxx_backward_rel8
    jz  jxx_backward_rel8
    je  jxx_backward_rel8
    jnz jxx_backward_rel8
    jne jxx_backward_rel8
    jbe jxx_backward_rel8
    ja  jxx_backward_rel8
    js  jxx_backward_rel8
    jns jxx_backward_rel8
    jp  jxx_backward_rel8
    jnp jxx_backward_rel8
    jl  jxx_backward_rel8
    jge jxx_backward_rel8
    jle jxx_backward_rel8
    jg  jxx_backward_rel8

jxx_forward_rel8:

; ------------------------------------------------------------------------------
;                         Conditional jumps (rel32)
; ------------------------------------------------------------------------------

jxx_backward_rel32:

    db 97 dup 0

    jo  jxx_forward_rel32
    jno jxx_forward_rel32
    jb  jxx_forward_rel32
    jae jxx_forward_rel32
    jz  jxx_forward_rel32
    je  jxx_forward_rel32
    jnz jxx_forward_rel32
    jne jxx_forward_rel32
    jbe jxx_forward_rel32
    ja  jxx_forward_rel32
    js  jxx_forward_rel32
    jns jxx_forward_rel32
    jp  jxx_forward_rel32
    jnp jxx_forward_rel32
    jl  jxx_forward_rel32
    jge jxx_forward_rel32
    jle jxx_forward_rel32
    jg  jxx_forward_rel32

    jo  jxx_backward_rel32
    jno jxx_backward_rel32
    jb  jxx_backward_rel32
    jae jxx_backward_rel32
    jz  jxx_backward_rel32
    je  jxx_backward_rel32
    jnz jxx_backward_rel32
    jne jxx_backward_rel32
    jbe jxx_backward_rel32
    ja  jxx_backward_rel32
    js  jxx_backward_rel32
    jns jxx_backward_rel32
    jp  jxx_backward_rel32
    jnp jxx_backward_rel32
    jl  jxx_backward_rel32
    jge jxx_backward_rel32
    jle jxx_backward_rel32
    jg  jxx_backward_rel32

    db 97 dup 0

jxx_forward_rel32:

; ------------------------------------------------------------------------------
;                     jecxz / jrcxz (rel8 only is available)
; ------------------------------------------------------------------------------

jecxz_backward_rel8:

    jecxz jecxz_forward_rel8
    jrcxz jecxz_forward_rel8

    jecxz jecxz_backward_rel8
    jrcxz jecxz_backward_rel8

jecxz_forward_rel8:

; ------------------------------------------------------------------------------
;                  loop / loope / loopne (rel8 only is available)
; ------------------------------------------------------------------------------

loop_backward:

    loop   loop_forward
    loope  loop_forward
    loopne loop_forward

loop_forward:

    loop   loop_backward
    loope  loop_backward
    loopne loop_backward
