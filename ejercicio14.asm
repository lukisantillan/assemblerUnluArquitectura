.model small
.stack
.code
        MOV AL, [1FH]
        MOV AH, AL  
        MOV DL, 20h
        AND AL, DL 
        CMP AL , 00H
        JNZ terminar
        JZ igual
        igual: 
            add ah, 2Eh
            mov DS:[1FH], ah
terminar:
        MOV AL ,4CH
        INT 21H