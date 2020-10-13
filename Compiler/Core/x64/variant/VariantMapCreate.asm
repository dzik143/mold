;###############################################################################
;
; Create new map variable.
;
; rcx = pointer where to store new allocated map (Variant_t) (OUT)
;
;###############################################################################

__MOLD_VariantMapCreate:

    push    rcx
    mov     rcx, VARIANT_MAP_DEFAULT_BUFFER_SIZE
    call    __MOLD_MemoryAlloc
    pop     rcx

    mov     [rcx + Variant_t.type], VARIANT_MAP
    mov     [rcx + Variant_t.flags], 0
    mov     [rcx + Variant_t.value], rax

    mov     rax, [rax + Buffer_t.bytesPtr]
    mov     [rax + Map_t.bucketsCnt], VARIANT_MAP_DEFAULT_BUCKETS_CNT

    DEBUG_CHECK_VARIANT rcx

    ret

__MOLD_VariantMapCreateFromInitList:
    ; rcx - rv
    ; rdx - keys
    ; r8  - values

    push rcx rdx r8
    call __MOLD_VariantMapCreate
    pop  r8  rdx rcx

    ; init frame
    ; ----------
    dst EQU rbp - 8 - 16 ; 16 bytes
    arrayOfKeys EQU rbp - 8 - 16*2; 16 bytes
    value EQU rbp - 8 - 16*3 ; 16 bytes
    key EQU rbp - 8 - 16*4 ; 16 bytes
    idx EQU rbp - 8 - 16*4 - 4 ; 4 bytes

    push rbp
    mov  rbp, rsp
    sub  rsp, 80

    movdqu xmm0 , [ rcx ]
    movdqu [ dst ], xmm0
    movdqu xmm0 , [ rdx ]
    movdqu [ arrayOfKeys ], xmm0
    ;
    ; -----------------------------
    ; BEGIN: for keys idx values value
    ;
    mov  rcx , r8
    lea  rdx , [ idx ]
    lea  r8 , [ value ]
    lea  r9 , [ .l0 ]
    call  __MOLD_ForDriver_Generic
    jmp .done

.l0:
    lea  rcx , [ arrayOfKeys ]
    mov  edx , dword [ idx ]
    lea  r8 , [ key ]
    call  __MOLD_VariantLoadFromIndex

    lea  rcx , [ dst ]
    lea  rdx , [ key ]
    lea  r8 , [ value ]
    call  __MOLD_VariantStoreAtKey
    ret

.done:
    ;
    ; END: for keys idx values value
    ; -----------------------------
    ;

    leave
    ret

    restore dst
    restore arrayOfKeys
    restore idx
    restore value
    restore key
