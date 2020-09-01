;###############################################################################
;
; Process each (key, value) pairs in map.
;
; rcx - box (IN / Variant_t)
; rdx - key iterator (OUT / Variant_t)
; r8  - value iterator (OUT / Variant_t)
; r9  - body loop callback (IN / function pointer)
;
;###############################################################################

__MOLD_ForDriver_KeysAndValuesInMap:

    cmp     [rcx + Variant_t.type], VARIANT_MAP
    jz      .goOn

    cmp     [rcx + Variant_t.type], VARIANT_OBJECT
    jnz     __MOLD_PrintErrorAndDie.mapOrObjectExpected

.goOn:
.unsafeEntry:

    mov     rcx, [rcx + Variant_t.value]      ; rcx = map (Buffer_t)
    mov     rcx, [rcx + Buffer_t.bytesPtr]    ; rcx = map (Map_t)
    mov     r10, [rcx + Map_t.bucketsUsedCnt] ; r10 = map.bucketsUsedCnt (int64)

    or      r10, r10
    jz      .mapEmpty

    mov     rax, [rcx + Map_t.bucketsCnt]     ; rax = map.bucketsCnt
    lea     r11, [rcx + Map_t.buckets]        ; r11 = map.buckets
    shl     rax, 5                            ; rax = map.bucketsCnt * 32
    lea     rcx, [r11 + rax]                  ; rcx = map.index

.mapNextItem:

    mov     eax, [rcx]                        ; rax = bucketIdx
    add     rax, r11                          ; rax = buckets[bucketIdx]

    ; --------------------------------------------------------------------------
    ; Update {key,value} iterators
    ; --------------------------------------------------------------------------

    movdqu  xmm0, [rax]                       ; xmm0 = fetch next key
    movdqu  xmm1, [rax + 16]                  ; xmm1 = fetch next value

    movdqu  [rdx], xmm0                       ; iterator.key   = next key
    movdqu  [r8],  xmm1                       ; iterator.value = next value

    ; --------------------------------------------------------------------------
    ; Process next (key:value) pair
    ; --------------------------------------------------------------------------

    ; TODO: Clean up this mess.
    push    rcx rdx r8 r9 r10 r11
    call    r9
    pop     r11 r10 r9 r8 rdx rcx

    ; --------------------------------------------------------------------------
    ; Go to next pair
    ; --------------------------------------------------------------------------

    add     rcx, 4
    dec     r10
    jne     .mapNextItem

.mapEmpty:
.done:

    ret
