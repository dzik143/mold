;###############################################################################
;
; Process each (idx, character) pairs in array.
;
; rcx - text to process (IN / Variant_t)
; rdx - index iterator (OUT / uint32*)
; r8  - character iterator (OUT / Variant_t)
; r9  - body loop callback (IN / function address)
;
;###############################################################################

__MOLD_ForDriver_IndexesAndValuesInString:

    cmp     [rcx + Variant_t.type], VARIANT_STRING
    jnz     __MOLD_PrintErrorAndDie.stringExpected

.unsafeEntry:

    push    rbx
    push    rsi
    push    r9

    mov     dword [rdx], 0                        ; idx.value = 0

    mov     [r8  + Variant_t.type], VARIANT_STRING  ; value.type = string
    mov     [r8  + Variant_t.flags], VARIANT_FLAG_ONE_CHARACTER
    mov     [r8  + Variant_t.value], 0

    mov     ebx, 1                                ; rbx = 1 = start from one char string
    mov     rax, [rcx + Variant_t.value]          ; rax = string (Buffer_t)

    test    [rcx + Variant_t.flags], VARIANT_FLAG_ONE_CHARACTER
    jnz     .stringOneCharacter

    mov     rcx, [rax + Buffer_t.bytesPtr]        ; rax = string (String_t)
    lea     rsi, [rcx + String_t.text]            ; rsi = string.text (char *)
    mov     rbx, [rcx + String_t.length]          ; rbx = string.length (int64)

    or      rbx, rbx
    jz      .stringEmpty

.stringNextItem:

    ; --------------------------------------------------------------------------
    ; Update value iterator
    ; --------------------------------------------------------------------------

    lodsb

.stringOneCharacter:

    mov     [r8 + 8], al

    ; --------------------------------------------------------------------------
    ; Process next (index:value) pair
    ; --------------------------------------------------------------------------

    push    rdx r8
    call    qword [rsp + 16]
    pop     r8 rdx

    ; --------------------------------------------------------------------------
    ; Update index iterator
    ; --------------------------------------------------------------------------

    inc     dword [rdx]

    ; --------------------------------------------------------------------------
    ; Go to next pair
    ; --------------------------------------------------------------------------

    dec     rbx
    jne     .stringNextItem

.stringEmpty:
.done:

    pop     r9
    pop     rsi
    pop     rbx

    ret
