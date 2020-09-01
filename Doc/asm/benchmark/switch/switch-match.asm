include '_commonBefore.asm'

;  push rax
  mov  al, 20

  mov  rcx, 0101010101010101h ; rcx = |1|1|1|1|1|1|1|1
  mul  rcx                    ; rax = |x|x|x|x|x|x|x|x (clone input byte)
  sub  rax, qword [values]    ; rax = compare 8-bytes at once
  and  rax, qword [signmask]

  int 3

 ; pop  rax


  movq      xmm0, rax
  pcmpistri xmm0, dqword [values], 0
  jmp       qword [labels + rcx * 8]

include '_commonAfter.asm'
  signmask dq 8080808080808080h

  values db 10+1, 20+1, 30+1, 40+1, 50+1, 60+1, 70+1, 80+1
  labels dq l1, l2, l3, l4, l5, l6, l7, l8, l0, l0, l0, l0, l0, l0, l0, l0
         dq l0
