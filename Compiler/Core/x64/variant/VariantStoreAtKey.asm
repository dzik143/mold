;###############################################################################
;
; Store single item in the box using string key.
; x{key} = ...
;
; rcx = box            (Variant_t) (IN)
; rdx = key            (Variant_t) (IN)
; r8  = value to store (Variant_t) (IN)
;
;###############################################################################

proc __MOLD_VariantStoreAtKey
    ; TODO: Avoid temp stack values.
    local .keyPtr   dq ?
    local .valuePtr dq ?
    local .box      dq ?

    DEBUG_CHECK_VARIANT rcx
    DEBUG_CHECK_VARIANT rdx

    ; TODO: Optimize it.
    push      rcx rdx r8
    mov       rcx, r8
    call      __MOLD_VariantAddRef
    pop       r8 rdx rcx
    ; END OF TODO

    mov       eax, [rcx + Variant_t.type]
    cmp       eax, VARIANT_MAP
    je        .map

    cmp       eax, VARIANT_OBJECT
    jnz       __MOLD_PrintErrorAndDie.mapOrObjectExpected

    ; --------------------------------------------------------------------------
    ;                        Hash map or object
    ; ==========================================================================

.map:
.object:

    ; --------------------------------------------------------------------------
    ; Check for optimized one-character key.
    ; --------------------------------------------------------------------------

    test      [rdx + Variant_t.flags], VARIANT_FLAG_ONE_CHARACTER
    jz        .key_is_dynamic

.key_is_one_char:

    push      rcx
    push      rdx
    push      r8

    lea       rcx, [__TrashBin]
    mov       dl, byte [rdx + Variant_t.value]
    call      __MOLD_VariantStringCreateFromOneChar

    pop       r8
    pop       rdx
    pop       rcx

    lea       rdx, [__TrashBin]

.key_is_dynamic:

    cmp       [rdx + Variant_t.type], VARIANT_STRING
    jnz       __MOLD_PrintErrorAndDie.stringKeyExpected

    mov       [.box], rcx
    mov       [.keyPtr], rdx
    mov       [.valuePtr], r8

.mapRetrySearch:

    mov       r10, [rcx + Variant_t.value]   ; r10  = map buffer (Buffer_t)
    mov       r10, [r10 + Buffer_t.bytesPtr] ; r10  = map buffer (Map_t)
    mov       rdx, [rdx + Variant_t.value]   ; rcx  = key        (Buffer_t)
    push      rdx
    mov       rcx, [rdx + Buffer_t.bytesPtr] ; rcx  = key        (String_t)
    mov       r11, rcx                       ; r11  = key        (String_t)

    call      __MOLD_StringHashDJB2          ; rax  = hash (integer)

    mov       r9, [r10 + Map_t.bucketsCnt]   ; r9   = bucketsCnt      (integer)
    shl       rax, 5                         ; rax  = hash * 32       (integer)
    shl       r9, 5                          ; r9   = bucketsCnt * 32 (integer)
    dec       r9                             ; r9   = and mask        (integer)
    mov       rcx, r9                        ; rcx  = bucketsCnt

.mapSearchForFreeBucket:

    and       rax, r9                        ; rax  = bucket offset (integer)

    cmp       dword [r10 + Map_t.buckets + rax + Variant_t.type], VARIANT_UNDEFINED
    jz        .mapAllocateNewBucket

    ; TODO: Clean up this mess.
    push      rax rcx rdx r8 r9 r10 r11 r12
    mov       rcx, r11                       ; rcx  = key (String_t)
    mov       rdx, [r10 + Map_t.buckets + rax + Variant_t.value]
    mov       rdx, [rdx + Buffer_t.bytesPtr]

    lea       rcx, [rcx + String_t.text]
    lea       rdx, [rdx + String_t.text]

    cinvoke   strcmp
    test      rax, rax
    pop       r12 r11 r10 r9 r8 rdx rcx rax

    jz        .mapSetBucket

    add       rax, 32
    dec       rcx
    jnz       .mapSearchForFreeBucket

    ; --------------------------------------------------------------------------
    ; Out of space - resize map and try again
    ; --------------------------------------------------------------------------

    mov       rcx, [.box]
    call      __MOLD_VariantMapResizeTwice

    mov       rcx, [.box]
    mov       rdx, [.keyPtr]
    mov       r8,  [.valuePtr]

    jmp       .mapRetrySearch
    ;jmp    .errorOutOfSpace

    ; --------------------------------------------------------------------------
    ; Update index to keep keys order during realloc
    ; --------------------------------------------------------------------------

.mapAllocateNewBucket:

    mov       rcx, [r10 + Map_t.bucketsCnt]     ; rcx = bucketsCnt
    mov       rdx, [r10 + Map_t.bucketsUsedCnt] ; rdx = bucketsUsedCnt
    shl       rcx, 5                            ; rcx = bucketsCnt * 32 = offset(index)
    lea       rdx, [rcx + rdx * 4]              ; rdx = offset(index + bucketsUsedCnt)

    mov       [r10 + Map_t.buckets + rdx], eax  ; index[bucketsUsedCnt] = bucketIdx

    inc       [r10 + Map_t.bucketsUsedCnt]      ; bucketsUsedCnt++

.mapSetBucket:

    ; --------------------------------------------------------------------------
    ; Destroy old value if any
    ; --------------------------------------------------------------------------

    push      rax r10
    lea       rcx, [r10 + Map_t.buckets + rax + 16]  ;
    call      __MOLD_VariantDestroy                  ; map[key].destroy()
    pop       r10 rax                                ;

    ; --------------------------------------------------------------------------
    ; Store new value
    ; --------------------------------------------------------------------------

    mov       rdx, [.keyPtr]
    mov       r8, [.valuePtr]

    movdqu    xmm0, [rdx]                            ; xmm0 = key        (Variant_t)
    movdqu    xmm1, [r8]                             ; xmm1 = value      (Variant_t)

    movdqu    [r10 + Map_t.buckets + rax     ], xmm0 ; map[key] = key
    movdqu    [r10 + Map_t.buckets + rax + 16], xmm1 ; map[val] = value

.addRefKey:
    pop       rcx
    call      __MOLD_MemoryAddRef

    DEBUG_CHECK_VARIANT r8

    ret
endp
