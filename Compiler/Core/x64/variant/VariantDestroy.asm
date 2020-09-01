;###############################################################################
;
; Free all resources alocated by variant variable if any.
; Do nothing for privitives, but it's still correct.
;
; rcx = variable to free (Variant_t)
;
;###############################################################################

__MOLD_VariantDestroy:

    DEBUG_CHECK_VARIANT rcx

    mov    eax, [rcx + Variant_t.type]
    mov    [rcx + Variant_t.type], VARIANT_UNDEFINED

    cmp    eax, VARIANT_ARRAY
    jz     .freeArray

    cmp    eax, VARIANT_MAP
    jz     .freeMap

    cmp    eax, VARIANT_STRING
    jz     .freeString

    cmp    eax, VARIANT_OBJECT
    jz     .freeObject

.nothingToDo:
    mov    [rcx + Variant_t.value], 0
    ret

    ; ##########################################################################
    ;                              Destroy array
    ; ##########################################################################

.freeArray:

    mov    rax, [rcx + Variant_t.value]
    mov    [rcx + Variant_t.value], 0
    mov    rcx, rax
    push   rcx

    cmp    [rcx + Buffer_t.refCnt], 1
    ja     .freeArrayItemsDone

    push   rbx
    push   rsi

    mov    rcx, [rcx + Buffer_t.bytesPtr]
    mov    rbx, [rcx + Array_t.itemsCnt]

    or     rbx, rbx
    jz     .emptyArray

    cmp    [rcx + Array_t.innerType], 0
    jnz    .nonVariantArray

    lea    rsi, [rcx + Array_t.items]

.freeArrayItem:
    mov    rcx, rsi
    call   __MOLD_VariantDestroy

    add    rsi, 16
    dec    rbx
    jnz    .freeArrayItem

.emptyArray:
.nonVariantArray:
    pop    rsi
    pop    rbx

.freeArrayItemsDone:
    pop    rcx
    call   __MOLD_MemoryRelease
    ret

    ; ##########################################################################
    ;                           Destroy map or object
    ; ##########################################################################

.freeMap:
.freeObject:

    push   r12
    mov    r12, rcx                         ; r12 = dst

    mov    rcx, [rcx + Variant_t.value]     ; rcx = Buffer_t

    cmp    [rcx + Buffer_t.refCnt], 1
    ja     .destroyMapBucketsDone

    ; --------------------------------------------------------------------------
    ; Destroy keys and values stored in buckets
    ; --------------------------------------------------------------------------

    push    rbx
    push    rsi
    push    rdi

    mov     rcx, [rcx + Buffer_t.bytesPtr]     ; rcx = map (Map_t)
    mov     rbx, [rcx + Map_t.bucketsUsedCnt]  ; rdx = map.bucketsUsedCnt

    or      rbx, rbx
    jz      .emptyMap

    mov     rax, [rcx + Map_t.bucketsCnt]      ; rax = map.bucketsCnt
    lea     rdi, [rcx + Map_t.buckets]         ; rdi = bucket #0
    shl     rax, 5                             ; rax = map.bucketsCnt * 32
    lea     rsi, [rdi + rax]                   ; rsi = map.index

.destroyNextMapBucket:

    ; --------------------------------------------------------------------------
    ; Destroy bucket #n
    ; --------------------------------------------------------------------------

    mov     ecx, [rsi]                         ; eax = #n
    lea     rcx, [rdi + rcx]                   ; rcx = key #n
    call    __MOLD_VariantDestroy              ; map.index[n].key.destroy()

    mov     ecx, [rsi]                         ; eax = #n
    lea     rcx, [rdi + rcx + 16]              ; rcx = value #n
    call    __MOLD_VariantDestroy              ; map.index[n].value.destroy()

    add     rsi, 4
    dec     rbx
    jnz     .destroyNextMapBucket

.emptyMap:

    pop     rdi
    pop     rsi
    pop     rbx

.destroyMapBucketsDone:

    ; --------------------------------------------------------------------------
    ; Destroy box holder itself (VARIANT_MAP or VARIANT_OBJECT)
    ; --------------------------------------------------------------------------

    mov      rcx, [r12 + Variant_t.value]
    call     __MOLD_MemoryRelease

    mov      [r12 + Variant_t.value], 0

    pop      r12
    ret

    ; ##########################################################################
    ;                              Destroy string
    ; ##########################################################################

.freeString:
    test   [rcx + Variant_t.flags], VARIANT_FLAG_ONE_CHARACTER
    jnz    .oneCharacterString

    push   rcx
    mov    rcx, [rcx + Variant_t.value]
    call   __MOLD_MemoryRelease
    pop    rcx

.oneCharacterString:
    mov    [rcx + Variant_t.value], 0
    ret
