;###############################################################################
;
; Clone variant from one variable to another
;
; rcx = destination (Variant_t)
; rdx = source      (Variant_t)
;
;###############################################################################

__MOLD_VariantMove:

    DEBUG_CHECK_VARIANT rdx

    mov   rax, qword [rdx + Variant_t.type]  ; rax = type:flags (32bit + 32bit)
    mov   rdx, qword [rdx + Variant_t.value] ; rdx = value      (64bit)

    mov   qword [rcx + Variant_t.type] , rax
    mov   qword [rcx + Variant_t.value] , rdx

    DEBUG_CHECK_VARIANT rcx

    ; TODO: Clean up this mess.
    cmp  eax, VARIANT_STRING
    jnz  .notAString

.string:
    test [rcx + Variant_t.flags], VARIANT_FLAG_ONE_CHARACTER
    jnz  .noRefNeeded
    mov  rcx, rdx
    call __MOLD_MemoryAddRef
    ret

.notAString:
    cmp  eax, VARIANT_ARRAY
    jb   .noRefNeeded

.addRef:
    mov  rcx, rdx
    call __MOLD_MemoryAddRef

.noRefNeeded:
    ret
