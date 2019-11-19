; Bytes
db 0
db 0x12
db -127, -1, 0, 1, 128, 255, 0xff

; Words
dw 0
dw 0x1234
dw -32767, -127, -1, 0, 1, 127, 255, 0xff, 32768, 65535, 0x1234, 0xffff

; Double words
dd 0
dd 0x12345678
dd -2147483647, -32767, -127, -1, 0, 1, 127, 255, 0xff, 32768, 65535
dd 0xffff, 2147483648, 0x12345678, 0xffffffff

; Quad words
dq 0
dq 0x12345678abcdef

; TODO: Enable it.
;dq -9223372036854775807, -2147483647, -32767, -127, -1, 0
;dq 1, 127, 255, 0xff, 32768, 65535, 9223372036854775807, 0x123456789abcdef, 0xffffffffffffffff

; Duplicates
db 10 dup 0x12
dw 10 dup 0x1234
dd 10 dup 0x12345678
dq 10 dup 0x12345678abcdef
