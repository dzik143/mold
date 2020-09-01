include '_commonBefore.asm'

  cmp al, 10
  jz  l1

  cmp al, 20
  jz  l2

  cmp al, 30
  jz  l3

  cmp al, 40
  jz  l4

  cmp al, 50
  jz  l5

  cmp al, 60
  jz  l6

  cmp al, 70
  jz  l7

  cmp al, 80
  jz  l8

  jmp l0

include '_commonAfter.asm'