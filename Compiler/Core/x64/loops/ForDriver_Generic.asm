;###############################################################################
;
; Process each (key, value) pairs in generic box.
;
; rcx - any box container (IN / Variant_t)
; rdx - index/key iterator (OUT / Variant_t / uint32*)
; r8  - value iterator (OUT / Variant_t)
; r9  - body loop callback (IN / function address)
;
;###############################################################################

__MOLD_ForDriver_Generic:

    ; --------------------------------------------------------------------------
    ; Redirect unused iterators to trash bin
    ; --------------------------------------------------------------------------

    lea     rax, [__TrashBin]
    test    rdx, rdx
    cmovz   rdx, rax

    test    r8, r8
    cmovz   rdx, rax

    ; --------------------------------------------------------------------------
    ; Dispatch code
    ; --------------------------------------------------------------------------

    mov     eax, [rcx + Variant_t.type]
    cmp     eax, VARIANT_TYPE_MAX
    ja      __MOLD_PrintErrorAndDie.notIterable ; TODO: Change to badType

    jmp     qword [.jmpTable + rax*8]

.jmpTable:
    dq __MOLD_PrintErrorAndDie.notIterable              ; undefined
    dq __MOLD_PrintErrorAndDie.notIterable              ; null
    dq __MOLD_PrintErrorAndDie.notIterable              ; integer
    dq __MOLD_PrintErrorAndDie.notIterable              ; float32
    dq __MOLD_PrintErrorAndDie.notIterable              ; float64
    dq __MOLD_ForDriver_IndexesAndValuesInString.unsafeEntry
    dq __MOLD_PrintErrorAndDie.notIterable              ; boolean
    dq __MOLD_ForDriver_IndexesAndValuesInArray.unsafeEntry
    dq __MOLD_ForDriver_KeysAndValuesInMap.unsafeEntry
    dq __MOLD_ForDriver_KeysAndValuesInMap.unsafeEntry  ; object (TODO: Not implemented yet)
