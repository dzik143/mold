;###############################################################################
;
; Negate variant variable.
; rv = -x
;
; rcx = x (Variant_t) (IN)
; rdx = y (Variant_t) (OUT)
;
;###############################################################################

__MOLD_VariantNeg:

    mov     r10, [rcx + Variant_t.value]        ; r10 = x.value
    lea     r11, [.jmpTable]                    ; r11 = jmp table
    jmp     __MOLD_VariantTypeDispatcherX       ; dispatch code

.jmpTable:
    jmp short  .case_i                    ; -integer
    jmp short  .not_implemented           ; -float
    jmp short  .case_d                    ; -double

.signBit dq 0x8000000000000000

    ; --------------------------------------------------------------------------
    ; -integer
    ; --------------------------------------------------------------------------

.case_i:
    neg     r10                           ; r10 = -x.value
    jmp     .final

    ; --------------------------------------------------------------------------
    ; -double
    ; --------------------------------------------------------------------------

.case_d:
    xor     r10, [.signBit]

.final:
    mov     [rdx + Variant_t.type ], r9d  ; rv.type  =  x.type
    mov     [rdx + Variant_t.value], r10  ; rv.value = -x.value
    ret

.not_implemented:
    jmp __MOLD_PrintErrorAndDie.notImplemented
