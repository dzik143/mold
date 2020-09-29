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
; function bubbleSort
; -----------------------------------------------
bubbleSort:

  ; init frame
  ; ----------
  A EQU rbp - 24 ; 16 bytes, (kind= 3 , type= variant , writeHits= 0 , readHits= 13 )
  tmp2 EQU rbp - 40 ; 16 bytes, (kind= 1 , type= variant , writeHits= 2 , readHits= 2 )
  tmp11 EQU rbp - 56 ; 16 bytes, (kind= 1 , type= variant , writeHits= 2 , readHits= 2 )
  tmp EQU rbp - 72 ; 16 bytes, (kind= 1 , type= variant , writeHits= 1 , readHits= 1 )
  n EQU rbp - 76 ; 4 bytes, (kind= 1 , type= int32 , writeHits= 2 , readHits= 3 )
  tmp3 EQU rbp - 80 ; 4 bytes, (kind= 1 , type= int32 , writeHits= 5 , readHits= 5 )
  tmp6 EQU rbp - 84 ; 4 bytes, (kind= 1 , type= bool32 , writeHits= 1 , readHits= 1 )
  tmp7 EQU rbp - 88 ; 4 bytes, (kind= 1 , type= int32 , writeHits= 5 , readHits= 5 )
  tmp10 EQU rbp - 92 ; 4 bytes, (kind= 1 , type= bool32 , writeHits= 1 , readHits= 1 )
  tmp12 EQU rbp - 96 ; 4 bytes, (kind= 1 , type= int32 , writeHits= 3 , readHits= 3 )
  i EQU rbp - 100 ; 4 bytes, (kind= 1 , type= int32 , writeHits= 1 , readHits= 7 )

  push rbp
  mov  rbp, rsp
  sub  rsp, 128

  movdqu xmm0 , [ rcx ]
  movdqu [ A ], xmm0
  xor eax, eax
  mov [tmp2 + Variant_t.type], eax
  mov [tmp11 + Variant_t.type], eax
  mov [tmp + Variant_t.type], eax

  ; code
  ; ----

  ; [x64] syscall tmp2 43 ['A']
  ; __mold_syscall( 43 )
  lea rcx , [ A ]
  lea rdx , [ tmp2 ]
  call qword [rbx + 8 * 43 ]

  ; [x64] conv_variant_to_int32 tmp3 tmp2 undefined
  cmp [ tmp2 + Variant_t.type], VARIANT_INTEGER
  jnz __MOLD_PrintErrorAndDie.integerExpected
  mov eax, dword [ tmp2 + Variant_t.value]
  mov dword [ tmp3 ], eax

  ; [x64] move_int32 n tmp3 undefined
  mov ecx , dword [ tmp3 ]
  mov dword [ n ], ecx

;
; -----------------------------
; BEGIN: while
;
  ; [x64] label l4 undefined undefined
l4:

  ; [x64] cmp_gt_int32 tmp6 n 1
  mov ecx , dword [ n ]
  mov edx , 1
  cmp ecx, edx
  setg cl
  and ecx, 1
  mov dword [ tmp6 ], ecx

  ; [x64] jmp_if_false_bool32 l5 tmp6 undefined
  mov ecx , dword [ tmp6 ]
  mov edx , 0
  cmp ecx, edx
  jz l5

  ; [x64] sub_int32 tmp3 n 1
  mov ecx , dword [ n ]
  mov edx , 1
  sub ecx, edx
  mov dword [ tmp3 ], ecx

  ; [x64] move_int32 i 0 undefined
  mov ecx , 0
  mov dword [ i ], ecx

;
; -----------------------------
; BEGIN: for i in 0 .. tmp3
;
  ; [x64] label l8 undefined undefined
l8:

  ; [x64] jmp_if_ge_int32 l9 i tmp3
  mov ecx , dword [ i ]
  mov edx , dword [ tmp3 ]
  cmp ecx, edx
  jge l9

  ; [x64] load_index_variant_by_int32 tmp2 A i
  lea rcx , [ A ]
  mov edx , dword [ i ]
  lea r8 , [ tmp2 ]
  call  __temp_MOLD_VariantLoadFromIndex

  ; [x64] add_int32 tmp7 i 1
  mov ecx , dword [ i ]
  mov edx , 1
  add ecx, edx
  mov dword [ tmp7 ], ecx

  ; [x64] load_index_variant_by_int32 tmp11 A tmp7
  lea rcx , [ A ]
  mov edx , dword [ tmp7 ]
  lea r8 , [ tmp11 ]
  call  __temp_MOLD_VariantLoadFromIndex

  ; [x64] cmp_gt_variant tmp10 tmp2 tmp11
  lea  rcx , [ tmp11 ]
  lea  rdx , [ tmp2 ]
  call  __MOLD_VariantCompareLT
  mov [ tmp10 ], eax

  ; [x64] jmp_if_false_bool32 l13 tmp10 undefined
  mov ecx , dword [ tmp10 ]
  mov edx , 0
  cmp ecx, edx
  jz l13

  ; [x64] load_index_variant_by_int32 tmp A i
  lea rcx , [ A ]
  mov edx , dword [ i ]
  lea r8 , [ tmp ]
  call  __temp_MOLD_VariantLoadFromIndex

  ; [x64] add_int32 tmp7 i 1
  mov ecx , dword [ i ]
  mov edx , 1
  add ecx, edx
  mov dword [ tmp7 ], ecx

  ; [x64] load_index_variant_by_int32 tmp11 A tmp7
  lea rcx , [ A ]
  mov edx , dword [ tmp7 ]
  lea r8 , [ tmp11 ]
  call  __temp_MOLD_VariantLoadFromIndex

  ; [x64] store_index_int32 A i tmp11
  lea rcx , [ A ]
  mov edx , dword [ i ]
  lea r8 , [ tmp11 ]
  call __temp_MOLD_VariantStoreAtIndex_variant

  ; [x64] add_int32 tmp7 i 1
  mov ecx , dword [ i ]
  mov edx , 1
  add ecx, edx
  mov dword [ tmp7 ], ecx

  ; [x64] store_index_int32 A tmp7 tmp
  lea rcx , [ A ]
  mov edx , dword [ tmp7 ]
  lea r8 , [ tmp ]
  call __temp_MOLD_VariantStoreAtIndex_variant

  ; [x64] label l13 undefined undefined
l13:

  ; [x64] label l14 undefined undefined
l14:

  ; [x64] add_int32 i i 1
  mov ecx , dword [ i ]
  mov edx , 1
  add ecx, edx
  mov dword [ i ], ecx

  ; [x64] jmp l8 undefined undefined
  jmp l8

  ; [x64] label l9 undefined undefined
l9:

;
; END: for i in 0 .. tmp3 step 1
; -----------------------------
;
  ; [x64] sub_int32 n n 1
  mov ecx , dword [ n ]
  mov edx , 1
  sub ecx, edx
  mov dword [ n ], ecx

  ; [x64] jmp l4 undefined undefined
  jmp l4

  ; [x64] label l5 undefined undefined
l5:

;
; END: while
; -----------------------------
;
  ; [x64] ret undefined undefined undefined

  ; clean frame
  ; -----------
  lea  rcx, [ tmp2 ]
  call __MOLD_VariantDestroy
  lea  rcx, [ tmp11 ]
  call __MOLD_VariantDestroy
  lea  rcx, [ tmp ]
  call __MOLD_VariantDestroy

  add  rsp, 128
  pop  rbp
  ret

  ; [x64] endp undefined undefined undefined

  restore A
  restore n
  restore tmp2
  restore tmp3
  restore tmp6
  restore tmp7
  restore tmp10
  restore tmp11
  restore tmp12
  restore i
  restore tmp

; -----------------------------------------------
; entry point
; -----------------------------------------------
; -----------------------------------------------
; function start
; -----------------------------------------------
start:

  ; init frame
  ; ----------
  A EQU rbp - 24 ; 16 bytes, (kind= 1 , type= variant , writeHits= 1 , readHits= 3 )
  tmp15 EQU rbp - 28 ; 4 bytes, (kind= 1 , type= int32 , writeHits= 1 , readHits= 1 )
  tmp16 EQU rbp - 32 ; 4 bytes, (kind= 1 , type= int32 , writeHits= 5 , readHits= 5 )
  tmp17 EQU rbp - 36 ; 4 bytes, (kind= 1 , type= int32 , writeHits= 2 , readHits= 2 )

  push rbp
  mov  rbp, rsp
  sub  rsp, 64

  xor eax, eax
  mov [A + Variant_t.type], eax


  ; code
  ; ----

  ; [x64] create_array A undefined undefined
  lea  rcx, [ A ]
  call __MOLD_VariantDestroy
  lea  rcx , [ A ]
  call  __MOLD_VariantArrayCreate

  ; [x64] store_index_int32 A 0 4
  lea rcx , [ A ]
  mov edx , 0
  mov r8d , 4
  call __temp_MOLD_VariantStoreAtIndex_int32

  ; [x64] store_index_int32 A 1 1
  lea rcx , [ A ]
  mov edx , 1
  mov r8d , 1
  call __temp_MOLD_VariantStoreAtIndex_int32

  ; [x64] neg_int32 tmp16 8 undefined
  mov ecx , 8
  neg ecx
  mov dword [ tmp16 ], ecx

  ; [x64] store_index_int32 A 2 tmp16
  lea rcx , [ A ]
  mov edx , 2
  mov r8d , dword [ tmp16 ]
  call __temp_MOLD_VariantStoreAtIndex_int32

  ; [x64] store_index_int32 A 3 4
  lea rcx , [ A ]
  mov edx , 3
  mov r8d , 4
  call __temp_MOLD_VariantStoreAtIndex_int32

  ; [x64] neg_int32 tmp16 53 undefined
  mov ecx , 53
  neg ecx
  mov dword [ tmp16 ], ecx

  ; [x64] store_index_int32 A 4 tmp16
  lea rcx , [ A ]
  mov edx , 4
  mov r8d , dword [ tmp16 ]
  call __temp_MOLD_VariantStoreAtIndex_int32

  ; [x64] print_array_of_variants_ln ['__literal0', 'A'] undefined undefined
  lea rcx, [__fmt0 ]
  call __MOLD_PrintFormatFromMemory

  ; [x64] call undefined bubbleSort ['A']
  lea rcx , [ A ]
  call  bubbleSort

  ; [x64] print_array_of_variants_ln ['__literal1', 'A'] undefined undefined
  lea rcx, [__fmt1 ]
  call __MOLD_PrintFormatFromMemory

  ; [x64] ret undefined undefined undefined

  ; clean frame
  ; -----------
  lea  rcx, [ A ]
  call __MOLD_VariantDestroy
  lea  rcx, [ argv ]
  call __MOLD_VariantDestroy
  lea  rcx, [ argc ]
  call __MOLD_VariantDestroy

  add  rsp, 64
  pop  rbp
  ret

  ; [x64] endp undefined undefined undefined

  restore A
  restore tmp15
  restore tmp16
  restore tmp17


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
  db FMT_TEXT8, 7 ,  "input: "
  db FMT_LOCAL_variant
  dw - 24
  db FMT_TERMINATOR

__fmt1:
  db FMT_TEXT8, 7 ,  "output:"
  db FMT_LOCAL_variant
  dw - 24
  db FMT_TERMINATOR


; Constants
; ---------
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
dq bubbleSort , name_bubbleSort
dq start , name_start
dq endOfCodeSection, name_endOfCodeSection
SymbolTableEnd:
dq 0, 0

SymbolTableNames:
include 'x64\SymbolTableCommonNames.asm'
name_bubbleSort db 'bubbleSort', 0
name_start db 'start', 0
name_endOfCodeSection db 'out of code section', 0
