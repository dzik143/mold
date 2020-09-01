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

  ; https://software.intel.com/content/www/us/en/develop/articles/x87-and-sse-floating-point-assists-in-ia-32-flush-to-zero-ftz-and-denormals-are-zero-daz.html
  ;          f ed cba987 6 543210
  ; default: 0 00 111111 0 000000
  ;          F R  PUOZDI D PUOZDI
  ;          Z C  masks  A flags
  ;                      Z

  ;stmxcsr dword [mxcsr_copy]
  ;mov     eax, dword [mxcsr_copy]
  ldmxcsr  dword [mxcsr_copy]

  movq  xmm0, [x]
  movq  xmm1, [y]

goOn:
  mulsd xmm0, xmm0
  mulsd xmm0, xmm0
  mulsd xmm0, xmm0
  mulsd xmm0, xmm0
;  mulsd xmm0, xmm0
;  mulsd xmm0, xmm0
;  mulsd xmm0, xmm0
;  mulsd xmm0, xmm0
;  mulsd xmm0, xmm0
;  mulsd xmm0, xmm0

;  jmp goOn

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
