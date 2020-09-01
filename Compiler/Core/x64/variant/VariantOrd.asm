__MOLD_Ord:
__mold_ord:
    mov    rax, [rcx + Variant_t.value]    ; rax = string (Buffer_t)

    cmp    [rcx + Variant_t.type], VARIANT_STRING
    jnz    __MOLD_PrintErrorAndDie.stringExpected


    test   [rcx + Variant_t.flags], VARIANT_FLAG_ONE_CHARACTER
    jnz    .oneCharacterString

.ordinaryString:
    mov    rcx, [rax + Buffer_t.bytesPtr]  ; rcx = text    (String_t)
    mov    al,  [rcx + String_t.text]      ; al  = text[0] (char)

.notString:
.oneCharacterString:
    and    rax, 0xff                       ; rax = string[index]
    mov    [rdi + Variant_t.value], rax
    mov    [rdi + Variant_t.type], VARIANT_INTEGER
    ret
