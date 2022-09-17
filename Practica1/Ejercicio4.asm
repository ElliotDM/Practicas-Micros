    PROCESSOR 16f877
    INCLUDE <p16f877.inc> 

K equ h'20'

    ORG 0
    GOTO UNO

    ORG 5
UNO:
    MOVLW H'01' ;W <-- (0x01)
    MOVWF K     ;K <-- W
    GOTO DOS
DOS:
    MOVLW H'02' ;W <-- (0x02)
    MOVWF K     ;K <-- W
    GOTO CUATRO
CUATRO:
    MOVLW H'04' ;W <-- (0x04)
    MOVWF K     ;K <-- W
    GOTO OCHO
OCHO:
    MOVLW H'08' ;W <-- (0x08)
    MOVWF K     ;K <-- W
    GOTO DIEZ
DIEZ:
    MOVLW H'10' ;W <-- (0x10)
    MOVWF K     ;K <-- W
    GOTO VEINTE
VEINTE:
    MOVLW H'20' ;W <-- (0x20)
    MOVWF K     ;K <-- W
    GOTO CUARENTA
CUARENTA:
    MOVLW H'40' ;W <-- (0x40)
    MOVWF K     ;K <-- W
    GOTO OCHENTA
OCHENTA:
    MOVLW H'80' ;W <-- (0x80)
    MOVWF K     ;K <-- W
    GOTO UNO
    END
