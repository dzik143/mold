include '_commonBefore.asm'

  VALUE_MIN EQU 10
  VALUE_MAX EQU 80

  mov    ecx, eax
  sub    ecx, VALUE_MIN
  mov    edx, VALUE_MAX - VALUE_MIN + 1

  cmp    ecx, edx
  cmovae ecx, edx

  jmp qword [labels + rcx * 8]

include '_commonAfter.asm'


labels:
  dq l1 ; 10
  dq l0, l0, l0, l0, l0, l0, l0, l0, l0

  dq l2 ; 20
  dq l0, l0, l0, l0, l0, l0, l0, l0, l0

  dq l3 ; 30
  dq l0, l0, l0, l0, l0, l0, l0, l0, l0

  dq l4 ; 40
  dq l0, l0, l0, l0, l0, l0, l0, l0, l0

  dq l5 ; 50
  dq l0, l0, l0, l0, l0, l0, l0, l0, l0

  dq l6 ; 60
  dq l0, l0, l0, l0, l0, l0, l0, l0, l0

  dq l7 ; 70
  dq l0, l0, l0, l0, l0, l0, l0, l0, l0

  dq l8 ; 80
  dq l0, l0, l0, l0, l0, l0, l0, l0, l0

  dq l0 ; explicit default case
