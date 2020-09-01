;###############################################################################
;
; Get human-readable type name for given variant variable.
;
; rcx = x  (Variant_t) (IN)
; rdx = rv (Variant_t) (OUT)
;
;###############################################################################

__MOLD_VariantTypeOf:

    DEBUG_CHECK_VARIANT rcx

    mov  eax, [rcx + Variant_t.type]
    cmp  eax, VARIANT_TYPE_MAX
    ja   __MOLD_PrintErrorAndDie.badType

    shl  rax, 4
    mov  rcx, qword [__MOLD_TypeNames + rax]
    mov  rax, qword [__MOLD_TypeNames + rax + 8]

    mov  [rdx], rcx
    mov  [rdx + 8], rax

    DEBUG_CHECK_VARIANT rdx

    ret
