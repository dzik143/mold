__MOLD_Ord:
__mold_ord:
    mov    rax, [rcx + Variant_t.value]    ; rax = string (Buffer_t)

    ; TODO: Review it.
    cmp    [rcx + Variant_t.type], VARIANT_STRING
    jnz    .notString ;__MOLD_PrintErrorAndDie.stringExpected

    test   [rcx + Variant_t.flags], VARIANT_FLAG_ONE_CHARACTER
    jnz    .oneCharacterString

.ordinaryString:
    mov    rcx, [rax + Buffer_t.bytesPtr]  ; rcx = text    (String_t)
    mov    al,  [rcx + String_t.text]      ; al  = text[0] (char)

.notString:
.oneCharacterString:
    and    eax, 0xff                       ; rax = string[index]
    mov    [rdx + Variant_t.value], rax
    mov    [rdx + Variant_t.type], VARIANT_INTEGER
    ret
