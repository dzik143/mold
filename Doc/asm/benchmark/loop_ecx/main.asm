format PE64 console 5.0
entry __MOLD_Main
include 'win64a.inc'

VALUE_MAX  EQU 0xfffffff
VALUE_STEP EQU 16941

REG_X_ITER EQU r10d
REG_Y_ITER EQU r11d

REG_X      EQU r12d
REG_Y      EQU r13d

macro GET_CLOCK
{
    rdtsc
    shl       rdx, 32
    add       rdx, rax
    mov       rax, rdx
}

macro BENCHMARK_BEGIN testName
{
    cinvoke      printf, '%40s : ', testName
    GET_CLOCK
    mov          r15, rax
}

macro BENCHMARK_END
{
    GET_CLOCK
    sub          rax, r15
    cinvoke      printf, '%llld', rax
    cinvoke      putchar, 10
}

; ------------------------------------------------------------------------------
;                                 Code section
; ------------------------------------------------------------------------------
section '.text' code readable executable
stack 1024*64

  include '../../../../Core/Variant.asm'

start:
    push      rbp
    mov       rbp, rsp
    sub       rsp, 32

    ; -------------------------------------------------------------------------
    ;                      Hand-made dec ecx / jnz
    ; -------------------------------------------------------------------------

    BENCHMARK_BEGIN 'Hand-made (dec ecx / jnz)'

    mov       r14, 0xffffffff

.handmade:
    dec       r14
    jnz       .handmade

    BENCHMARK_END

    ; -------------------------------------------------------------------------
    ;                      Hand-made dec ecx / jnz
    ; -------------------------------------------------------------------------

    BENCHMARK_BEGIN 'loop instruction'

    mov       rcx, 0xffffffff

.loop_instruction:
    loop      .loop_instruction

    BENCHMARK_END

    add       rsp, 32
    pop       rbp
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
