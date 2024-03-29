;###############################################################################
;
; Load item stored at given integer index.
; rv = box[i]
;
; rcx = box   (Variant_t*) (IN)
; rdx = index (int32)      (IN)
; r8  = rv    (Variant_t*) (OUT)
;
;###############################################################################

__MOLD_VariantLoadFromIndex:

    DEBUG_CHECK_VARIANT rcx

    mov    eax, [rcx + Variant_t.type]             ; rax = box.type

    or     edx, edx                                ; is index < 0 ?
    js     __MOLD_PrintErrorAndDie.negativeIndex   ; fail if index < 0

    cmp    eax, VARIANT_ARRAY                      ; is it array?
    je     .array                                  ;

    cmp    eax, VARIANT_STRING                     ; is it string?
    je     .string                                 ;

    jmp    __MOLD_PrintErrorAndDie.arrayOrStringExpected
                                                   ;
    ; ==========================================================================
    ;                                    Array
    ; --------------------------------------------------------------------------

.array:
    mov   rcx, [rcx + Variant_t.value]             ; rcx = array buffer (Buffer_t)
    mov   r9,  [rcx + Buffer_t.bytesPtr]           ; r9  = array buffer (Array_t)

    mov   eax, 0                                   ; eax = innerType    (undefined)
    mov   ecx, 0                                   ; ecx = return value (undefined)

    cmp   rdx, [r9 + Array_t.itemsCnt]             ;
    jae   .errorOutOfBounds                        ;

    or    eax, [r9 + Array_t.innerType]            ; eax = innerType (got from box)
    jz    .arrayLoadVariant                        ;

    ; TODO: Handle non-integer primitive.
.arrayLoadPrimitive:
    mov    cl, [r9 + Array_t.itemSize]             ; cl  = log2(size(item))
    jmp    qword [.arrayLoadPrimitiveJumpTable + rcx*8]
                                                   ;
.arrayLoadInt8:
    movsx  rcx, byte [r9 + Array_t.items + rdx]    ;
    jmp    .arrayDone                              ;

.arrayLoadInt16:
    movsx  rcx, word [r9 + Array_t.items + rdx*2]  ;
    jmp    .arrayDone                              ;

.arrayLoadInt32:
    movsxd rcx, dword [r9 + Array_t.items + rdx*4] ;
    jmp    .arrayDone                              ;

.arrayLoadInt64:
    mov    rcx, qword [r9 + Array_t.items + rdx*8] ;
    jmp    .arrayDone                              ;

.arrayLoadVariant:
    shl    rdx, 4
    mov    rax, [r9 + Array_t.items + rdx]         ; rax = box[idx].type
    mov    rcx, [r9 + Array_t.items + rdx + 8]     ; rcx = box[idx].value

.errorOutOfBounds:
.arrayDone:
    mov   qword [r8 + Variant_t.type], rax         ; rv.type  = box[idx].type
    mov   qword [r8 + Variant_t.value], rcx        ; rv.value = box[idx].value

    ; TODO: Clean up this mess.
    push  r8                                       ;
    mov   rcx, r8                                  ;
    call  __MOLD_VariantAddRef                     ;
    pop   r8                                       ;

    DEBUG_CHECK_VARIANT r8                         ;

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

    ; TODO: Clean up this mess.
    test   [rcx + Variant_t.flags], VARIANT_FLAG_ONE_CHARACTER
    jz     .dynamicString
    test   edx, edx
    jnz    .nonZeroIndexForOneCharSource

    mov    eax, dword [rcx + Variant_t.value]
    jmp    .oneCharacterSource

.dynamicString:
    mov    rcx, [rcx + Variant_t.value]           ; rcx = string buffer (Buffer_t)
    mov    rcx, [rcx + Buffer_t.bytesPtr]         ; rcx = string buffer (String_t)

    cmp    rdx, [rcx + String_t.length]           ;
    jae    .stringOutOfRangePeek                  ;

    movzx  eax, byte [rcx + String_t.text + rdx]  ; rax = str[idx] (char)

.oneCharacterSource:
    mov    [r8 + Variant_t.type], VARIANT_STRING  ; rv.type  = string
    mov    [r8 + Variant_t.flags], VARIANT_FLAG_ONE_CHARACTER
    mov    [r8 + Variant_t.value], rax            ; rv.value = box[idx] (char)

.stringOutOfRangePeek:
.nonZeroIndexForOneCharSource:

    DEBUG_CHECK_VARIANT r8

    ret
