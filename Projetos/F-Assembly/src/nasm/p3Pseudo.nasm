LOOP:
leaw $1, %A
movw (%A), %S
leaw $1, %A
movw %A, %D
subw %D, %S, %S
leaw $SEGUNDO_iF
je %S
nop
leaw $1, %A
movw (%A), %S
notw %S
leaw $5, %A
movw %S, (%A)
leaw $LOOP
jmp
nop
SEGUNDO_IF:
leaw $2, %A
movw (%A), %S
leaw $2, %A
movw %A, %D
subw %D, %S, %S
leaw $RESULTADO
je %S
nop
RESULTADO:
leaw $5, %A
movw $1, (%A)
leaw $LOOP, %A
jmp
nop



























































































































































































































