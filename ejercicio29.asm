.model small
.stack
.code 
         xor si, si ; PUNTERO DE DIRECCION 
         xor ax, ax ;ACUMULADOR
         xor bx, bx; AUXILIAR PARA GUARDAR VARIABLES
         xor cl, cl ;CONTADOR lineas para quitar basura de los registros
INICIO:
        CALL LEER
        INC SI
        CMP SI,30H
        JBE INICIO
        CALL PROMEDIO      
TERMINAR:    
    mov al, 4ch
    int 21h

LEER PROC
    MOV BL, [SI]
    CMP BL, 1AH
    JB FIN
    ADD AX, BX
    INC CL 
    
FIN PROC
    RET
    LEER ENDP

PROMEDIO PROC
    CMP CL, 0
    JZ NO_PROMEDIO
    DIV CL
    CALL ALMACENAMIENTO
    RET
    PROMEDIO ENDP 
    
NO_PROMEDIO PROC
    MOV AL, 0
    CALL ALMACENAMIENTO 
    RET
    NO_PROMEDIO ENDP

ALMACENAMIENTO PROC
    MOV DS:[37H], AL
    RET
    ALMACENAMIENTO ENDP
     

    
