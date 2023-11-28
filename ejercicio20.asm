.model small
.stack
.code
     mov SI, 0;inicializo SI, para despues incrementar a la hora de recorrer
     mov CL, 0;inicializo un contador para acumular los numeros pares
leer:
    mov al, ds:[si]
    mov ah, al
    and al, 01h ; enmascaro para ver si es par
    cmp al, 00h ; comparo con 00h, para saber si es par
    jnz seguir  ; si no son iguales salto a seguir
esPar:
    inc cl
    inc SI 
seguir:
    inc SI
    cmp SI, 10h
    jbe leer
    
    mov ds:[15h], cl
terminar:
    mov al, 4ch
    int 21h      
    
    
    
;Para leer valores en un area de memoria, inicializamos SI, para ir incrementandola 