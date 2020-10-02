;###############################################################################
;
; Wrap primitive value into variant.
;
; rcx / xmm0 - source primitive value (IN)
; rdx        - destination variant    (OUT)
;
;###############################################################################

__MOLD_VariantCreateFrom_int32:

    movsxd rcx, ecx                                ; rcx = int64(src)

__MOLD_VariantCreateFrom_int64:

    mov    [rdx + Variant_t.type], VARIANT_INTEGER ; dst.type  = integer
    mov    [rdx + Variant_t.value], rcx            ; dst.value = src
    ret                                            ;

__MOLD_VariantCreateFrom_bool32:

    and    ecx, 1
    mov    [rdx + Variant_t.type], VARIANT_BOOLEAN ; dst.type  = boolean
    mov    qword [rdx + Variant_t.value], rcx      ; dst.value = src
    ret                                            ;

__MOLD_VariantCreateFrom_float64:

    mov    [rdx + Variant_t.type], VARIANT_DOUBLE  ; dst.type  = float64
    movq   [rdx + Variant_t.value], xmm0           ; dst.value = src
    ret                                            ;
