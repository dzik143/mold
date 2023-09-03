;###############################################################################
;
; Cast variant into desired primitive value or throw exception if not
; possible.
;
; rcx - source variable (Variant_t *) (IN)
;
; RETURNS: Primitive values stored in source variant variable.
;
;###############################################################################

__MOLD_VariantCastTo_int32:
__MOLD_VariantCastTo_int64:

    cmp    [rcx + Variant_t.type], VARIANT_INTEGER ; Is it integer?
    jnz    __MOLD_PrintErrorAndDie.integerExpected ; Fail if non-integer
    mov    rcx, qword [rcx + Variant_t.value]      ; rcx = x.value
    ret                                            ;

__MOLD_VariantCastTo_bool32:

    cmp    [rcx + Variant_t.type], VARIANT_BOOLEAN ; Is it boolean?
    jnz    __MOLD_PrintErrorAndDie.booleanExpected ; Fail if non-boolean
    mov    ecx, dword [rcx + Variant_t.value]      ; rcx = x.value
    ret                                            ;

__MOLD_VariantCastTo_float64:

    cmp    [rcx + Variant_t.type], VARIANT_DOUBLE  ; Is it float64?
    jnz    __MOLD_PrintErrorAndDie.floatExpected   ; Fail if non-float64
    movq   xmm0, qword [rcx + Variant_t.value]     ; rcx = x.value
    ret                                            ;
