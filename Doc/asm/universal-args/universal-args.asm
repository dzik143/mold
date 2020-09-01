format PE64 console 5.0
entry __MOLD_Main
include 'win64a.inc'
; ------------------------------------------------------------------------------
;                                 Code section
; ------------------------------------------------------------------------------
section '.text' code readable executable
stack 1024*1024*4, 1024*1024*4
include '../../../Core/Variant.asm'

foo:
    mov ecx, [rcx]
    DEBUG_PRINT2 'foo(%d)', ecx
    ret

__MOLD_CallForEachParam:
      ; rcx - routine to call
      ; rdx - params list
      mov     r12, rcx
      mov     r13, rdx

.process_next_param:

      movsx   rax, byte [r13]
      or      al, al
      jz      .done

      lea     rcx, [rbp + 4*rax]
      call    r12

      inc     r13
      jmp     .process_next_param

.done:
    ret

; -----------------------------------------------
; function start
; -----------------------------------------------

paramsList db -4, -4, -4, -1, -6, 0

start:
  push rbp
  mov  rbp, rsp
  sub  rsp, 64

  mov  dword [rbp -  4], 99
  mov  dword [rbp - 16], 1234


  mov  rcx, foo
  lea  rdx, [paramsList]
  call __MOLD_CallForEachParam

  add  rsp, 64
  pop  rbp
  ret


endOfCodeSection:
; ------------------------------------------------------------------------------
;                                 Data section
; ------------------------------------------------------------------------------
section '.data' data readable writeable
include '../../../Core/CommonData.asm'

x dq 3.14e20
y dq 0.0

mxcsr_copy dd 0

; Global vars
; -----------
; ------------------------------------------------------------------------------
;                     Constant (read-only) data section
; ------------------------------------------------------------------------------
section '.rdata' data readable

; Constants
; ---------
db ?
; iter 0
; iter 1
; iter 2
; iter 3
; iter 4
; iter 5
; iter 6
; iter 7
; iter 8
; iter 9
; iter 10
; iter 11
; iter 12
; iter 13
; iter 14
; iter 15

; Jump tables
; -----------

; vtables
; -------
vtable_Test:
.offset dd 8 * 0
.length dd 8 * 0

; ------------------------------------------------------------------------------
;                               Imports section
; ------------------------------------------------------------------------------
section '.idata' import data readable writeable
  include '../../../Core/CommonImports.asm'

; ------------------------------------------------------------------------------
;                                Debug section
; ------------------------------------------------------------------------------
section '.debug' data readable
SymbolTable:
dq 0, 0
include '../../../Core/SymbolTableCommon.asm'
dq  start , name_start
dq endOfCodeSection, name_endOfCodeSection
SymbolTableEnd:
dq 0, 0

SymbolTableNames:
include '../../../Core/SymbolTableCommonNames.asm'
name_start db 'start', 0
name_endOfCodeSection db 'out of code section', 0
