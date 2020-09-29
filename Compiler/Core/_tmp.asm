format PE64 console 5.0
entry __MOLD_Main
include 'win64a.inc'
; ------------------------------------------------------------------------------
;                                 Code section
; ------------------------------------------------------------------------------
section '.text' code readable executable
stack 1024*1024*4, 1024*1024*4
include 'x64\Variant.asm'
; -----------------------------------------------
; entry point
; -----------------------------------------------
; -----------------------------------------------
; function start
; -----------------------------------------------
start:

  ; init frame
  ; ----------
  x EQU rbp - 24 ; 16 bytes, (kind= 1 , type= variant , writeHits= 1 , readHits= 0 )
  y EQU rbp - 40 ; 16 bytes, (kind= 1 , type= string , writeHits= 1 , readHits= 0 )
  tmp3 EQU rbp - 56 ; 16 bytes, (kind= 1 , type= variant , writeHits= 1 , readHits= 1 )
  tmp2 EQU rbp - 60 ; 4 bytes, (kind= 1 , type= int32 , writeHits= 1 , readHits= 1 )
  tmp4 EQU rbp - 64 ; 4 bytes, (kind= 1 , type= int32 , writeHits= 1 , readHits= 1 )

  push rbp
  mov  rbp, rsp
  sub  rsp, 96

  xor eax, eax
  mov [x + Variant_t.type], eax
  mov [y + Variant_t.type], eax
  mov [tmp3 + Variant_t.type], eax


  ; code
  ; ----

  lea rcx , [ argv ]
  mov edx , 0
  lea r8 , [ x ]
  call  __temp_MOLD_VariantLoadFromIndex

  lea rcx , [ argv ]
  mov edx , 0
  lea r8 , [ tmp3 ]
  call  __temp_MOLD_VariantLoadFromIndex

  lea  rcx, [ y ]
  call __MOLD_VariantDestroy
  lea  rcx , [ __literal0 ]
  lea  rdx , [ tmp3 ]
  lea  r8 , [ y ]
  call  __MOLD_VariantStringJoin

  lea rcx, [__fmt0 ]
  call __MOLD_PrintFormatFromMemory


  ; clean frame
  ; -----------
  lea  rcx, [ x ]
  call __MOLD_VariantDestroy
  lea  rcx, [ y ]
  call __MOLD_VariantDestroy
  lea  rcx, [ tmp3 ]
  call __MOLD_VariantDestroy
  lea  rcx, [ argv ]
  call __MOLD_VariantDestroy
  lea  rcx, [ argc ]
  call __MOLD_VariantDestroy

  add  rsp, 96
  pop  rbp
  ret


  restore x
  restore y
  restore tmp2
  restore tmp3
  restore tmp4


endOfCodeSection:
; ------------------------------------------------------------------------------
;                                 Data section
; ------------------------------------------------------------------------------
section '.data' data readable writeable
include 'x64\CommonData.asm'


; Global vars
; -----------
; ------------------------------------------------------------------------------
;                     Constant (read-only) data section
; ------------------------------------------------------------------------------
section '.rdata' data readable
  dq ?

; Encoded print formats
; ---------------------
__fmt0:
  db FMT_TEXT8, 3 ,  "OK!"
  db FMT_TERMINATOR


; Constants
; ---------
; iter 0
__literal0 Variant_t VARIANT_STRING, 0, __literal0_buffer
; iter 1
__literal0_buffer Buffer_t 2 , -1, 0, __literal0_bufferBytes
; iter 2
__literal0_bufferBytes StringHead_t 1
 db  "x" , 0
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
; ------------------------------------------------------------------------------
;                               Imports section
; ------------------------------------------------------------------------------
section '.idata' import data readable writeable
  include 'x64\CommonImports.asm'

; ------------------------------------------------------------------------------
;                                Debug section
; ------------------------------------------------------------------------------
section '.debug' data readable
SymbolTable:
dq 0, 0
include 'x64\SymbolTableCommon.asm'
dq start , name_start
dq endOfCodeSection, name_endOfCodeSection
SymbolTableEnd:
dq 0, 0

SymbolTableNames:
include 'x64\SymbolTableCommonNames.asm'
name_start db 'start', 0
name_endOfCodeSection db 'out of code section', 0
