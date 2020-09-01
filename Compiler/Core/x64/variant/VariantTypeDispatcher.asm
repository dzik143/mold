__MOLD_VariantTypeDispatcherXX:
    ; rcx = x
    ; rdx = y
    ; r11 = jmptable

    DEBUG_CHECK_VARIANT rcx
    DEBUG_CHECK_VARIANT rdx

    mov     r9d,  [rcx + Variant_t.type]  ; r9  = x.type
    mov     r10d, [rdx + Variant_t.type]  ; r10 = y.type
    cmp     r9d, r10d
    jnz     __MOLD_PrintErrorAndDie.implicitConversion
    jmp     __MOLD_VariantTypeDispatcherX.final

__MOLD_VariantTypeDispatcherX:
    ; rcx = x
    ; r11 = jmptable

    DEBUG_CHECK_VARIANT rcx

    mov     r9d,  [rcx + Variant_t.type]  ; r9  = x.type

.final:
    add     r11, r9
    add     r11, r9
    sub     r11, VARIANT_INTEGER * 2
    cmp     r9d, VARIANT_DOUBLE
    ja      __MOLD_PrintErrorAndDie.badType
    jmp     r11
