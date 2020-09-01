l1: add al, 40
    jmp done

l2: add al, 1
    jmp done

l3: add al, 231
    jmp done

l4: mov al, 30
    jmp done

l5: mov al, 40
    jmp done

l6: add al, 0
    jmp done

l7: add al, 99
    jmp done

l8: add al, 80
    jmp done

l0:
    inc al

done:
    add r13d, eax

    dec r12
    jne goOn


    DEBUG_PRINT2 '%d', r13d

    add  rsp, 32
    pop  rbp
    ret

endOfCodeSection:

; ------------------------------------------------------------------------------
;                               Imports section
; ------------------------------------------------------------------------------
section '.idata' import data readable writeable
  include '../../../../Core/CommonImports.asm'

; ------------------------------------------------------------------------------
;                                Debug section
; ------------------------------------------------------------------------------
section '.debug' data readable
SymbolTable:
dq 0, 0
include '../../../../Core/SymbolTableCommon.asm'
dq endOfCodeSection, name_endOfCodeSection
SymbolTableEnd:
dq 0, 0

SymbolTableNames:
include '../../../../Core/SymbolTableCommonNames.asm'
name_foo db 'foo', 0
name_start db 'start', 0
name_endOfCodeSection db 'out of code section', 0

; ------------------------------------------------------------------------------
;                                 Data section
; ------------------------------------------------------------------------------
section '.data' data readable writeable
include '../../../../Core/CommonData.asm'
