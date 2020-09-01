;###############################################################################
;
; Join two strings:
; rv = x ~ y
;
; rcx = left string (Variant_t *)
; rdx = right string (Variant_t *)
; r8  = result string (Variant_t *)
;
;###############################################################################

__MOLD_VariantStringJoin:

    DEBUG_CHECK_VARIANT rcx
    DEBUG_CHECK_VARIANT rdx

    ; --------------------------------------------------------------------------
    ; Validate types
    ; --------------------------------------------------------------------------

    mov       r9d,  [rcx + Variant_t.type]  ; r9  = x.type
    mov       r10d, [rdx + Variant_t.type]  ; r10 = y.type

    cmp       r9d, VARIANT_STRING
    jnz       __MOLD_PrintErrorAndDie.stringExpected

    cmp       r10d, VARIANT_STRING
    jnz       __MOLD_PrintErrorAndDie.stringExpected

    ; --------------------------------------------------------------------------
    ; Check for optimized one-character strings (first string)
    ; --------------------------------------------------------------------------

    test      [rcx + Variant_t.flags], VARIANT_FLAG_ONE_CHARACTER
    jz        .x_is_dynamic

.x_is_one_char:

    mov       al, byte [rcx + Variant_t.value]
    lea       rcx, [OneCharacterStringTemp]
    mov       [OneCharacterStringTempPeek], al

.x_is_dynamic:

    ; --------------------------------------------------------------------------
    ; Check for optimized one-character strings (second string)
    ; --------------------------------------------------------------------------

    test      [rdx + Variant_t.flags], VARIANT_FLAG_ONE_CHARACTER
    jz        .y_is_dynamic

.y_is_one_char:

    mov       al, byte [rdx + Variant_t.value]
    lea       rdx, [OneCharacterStringTemp2]
    mov       [OneCharacterStringTempPeek2], al

.y_is_dynamic:

    ; --------------------------------------------------------------------------
    ; Check for overlapped source and destination
    ; x = x ~ y
    ; x = y ~ x
    ; --------------------------------------------------------------------------

    cmp       r8, rcx
    jz        .overlapped_source_and_destination_x_eq_x_y
    cmp       r8, rdx
    jz        .overlapped_source_and_destination_y_eq_x_y

    ; --------------------------------------------------------------------------
    ; General case: rv = x ~ y
    ; --------------------------------------------------------------------------

.source_and_destination_differ:

    mov       [r8 + Variant_t.value], 0
    jmp       .case_ss_do_work

    ; --------------------------------------------------------------------------
    ; Overlapped #1: x = x ~ y
    ; --------------------------------------------------------------------------

.overlapped_source_and_destination_x_eq_x_y:

    push      rcx
    mov       rcx, [rcx + Variant_t.value]
    call      __MOLD_MemoryAddRef
    pop       rcx

    ; --------------------------------------------------------------------------
    ; Overlapped #2: y = x ~ y
    ; --------------------------------------------------------------------------

.overlapped_source_and_destination_y_eq_x_y:

    push      rcx
    mov       rcx, [rdx + Variant_t.value]
    call      __MOLD_MemoryAddRef
    pop       rcx

    ; --------------------------------------------------------------------------
    ; Fetch input buffers
    ; --------------------------------------------------------------------------

.case_ss_do_work:

    push      rsi
    push      rdi

    mov       r9,  [rcx + Variant_t.value]   ; r9  = x.buffer (Buffer_t)
    mov       r10, [rdx + Variant_t.value]   ; r10 = y.buffer (Buffer_t)
    push      r9

    mov       r9,  [r9  + Buffer_t.bytesPtr] ; r9  = x.buffer (String_t)
    mov       r10, [r10 + Buffer_t.bytesPtr] ; r10 = y.buffer (String_t)

    ; --------------------------------------------------------------------------
    ; TODO: Don't alloc new buffer if
    ; it's not really needed
    ; --------------------------------------------------------------------------

    mov       rdx, [r9  + String_t.length]  ; rdx = len(x)
    add       rdx, [r10 + String_t.length]  ; rdx = len(x) + len(y)
    mov       r11, rdx                      ; r11 = len(x) + len(y)
    add       rdx, 1 + 8                    ; rdx = len(x) + len(y) + 1 + len(int64)

    ; --------------------------------------------------------------------------
    ; Allocate new buffer
    ; --------------------------------------------------------------------------

    push      r8 r9 r10 r11
    mov       rcx, 0
    test      [r8 + Variant_t.flags], VARIANT_FLAG_DUPLICATE_ON_FIRST_WRITE
    cmovz     rcx, [r8 + Variant_t.value]           ; rcx = dst buffer (Buffer_t)
    and       [r8 + Variant_t.flags], not VARIANT_FLAG_DUPLICATE_ON_FIRST_WRITE
    call      __MOLD_MemoryRealloc                  ; rax = new buffer (Buffer_t)
    pop       r11 r10 r9 r8

    mov       rdx, [rax + Buffer_t.bytesPtr]        ; rdx = new String_t

    ; --------------------------------------------------------------------------
    ; Copy first string.
    ; TODO: Don't copy byte-by-byte
    ; --------------------------------------------------------------------------

    pop       r9
    mov       r9,  [r9  + Buffer_t.bytesPtr]        ; r9  = dst = x.buffer (String_t)

    cmp       rdx, r9
    jz        .ss_overlapped_dst

    lea       rdi, [rdx + String_t.text]            ; rdi = dst      = rv.text  (char*)
    lea       rsi, [r9  + String_t.text]            ; rsi = src      = x.text   (char*)
    mov       rcx, [r9  + String_t.length]          ; rcx = len(src) = x.length (int64)
    rep       movsb

    ; --------------------------------------------------------------------------
    ; Copy second string.
    ; TODO: Don't copy byte-by-byte
    ; --------------------------------------------------------------------------

.ss_overlapped_dst:

    lea       rdi, [rdx + String_t.text]            ; rdi = dst = rv.text  (char*)
    lea       rsi, [r10 + String_t.text]            ; rsi = src = y.text   (char*)
    add       rdi, [r9 + String_t.length]           ; rdi = dst + x.length (char*)
    mov       rcx, [r10 + String_t.length]          ; rcx = len(src) = y.length
    rep       movsb

    ; --------------------------------------------------------------------------
    ; Zero terminator
    ; --------------------------------------------------------------------------

    mov       byte [rdi], 0
    mov       [rdx + String_t.length], r11          ; rv.length = len(x) + len(y)

    mov       [r8 + Variant_t.type], VARIANT_STRING
    and       [r8 + Variant_t.flags], NOT VARIANT_FLAG_ONE_CHARACTER
    xchg      [r8 + Variant_t.value], rax
    mov       rsi, r8

    mov       rcx, rax
    or        rcx, rcx
    jz        .emptyTarget
    call      __MOLD_MemoryRelease

.emptyTarget:
    DEBUG_CHECK_VARIANT rsi

    pop       rdi
    pop       rsi

    ret
