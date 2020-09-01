include '_commonBefore.asm'

  VALUE_MIN EQU 10
  VALUE_MAX EQU 80

  mov    ecx, eax
  sub    ecx, VALUE_MIN
  mov    edx, VALUE_MAX - VALUE_MIN + 1

  cmp    ecx, edx
  cmovae ecx, edx

  lea    rdx, [l0]
  movsx  rcx, word [labels + rcx * 2]
  add    rdx, rcx
  jmp    rdx

include '_commonAfter.asm'


labels:
  dw l1 - l0; 10
  dw 0, 0, 0, 0, 0, 0, 0, 0, 0

  dw l2 - l0 ; 20
  dw 0, 0, 0, 0, 0, 0, 0, 0, 0

  dw l3 - l0 ; 30
  dw 0, 0, 0, 0, 0, 0, 0, 0, 0

  dw l4 - l0 ; 40
  dw 0, 0, 0, 0, 0, 0, 0, 0, 0

  dw l5 - l0 ; 50
  dw 0, 0, 0, 0, 0, 0, 0, 0, 0

  dw l6 - l0 ; 60
  dw 0, 0, 0, 0, 0, 0, 0, 0, 0

  dw l7 - l0 ; 70
  dw 0, 0, 0, 0, 0, 0, 0, 0, 0

  dw l8 - l0 ; 80
  dw 0, 0, 0, 0, 0, 0, 0, 0, 0

  dw 0 ; explicit default case
