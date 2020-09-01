;###############################################################################
;
; Print single Variant_t variable to stdout.
;
; rcx = value (Variant_t) (IN)
;
;###############################################################################

__MOLD_PrintVariant:

    DEBUG_CHECK_VARIANT rcx

    mov  eax, [rcx + Variant_t.type]
    mov  rdx, [rcx + Variant_t.value]

    cmp  eax, VARIANT_STRING
    je   .string
    ja   .complexOrBoolean

    mov  rcx, [.fmtTable + rax*8]

    sub  rsp, 32
    call [printf]
    add  rsp, 32

    ret

.fmtTable     dq .fmtUndefined, .fmtNull, .fmtInteger, .fmtFloat, .fmtDouble, .fmtString
.fmtNull      db 'null', 0
.fmtUndefined db 'undefined', 0
.fmtInteger   db '%lld', 0
.fmtFloat     db '%f', 0
.fmtDouble    db '%lf', 0
.fmtString    db '%s', 0
.fmtTrue      db 'true', 0
.fmtFalse     db 'false', 0
.fmtSeparator db ', ', 0
.fmtEmpty     db '', 0
.fmtAfterKey  db ': ', 0
.fmtChar      db '%c', 0
.jmpTable     dq .boolean, .array, .map, .object

.complexOrBoolean:
    cmp     eax, VARIANT_TYPE_MAX
    ja      __MOLD_PrintErrorAndDie.badType
    jmp     [.jmpTable + rax*8 - VARIANT_BOOLEAN*8]

.boolean:
    or      rdx, rdx
    jz      .booleanFalse

.booleanTrue:
    cinvoke printf, .fmtTrue
    ret

.booleanFalse:
    cinvoke printf, .fmtFalse
    ret

.string:
    test    [rcx + Variant_t.flags], VARIANT_FLAG_ONE_CHARACTER
    jz      .ordinaryString

.oneCharacterString:
    cinvoke printf, .fmtChar, dl
    ret

.ordinaryString:
    mov     rdx, [rdx + Buffer_t.bytesPtr]
    lea     rdx, [rdx + String_t.text]
    cinvoke printf, .fmtString, rdx

    ret

    ; ------------------------------------------
    ;              Print array
    ; ------------------------------------------

.array:

    push    rbp
    mov     rbp, rsp
    sub     rsp, 32 + 16

    push    rbx

    push    rcx
    mov     cl, '['
    cinvoke putchar
    pop     rcx

    lea     rbx, [.fmtEmpty]

    lea     rdx, [rbp - 8 - 8]
    lea     r8,  [rbp - 8 - 8 - 16]
    lea     r9,  [.print_one_array_item]
    call    __MOLD_ForDriver_Generic

    mov     cl, ']'
    cinvoke putchar

    pop     rbx

    add     rsp, 32 + 16
    pop     rbp
    ret

.print_one_array_item:

    cmp     dword [rbp - 8 - 8], 0
    jz      .print_first_array_item

    push    rcx
    lea     rcx, [.fmtSeparator]
    cinvoke printf
    pop     rcx

.print_first_array_item:

    lea     rcx, [rbp - 8 - 8 - 16]
    call    __MOLD_PrintVariantWithQuotas
    ret

    ; ------------------------------------------
    ;             Print hash map
    ; ------------------------------------------

.map:
    push    rdx
    mov     cl, '{'
    cinvoke putchar
    pop     rdx

    push    rbx
    push    rsi
    push    rdi
    push    r12

    mov     rdx, [rdx + Buffer_t.bytesPtr]
    mov     rbx, [rdx + Map_t.bucketsUsedCnt]

    or      rbx, rbx
    jz      .mapEmpty

    mov     rax, [rdx + Map_t.bucketsCnt]         ; rax = map.bucketsCnt
    lea     rdi, [rdx + Map_t.buckets]            ; rdi = map.buckets
    shl     rax, 5                                ; rax = map.bucketsCnt * 32
    lea     r12, [.fmtEmpty]                      ;
    lea     rsi, [rdi + rax]                      ; rsi = map.index

.mapNextItem:
    cinvoke printf, r12
    lea     r12, [.fmtSeparator]

    ; Print key
    mov     eax, [rsi]                            ; rcx = bucketIdx
    mov     rcx, rdi                              ; rcx = buckets
    add     rcx, rax                              ; rcx = buckets[bucketIdx]

    push    rcx
    call     __MOLD_PrintVariantWithQuotas

    ; Print separator
    cinvoke printf, .fmtAfterKey

    ; Print value
    pop     rcx
    add     rcx, 16
    call     __MOLD_PrintVariantWithQuotas

.mapNextItemEmpty:
    add     rsi, 4
    dec     rbx
    jne     .mapNextItem

.mapEmpty:
    mov     cl, '}'
    cinvoke putchar

    pop     r12
    pop     rdi
    pop     rsi
    pop     rbx
    ret

.object:
    cinvoke printf, '[object]'
    ret

.errorNonVariantItem:
    cinvoke printf, '__MOLD_VariantPrint: error: non-variant inner types not implemented'
    int 3
