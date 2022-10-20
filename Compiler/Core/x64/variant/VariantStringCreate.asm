;###############################################################################
;
; Allocate new string.
;
; rcx = pointer to store new allocated string (Variant_t *) (OUT)
; edx = initial capacity (int32) (IN)
;
;###############################################################################

__MOLD_VariantStringCreate:

    push    rcx
    lea     ecx, [edx + VARIANT_STRING_DEFAULT_BUFFER_SIZE]
    call    __MOLD_MemoryAlloc
    pop     rcx

    mov     [rcx + Variant_t.type], VARIANT_STRING
    mov     [rcx + Variant_t.flags], 0
    mov     [rcx + Variant_t.value], rax

    DEBUG_CHECK_VARIANT rcx

    ret

__MOLD_VariantStringCreateFromOneChar:

    push    rcx
    push    rdx

    xor     edx, edx
    call    __MOLD_VariantStringCreate

    pop     rdx
    pop     rcx

    mov     rax, [rcx + Variant_t.value]
    mov     rax, [rax + Buffer_t.bytesPtr]
    mov     byte [rax + String_t.length], 1
    mov     byte [rax + String_t.text], dl

    ret
