use64

in al, 0x12
in ax, 0x34
in eax, 0x56
in al, dx
in ax, dx
in eax, dx

out 0x12, al
out 0x34, ax
out 0x56, eax
out dx, al
out dx, ax
out dx, eax

insb
insw
insd
;ins byte  [rdi], dx TODO
;ins word  [rdi], dx TODO
;ins dword [rdi], dx TODO

outsb
outsw
outsd
;outs dx, byte [rsi]  TODO
;outs dx, word [rsi]  TODO
;outs dx, dword [rsi] TODO
