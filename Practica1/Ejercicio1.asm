	PROCESSOR 16f877
	INCLUDE <p16f877.inc>

K 	equ H'26'
L 	equ H'27'

		ORG 0
 		GOTO INICIO 
 
 		ORG 5
INICIO: MOVLW H'05'		; W := 0x05
 		ADDWF K,0		; W := W + Cont(K)
 		MOVWF L			; L := W
 		GOTO INICIO
 		END