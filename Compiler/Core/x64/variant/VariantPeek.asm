;###############################################################################
;
; Peek single byte from variable.
;
; RCX - variable to peek (IN/VARIANT).
; RDX - byte offset (IN/VARIANT_INTEGER).
;
; RETURNS: Byte value at given offset (VARIANT_INTEGER).
;
;###############################################################################

__MOLD_Peek:
__mold_peek:

    cmp    [rcx + Variant_t.type], VARIANT_STRING
    jnz    __MOLD_PrintErrorAndDie.stringExpected

    mov    rax, [rcx + Variant_t.value]    ; rax = string (Buffer_t)
    test   [rcx + Variant_t.flags], VARIANT_FLAG_ONE_CHARACTER
    jnz    .oneCharacterString

.ordinaryString:

    mov    rdx, [rdx + Variant_t.value]    ; rdx = index  (int64)
    mov    rcx, [rax + Buffer_t.bytesPtr]  ; rcx = string (String_t)

    cmp    [rcx + String_t.length], rdx    ; is len(string) <= index?
    jbe    __MOLD_PrintErrorAndDie.indexOutOfRange

    mov    al, [rcx + String_t.text + rdx] ; al  = string[index]

.oneCharacterString:
    and    rax, 0xff                       ; rax = string[index]
    mov    [rdi + Variant_t.value], rax
    mov    [rdi + Variant_t.type], VARIANT_INTEGER
    ret
