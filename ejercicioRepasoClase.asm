;Hacer un programa que permita recorrer un area de memoria que va desde la posicion 1000h a la 1100h y transladar aquellos valores 
;que tienen el bit 7 = 1 y el bit 4=0 a partir de la direccion 1500h 
;Modificar el programa anterior para que el area de valores transladados 
;termine con 00h
;Incorporar la funcionalidad de almacenar en la posicion 14FFh el mayor de 
;los valores transladados
.model small
.stack
.code
        mov di, 1000h ;cargo en DI la posicion de arranque
        mov SI, 1500h ; cargo en SI la poscion de arranque para almacenar
        repetir:
            cmp di, 1100h ;  comparo DI para ver si es igual al limite a recorrer
            ja terminar  ; si es mayor termina
            call comparar ; llamo al proc comparar
            inc di
            jmp repetir
            
terminar: 
    mov al, 4ch
    int 21h
    
comparar proc 
    mov al, ds:[di]; almaceno en AL el contenido del segmento de datos apuntado por la direccion almacenada en DI
    mov ah, al ; copio el dato de al en ah
    and al, 90h ;  enmascaro AL para chequear si cumple con el requisito 
    cmp al, 80h  ; comparo para ver si cumple con que los bits sean como la forma pedida.
    jne volver
    almacenar:
    mov ds:[si], ah
    inc si
    mov ds:[si], 00h  
    call cumple
    
    volver:
        ret
        comparar endp 

cumple proc
    mov [di],ah
    ind di
    cmp bh,0
    jz mayor
    cmp ah,bl
    ja mayor        
    jmp volver
    mayor:
    mov bl,ah
    mov bh,1
    volver:
    ret 
    cumple endp

    
      
    
   