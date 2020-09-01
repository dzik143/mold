;###############################################################################
;
; Process each (idx, value) pairs in array or string.
;
; rcx - array or string (IN / Variant_t)
; rdx - index iterator (OUT / uint32*)
; r8  - value iterator (OUT / Variant_t)
; r9  - body loop callback (IN / function pointer)
;
;###############################################################################

__MOLD_ForDriver_IndexesAndValuesInArrayOrString:

    cmp     [rcx + Variant_t.type], VARIANT_ARRAY
    jz      __MOLD_ForDriver_IndexesAndValuesInArray.unsafeEntry

    cmp     [rcx + Variant_t.type], VARIANT_STRING
    jz      __MOLD_ForDriver_IndexesAndValuesInString.unsafeEntry
    jmp     __MOLD_PrintErrorAndDie.arrayOrStringExpected
