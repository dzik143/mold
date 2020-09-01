;###############################################################################
;
; Convert single Variant_t to string.
;
; rcx = variable to convert (Variant_t) (IN)
; rdx = result string       (Variant_t) (OUT)
;
;###############################################################################

__MOLD_VariantConvertToString:
    ; rcx = value
    ; rdx = rv

    DEBUG_CHECK_VARIANT rcx

    mov     r9, [rcx + Variant_t.value]            ; r9  = value.value
    mov     r10d, [rcx + Variant_t.type]           ; r10 = value.type

    cmp     r10d, VARIANT_STRING
    jnz     .notString

    ; --------------------------------------------------------------------------
    ; String - Nothing to do, just pass string as is.
    ; --------------------------------------------------------------------------

.string:
    ; TODO: Clean up this mess.
    xchg    rcx, rdx
    jmp     __MOLD_VariantMove

.notString:
    cmp     r10d, VARIANT_BOOLEAN
    jnz     .notBoolean

    ; --------------------------------------------------------------------------
    ; Boolean - true or false constants
    ; --------------------------------------------------------------------------

.bool64:

    ; r9  = value
    ; rdx = rv (Variant_t)

    mov     [rdx + Variant_t.type],  VARIANT_STRING ; rv.type  = VARIANT_STRING
    mov     [rdx + Variant_t.flags], 0              ; rv.flags = 0

    lea     rax, [StringFalseBufferHolder] ; rcx = 'false'
    lea     rcx, [StringTrueBufferHolder]  ; rdx = 'true'
    test    r9, r9                         ; is value 0?

    cmovnz  rax, rcx                       ; (value != 0) ? rax = 'true' : 'false'
    mov     [rdx + Variant_t.value], rax   ; rv.value = rax

    DEBUG_CHECK_VARIANT rdx

    mov     rcx, rdx
    call    __MOLD_VariantAddRef

    ret

.notBoolean:
    cmp     r10d, VARIANT_TYPE_MAX
    ja      __MOLD_PrintErrorAndDie.badType

    ; --------------------------------------------------------------------------
    ; Non string value, conversion needed.
    ; Allocate new String_t buffer
    ; --------------------------------------------------------------------------

.primitive:

    ; r9  = value
    ; r10 = type
    ; rdx = rv (Variant_t)

    push    rdx                             ;
    push    r12                             ;
    mov     r12d, 32                        ; r12 = snprintf buffer size (32)

    ; --------------------------------------------------------------------------
    ; Allocate new 32-byte string
    ; --------------------------------------------------------------------------

    push    rdx r9 r10                      ;

    mov     rcx, rdx                        ; rcx = rv
    mov     edx, r12d                       ; rdx = capacity (32)
    call    __MOLD_VariantStringCreate      ; rv  = new string (Variant_t)

    pop     r10 r9 rdx                      ;

    ; --------------------------------------------------------------------------
    ; Print formatted value into string buffer
    ; --------------------------------------------------------------------------

    mov     rax, [rax + Buffer_t.bytesPtr]  ; rax = rv (String_t)
    push    rax

    lea     rcx, [rax + String_t.text]      ; rcx = new string buffer
    lea     edx, [r12d - 1]                 ; rdx = capacity of buffer (31)
    lea     r8,  [.fmtBegin]
    movzx   rax, byte [.fmtTable + r10]     ; rax = fmt - .fmtBegin
    add     r8, rax                         ; r8  = fmt

    sub     rsp, r12                        ; 32 bytes shadow space
    call    [snprintf]                      ; rv.text = str(value)
    add     rsp, r12                        ; 32 bytes shadow space

    ; --------------------------------------------------------------------------
    ; Truncate string length to 31 on error
    ; --------------------------------------------------------------------------

    dec     r12                             ; r12 = 31
    and     rax, r12                        ; rax = length mod 32

    pop     rcx                             ; rcx = rv (String_t)
    mov     [rcx + String_t.length], rax    ; rv.length = len(str(value))

    pop     r12                             ;
    pop     rdx
    DEBUG_CHECK_VARIANT rdx

    ret

.fmtTable:
  db .fmtUndefined - .fmtBegin
  db .fmtNull      - .fmtBegin
  db .fmtInteger   - .fmtBegin
  db .fmtFloat     - .fmtBegin
  db .fmtDouble    - .fmtBegin
  db .fmtString    - .fmtBegin
  db .fmtBoolean   - .fmtBegin
  db .fmtArray     - .fmtBegin
  db .fmtMap       - .fmtBegin
  db .fmtObject    - .fmtBegin

.fmtBegin:
.fmtUndefined db 'undefined', 0
.fmtNull      db 'null', 0
.fmtInteger   db '%lld', 0
.fmtFloat     db '%f', 0
.fmtDouble    db '%lf', 0
.fmtString    db '%s', 0
.fmtBoolean   db '%d', 0
.fmtTrue      db 'true', 0
.fmtFalse     db 'false', 0
.fmtArray     db '[array]', 0
.fmtMap       db '[map]', 0
.fmtObject    db '[object]', 0
