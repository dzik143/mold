;###############################################################################
;
; Load file content to string
;
; RCX - file name (IN/VARIANT_STRING).
;
; RETURNS: File content (VARIANT_STRING).
;
;###############################################################################

__MOLD_LoadFile:
    ; TODO: Handle read error

    push    rbp
    mov     rbp, rsp
    sub     rsp, 32

    push    r12
    push    r13

    cmp     [rcx + Variant_t.type], VARIANT_STRING
    jnz     .stringPathExpectedError

    mov     rdx, [rcx + Variant_t.value]
    mov     rdx, [rdx + Buffer_t.bytesPtr]
    lea     rdx, [rdx + String_t.text]

    push    rdx
    cinvoke CreateFileA, rdx, GENERIC_READ, 0, 0, OPEN_EXISTING, 0, 0
    pop     rdx

    cmp     rax, -1
    jz      .couldNotOpenError

    mov     r12, rax

    cinvoke GetFileSize, r12, 0
    mov     r13, rax

    lea     rcx, [rax + 1]
    call    __MOLD_MemoryAlloc

    mov     [rdi + Variant_t.value], rax
    mov     [rdi + Variant_t.flags], 0
    mov     [rdi + Variant_t.type], VARIANT_STRING

    mov     rax, [rax + Buffer_t.bytesPtr]
    mov     [rax + String_t.length], r13
    lea     rax, [rax + String_t.text]

    push    rax
    cinvoke ReadFile, r12, rax, r13, NumberOfBytesWritten, 0
    cinvoke CloseHandle, r12
    pop     rax

    ; --------------------------------------------------------------------------
    ; Add zero terminator
    ; --------------------------------------------------------------------------

    mov     byte [rax + r13], 0

.done:

    DEBUG_CHECK_VARIANT rdi

    pop     r13
    pop     r12

    leave
    ret

.couldNotOpenError:
    cinvoke printf, "error: could not open file '%s'", rdx
    jmp __MOLD_Halt

.stringPathExpectedError:
    cinvoke printf, "error: string path expected"
    jmp __MOLD_Halt
