;###############################################################################
;
; Resize the capacity of map box by two (n -> 2n).
;
; rcx = box (Variant_t) (IN/OUT)
;
;###############################################################################

proc __MOLD_VariantMapResizeTwice

    ; --------------------------------------------------------------------------
    ; Set up stack frame
    ; --------------------------------------------------------------------------

    local .newBox Variant_t ?

    push    rsi
    push    rdi
    push    r12
    push    r13

    sub     rsp, 32

    mov     r12, rcx                           ; r12 = old box

    ; --------------------------------------------------------------------------
    ; Allocate new buffer (resized)
    ; --------------------------------------------------------------------------

    mov     rcx, [r12 + Variant_t.value]       ; rax = old box (Buffer_t)
    mov     rcx, [rcx + Buffer_t.capacity]     ; rcx = old capacity
    shl     rcx, 1                             ; rcx = old capacity * 2
    call    __MOLD_MemoryAlloc                 ; rax = new box (Buffer_t)

    ; --------------------------------------------------------------------------
    ; Set up new Map_t
    ; --------------------------------------------------------------------------

    mov     [.newBox + Variant_t.type], VARIANT_MAP
    mov     [.newBox + Variant_t.value], rax   ; new box (Buffer_t)

    mov     rcx, [r12 + Variant_t.value]       ; rcx = old box (Buffer_t)
    mov     rax, [rax + Buffer_t.bytesPtr]     ; rax = new box (Map_t)
    mov     rcx, [rcx + Buffer_t.bytesPtr]     ; rcx = old box (Map_t)

    mov     r13, [rcx + Map_t.bucketsUsedCnt]  ; rdx = old bucketsUsedCnt
    mov     rdx, [rcx + Map_t.bucketsCnt]      ; r13 = old bucketsCnt
    mov     r8,  [rcx + Object_t.vtable]       ; r8  = old vtable (object only)
    lea     r9,  [rdx * 2]                     ; r9  = old bucketsCnt * 2

    mov     [rax + Map_t.bucketsCnt], r9       ; newBox.bucketsCnt    = old bucketsCnt * 2
    mov     [rax + Object_t.vtable], r8        ; newBox.vtable        = old vtable

    ; --------------------------------------------------------------------------
    ; Copy all entries one-by-one from old map to new one.
    ; --------------------------------------------------------------------------

    shl     r9, 4                              ; r9  = oldMap.bucketsCnt * 32
    lea     rdi, [rcx + Map_t.buckets]         ; rdi = oldMap.buckets
    lea     rsi, [rdi + r9]                    ; rsi = oldMap.index

.cloneNextBucket:

    ; --------------------------------------------------------------------------
    ; Insert bucket to new map
    ; --------------------------------------------------------------------------

    mov     eax, [rsi]                         ; eax = #n
    mov     rdx, rdi                           ; rdx = key #0
    lea     rcx, [.newBox]                     ; rcx = newBox
    add     rdx, rax                           ; rdx = key #n
    lea     r8, [rdx + 16]                     ; r8  = value #n

    call    __MOLD_VariantStoreAtKey           ; newBox[key] = value

.emptyBucket:

    add     rsi, 4
    dec     r13
    jnz     .cloneNextBucket

.cloneBucketsDone:

    ; --------------------------------------------------------------------------
    ; Swap buffer contents
    ; --------------------------------------------------------------------------

    mov     rcx, [.newBox + Variant_t.value]   ; rcx = newBox (Buffer_t)
    mov     rdx, [r12     + Variant_t.value]   ; rdx = oldBox (Buffer_t)

    mov     rax, [rcx + Buffer_t.capacity]     ; rax             = newBox.capacity
    mov     [rdx + Buffer_t.capacity], rax     ; oldBox.capacity = newBox.capacity

    mov     rax, [rcx + Buffer_t.bytesPtr]     ; rax = newBox.bytesPtr
    mov     r8,  [rdx + Buffer_t.bytesPtr]     ; r8  = oldBox.bytesPtr

    mov     [rdx + Buffer_t.bytesPtr], rax     ; newBox.bytesPtr = oldBox.bytesPtr
    mov     [rcx + Buffer_t.bytesPtr], r8      ; oldBox.bytesPtr = newBox.bytesPtr

    ; --------------------------------------------------------------------------
    ; Free old buffer
    ; --------------------------------------------------------------------------

    lea     rcx, [.newBox]
    call    __MOLD_VariantDestroy

    ; --------------------------------------------------------------------------
    ; Clean up stack frame
    ; --------------------------------------------------------------------------

    add     rsp, 32

    pop     r13
    pop     r12
    pop     rdi
    pop     rsi
    ret
endp
