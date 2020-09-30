;###############################################################################
;
; Store 32-bit integer in the array.
; box[i] = value
;
; rcx = box   (Variant_t) (IN)
; rdx = index (int32)   ) (IN)
; r8  = value (int64)     (IN)
;
;###############################################################################

__MOLD_VariantStoreAtIndex_int32:
    lea     rax, [__TempInteger]
    movsxd  r8, r8d
    jmp     __MOLD_VariantStoreAtIndex_primitiveDone

;###############################################################################
;
; Store 32-bit boolean in the array.
; box[i] = value
;
; rcx = box   (Variant_t) (IN)
; rdx = index (int32)     (IN)
; r8  = value (bool32)    (IN)
;
;###############################################################################

__MOLD_VariantStoreAtIndex_bool32:
    lea     rax, [__TempBoolean]
    jmp     __MOLD_VariantStoreAtIndex_primitiveDone

;###############################################################################
;
; Store 64-bit floating point in the array.
; box[i] = value
;
; rcx  = box   (Variant_t) (IN)
; rdx  = index (int32)     (IN)
; xmm2 = value (float64)   (IN)
;
;###############################################################################

__MOLD_VariantStoreAtIndex_float64:
    ; TODO: Clean up this mess.
    movq    r8, xmm2
    lea     rax, [__TempFloat]

;###############################################################################
;
; Internal helper.
;
;###############################################################################

__MOLD_VariantStoreAtIndex_primitiveDone:
    mov     [rax + Variant_t.value], r8
    mov     r8, rax
    jmp     __MOLD_VariantStoreAtIndex_variant

;###############################################################################
;
; Store one variant item in the array.
; x[i] = ...
;
; rcx = box   (Variant_t) (IN)
; rdx = index (int32)     (IN)
; r8  = rv    (Variant_t) (IN)
;
;###############################################################################

__MOLD_VariantStoreAtIndex:
__MOLD_VariantStoreAtIndex_string:
__MOLD_VariantStoreAtIndex_variant:

    push    rbp
    mov     rbp, rsp
    sub     rsp, 32

    DEBUG_CHECK_VARIANT rcx

    ; TODO: Optimize it.
    push   rcx rdx r8
    mov    rcx, r8
    call   __MOLD_VariantAddRef
    pop    r8 rdx rcx
    ; END OF TODO

    mov    eax, [rcx + Variant_t.type]
    cmp    eax, VARIANT_ARRAY
    jnz    __MOLD_PrintErrorAndDie.arrayExpected

    ; --------------------------------------------------------------------------
    ;                          Integer indexed array
    ; ==========================================================================

.array:

    test    dword [rcx + Variant_t.flags], VARIANT_FLAG_DUPLICATE_ON_FIRST_WRITE
    jz      .fetch_array_buffer             ;

    push    rdx                             ;
    push    r8                              ;

    call    __MOLD_VariantArrayShallowCopy  ;

    pop     r8                              ;
    pop     rdx                             ;

.fetch_array_buffer:

    mov     r10, [rcx + Variant_t.value]    ; r10 = array buffer (Buffer_t)
                                            ; rdx = index (int32)
    or      edx, edx
    js      __MOLD_PrintErrorAndDie.negativeIndex

    ; --------------------------------------------------------------------------
    ; Check is there space for new item
    ; --------------------------------------------------------------------------

    mov     r9d, edx                        ; r9 = idx    (integer)
    shl     r9d, 4                          ; r9 = idx*16 (integer)

.checkBounds:

    mov     rax, [r10 + Buffer_t.capacity]  ; rax = capacity
    sub     rax, 16                         ; rax = capacity - Array_t head
    cmp     r9, rax                         ; is index in bound?
    jb      .arrayNoReallocNeeded           ;

.arrayReallocBuffer:

    push    rdx r8 r9 r10 r11               ;
    mov     rcx, r10                        ;
    call    __MOLD_MemoryIncreaseBufferTwice;

    pop     r11 r10 r9 r8 rdx               ;
    jmp     .checkBounds                    ;

.arrayNoReallocNeeded:

    mov     rcx, [r10 + Buffer_t.bytesPtr]  ; rcx  = array buffer (Array_t)
    inc     edx                             ; edx = edx + 1
    mov     rax, [rcx + Array_t.itemsCnt]   ; eax = array.itemsCnt (integer)
    lea     r10, [rcx + Array_t.items + r9] ; r10 = array slot to fill

    ; --------------------------------------------------------------------------
    ; Set new size if needed
    ; --------------------------------------------------------------------------

    cmp     rdx, rax                        ; idx + 1 ? size
    cmova   rax, rdx                        ; rax = max(idx + 1, size)
    mov     [rcx + Array_t.itemsCnt], rax   ; array.size = max(idx + 1, size)

    ; --------------------------------------------------------------------------
    ; Destroy old value if any
    ; --------------------------------------------------------------------------

    push    r8 r10                          ;
    mov     rcx, r10                        ;
    call    __MOLD_VariantDestroy           ; array[idx].destroy()
    pop     r10 r8                          ;

    ; --------------------------------------------------------------------------
    ; Put new item into array slot
    ; --------------------------------------------------------------------------

    movdqu  xmm0, [r8]                      ; xmm0 = value (Variant_t)
    movdqu  [r10], xmm0                     ; array[idx] = value

    DEBUG_CHECK_VARIANT r8                  ;

    add     rsp, 32                         ;
    pop     rbp                             ;
    ret
