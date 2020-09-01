;###############################################################################
;
; Wrapper for LoadLibrary().
;
; RCX - Module path (IN/VARIANT)
;
; RETURNS: Pointer to loaded module (VARIANT)
;
;###############################################################################

__MOLD_OpenExternalModule:

    sub     rsp, 32
    mov     rcx, [rcx + Variant_t.value]
    call    [LoadLibrary]
    mov     [rdi + Variant_t.type],  VARIANT_INTEGER
    mov     [rdi + Variant_t.value], rax

    DEBUG_CHECK_VARIANT rdi

    add     rsp, 32
    ret
