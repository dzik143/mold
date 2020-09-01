;###############################################################################
;
; Increase reference counter for dynamically alocatted variables.
; Do nothing for primitives, but it still correct.
;
; rcx = variable to reference (Variant_t)
;
;###############################################################################

__MOLD_VariantAddRef:
    ; rcx = Variant_t
    ; TODO: Clean up this mess.

    DEBUG_CHECK_VARIANT rcx

    cmp   [rcx + Variant_t.type], VARIANT_STRING
    jnz    .notAString

.string:
    test  [rcx + Variant_t.flags], VARIANT_FLAG_ONE_CHARACTER
    jnz   .noRefNeeded
    jmp   .addRef

.notAString:
    cmp   [rcx + Variant_t.type], VARIANT_ARRAY
    jb    .noRefNeeded

.addRef:
    push  rcx
    mov   rcx, [rcx + Variant_t.value]
    call  __MOLD_MemoryAddRef
    pop   rcx

    DEBUG_CHECK_VARIANT rcx

.noRefNeeded:
    ret
