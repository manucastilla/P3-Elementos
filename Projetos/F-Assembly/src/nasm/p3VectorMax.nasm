;
; Buscar pelo valor máximo de um vetor e atualizar a RAM 2 com ele
;
; Assuma que:
;    - O endereço 0 da RAM indica a posição inicial de um vetor
;    - O endereço 1 da RAM indica o tamanho do vetor
;    - O vetor é uma região contínua da RAM
;
; Exemplo:
;
;      ----x  RAM[ 0] : 4
;      |      RAM[ 1] : 5   x----
;  comeco     RAM[ 2] : MAX     |
;      |      RAM[ 3] : 1       |
;      -----> RAM[ 4] : 15   ---|---
;             RAM[ 5] : 11      |
;             RAM[ 6] : 15      | Tamanho do vetor = 5
;             RAM[ 7] : 20      |
;             RAM[ 8] : 12   ---|---
;             RAM[ 9] : 0
;             RAM[10] : 11
;             RAM[11] : 2
;leaw $0, %A
;movw (%A), %S
;leaw $1, %A
;movw (%A), %D
;leaw $2, %A
;movw $0, (%A)
;
;movw %S, %A
;subw %S, ()
;
;
;
;===============================================



leaw $0, %A
movw %A, %S

leaw $4, %A
movw %A, %D

LOOP:
subw (%A), %S, %S
leaw $PROXIMO, %A
jg %S
nop

PROXIMO:
	incw %D
	movw %D, (%A)
	subw (%A), %S, %S
	leaw $SEGUNDO, %A
	jg %S
	nop

SEGUNDO:


