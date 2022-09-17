	PROCESSOR 16f877
	INCLUDE <p16f877.inc> 
K equ H'26'
L equ H'27'
M equ H'28'

		ORG 0
 		GOTO INICIO 
 		
 		ORG 5
INICIO: MOVF K,W	; W := Cont(K)
 		ADDWF L,0	; W := W + Cont(L)
 		MOVWF M		; M := W
 		GOTO INICIO
 		END