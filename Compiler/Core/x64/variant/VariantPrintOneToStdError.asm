;###############################################################################
;
; Print out single Variant_t variable to stderr.
;
; rcx = value (Variant_t) (IN)
;
;###############################################################################

__MOLD_PrintVariantToStdError:

    DEBUG_CHECK_VARIANT rcx

    push    r12                             ;
    sub     rsp, 64                         ;

    lea     rdx, [__TrashBin]
    call    __MOLD_VariantConvertToString   ; rdx = str(value) (Variant_t)

    lea     rcx, [__TrashBin]
    mov     rcx, [rcx + Variant_t.value]    ; rcx = str(value) (Buffer_t)
    mov     r12, [rcx + Buffer_t.bytesPtr]  ; rcx = str(value) (String_t)

    ; ------------------------------
    ; GetStdHandle(STD_ERROR_HANDLE)

    mov     rcx, -12                        ; rcx = STD_ERROR_HANDLE = -12
    call    [GetStdHandle]                  ; rax = handle to stderr

    ; ------------------------------------------------------------
    ; WriteFile(handle, buf, bufSize, &NumberOfBytesWritten, NULL)

    mov     rcx, rax                        ; param #1 = handle
    lea     rdx, [r12 + String_t.text]      ; param #2 = buf
    mov     r8,  [r12 + String_t.length]    ; param #3 = bufSize
    lea     r9,  [NumberOfBytesWritten]     ; param #4 = NumberOfBytesWritten
    mov     qword [rsp + 32 + 0*8], 0       ; param #5 = null
    mov     r12, rax                        ; r12 = handle
    call    [WriteFile]

    ; ------------------------------------------------------------
    ; WriteFile(handle, "\r\n", 2, &NumberOfBytesWritten, NULL)

    mov     rcx, r12                        ; param #1 = handle
    lea     rdx, [.fmtNewLine]              ; param #2 = fmtNewLine
    mov     r8d, 2                          ; param #3 = sizeof(fmtNewLine)
    lea     r9,  [NumberOfBytesWritten]     ; param #4 = NumberOfBytesWritten
    mov     qword [rsp + 32 + 0*8], 0       ; param #5 = null
    call    [WriteFile]

    add     rsp, 64
    pop     r12
    ret

  .fmtNewLine db 13, 10
