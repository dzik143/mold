;###############################################################################
;
; Load item stored at given string key.
; rv = x{key}
;
; rcx = box (Variant_t) (IN)
; rdx = key (Variant_t) (IN)
; r8  = rv  (Variant_t) (OUT)
;
;###############################################################################

__MOLD_VariantLoadFromKey:
__MOLD_VariantLoadFromKey_variant:
__MOLD_VariantLoadFromKey_string:

    ; TODO: Clean up this mess.
    DEBUG_CHECK_VARIANT rcx
    DEBUG_CHECK_VARIANT rdx

    push   rbp
    mov    rbp, rsp
    sub    rsp, 32

    mov    eax, [rcx + Variant_t.type]

    cmp    eax, VARIANT_MAP
    je     .map

    cmp    eax, VARIANT_OBJECT
    jne    __MOLD_PrintErrorAndDie.mapOrObjectExpected

    ; ==========================================================================
    ;                           Hash map or object
    ; --------------------------------------------------------------------------

.map:
.object:

    ; --------------------------------------------------------------------------
    ; Check for optimized one-character key.
    ; --------------------------------------------------------------------------

    test      [rdx + Variant_t.flags], VARIANT_FLAG_ONE_CHARACTER
    jz        .key_is_dynamic

.key_is_one_char:

    mov       al, byte [rdx + Variant_t.value]
    lea       rdx, [OneCharacterStringTemp]
    mov       [OneCharacterStringTempPeek], al

.key_is_dynamic:

    cmp    [rdx + Variant_t.type], VARIANT_STRING
    jnz    __MOLD_PrintErrorAndDie.stringKeyExpected

    mov    r10, [rcx + Variant_t.value]         ; r10  = map  (Buffer_t)
    mov    r10, [r10 + Buffer_t.bytesPtr]       ; r10  = map  (Map_t)
    mov    rdx, [rdx + Variant_t.value]         ; rdx  = key  (Buffer_t)
    mov    rcx, [rdx + Buffer_t.bytesPtr]       ; rcx  = key  (String_t)
    lea    r11, [rcx + String_t.text]           ; r11  = key  (String_t)

    call   __MOLD_StringHashDJB2                ; rax  = hash (integer)

    mov    r9, [r10 + Map_t.bucketsCnt]         ; r9   = bucketsCnt      (integer)
    shl    rax, 5                               ; rax  = hash * 32       (integer)
    mov    rcx, r9                              ; rcx  = bucketsCnt      (integer)
    shl    r9, 5                                ; r9   = bucketsCnt * 32 (integer)
    dec    r9                                   ; r9   = mask            (integer)

    and    rax, r9                              ; rax  = bucket offset (integer)
    cmp    dword [r10 + Map_t.buckets + rax + Variant_t.type], VARIANT_UNDEFINED
    jz     .mapBucketNotFound

.mapSearchForBucket:
    ; TODO: Optimize it - don't search whole map.
    and    rax, r9                              ; rax  = bucket offset (integer)
    mov    rdx, [r10 + Map_t.buckets + rax + Variant_t.value]
    test   rdx, rdx
    jz     .mapSearchForBucketNext

    push   rax rcx rdx r8 r9 r10 r11
    mov    rdx, [rdx + Buffer_t.bytesPtr]
    lea    rdx, [rdx + String_t.text]
    mov    rcx, r11                             ; rcx  = key (String_t)
    cinvoke strcmp
    test   rax, rax
    pop    r11 r10 r9 r8 rdx rcx rax
    jz     .mapBucketFound

.mapSearchForBucketNext:
    add    rax, 32
    dec    rcx
    jnz    .mapSearchForBucket

.mapBucketNotFound:
    mov    [r8 + Variant_t.type], VARIANT_UNDEFINED
    jmp    .final

.mapBucketFound:
    movdqu xmm0, [r10 + Map_t.buckets + rax + 16] ; xmm0 = value
    movdqu [r8], xmm0                             ; rv   = map[key]

    ; TODO: Clean up this mess.
    push  r8
    mov   rcx, r8
    call  __MOLD_VariantAddRef
    pop   r8

.final:

    DEBUG_CHECK_VARIANT r8

    leave
    ret
