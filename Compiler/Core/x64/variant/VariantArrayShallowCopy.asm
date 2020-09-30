__MOLD_VariantArrayShallowCopy:
    ; rcx - array (IN/OUT/Variant_t)
    push    rbp
    mov     rbp, rsp
    sub     rsp, 72

    clonedArray   EQU rbp - 8 - 16
    iteratorValue EQU rbp - 8 - 16*2
    iteratorIdx   EQU rbp - 8 - 16*2 - 8

    push    rcx
    lea     rcx, [clonedArray]
    call    __MOLD_VariantArrayCreate
    pop     rcx
    push    rcx

    lea     rdx, [iteratorIdx]
    lea     r8,  [iteratorValue]
    lea     r9,  [.insert_one_item]
    call    __MOLD_ForDriver_IndexesAndValuesInArray

    pop     rcx

    movdqu  xmm0, [clonedArray]
    movdqu  [rcx], xmm0

    DEBUG_CHECK_VARIANT rcx

    add     rsp, 72
    pop     rbp
    ret

.insert_one_item:

    lea     rcx, [clonedArray]
    mov     edx, dword [iteratorIdx]
    lea     r8,  [iteratorValue]
    call    __MOLD_VariantStoreAtIndex_variant

    ret

    restore clonedArray
    restore iteratorValue
    restore iteratorIdx
