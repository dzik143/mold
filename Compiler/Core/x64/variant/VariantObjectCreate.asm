;###############################################################################
;
; Create new object.
;
; rcx = pointer to store new allocated object (Variant_t)
; rdx = vtable (custom)
;
;###############################################################################

__MOLD_VariantObjectCreate:

    ; rcx = rv (Variant_t)
    ; rdx = vtable
    push    rcx rdx
    mov     rcx, VARIANT_OBJECT_DEFAULT_BUFFER_SIZE
    call    __MOLD_MemoryAlloc
    pop     rdx rcx

    mov     [rcx + Variant_t.type], VARIANT_OBJECT
    mov     [rcx + Variant_t.value], rax

    mov     rax, [rax + Buffer_t.bytesPtr]
    mov     [rax + Object_t.bucketsCnt], VARIANT_OBJECT_DEFAULT_BUCKETS_CNT
    mov     [rax + Object_t.vtable], rdx

    DEBUG_CHECK_VARIANT rcx

    ret
