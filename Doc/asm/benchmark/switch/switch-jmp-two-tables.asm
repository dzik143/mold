include '_commonBefore.asm'

  VALUE_MIN EQU 10
  VALUE_MAX EQU 80

  mov    ecx, eax
  sub    ecx, VALUE_MIN
  cmp    ecx, VALUE_MAX - VALUE_MIN
  ja     l0

  movzx  rcx, byte [rcx + cases]
  jmp    qword [labels + rcx * 8]

include '_commonAfter.asm'


labels:
  dq l0, l1, l2, l3, l4, l5, l6, l7, l8

cases:
  db 1, 0, 0, 0, 0, 0, 0, 0, 0, 0
  db 2, 0, 0, 0, 0, 0, 0, 0, 0, 0
  db 3, 0, 0, 0, 0, 0, 0, 0, 0, 0
  db 4, 0, 0, 0, 0, 0, 0, 0, 0, 0
  db 5, 0, 0, 0, 0, 0, 0, 0, 0, 0
  db 6, 0, 0, 0, 0, 0, 0, 0, 0, 0
  db 7, 0, 0, 0, 0, 0, 0, 0, 0, 0
  db 8, 0, 0, 0, 0, 0, 0, 0, 0, 0
