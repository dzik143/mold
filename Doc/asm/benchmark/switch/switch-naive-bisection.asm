include '_commonBefore.asm'

  cmp al, 40
  jb  range_0_to_39
  jz  l4

range_41_to_max:
  cmp al, 60
  jb  range_41_59
  jz  l6

range_61_max:
  cmp al, 70
  jb  l0     ; dead end: range_61_69
  jz  l7

; --------------------------------------------

range_41_59:
  cmp al, 50
  jb  l0     ; dead end: range_41_49
  jz  l5

range_0_to_39:
  cmp al, 20
  jb  range_0_19
  jz  l2

range_21_39:
  cmp al, 30
  jb  l0     ; dead end: range_21_29
  jz  l3

range_31_39:
  jmp l0     ; dead end: range_31_39

range_0_19:
  cmp al, 10
  jz  l1
  jmp l0     ; dead end: 0_9
             ; dead end: 11_19

include '_commonAfter.asm'