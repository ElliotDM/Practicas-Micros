	PROCESSOR 16f877
	INCLUDE <p16f877.inc> 
J equ H'20'
K equ H'21'
C1 equ H'22'
R1 equ H'23'

	ORG 0
 	GOTO LOOP
 		
 	ORG 5
LOOP:	
	MOVF J,W			; W := Cont(J)
 	ADDWF K,W			; W := W + Cont(K)
 	MOVWF R1			; R1 := W
 	BTFSS STATUS, C		; STATUS.C = 1?
 	GOTO ES_CERO		; NO
ES_UNO:	
	MOVLW 1				; SI
	GOTO ENVIA			; W := 0x01
ES_CERO:
	CLRW				; W := 0x00
ENVIA:
	MOVWF C1			; C1 := W
 	GOTO LOOP
 	END