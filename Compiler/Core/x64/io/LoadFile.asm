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

    ; ----------------------------------------------------------
    ; CreateFileA(path, GENERIC_READ, 0, 0, OPEN_EXISTING, 0, 0)

    push    rdx                                   ; save file path
    sub     rsp, 32 + 3*8 + 8                     ; shadow + params + align
    xor     eax, eax                              ; rax = 0

    mov     rcx, rdx                              ; param #1 = path
    mov     edx, GENERIC_READ                     ; param #2 = GENERIC_READ
    mov     r8d, eax                              ; param #3 = 0
    mov     r9d, eax                              ; param #4 = 0
    mov     qword [rsp + 32 + 0*8], OPEN_EXISTING ; param #5 = OPEN_EXISTING
    mov     qword [rsp + 32 + 1*8], rax           ; param #6 = 0
    mov     qword [rsp + 32 + 2*8], rax           ; param #7 = 0

    call    [CreateFileA]

    add     rsp, 32 + 3*8 + 8                     ; shadow + params + align
    pop     rdx                                   ; rdx = file path

    ; ---------------------------------------------------------

    cmp     rax, -1
    jz      .couldNotOpenError

    mov     r12, rax

    ; --------------------------------------------------------------------------
    ; GetFileSize(handle, 0)

    mov     rcx, r12      ; rcx = param #1 = file handle
    xor     edx, edx      ; rdx = param #2 = 0

    sub     rsp, 32       ;
    call    [GetFileSize] ; rax = GetFileSize(handle) = file size in bytes
    add     rsp, 32       ;

    mov     r13, rax      ; r13 = GetFileSize(handle) = file size in bytes

    ; --------------------------------------------------------------------------

    lea     rcx, [rax + 1]
    call    __MOLD_MemoryAlloc

    mov     [rdi + Variant_t.value], rax
    mov     [rdi + Variant_t.flags], 0
    mov     [rdi + Variant_t.type], VARIANT_STRING

    mov     rax, [rax + Buffer_t.bytesPtr]
    mov     [rax + String_t.length], r13
    lea     rax, [rax + String_t.text]

    ; -------------------------------------------------------
    ; ReadFile(handle, buf, filesize, NumberOfBytesWritten, 0)
    ; CloseHandle(handle)

    push    rax
    sub     rsp, 32 + 3*8 + 8

    mov     rcx, r12                   ; param #1 = handle
    mov     rdx, rax                   ; param #2 = buf
    mov     r8, r13                    ; param #3 = filesize
    lea     r9, [NumberOfBytesWritten] ; param #4 = NumberOfBytesWritten
    mov     qword [rsp + 32 + 0*8], 0  ; param #5 = null
    call    [ReadFile]

    mov     rcx, r12
    call    [CloseHandle]

    add     rsp, 32 + 3*8 + 8
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
    lea     rcx, [.fmtCouldNotOpenError]
    sub     rsp, 32
    call    [printf]
    add     rsp, 32
    jmp     __MOLD_Halt

.stringPathExpectedError:
    lea     rcx, [.fmtStringPathExpectedError]
    sub     rsp, 32
    call    [printf]
    add     rsp, 32
    jmp     __MOLD_Halt

.fmtCouldNotOpenError       db "error: could not open file '%s'", 0
.fmtStringPathExpectedError db "error: string path expected", 0
