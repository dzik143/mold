;###############################################################################
;
; Wrapper for GetAddressProc().
;
; RCX - pointer to module loaded by __MOLD_OpenExternalModule() before (IN/VARIANT).
; RDX - function name (IN/VARIANT).
;
; RETURNS: Function address (VARIANT).
;
;###############################################################################

__MOLD_LoadExternalFunction:

    sub     rsp, 32
    mov     rcx, [rcx + Variant_t.value]
    mov     rdx, [rdx + Variant_t.value]
    call    [GetProcAddress]
    mov     [rdi + Variant_t.type],  VARIANT_INTEGER
    mov     [rdi + Variant_t.value], rax

    DEBUG_CHECK_VARIANT rdi

    add     rsp, 32
    ret
