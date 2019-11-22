use64

; call forward
call proc1

db 100 dup 1

proc1:
    ;enter 0x1234, 5 : TODO
    leave
    ret
    ret 0x67
    
db 100 dup 2
    
; call backward
call proc1    