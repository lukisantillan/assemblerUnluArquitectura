.model small
.stack
.code
     xor al, al
     mov si, 100h
     mov cx, 5
     siguiente:
     inc al     ; incremento en 2 al.
     inc al
     mov ds:[si}, al ; por iteracion guardo el valor de al en ds:[si], si valiendo 100h en la primer iteracion
     inc si ; incremento SI
     loop siguiente
terminar:
MOV AH, 4Ch
INT 21H

;INSTRUCCION LOOP, ES UN CICLO, DECREMENTA EL VALOR DE CX,
;POR LO TANTO DEBEMOS CARGAR EN CX LA CANTIDAD DE ITERACIONES QUE QUEREMOS.
; DEBEMOS PONER LA INSTRUCCION A SALTAR ANTES DEL LOOP