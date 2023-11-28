.model small
.stack
.code       
    MOV DS:[00H], 10
    MOV DS:[10H], 4 
    MOV AL, [00h]
    MOV AH, [10h]
    CMP AL, AH 
    JZ igual
    JA mayor
    JB menor
    igual:
        xor bl,bl
        mov DS:[00H], bl
        mov DS:[10H], bl 
        jmp terminar
    mayor: 
        mov bl, 1
        mov ds:[00h], bl
        jmp terminar
    menor:
        mov bl, 1
        mov ds:[10h], bl
        jmp terminar
terminar:
    MOV AH, 4CH
    INT 21H
; INSTRUCCION JMP, JUMP, ES UN SALTO INCONDICIONAL.
; INSTRUCCION CMP, LA COMPARACION IMPACTA EN EL REGISTRO FLAG  
;JZ JE -> SALTA POR IGUAL
; JA -> MAYOR
; JB-> MENOR
; JAE -> MAYOR O IGUAL
; JBE -> MENOR IGUAL      
; si pongo entre corchetes la direccion es lo mismo que poner ds:[direccion]
