;###############################################################################
;
; Init argv[] and argc[] built in variables.
;
;###############################################################################

proc __MOLD_InitArgv

    local .startupinfo db 128 dup (?)
    local .msvcrt_argv dq ?
    local .msvcrt_env  dq ?

    push      r12
    push      r13
    push      r14

    lea       rcx, [argc + Variant_t.value]
    lea       rdx, [.msvcrt_argv]
    lea       r8,  [.msvcrt_env]
    xor       r9, r9
    lea       rax, [.startupinfo]
    push      rax
    cinvoke   __getmainargs
    add       rsp, 8

    lea       rcx, [argv]
    call      __MOLD_VariantArrayCreate

    mov       rax, [argc + Variant_t.value]    ; rax           = argc (integer)
    mov       rcx, [argv + Variant_t.value]    ; rcx           = argv (Buffer_t)
    mov       rcx, [rcx + Buffer_t.bytesPtr]   ; rcx           = argv (Array_t)
    mov       [rcx + Array_t.itemsCnt], rax    ; argv.itemsCnt = argc (integer)
    lea       rcx, [rcx + Array_t.items]       ; rcx           = argv.items (Variant_t *)

    mov       rax, [.msvcrt_argv]              ; rax = msvcrt_argv (char **)

.pushItem:
    mov       rdx, [rax]
    test      rdx, rdx
    jz        .done

    ; ----------------------------------------------------------------------------
    ; TODO: Clean up this mess.
    ; ----------------------------------------------------------------------------

    push      rax rcx rdx r8 r9 r10 r11

    mov       r12, rcx
    mov       r14, rdx

    cinvoke   strlen, rdx
    mov       r13, rax
    lea       rcx, [rax + 1]

    call      __MOLD_MemoryAlloc

    mov       [r12 + Variant_t.type], VARIANT_STRING
    mov       [r12 + Variant_t.value], rax

    mov       rax, [rax + Buffer_t.bytesPtr]
    mov       [rax + String_t.length], r13

    lea       rcx, [rax + String_t.text]
    mov       rdx, r14
    cinvoke   strcpy

    pop       r11 r10 r9 r8 rdx rcx rax

    ; ----------------------------------------------------------------------------
    ; END OF TODO: Clean up this mess.
    ; ----------------------------------------------------------------------------

    add       rax, 8
    add       rcx, 16
    jmp       .pushItem

.done:

    mov       dword [argc + Variant_t.type], VARIANT_INTEGER

    pop       r14
    pop       r13
    pop       r12

    ret
endp