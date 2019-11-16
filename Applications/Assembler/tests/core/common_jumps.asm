use64

    ; rel8
;    jmp l0
;l0:
;
;    ; rel8 limits
;minimum_rel8:
;    db 126 dup 1
;    jmp minimum_rel8
;
;    jmp maximum_rel8
;    db 127 dup 2
;maximum_rel8:
;
;    ; rel32 - first byte after rel8 bound
;first_byte_before_rel8:
;    db 127 dup 3
;    jmp first_byte_before_rel8
;
;    jmp first_byte_after_rel8
;    db 128 dup 2
;first_byte_after_rel8:


minimum_rel32:
  db 
  