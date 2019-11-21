use64

X EQU 0x12
Y EQU 0x3456
Z EQU 10000000

; Use constant as imm operand
mov rax, X

; Use constant as data
value1 dw Y
value2 dq 1, 2, Z, 4, 5

; Use constant as address
; TODO
;mov rax, qword [X]
;mov rax, qword [rbx - Y]
;mov rax, qword [rbx + 4 * rcx + X]
;mov rax, qword [rbx + 8 * rcx - X]
