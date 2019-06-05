  ; Init for each loop.
  lea  rcx, [ x ]
  lea  rdx, [ k ]
  lea  r8,  [ v ]
  lea  r9, [.for_keys_values_begin]
  lea  r10, [.for_keys_values_end]
  jmp  __MOLD_ForDriver_KeysAndValuesInMap
   
.for_keys_values_begin:

  ; loop body
  ret

.for_keys_values_end:
