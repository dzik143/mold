;###############################################################################
;
; Perform virtual call.
;
; rcx - this pointer (Variant_t *) (IN)
; eax - method id (int32) (IN)
;
;###############################################################################

__MOLD_VCall:

  mov  r11, [rcx + Variant_t.value]     ; r11 = this (Buffer_t)
  shl  r10d, 3                          ; r10 = method id * 8
  mov  r11, [r11 + Buffer_t.bytesPtr]   ; r11 = this (Object_t)
  mov  r11, [r11 + Object_t.vtable]     ; r11 = this.vtable

  sub  r10d, dword [r11]                ; r10 = 8*id - offsetStart
                                        ; is method out of range?
  js   __MOLD_PrintErrorAndDie.nullMethodCalled


  cmp  r10d, dword [r11 + 4]            ; 8*id  offsetEnd > 0
                                        ; is method out of range?
  ja   __MOLD_PrintErrorAndDie.nullMethodCalled

  jmp  qword [8 + r11 + r10]            ; call this.vtable[id]

__MOLD_NullMethodCalled:
  jmp  __MOLD_PrintErrorAndDie.nullMethodCalled