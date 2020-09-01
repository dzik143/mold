;###############################################################################
;
; Print any number of Variant_t variables to stdout.
;
;###############################################################################

__MOLD_PrintArrayOfVariantsLn:
    .item2 EQU rsp + 32
    .item3 EQU rsp + 40

    jecxz   .done

    push    r12
    mov     r12, rcx                     ; r12 = count
    sub     rsp, 32 + 16 + 8             ; Shadow space for putchar

    mov     [.item2], r8                 ; save item#2 on stack
    mov     [.item3], r9                 ; save item#3 on stack


    ; --------------------------------------------------------------------------
    ; print 1-st item (rdx)
    ; --------------------------------------------------------------------------

    mov     rcx, rdx
    call    __MOLD_PrintVariant
    dec     r12
    jz      .popAndDone

    ; --------------------------------------------------------------------------
    ; 2-nd item (r8)
    ; --------------------------------------------------------------------------

    mov     cl, ' '
    call    [putchar]
    mov     rcx, [.item2]
    call    __MOLD_PrintVariant
    dec     r12
    jz      .popAndDone

    ; --------------------------------------------------------------------------
    ; 3-rd item (r9)
    ; --------------------------------------------------------------------------

    mov     cl, ' '
    call    [putchar]
    mov     rcx, [.item3]
    call    __MOLD_PrintVariant
    dec     r12
    jz      .popAndDone

    ; --------------------------------------------------------------------------
    ; Remaining n items (stack)
    ; --------------------------------------------------------------------------

.printNextItem:
    mov     cl, ' '
    call    [putchar]
    mov     rcx, [rsp + 64 + r12 * 8]
    call    __MOLD_PrintVariant
    dec     r12
    jnz     .printNextItem

.popAndDone:
    add     rsp, 32 + 16 + 8
    pop     r12

.done:
    jmp     __MOLD_PrintNewLine

    restore .item2
    restore .item3
