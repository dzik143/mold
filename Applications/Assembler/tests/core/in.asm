use64
; ------------------------------------------------------------------------------
; opcode al,imm8
; ------------------------------------------------------------------------------
in al, 0
in al, 1
in al, 0x12
in al, 127
in al, 255
in al, 0xff

; ------------------------------------------------------------------------------
; opcode ax,imm8
; ------------------------------------------------------------------------------
in ax, 0
in ax, 1
in ax, 0x12
in ax, 127
in ax, 255
in ax, 0xff

; ------------------------------------------------------------------------------
; opcode eax,imm8
; ------------------------------------------------------------------------------
in eax, 0
in eax, 1
in eax, 0x12
in eax, 127
in eax, 255
in eax, 0xff

; ------------------------------------------------------------------------------
; opcode al,dx
; ------------------------------------------------------------------------------
in al, dx

; ------------------------------------------------------------------------------
; opcode ax,dx
; ------------------------------------------------------------------------------
in ax, dx

; ------------------------------------------------------------------------------
; opcode eax,dx
; ------------------------------------------------------------------------------
in eax, dx

