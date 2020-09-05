;###############################################################################
;
; Create new array variable.
;
; rcx = pointer where to store new allocated array (Variant_t) (OUT)
;
;###############################################################################

__MOLD_VariantArrayCreate:
    ; rcx = rv (Variant_t)
    push    rcx
    mov     rcx, VARIANT_ARRAY_DEFAULT_BUFFER_SIZE
    call    __MOLD_MemoryAlloc
    pop     rcx

    mov     [rcx + Variant_t.type], VARIANT_ARRAY
    mov     [rcx + Variant_t.flags], 0
    mov     [rcx + Variant_t.value], rax

    DEBUG_CHECK_VARIANT rcx

    ret

__MOLD_VariantArrayCreateFromInitList:
    DEBUG_CHECK_VARIANT rdx

    ; TODO: Clean up this mess.
    movdqu  xmm0, [rdx]
    movdqu  [rcx], xmm0
    call    __MOLD_VariantArrayShallowCopy

    DEBUG_CHECK_VARIANT rcx

    ret
