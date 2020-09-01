__MOLD_PrintNewLine:
    sub   rsp, 32
    mov   cl, 10
    call  [putchar]
    add   rsp, 32
    ret
