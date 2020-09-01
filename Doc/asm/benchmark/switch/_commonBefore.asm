format PE64 console 5.0
entry __MOLD_Main
include 'win64a.inc'

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

  mov       eax, 0
  mov       r12, 1234567890
  mov       r13, 0

goOn:
