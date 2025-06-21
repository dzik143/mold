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
.fmtObject    db '<object>', 0
.jmpTable     dq .boolean, .array, .map, .object

.complexOrBoolean:
    cmp     eax, VARIANT_TYPE_MAX
    ja      __MOLD_PrintErrorAndDie.badType
    jmp     [.jmpTable + rax*8 - VARIANT_BOOLEAN*8]

.boolean:
    or      rdx, rdx
    jz      .booleanFalse

.booleanTrue:
    sub     rsp, 32
    lea     rcx, [.fmtTrue]
    call    [printf]
    add     rsp, 32
    ret

.booleanFalse:
    sub     rsp, 32
    lea     rcx, [.fmtFalse]
    call    [printf]
    add     rsp, 32
    ret

.string:
    test    [rcx + Variant_t.flags], VARIANT_FLAG_ONE_CHARACTER
    jz      .ordinaryString

.oneCharacterString:
    mov     cl, dl
    jmp     [putchar]

.ordinaryString:
    lea     rcx, [.fmtString]
    mov     rdx, [rdx + Buffer_t.bytesPtr]
    lea     rdx, [rdx + String_t.text]
    sub     rsp, 32
    call    [printf]
    add     rsp, 32
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
    sub     rsp, 32
    call    [putchar]
    add     rsp, 32
    pop     rcx

    lea     rbx, [.fmtEmpty]

    lea     rdx, [rbp - 8 - 8]
    lea     r8,  [rbp - 8 - 8 - 16]
    lea     r9,  [.print_one_array_item]
    call    __MOLD_ForDriver_Generic

    mov     cl, ']'
    sub     rsp, 32
    call    [putchar]
    add     rsp, 32

    pop     rbx

    leave
    ret

.print_one_array_item:

    cmp     dword [rbp - 8 - 8], 0
    jz      .print_first_array_item

    push    rcx
    lea     rcx, [.fmtSeparator]

    sub     rsp, 32
    call    [printf]
    add     rsp, 32

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

    sub     rsp, 32
    call    [putchar]
    add     rsp, 32

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

    ; ---------
    ; puts(sep)

    mov     rcx, r12
    sub     rsp, 32
    call    [printf]
    add     rsp, 32

    lea     r12, [.fmtSeparator]

    ; ---------
    ; Print key

    mov     eax, [rsi]                            ; rcx = bucketIdx
    mov     rcx, rdi                              ; rcx = buckets
    add     rcx, rax                              ; rcx = buckets[bucketIdx]

    push    rcx
    call     __MOLD_PrintVariantWithQuotas

    ; Print separator
    sub     rsp, 32
    lea     rcx, [.fmtAfterKey]
    call    [printf]
    add     rsp, 32

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
    sub     rsp, 32
    call    [putchar]
    add     rsp, 32

    pop     r12
    pop     rdi
    pop     rsi
    pop     rbx
    ret

.object:
    sub     rsp, 32
    lea     rcx, [.fmtObject]
    call    [printf]
    add     rsp, 32
    ret

.errorNonVariantItem:
    sub     rsp, 32
    lea     rcx, [.fmtErrorNonVariantItem]
    call    [puts]
    add     rsp, 32
    int 3

.fmtErrorNonVariantItem db '__MOLD_VariantPrint: error: non-variant inner types not implemented', 0
