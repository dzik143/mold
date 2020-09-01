;###############################################################################
;
; Load item stored at given integer index.
; rv = x[i]
;
; rcx = box   (Variant_t) (IN)
; rdx = index (int32*)    (IN)
; r8  = rv    (Variant_t) (OUT)
;
;###############################################################################

__MOLD_VariantLoadFromIndex_int32:
    DEBUG_CHECK_VARIANT rcx

    mov    eax, [rcx + Variant_t.type]
    mov    edx, dword [rdx]

    or     edx, edx
    js     __MOLD_PrintErrorAndDie.negativeIndex

    cmp    eax, VARIANT_ARRAY
    je     .array

    cmp    eax, VARIANT_STRING
    je     .string

    jmp    __MOLD_PrintErrorAndDie.arrayOrStringExpected

    ; ==========================================================================
    ;                                    Array
    ; --------------------------------------------------------------------------

.array:
    mov   rcx, [rcx + Variant_t.value]              ; rcx = array buffer (Buffer_t)
    mov   r9,  [rcx + Buffer_t.bytesPtr]            ; r9  = array buffer (Array_t)

    mov   eax, 0                                    ; eax = innerType    (undefined)
    mov   ecx, 0                                    ; ecx = return value (undefined)

    cmp   rdx, [r9 + Array_t.itemsCnt]
    jae   .errorOutOfBounds

    or    eax, [r9 + Array_t.innerType]             ; eax = innerType (got from box)
    jz    .arrayLoadVariant

    ; TODO: Handle non-integer primitive.
.arrayLoadPrimitive:
    mov    cl, [r9 + Array_t.itemSize]              ; cl  = log2(size(item))
    jmp    qword [.arrayLoadPrimitiveJumpTable + rcx*8]

.arrayLoadInt8:
    movsx  rcx, byte [r9 + Array_t.items + rdx]
    jmp    .arrayDone

.arrayLoadInt16:
    movsx  rcx, word [r9 + Array_t.items + rdx*2]
    jmp    .arrayDone

.arrayLoadInt32:
    movsxd rcx, dword [r9 + Array_t.items + rdx*4]
    jmp    .arrayDone

.arrayLoadInt64:
    mov    rcx, qword [r9 + Array_t.items + rdx*8]
    jmp    .arrayDone

.arrayLoadVariant:
    shl    rdx, 4
    mov    rax, [r9 + Array_t.items + rdx]           ; rax = box[idx].type
    mov    rcx, [r9 + Array_t.items + rdx + 8]       ; rcx = box[idx].value

.errorOutOfBounds:
.arrayDone:
    mov   qword [r8 + Variant_t.type], rax         ; rv.type  = box[idx].type
    mov   qword [r8 + Variant_t.value], rcx        ; rv.value = box[idx].value

    ; TODO: Clean up this mess.
    push  r8
    mov   rcx, r8
    call  __MOLD_VariantAddRef
    pop   r8

    DEBUG_CHECK_VARIANT r8

    ret

.arrayLoadPrimitiveJumpTable:
    dq .arrayLoadInt8
    dq .arrayLoadInt16
    dq .arrayLoadInt32
    dq .arrayLoadInt64

    ; ==========================================================================
    ;                                 String
    ; --------------------------------------------------------------------------

.string:
    mov    [r8 + Variant_t.type], VARIANT_UNDEFINED

    ; --------------------------------------------------------------------------
    ; Get char at index
    ; --------------------------------------------------------------------------

    xor    eax, eax                               ; rax = 0
    mov    rcx, [rcx + Variant_t.value]           ; rcx = string buffer (Buffer_t)
    mov    rcx, [rcx + Buffer_t.bytesPtr]         ; rcx = string buffer (String_t)

    cmp    rdx, [rcx + String_t.length]
    jae    .stringOutOfRangePeek

    mov    al, [rcx + String_t.text + rdx]        ; rax = str[idx] (char)
    mov    [r8 + Variant_t.type], VARIANT_STRING  ; rv.type  = string
    or     [r8 + Variant_t.flags], VARIANT_FLAG_ONE_CHARACTER

.stringOutOfRangePeek:
    mov    [r8 + Variant_t.value], rax            ; rv.value = box[idx] (char)

    DEBUG_CHECK_VARIANT r8

    ret

; TODO: Clean up this mess.
__MOLD_VariantLoadFromIndex:
    ; rcx = box   (Variant_t)
    ; rdx = index (Variant_t)
    ; r8  = rv    (Variant_t)

    DEBUG_CHECK_VARIANT rdx

    cmp     [rdx + Variant_t.type], VARIANT_INTEGER
    jnz     __MOLD_PrintErrorAndDie.integerIndexExpected

    add     rdx, Variant_t.value
    jmp     __MOLD_VariantLoadFromIndex

; TODO: Clean up this mess.
__MOLD_VariantLoadFromIndex_native:
    push    r8
    lea     r8, [__TrashBin]
    call    __MOLD_VariantLoadFromIndex_int32
    mov     rax, [__TrashBin + Variant_t.value]
    pop     r8
    mov     dword [r8], eax
    ret

__MOLD_VariantStoreAtIndex:
    ; rcx = box   (Variant_t)
    ; rdx = index (Variant_t)
    ; r8  = value (Variant_t)

    DEBUG_CHECK_VARIANT rdx

    cmp     [rdx + Variant_t.type], VARIANT_INTEGER
    jnz     __MOLD_PrintErrorAndDie.integerIndexExpected

    add     rdx, Variant_t.value
    jmp     __MOLD_VariantStoreAtIndex_int32
