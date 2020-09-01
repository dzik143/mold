format PE64 console 5.0
entry __MOLD_Main
include 'win64a.inc'
; ------------------------------------------------------------------------------
;                                 Code section
; ------------------------------------------------------------------------------
section '.text' code readable executable
stack 1024*1024*4, 1024*1024*4
include '../../../Core/Variant.asm'
; -----------------------------------------------
; entry point
; -----------------------------------------------
; -----------------------------------------------
; function start
; -----------------------------------------------
start:
  push rbp
  mov  rbp, rsp
  sub  rsp, 32

  mov  eax, dword [text]
  sub  eax, dword [vector_zero_char]

  int 3

  add  rsp, 32
  pop  rbp
  ret


endOfCodeSection:
; ------------------------------------------------------------------------------
;                                 Data section
; ------------------------------------------------------------------------------
section '.data' data readable writeable
include '../../../Core/CommonData.asm'


text             db '1234'
vector_zero_char db '0000'


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
