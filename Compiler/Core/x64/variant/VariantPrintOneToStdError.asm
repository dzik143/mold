;###############################################################################
;
; Print out single Variant_t variable to stderr.
;
; rcx = value (Variant_t) (IN)
;
;###############################################################################

__MOLD_PrintVariantToStdError:

    DEBUG_CHECK_VARIANT rcx

    push    r12

    lea     rdx, [__TrashBin]
    call    __MOLD_VariantConvertToString   ; rdx = str(value) (Variant_t)

    lea     rcx, [__TrashBin]
    mov     rcx, [rcx + Variant_t.value]    ; rcx = str(value) (Buffer_t)
    mov     r12, [rcx + Buffer_t.bytesPtr]  ; rcx = str(value) (String_t)

    ; ------------------------------
    ; GetStdHandle(STD_ERROR_HANDLE)

    sub     rsp, 32                         ;
    mov     rcx, -12                        ; rcx = STD_ERROR_HANDLE = -12
    call    [GetStdHandle]                  ; rax = handle to stderr
    add     rsp, 32                         ;

    ; ------------------------------

    lea     r9,  [NumberOfBytesWritten]
    mov     r8,  [r12 + String_t.length]
    lea     rdx, [r12 + String_t.text]
    mov     rcx, rax

    push    rax
    cinvoke WriteFile, rcx, rdx, r8, r9, 0
    pop     rax

    cinvoke WriteFile, rax, .fmtNewLine, 2, NumberOfBytesWritten, 0

    pop     r12
    ret

  .fmtNewLine db 13, 10
